KogasHouse1FObject:
	db $a ; border block

	db $3 ; warps
	db $7, $2, $3, $ff ; exit1
	db $7, $3, $3, $ff ; exit2
	db $1, $7, $0, KOGAS_HOUSE ; staircase

	db $0 ; signs

	db $1 ; objects
	object SPRITE_MOM_GEISHA, $5, $3, STAY, LEFT, $1 ; person

	; warp-to
	EVENT_DISP KOGAS_HOUSE_ENTRANCE_WIDTH, $7, $2
	EVENT_DISP KOGAS_HOUSE_ENTRANCE_WIDTH, $7, $3
	EVENT_DISP KOGAS_HOUSE_ENTRANCE_WIDTH, $1, $7
