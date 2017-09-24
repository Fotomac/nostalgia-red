KogasHouseB1F_h:
	db DOJO ; tileset
	db KOGAS_HOUSE_HEIGHT, KOGAS_HOUSE_WIDTH ; dimensions (y, x)
	dw KogasHouseB1FBlocks, KogasHouseB1FTextPointers, KogasHouseB1FScript ; blocks, texts, scripts
	db $00 ; connections
	dw KogasHouseB1FObject ; objects
