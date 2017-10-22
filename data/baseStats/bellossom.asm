db DEX_BELLOSSOM ; pokedex id
db 75 ; base hp
db 80 ; base attack
db 85 ; base defense
db 50 ; base speed
db 90 ; base special
db GRASS ; species type 1
db GRASS ; species type 2
db 45 ; catch rate
db 184 ; base exp yield
INCBIN "pic/bmon/bellossom.pic",0,1 ; 77, sprite dimensions
dw BellossomPicFront
dw BellossomPicBack
; attacks known at lvl 0
db ABSORB
db SWEET_SCENT
db STUN_SPORE
db MAGICAL_LEAF
db 3 ; growth rate
; learnset
	tmlearn 6,8
	tmlearn 9,10,15
	tmlearn 20,21,22
	tmlearn 31,32
	tmlearn 33,34
	tmlearn 44
	tmlearn 50,51
db BANK(BellossomPicFront)
