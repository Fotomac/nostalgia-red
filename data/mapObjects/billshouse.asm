BillsHouseObject:
	db $d ; border block

	db $2 ; warps
	db $7, $2, $0, $ff
	db $7, $3, $0, $ff

	db $0 ; signs

	db $3 ; objects
	object SPRITE_CLEFAIRY, $6, $5, STAY, NONE, $1 ; person
	object SPRITE_BILL, $4, $4, STAY, NONE, $2 ; person
	object SPRITE_BILL, $6, $5, STAY, NONE, $3 ; person

	; warp-to
	EVENT_DISP BILLS_HOUSE_WIDTH, $7, $2
	EVENT_DISP BILLS_HOUSE_WIDTH, $7, $3
