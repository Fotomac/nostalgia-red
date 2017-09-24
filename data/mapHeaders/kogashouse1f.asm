KogasHouse1F_h:
	db HOUSE ; tileset
	db KOGAS_HOUSE_ENTRANCE_HEIGHT, KOGAS_HOUSE_ENTRANCE_WIDTH ; dimensions (y, x)
	dw KogasHouse1FBlocks, KogasHouse1FTextPointers, KogasHouse1FScript ; blocks, texts, scripts
	db $00 ; connections
	dw KogasHouse1FObject ; objects
