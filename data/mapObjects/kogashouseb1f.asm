KogasHouseB1FObject:
	db $0A ; border block

	db $1 ; warps
	db $1, $9, $2, KOGAS_HOUSE_ENTRANCE

	db $0 ; signs

	db $5 ; objects
	object SPRITE_BRUNETTE_GIRL, $7, $9, STAY, NONE, $1, OPP_JANINE, $1
	object SPRITE_BRUNETTE_GIRL, $0, $1, STAY, RIGHT, $2, OPP_LASS, $14
	object SPRITE_BRUNETTE_GIRL, $2, $6, STAY, LEFT, $3, OPP_JR_TRAINER_F, $1c
	object SPRITE_BRUNETTE_GIRL, $5, $6, STAY, DOWN, $4, OPP_JR_TRAINER_M, $b
	object SPRITE_BRUNETTE_GIRL, $9, $7, STAY, LEFT, $5, OPP_LASS, $15

	; warp-to
	EVENT_DISP KOGAS_HOUSE_WIDTH, $1, $9
