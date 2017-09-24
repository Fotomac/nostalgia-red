KogasHouseB1FScript:
	call EnableAutoTextBoxDrawing
	ld hl, KogasHouseB1FTrainerHeader0
	ld de, KogasHouseB1FScriptPointers
	ld a, [wKogasHouseB1FCurScript]
	call ExecuteCurMapScriptInTable
	ld [wKogasHouseB1FCurScript], a
	ret

KogasHouseB1FScript0:
	xor a
	ld [wJoyIgnore], a
	ld [wKogasHouseB1FCurScript], a
	ld [wCurMapScript], a
	ret

KogasHouseB1FScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw KogasHouseB1FScript3

KogasHouseB1FScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, KogasHouseB1FScript0
	ld a, $f0
	ld [wJoyIgnore], a

KogasHouseB1FScript1:
	ld a, $6
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_JANINE
	lb bc, TM_46, 1
	call GiveItem
	jr nc, .BagFull
	ld a, $7
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM46
	jr .next
.BagFull
	ld a, $8
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.next
	; deactivate gym trainers
	SetEventRange EVENT_BEAT_KOGAS_HOUSE_TRAINER_0, EVENT_BEAT_KOGAS_HOUSE_TRAINER_3

	jp KogasHouseB1FScript0

KogasHouseB1FTextPointers:
	dw KogasHouseB1FText1
	dw KogasHouseB1FText2
	dw KogasHouseB1FText3
	dw KogasHouseB1FText4
	dw KogasHouseB1FText5
	dw KogasHouseB1FText6
	dw KogasHouseB1FText7
	dw KogasHouseB1FText8

KogasHouseTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_KOGAS_HOUSE_TRAINER_0
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_KOGAS_HOUSE_TRAINER_0
	dw KogasHouseBattleText1 ; TextBeforeBattle
	dw KogasHouseAfterBattleText1 ; TextAfterBattle
	dw KogasHouseEndBattleText1 ; TextEndBattle
	dw KogasHouseEndBattleText1 ; TextEndBattle

KogasHouseTrainerHeader1:
	dbEventFlagBit EVENT_BEAT_KOGAS_HOUSE_TRAINER_1
	db ($4 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_KOGAS_HOUSE_TRAINER_1
	dw KogasHouseBattleText2 ; TextBeforeBattle
	dw KogasHouseAfterBattleText2 ; TextAfterBattle
	dw KogasHouseEndBattleText2 ; TextEndBattle
	dw KogasHouseEndBattleText2 ; TextEndBattle

KogasHouseTrainerHeader2:
	dbEventFlagBit EVENT_BEAT_KOGAS_HOUSE_TRAINER_2
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_KOGAS_HOUSE_TRAINER_2
	dw KogasHouseBattleText3 ; TextBeforeBattle
	dw KogasHouseAfterBattleText3 ; TextAfterBattle
	dw KogasHouseEndBattleText3 ; TextEndBattle
	dw KogasHouseEndBattleText3 ; TextEndBattle

KogasHouseTrainerHeader3:
	dbEventFlagBit EVENT_BEAT_KOGAS_HOUSE_TRAINER_3
	db ($3 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_KOGAS_HOUSE_TRAINER_3
	dw KogasHouseBattleText4 ; TextBeforeBattle
	dw KogasHouseAfterBattleText4 ; TextAfterBattle
	dw KogasHouseEndBattleText4 ; TextEndBattle
	dw KogasHouseEndBattleText4 ; TextEndBattle

	db $ff

KogasHouseB1FText1:
	TX_ASM
	CheckEvent EVENT_BEAT_JANINE
	jr z, .continue
	CheckEventReuseA EVENT_GOT_TM46
	jr nz, .continue2
	call z, KogasHouseB1FScript1
	call DisableWaitingAfterTextDisplay
	jr .done
.continue2
	ld hl, JanineAfterBattleText
	call PrintText
	jr .done
.continue
	ld hl, JanineBeforeBattleText
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, JanineEndBattleText
	ld de, JanineEndBattleText
	call SaveEndBattleTextPointers
	ld a, [H_SPRITEINDEX]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $3
	ld [wKogasHouseB1FCurScript], a
.done
	jp TextScriptEnd

JanineBeforeBattleText:
	TX_FAR _JanineBeforeBattleText
	db "@"

JanineEndBattleText:
	TX_FAR _JanineEndBattleText
	db "@"

JanineAfterBattleText:
	TX_FAR _JanineAfterBattleText
	db "@"

KogasHouseB1FText6:
	TX_FAR _JanineGiveTM46Text
	db "@"

KogasHouseB1FText7:
	TX_FAR _ReceivedTM46Text
	TX_SFX_KEY_ITEM

TM46ExplanationText:
	TX_FAR _TM46ExplanationText
	db "@"

KogasHouseB1FText8:
	TX_FAR _TM46NoRoomText
	db "@"

KogasHouseB1FText2:
	TX_ASM
	ld hl, KogasHouseTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

KogasHouseBattleText1:
	TX_FAR _KogasHouseBattleText1
	db "@"

KogasHouseEndBattleText1:
	TX_FAR _KogasHouseEndBattleText1
	db "@"

KogasHouseAfterBattleText1:
	TX_FAR _KogasHouseAfterBattleText1
	db "@"

KogasHouseB1FText3:
	TX_ASM
	ld hl, KogasHouseTrainerHeader1
	call TalkToTrainer
	jp TextScriptEnd

KogasHouseBattleText2:
	TX_FAR _KogasHouseBattleText2
	db "@"

KogasHouseEndBattleText2:
	TX_FAR _KogasHouseEndBattleText2
	db "@"

KogasHouseAfterBattleText2:
	TX_FAR _KogasHouseAfterBattleText2
	db "@"

KogasHouseB1FText4:
	TX_ASM
	ld hl, KogasHouseTrainerHeader2
	call TalkToTrainer
	jp TextScriptEnd

KogasHouseBattleText3:
	TX_FAR _KogasHouseBattleText3
	db "@"

KogasHouseEndBattleText3:
	TX_FAR _KogasHouseEndBattleText3
	db "@"

KogasHouseAfterBattleText3:
	TX_FAR _KogasHouseAfterBattleText3
	db "@"

KogasHouseB1FText5:
	TX_ASM
	ld hl, KogasHouseTrainerHeader3
	call TalkToTrainer
	jp TextScriptEnd

KogasHouseBattleText4:
	TX_FAR _KogasHouseBattleText4
	db "@"

KogasHouseEndBattleText4:
	TX_FAR _KogasHouseEndBattleText4
	db "@"

KogasHouseAfterBattleText4:
	TX_FAR _KogasHouseAfterBattleText4
	db "@"
