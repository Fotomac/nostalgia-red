db DEX_PIKABLU ; pokedex id 
db 70 ; base hp 
db 20 ; base attack 
db 50 ; base defense 
db 40 ; base speed 
db 20 ; base special 
db WATER ; species type 1 
db FAIRY ; species type 2 
db 190 ; catch rate 
db 58 ; base exp yield 
INCBIN "pic/ymon/pikablu.pic",0,1 ; 55, sprite dimensions 
dw PikabluPicFront 
dw PikabluPicBack 
; attacks known at lvl 0 
db TACKLE 
db 0 
db 0 
db 0 
db 4 ; growth rate 
; learnset 
	tmlearn 1,3,6,8 
	tmlearn 10,11,12,13,14,16 
	tmlearn 17,20 
	tmlearn 27,28,31,32 
	tmlearn 36,40 
	tmlearn 43,44 
	tmlearn 50,53,54 
db BANK(PikabluPicFront)
