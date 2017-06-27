Route12GateUpstairsScript:
	jp DisableAutoTextBoxDrawing

Route12GateUpstairsTextPointers:
	dw Route12GateUpstairsText1
	dw Route12GateUpstairsText2
	dw Route12GateUpstairsText3

Route12GateUpstairsText1:
	TX_ASM
	CheckEvent EVENT_GOT_TM27, 1
	jr c, .asm_0ad3c
	ld hl, TM27PreReceiveText
	call PrintText
	lb bc, TM_27, 1
	call GiveItem
	jr nc, .BagFull
	ld hl, ReceivedTM27Text
	call PrintText
	SetEvent EVENT_GOT_TM27
	jr .asm_4ba56
.BagFull
	ld hl, TM27NoRoomText
	call PrintText
	jr .asm_4ba56
.asm_0ad3c
	ld hl, TM27ExplanationText
	call PrintText
.asm_4ba56
	jp TextScriptEnd

TM27PreReceiveText:
	TX_FAR _TM27PreReceiveText
	db "@"

ReceivedTM27Text:
	TX_FAR _ReceivedTM27Text
	TX_SFX_ITEM_1
	db "@"

TM27ExplanationText:
	TX_FAR _TM27ExplanationText
	db "@"

TM27NoRoomText:
	TX_FAR _TM27NoRoomText
	db "@"

Route12GateUpstairsText2:
	TX_ASM
	ld hl, Route12GateUpstairsText_495b8
	jp GateUpstairsScript_PrintIfFacingUp

Route12GateUpstairsText_495b8:
	TX_FAR _Route12GateUpstairsText_495b8
	db "@"

Route12GateUpstairsText3:
	TX_ASM
	ld hl, Route12GateUpstairsText_495c4
	jp GateUpstairsScript_PrintIfFacingUp

Route12GateUpstairsText_495c4:
	TX_FAR _Route12GateUpstairsText_495c4
	db "@"

GateUpstairsScript_PrintIfFacingUp:
	ld a, [wSpriteStateData1 + 9]
	cp SPRITE_FACING_UP
	jr z, .up
	ld a, $1
	jr .done
.up
	call PrintText
	xor a
.done
	ld [wDoNotWaitForButtonPressAfterDisplayingText], a
	jp TextScriptEnd
