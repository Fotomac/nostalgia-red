PewterGymObject:
	db $3 ; border block

	db $2 ; warps
	db $d, $4, $2, $ff
	db $d, $5, $2, $ff

	db $0 ; signs

	db $4 ; objects
	object SPRITE_BROCK, $4, $1, STAY, DOWN, $1, OPP_BROCK, $1
	object SPRITE_BLACK_HAIR_BOY_1, $3, $6, STAY, RIGHT, $2, OPP_JR_TRAINER_M, $1
	object SPRITE_LASS, $6, $8, STAY, LEFT, $3, OPP_LASS, $12
	object SPRITE_GYM_HELPER, $7, $a, STAY, DOWN, $4 ; person

	; warp-to
	EVENT_DISP PEWTER_GYM_WIDTH, $d, $4
	EVENT_DISP PEWTER_GYM_WIDTH, $d, $5
