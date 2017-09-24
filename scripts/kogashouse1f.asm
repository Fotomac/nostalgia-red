KogasHouseEntranceScript:
	jp EnableAutoTextBoxDrawing

KogasHouseEntranceTextPointers:
	dw KogasHouseEntranceText

KogasHouseEntranceText:
	TX_ASM
	CheckEvent EVENT_BEAT_KOGA
	jr z, .next
	ld hl, KogasHouseEntranceText2
	call PrintText
	jr .done
.next
	ld hl, KogasHouseEntranceText1
	call PrintText
.done
	jp TextScriptEnd

KogasHouseEntranceText1:
	TX_FAR _KogasHouseEntranceText1
	db "@"

KogasHouseEntranceText2:
	TX_FAR _KogasHouseEntranceText2
	db "@"
