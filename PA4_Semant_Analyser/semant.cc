nclude <stdlib.h>
#include <stdio.h>
#include <stdarg.h>
#include "semant.h"
#include "utilities.h"
#include "cool-tree.h"
#include <map>
#include <list>

extern int semant_debug;
extern char *curr_filename;

//////////////////////////////////////////////////////////////////////
//
// Symbols
//
// For convenience, a large number of symbols are predefined here.
// These symbols include the primitive type and method names, as well
// as fixed names used by the runtime system.
//
//////////////////////////////////////////////////////////////////////
static Symbol 
    arg,
    arg2,
    Bool,
    concat,
    cool_abort,
    copy,
    Int,
    in_int,
    in_string,
    IO,
    length,
    Main,
    main_meth,
    No_class,
    No_type,
    Object,
    out_int,
    out_string,
    prim_slot,
    self,
    SELF_TYPE,
    Str,
    str_field,
    substr,
    type_name,
    val;
//
// Initializing the predefined symbols.
//
static void initialize_constants(void)
{
    // add_string() returns a symbol that points an entry.
    arg         = idtable.add_string("arg");
    arg2        = idtable.add_string("arg2");
    Bool        = idtable.add_string("Bool");
    concat      = idtable.add_string("concat");
    cool_abort  = idtable.add_string("abort");
    copy        = idtable.add_string("copy");
    Int         = idtable.add_string("Int");
    in_int      = idtable.add_string("in_int");
    in_string   = idtable.add_string("in_string");
    IO          = idtable.add_string("IO");
    length      = idtable.add_string("length");
    Main        = idtable.add_string("Main");
    main_meth   = idtable.add_string("main");
    //   _no_class is a symbol that can't be the name of any 
    //   user-defined class.
    No_class    = idtable.add_string("_no_class");
    No_type     = idtable.add_string("_no_type");
    Object      = idtable.add_string("Object");
    out_int     = idtable.add_string("out_int");
    out_string  = idtable.add_string("out_string");
    prim_slot   = idtable.add_string("_prim_slot");
    self        = idtable.add_string("self");
    SELF_TYPE   = idtable.add_string("SELF_TYPE");
    Str         = idtable.add_string("String");
    str_field   = idtable.add_string("_str_field");
    substr      = idtable.add_string("substr");
    type_name   = idtable.add_string("type_name");
    val         = idtable.add_string("_val");
}



ClassTable::ClassTable(Classes classes) : semant_errors(0) , error_stream(cerr) {
  ///////////////////////////////////////////////////////////////
  // First part: Inheritance Graph Check  ///////////////////////
  ///////////////////////////////////////////////////////////////
  std::map<Symbol, Symbol> classMap;
  std::map<Symbol, Symbol>::iterator iter;
  Class_ mainClassPtr;

  for (int i = classes->first(); classes->more(i); i = classes->next(i) ) {
    // 1. check if class name is the same as its parent name  
    Symbol class_name = classes->nth(i)->get_name();
    Symbol parent_name = classes->nth(i)->get_parent_name();
    if (class_name == parent_name) {
      // if class name is the same as its parent, error
      semant_error(classes->nth(i)) << "Class " << class_name << ", or an ancestor of " <<  class_name << ", is involved in an inheritance cycle.\n";
    }
    // 2.  check duplicated class definition 
    iter = classMap.find(class_name);
    if (iter != classMap.end()) {
      // means that there is a duplicated defintion, error
      semant_error(classes->nth(i)) << "Class " << class_name << " was previously defined.\n";
    } else {
      classMap.insert(std::pair<Symbol, Symbol>(class_name, parent_name));
    }
    if (class_name == Main) {
      mainClassPtr = classes->nth(i);
    }
  }

  // 3. check undefined parent class
  int index = 0;
  // search for the parent class
  std::map<Symbol, Symbol>::iterator iterSearch;
  // map for the classes in the inheritance cycle
  std::map<Symbol, Class_> cycleMap;
  std::map<Symbol, Class_>::iterator cycleIter;
  std::map<Symbol, Class_>::iterator cycleSearchIter;
  
  for (iter = classMap.begin(); iter != classMap.end(); iter++) {
    // search if its parent exists
    iterSearch = classMap.find(iter->second);
    if (iterSearch == classMap.end() && (iter->second != Object)) {
      // its parent does not exist except class Object , error
      semant_error(classes->nth(index)) << "Class " << iter->first << " inherits from an undefined class " << iter->second << ".\n";
    } else {
      // 4. check if there is an inheritance cycle
      if (iterSearch->second == iter->first) {
        // exists a cycle, add class name symbol to the list
        cycleMap.insert(std::pair<Symbol, Class_>(iter->second, classes->nth(index)));
      }
    }
    index++;
  }

  // 5. check if some class inherits from a class in the inheritance cycle.
  index = 0;
  for (iter = classMap.begin(); iter != classMap.end(); iter++) {
    cycleSearchIter = cycleMap.find(iter->first);
    if (cycleSearchIter == cycleMap.end()) {
      cycleSearchIter = cycleMap.find(iter->second);
      if (cycleSearchIter != cycleMap.end()) {
        cycleMap.insert(std::pair<Symbol, Class_>(iter->first, classes->nth(index)));
      }
    }
    index++;
  }
  // print error message of inheritance cycle
  for (cycleIter = cycleMap.begin(); cycleIter != cycleMap.end(); cycleIter++) {
    semant_error(cycleIter->second) << "Class " << cycleIter->first << ", or an ancestor of " << cycleIter->first << ", is involved in an inheritance cycle.\n";
  }

  // 6. check if there is a Main class
  iterSearch = classMap.find(Main);
  if (iterSearch == classMap.end()) {
    semant_error() << "Class " << Main << " is not defined.\n";
  } else {
    // 7. check if there is a main function in the Main class
    Features mainClassFeatures = mainClassPtr->get_Features();
    int findMainFunc = 0;
    for (int i = mainClassFeatures->first(); mainClassFeatures->more(i); i = mainClassFeatures->next(i)) {
      if (mainClassFeatures->nth(i)->get_name() == main_meth) {
        findMainFunc = 1;
        break;
      }
    }
    if (!findMainFunc) {
      semant_error(mainClassPtr) << "No 'main' method in class Main.\n";
    }
  }
  ////////////////////////////////////////////////////////////////////
  //////  Second Part: Type Check  ///////////////////////////////////
  ////////////////////////////////////////////////////////////////////

}

void ClassTable::install_basic_classes() {

    // The tree package uses these globals to annotate the classes built below.
   // curr_lineno  = 0;
    Symbol filename = stringtable.add_string("<basic class>");
    
    // The following demonstrates how to create dummy parse trees to
    // refer to basic Cool classes.  There's no need for method
    // bodies -- these are already built into the runtime system.
    
    // IMPORTANT: The results of the following expressions are
    // stored in local variables.  You will want to do something
    // with those variables at the end of this method to make this
    // code meaningful.

    // 
    // The Object class has no parent class. Its methods are
    //        abort() : Object    aborts the program
    //        type_name() : Str   returns a string representation of class name
    //        copy() : SELF_TYPE  returns a copy of the object
    //
    // There is no need for method bodies in the basic classes---these
    // are already built in to the runtime system.

    Class_ Object_class =
	class_(Object, 
	       No_class,
	       append_Features(
			       append_Features(
					       single_Features(method(cool_abort, nil_Formals(), Object, no_expr())),
					       single_Features(method(type_name, nil_Formals(), Str, no_expr()))),
			       single_Features(method(copy, nil_Formals(), SELF_TYPE, no_expr()))),
	       filename);

    // 
    // The IO class inherits from Object. Its methods are
    //        out_string(Str) : SELF_TYPE       writes a string to the output
    //        out_int(Int) : SELF_TYPE            "    an int    "  "     "
    //        in_string() : Str                 reads a string from the input
    //        in_int() : Int                      "   an int     "  "     "
    //
    Class_ IO_class = 
	class_(IO, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       single_Features(method(out_string, single_Formals(formal(arg, Str)),
										      SELF_TYPE, no_expr())),
							       single_Features(method(out_int, single_Formals(formal(arg, Int)),
										      SELF_TYPE, no_expr()))),
					       single_Features(method(in_string, nil_Formals(), Str, no_expr()))),
			       single_Features(method(in_int, nil_Formals(), Int, no_expr()))),
	       filename);  

    //
    // The Int class has no methods and only a single attribute, the
    // "val" for the integer. 
    //
    Class_ Int_class =
	class_(Int, 
	       Object,
	       single_Features(attr(val, prim_slot, no_expr())),
	       filename);

    //
    // Bool also has only the "val" slot.
    //
    Class_ Bool_class =
	class_(Bool, Object, single_Features(attr(val, prim_slot, no_expr())),filename);

    //
    // The class Str has a number of slots and operations:
    //       val                                  the length of the string
    //       str_field                            the string itself
    //       length() : Int                       returns length of the string
    //       concat(arg: Str) : Str               performs string concatenation
    //       substr(arg: Int, arg2: Int): Str     substring selection
    //       
    Class_ Str_class =
	class_(Str, 
	       Object,
	       append_Features(
			       append_Features(
					       append_Features(
							       append_Features(
									       single_Features(attr(val, Int, no_expr())),
									       single_Features(attr(str_field, prim_slot, no_expr()))),
							       single_Features(method(length, nil_Formals(), Int, no_expr()))),
					       single_Features(method(concat, 
								      single_Formals(formal(arg, Str)),
								      Str, 
								      no_expr()))),
			       single_Features(method(substr, 
						      append_Formals(single_Formals(formal(arg, Int)), 
								     single_Formals(formal(arg2, Int))),
						      Str, 
						      no_expr()))),
	       filename);

   
    
}

////////////////////////////////////////////////////////////////////
//
// semant_error is an overloaded function for reporting errors
// during semantic analysis.  There are three versions:
//
//    ostream& ClassTable::semant_error()                
//
//    ostream& ClassTable::semant_error(Class_ c)
//       print line number and filename for `c'
//
//    ostream& ClassTable::semant_error(Symbol filename, tree_node *t)  
//       print a line number and filename
//
///////////////////////////////////////////////////////////////////

ostream& ClassTable::semant_error(Class_ c)
{                                                             
    return semant_error(c->get_filename(),c);
}    

ostream& ClassTable::semant_error(Symbol filename, tree_node *t)
{
    error_stream << filename << ":" << t->get_line_number() << ": ";
    return semant_error();
}

ostream& ClassTable::semant_error()                  
{                                                 
    semant_errors++;                            
    return error_stream;
} 



/*   This is the entry point to the semantic checker.

     Your checker should do the following two things:

     1) Check that the program is semantically correct
     2) Decorate the abstract syntax tree with type information
        by setting the `type' field in each Expression node.
        (see `tree.h')

     You are free to first do 1), make sure you catch all semantic
     errors. Part 2) can be done in a second stage, when you want
     to build mycoolc.
 */
void program_class::semant()
{
    initialize_constants();

    /* ClassTable constructor may do some semantic analysis */
    ClassTable *classtable = new ClassTable(classes);

    /* some semantic analysis code may go here */

    if (classtable->errors()) {
	cerr << "Compilation halted due to static semantic errors." << endl;
	exit(1);
    }
}


