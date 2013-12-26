# start of generated code
	.data
	.align	2
	.globl	class_nameTab
	.globl	Main_protObj
	.globl	Int_protObj
	.globl	String_protObj
	.globl	bool_const0
	.globl	bool_const1
	.globl	_int_tag
	.globl	_bool_tag
	.globl	_string_tag
_int_tag:
	.word	2
_bool_tag:
	.word	3
_string_tag:
	.word	4
	.globl	_MemMgr_INITIALIZER
_MemMgr_INITIALIZER:
	.word	_NoGC_Init
	.globl	_MemMgr_COLLECTOR
_MemMgr_COLLECTOR:
	.word	_NoGC_Collect
	.globl	_MemMgr_TEST
_MemMgr_TEST:
	.word	0
	.word	-1
str_const11:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.byte	0	
	.align	2
	.word	-1
str_const10:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Main"
	.byte	0	
	.align	2
	.word	-1
str_const9:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"String"
	.byte	0	
	.align	2
	.word	-1
str_const8:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const3
	.ascii	"Bool"
	.byte	0	
	.align	2
	.word	-1
str_const7:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const5
	.ascii	"Int"
	.byte	0	
	.align	2
	.word	-1
str_const6:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const6
	.ascii	"IO"
	.byte	0	
	.align	2
	.word	-1
str_const5:
	.word	4
	.word	6
	.word	String_dispTab
	.word	int_const4
	.ascii	"Object"
	.byte	0	
	.align	2
	.word	-1
str_const4:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const7
	.ascii	"_prim_slot"
	.byte	0	
	.align	2
	.word	-1
str_const3:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"SELF_TYPE"
	.byte	0	
	.align	2
	.word	-1
str_const2:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const8
	.ascii	"_no_class"
	.byte	0	
	.align	2
	.word	-1
str_const1:
	.word	4
	.word	8
	.word	String_dispTab
	.word	int_const9
	.ascii	"<basic class>"
	.byte	0	
	.align	2
	.word	-1
str_const0:
	.word	4
	.word	7
	.word	String_dispTab
	.word	int_const10
	.ascii	"./not.cl"
	.byte	0	
	.align	2
	.word	-1
int_const10:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	8
	.word	-1
int_const9:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	13
	.word	-1
int_const8:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	9
	.word	-1
int_const7:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	10
	.word	-1
int_const6:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	2
	.word	-1
int_const5:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	3
	.word	-1
int_const4:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	6
	.word	-1
int_const3:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	4
	.word	-1
int_const2:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	1
	.word	-1
int_const1:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	100
	.word	-1
int_const0:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
bool_const0:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
bool_const1:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	1
Int__val_attrOffset=3
Bool__val_attrOffset=3
String__val_attrOffset=3
String__str_field_attrOffset=4
class_nameTab:
	.word	str_const5
	.word	str_const6
	.word	str_const7
	.word	str_const8
	.word	str_const9
	.word	str_const10
class_objTab:
	.word	Object_protObj
	.word	Object_init
	.word	IO_protObj
	.word	IO_init
	.word	Int_protObj
	.word	Int_init
	.word	Bool_protObj
	.word	Bool_init
	.word	String_protObj
	.word	String_init
	.word	Main_protObj
	.word	Main_init
Object_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
IO_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	IO.out_string
	.word	IO.out_int
	.word	IO.in_string
	.word	IO.in_int
Int_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
Bool_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
String_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	String.length
	.word	String.concat
	.word	String.substr
Main_dispTab:
	.word	Object.abort
	.word	Object.type_name
	.word	Object.copy
	.word	Main.main
	.word	-1
Object_protObj:
	.word	0
	.word	3
	.word	Object_dispTab
	.word	-1
IO_protObj:
	.word	1
	.word	3
	.word	IO_dispTab
	.word	-1
Int_protObj:
	.word	2
	.word	4
	.word	Int_dispTab
	.word	0
	.word	-1
Bool_protObj:
	.word	3
	.word	4
	.word	Bool_dispTab
	.word	0
	.word	-1
String_protObj:
	.word	4
	.word	5
	.word	String_dispTab
	.word	int_const0
	.word	0
	.word	-1
Main_protObj:
	.word	5
	.word	3
	.word	Main_dispTab
	.globl	heap_start
heap_start:
	.word	0
	.text
	.globl	Main_init
	.globl	Int_init
	.globl	String_init
	.globl	Bool_init
	.globl	Main.main
Object_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
IO_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Int_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Bool_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
String_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main_init:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp 0
	move	$s0 $a0
	jal	Object_init
	move	$a0 $s0
	addiu	$sp $sp 0
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	
Main.main:
	sw	$fp 0($sp)
	addiu	$sp $sp -4
	sw	$s0 0($sp)
	addiu	$sp $sp -4
	move	$fp $sp
	sw	$ra 0($sp)
	addiu	$sp $sp -4
	addiu	$sp $sp -8
	move	$s0 $a0
	la	$a0 int_const0
	sw	$a0 -4($fp)
	la	$a0 Bool_protObj
	jal	Object.copy
	sw	$a0 -8($fp)
label0:
	lw	$a0 -4($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const1
	lw	$t1 4($sp)
	addiu	$sp $sp 4
	lw	$a0 12($a0)
	lw	$t1 12($t1)
	blt	$t1 $a0 label2
	la	$a0 bool_const0
	b	label3
label2:
	la	$a0 bool_const1
label3:
	lw	$t2 12($a0)
	beqz	$t2 label1
	lw	$a0 -8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -8($fp)
	lw	$t3 12($a0)
	beqz	$t3 label4
	la	$a0 bool_const0
	b	label5
label4:
	la	$a0 bool_const1
label5:
	lw	$t3 12($a0)
	beqz	$t3 label6
	la	$a0 bool_const0
	b	label7
label6:
	la	$a0 bool_const1
label7:
	lw	$t3 12($a0)
	beqz	$t3 label8
	la	$a0 bool_const0
	b	label9
label8:
	la	$a0 bool_const1
label9:
	lw	$t3 12($a0)
	beqz	$t3 label10
	la	$a0 bool_const0
	b	label11
label10:
	la	$a0 bool_const1
label11:
	lw	$t3 12($a0)
	beqz	$t3 label12
	la	$a0 bool_const0
	b	label13
label12:
	la	$a0 bool_const1
label13:
	lw	$t3 12($a0)
	beqz	$t3 label14
	la	$a0 bool_const0
	b	label15
label14:
	la	$a0 bool_const1
label15:
	lw	$t3 12($a0)
	beqz	$t3 label16
	la	$a0 bool_const0
	b	label17
label16:
	la	$a0 bool_const1
label17:
	lw	$t3 12($a0)
	beqz	$t3 label18
	la	$a0 bool_const0
	b	label19
label18:
	la	$a0 bool_const1
label19:
	lw	$t3 12($a0)
	beqz	$t3 label20
	la	$a0 bool_const0
	b	label21
label20:
	la	$a0 bool_const1
label21:
	lw	$t3 12($a0)
	beqz	$t3 label22
	la	$a0 bool_const0
	b	label23
label22:
	la	$a0 bool_const1
label23:
	lw	$t3 12($a0)
	beqz	$t3 label24
	la	$a0 bool_const0
	b	label25
label24:
	la	$a0 bool_const1
label25:
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label26
	la	$a1 bool_const0
	jal	equality_test
label26:
	lw	$a0 -8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -8($fp)
	lw	$t3 12($a0)
	beqz	$t3 label27
	la	$a0 bool_const0
	b	label28
label27:
	la	$a0 bool_const1
label28:
	lw	$t3 12($a0)
	beqz	$t3 label29
	la	$a0 bool_const0
	b	label30
label29:
	la	$a0 bool_const1
label30:
	lw	$t3 12($a0)
	beqz	$t3 label31
	la	$a0 bool_const0
	b	label32
label31:
	la	$a0 bool_const1
label32:
	lw	$t3 12($a0)
	beqz	$t3 label33
	la	$a0 bool_const0
	b	label34
label33:
	la	$a0 bool_const1
label34:
	lw	$t3 12($a0)
	beqz	$t3 label35
	la	$a0 bool_const0
	b	label36
label35:
	la	$a0 bool_const1
label36:
	lw	$t3 12($a0)
	beqz	$t3 label37
	la	$a0 bool_const0
	b	label38
label37:
	la	$a0 bool_const1
label38:
	lw	$t3 12($a0)
	beqz	$t3 label39
	la	$a0 bool_const0
	b	label40
label39:
	la	$a0 bool_const1
label40:
	lw	$t3 12($a0)
	beqz	$t3 label41
	la	$a0 bool_const0
	b	label42
label41:
	la	$a0 bool_const1
label42:
	lw	$t3 12($a0)
	beqz	$t3 label43
	la	$a0 bool_const0
	b	label44
label43:
	la	$a0 bool_const1
label44:
	lw	$t3 12($a0)
	beqz	$t3 label45
	la	$a0 bool_const0
	b	label46
label45:
	la	$a0 bool_const1
label46:
	lw	$t3 12($a0)
	beqz	$t3 label47
	la	$a0 bool_const0
	b	label48
label47:
	la	$a0 bool_const1
label48:
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label49
	la	$a1 bool_const0
	jal	equality_test
label49:
	lw	$a0 -8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -8($fp)
	lw	$t3 12($a0)
	beqz	$t3 label50
	la	$a0 bool_const0
	b	label51
label50:
	la	$a0 bool_const1
label51:
	lw	$t3 12($a0)
	beqz	$t3 label52
	la	$a0 bool_const0
	b	label53
label52:
	la	$a0 bool_const1
label53:
	lw	$t3 12($a0)
	beqz	$t3 label54
	la	$a0 bool_const0
	b	label55
label54:
	la	$a0 bool_const1
label55:
	lw	$t3 12($a0)
	beqz	$t3 label56
	la	$a0 bool_const0
	b	label57
label56:
	la	$a0 bool_const1
label57:
	lw	$t3 12($a0)
	beqz	$t3 label58
	la	$a0 bool_const0
	b	label59
label58:
	la	$a0 bool_const1
label59:
	lw	$t3 12($a0)
	beqz	$t3 label60
	la	$a0 bool_const0
	b	label61
label60:
	la	$a0 bool_const1
label61:
	lw	$t3 12($a0)
	beqz	$t3 label62
	la	$a0 bool_const0
	b	label63
label62:
	la	$a0 bool_const1
label63:
	lw	$t3 12($a0)
	beqz	$t3 label64
	la	$a0 bool_const0
	b	label65
label64:
	la	$a0 bool_const1
label65:
	lw	$t3 12($a0)
	beqz	$t3 label66
	la	$a0 bool_const0
	b	label67
label66:
	la	$a0 bool_const1
label67:
	lw	$t3 12($a0)
	beqz	$t3 label68
	la	$a0 bool_const0
	b	label69
label68:
	la	$a0 bool_const1
label69:
	lw	$t3 12($a0)
	beqz	$t3 label70
	la	$a0 bool_const0
	b	label71
label70:
	la	$a0 bool_const1
label71:
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label72
	la	$a1 bool_const0
	jal	equality_test
label72:
	lw	$a0 -8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -8($fp)
	lw	$t3 12($a0)
	beqz	$t3 label73
	la	$a0 bool_const0
	b	label74
label73:
	la	$a0 bool_const1
label74:
	lw	$t3 12($a0)
	beqz	$t3 label75
	la	$a0 bool_const0
	b	label76
label75:
	la	$a0 bool_const1
label76:
	lw	$t3 12($a0)
	beqz	$t3 label77
	la	$a0 bool_const0
	b	label78
label77:
	la	$a0 bool_const1
label78:
	lw	$t3 12($a0)
	beqz	$t3 label79
	la	$a0 bool_const0
	b	label80
label79:
	la	$a0 bool_const1
label80:
	lw	$t3 12($a0)
	beqz	$t3 label81
	la	$a0 bool_const0
	b	label82
label81:
	la	$a0 bool_const1
label82:
	lw	$t3 12($a0)
	beqz	$t3 label83
	la	$a0 bool_const0
	b	label84
label83:
	la	$a0 bool_const1
label84:
	lw	$t3 12($a0)
	beqz	$t3 label85
	la	$a0 bool_const0
	b	label86
label85:
	la	$a0 bool_const1
label86:
	lw	$t3 12($a0)
	beqz	$t3 label87
	la	$a0 bool_const0
	b	label88
label87:
	la	$a0 bool_const1
label88:
	lw	$t3 12($a0)
	beqz	$t3 label89
	la	$a0 bool_const0
	b	label90
label89:
	la	$a0 bool_const1
label90:
	lw	$t3 12($a0)
	beqz	$t3 label91
	la	$a0 bool_const0
	b	label92
label91:
	la	$a0 bool_const1
label92:
	lw	$t3 12($a0)
	beqz	$t3 label93
	la	$a0 bool_const0
	b	label94
label93:
	la	$a0 bool_const1
label94:
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label95
	la	$a1 bool_const0
	jal	equality_test
label95:
	lw	$a0 -8($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	lw	$a0 -8($fp)
	lw	$t3 12($a0)
	beqz	$t3 label96
	la	$a0 bool_const0
	b	label97
label96:
	la	$a0 bool_const1
label97:
	lw	$t3 12($a0)
	beqz	$t3 label98
	la	$a0 bool_const0
	b	label99
label98:
	la	$a0 bool_const1
label99:
	lw	$t3 12($a0)
	beqz	$t3 label100
	la	$a0 bool_const0
	b	label101
label100:
	la	$a0 bool_const1
label101:
	lw	$t3 12($a0)
	beqz	$t3 label102
	la	$a0 bool_const0
	b	label103
label102:
	la	$a0 bool_const1
label103:
	lw	$t3 12($a0)
	beqz	$t3 label104
	la	$a0 bool_const0
	b	label105
label104:
	la	$a0 bool_const1
label105:
	lw	$t3 12($a0)
	beqz	$t3 label106
	la	$a0 bool_const0
	b	label107
label106:
	la	$a0 bool_const1
label107:
	lw	$t3 12($a0)
	beqz	$t3 label108
	la	$a0 bool_const0
	b	label109
label108:
	la	$a0 bool_const1
label109:
	lw	$t3 12($a0)
	beqz	$t3 label110
	la	$a0 bool_const0
	b	label111
label110:
	la	$a0 bool_const1
label111:
	lw	$t3 12($a0)
	beqz	$t3 label112
	la	$a0 bool_const0
	b	label113
label112:
	la	$a0 bool_const1
label113:
	lw	$t3 12($a0)
	beqz	$t3 label114
	la	$a0 bool_const0
	b	label115
label114:
	la	$a0 bool_const1
label115:
	lw	$t3 12($a0)
	beqz	$t3 label116
	la	$a0 bool_const0
	b	label117
label116:
	la	$a0 bool_const1
label117:
	lw	$t1 4($sp)
	move	$t2 $a0
	addiu	$sp $sp 4
	la	$a0 bool_const1
	beq	$t1 $t2 label118
	la	$a1 bool_const0
	jal	equality_test
label118:
	lw	$a0 -4($fp)
	sw	$a0 0($sp)
	addiu	$sp $sp -4
	la	$a0 int_const2
	lw	$t1 4($sp)
	lw	$t2 12($t1)
	lw	$t3 12($a0)
	add	$t2 $t2 $t3
	jal	Object.copy
	sw	$t2 12($a0)
	addiu	$sp $sp 4
	sw	$a0 -4($fp)
	b	label0
label1:
	li	$a0 0
	lw	$a0 -8($fp)
	lw	$t2 12($a0)
	beqz	$t2 label119
	move	$a0 $s0
	bne	$a0 $zero label121
	la	$a0 str_const0
	li	$t1 1
	jal	_dispatch_abort
label121:
	lw	$t1 8($a0)
	lw	$t1 0($t1)
	jalr		$t1
	b	label120
label119:
	la	$a0 int_const0
label120:
	addiu	$sp $sp 8
	lw	$ra 4($sp)
	lw	$s0 8($sp)
	lw	$fp 12($sp)
	addiu	$sp $sp 12
	jr	$ra	

# end of generated code
