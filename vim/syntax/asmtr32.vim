" Vim syntax file
" Language:	TR3200 VASM Assembler
" Maintainer:	Luis Panadero Guardeño
" Last change:	2015 06 02
"
" Base on tr32 syntax file
"

if exists("b:current_syntax")
  finish
endif

syn case ignore
syn sync fromstart

" List of register symbols
syn keyword tr32Reg	r0 r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 r11 r12 r13 r14 r15
syn keyword tr32Reg	pc sp bp ia y

" TR3200 opcodes - order is important!
syn keyword tr32Opcode add
syn keyword tr32Opcode addc
syn keyword tr32Opcode and
syn keyword tr32Opcode ars
syn keyword tr32Opcode bitc
syn keyword tr32Opcode call
syn keyword tr32Opcode div
syn keyword tr32Opcode getpc
syn keyword tr32Opcode ifbits
syn keyword tr32Opcode ifclear
syn keyword tr32Opcode ifg
syn keyword tr32Opcode ifge
syn keyword tr32Opcode ifeq
syn keyword tr32Opcode ifl
syn keyword tr32Opcode ifle
syn keyword tr32Opcode ifneq
syn keyword tr32Opcode ifsl
syn keyword tr32Opcode ifsle
syn keyword tr32Opcode ifsg
syn keyword tr32Opcode ifsge
syn keyword tr32Opcode int
syn keyword tr32Opcode jmp
syn keyword tr32Opcode lls
syn keyword tr32Opcode lrs
syn keyword tr32Opcode load
syn keyword tr32Opcode loadb
syn keyword tr32Opcode loadw
syn keyword tr32Opcode not
syn keyword tr32Opcode mul
syn keyword tr32Opcode mov
syn keyword tr32Opcode or
syn keyword tr32Opcode pop
syn keyword tr32Opcode push
syn keyword tr32Opcode rcall
syn keyword tr32Opcode ret
syn keyword tr32Opcode rfi
syn keyword tr32Opcode rjmp
syn keyword tr32Opcode rotl
syn keyword tr32Opcode rotr
syn keyword tr32Opcode rsb
syn keyword tr32Opcode rsbb
syn keyword tr32Opcode sdiv
syn keyword tr32Opcode sigxb
syn keyword tr32Opcode sigxw
syn keyword tr32Opcode sleep
syn keyword tr32Opcode smul
syn keyword tr32Opcode store
syn keyword tr32Opcode storeb
syn keyword tr32Opcode storew
syn keyword tr32Opcode sub
syn keyword tr32Opcode subb
syn keyword tr32Opcode xchgb
syn keyword tr32Opcode xchgw

" Strings
syn region tr32String start=/"/ skip=/\\"/ end=/"/ oneline
syn region tr32String start=/'/ end=/'/ oneline

" Valid labels
syn match tr32Label		"^[a-zA-Z_?.][a-zA-Z0-9_?.]*:\="

" Various number formats
syn match hexNumber		"\0x[0-9a-fA-F]\+\>"
syn match binNumber		"0b[01]\+\>"
syn match octalNumber		"0[0-7][0-7]\+"
syn match hexNumber		"\<[0-9][0-9a-fA-F]*[Hh]\>"
syn match decNumber		"\<[0-9]\=\>"

" Operators
syn match tr32Operator	"[~+\-*/%^&=!<>]"

" Directives
" Includes
syn match tr32Include	"\.include"
syn match tr32Include	"\.incbin"
syn match tr32Include	"\.binary"

" WaveAsm and VASM common
syn match tr32PreProc "\.org"
syn match tr32PreProcequ  "\.reserve"
syn match tr32PreProc "\.fill"
syn match tr32DataType "\.data"
syn match tr32DataType "\.d[dwb]"
" VASM directives
syn keyword tr32PreProc .addr .align .assert
syn keyword tr32DataType .abyte .ascii .asciiz .asc
syn keyword tr32PreProc .blk .blkw
syn keyword tr32DataType .blk .blkw .byt .byte
syn keyword tr32PreProc .dc .defb .defc .defl .defp .defm .defw .dephs .dephase
syn keyword tr32DataType .ds .dsb .dsw
syn keyword tr32PreProc .end .endmac .endmacro .endr .endrepeat .enrep .extern .even
syn keyword tr32PreProc .fail .fill
syn match tr32PreProc "\.global"
syn match tr32PreProc "\.incdir"
syn keyword tr32PreProc .list .local
syn keyword tr32PreProc .mac .mdat
syn keyword tr32PreProc .nolist
syn keyword tr32PreProc .phase
syn keyword tr32PreProc .rept .repeat .rend .rorg
syn match tr32Section "\.section"
syn keyword tr32PreProc .set .spc
syn keyword tr32DataType .string .text
syn keyword tr32PreProc .weak
syn keyword tr32DataType .wor .wrd .word
syn keyword tr32PreProc .xdef .xlib .xref

syn match tr32Cond	"\.if"
syn match tr32Cond	"\.ifdef"
syn match tr32Cond	"\.ifndef"
syn match tr32Cond	"\.ifeq"
syn match tr32Cond	"\.ifne"
syn match tr32Cond	"\.ifgt"
syn match tr32Cond	"\.iflt"
syn match tr32Cond	"\.ifle"
syn match tr32Cond	"\.else"
syn match tr32Cond	"\.el"
syn match tr32Cond	"\.endif"
syn match tr32Macro	"\.macro"
syn match tr32Macro	"\.endm"
syn case match

" Special items for comments
syn keyword tr32Todo	contained TODO FIXME XXX

" Comments
syn match tr32Comment	";.*" contains=tr32Todo


" Define the default highlighting.

" The default methods for highlighting.  Can be overridden later
" Comment Constant Error Identifier PreProc Special Statement Todo Type
"
" Constant		Boolean Character Number String
" Identifier		Function
" PreProc		Define Include Macro PreCondit
" Special		Debug Delimiter SpecialChar SpecialComment Tag
" Statement		Conditional Exception Keyword Label Operator Repeat
" Type		StorageClass Structure Typedef

hi def link tr32Section	        Special

hi def link tr32Comment		Comment
hi def link tr32Todo		Todo

hi def link hexNumber	        Number
hi def link binNumber		Number
hi def link octalNumber	        Number
hi def link decNumber		Number

hi def link tr32String		String

hi def link tr32Reg		Constant
hi def link tr32Operator	Operator

hi def link tr32Include	        Include
hi def link tr32PreProc	        PreProc
hi def link tr32Cond	        PreCondit
hi def link tr32Macro	        Macro
hi def link tr32DataType	Type

hi def link tr32Opcode		Statement

hi def link tr32Label		Type

let b:current_syntax = "asmtr32"

" vim: ts=8 sw=2
