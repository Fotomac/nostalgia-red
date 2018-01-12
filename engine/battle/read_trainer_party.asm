ReadTrainer:

; don't change any moves in a link battle
	ld a,[wLinkState]
	and a
	ret nz

; set [wEnemyPartyCount] to 0, [wEnemyPartyMons] to FF
; XXX first is total enemy pokemon?
; XXX second is species of first pokemon?
	ld hl,wEnemyPartyCount
	xor a
	ld [hli],a
	dec a
	ld [hl],a

; get the pointer to trainer data for this class
	ld a,[wTrainerClass]
	dec a
	add a,a
	ld hl,TrainerDataPointers
	ld c,a
	ld b,0
	add hl,bc ; hl points to trainer class
	ld a,[hli]
	ld h,[hl]
	ld l,a
	ld a,[wTrainerNo]
	ld b,a
; At this point b contains the trainer number,
; and hl points to the trainer class.
; Our next task is to iterate through the trainers,
; decrementing b each time, until we get to the right one.
.outer
	dec b
	jr z,.IterateTrainer
.inner
	ld a,[hli]
	and a
	jr nz,.inner
	jr .outer

; if the first byte of trainer data is FF,
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
; else the first byte is the level of every pokemon on the team
.IterateTrainer
	call SetCustomName
	ld a,[hli]
	cp $FF ; is the trainer special?
	jr z,.SpecialTrainer ; if so, check for special moves
	cp $FE ; is this an extra-special trainer?
	jr z,.SpecialTrainer2 ; if so, read the Pic and AI numbers
	ld [wCurEnemyLVL],a
.LoopTrainerData
	ld a,[hli]
	and a ; have we reached the end of the trainer data?
	jr z,.FinishUp
	ld [wcf91],a ; write species somewhere (XXX why?)
	ld a,ENEMY_PARTY_DATA
	ld [wMonDataLocation],a
	push hl
	call AddPartyMon
	pop hl
	jr .LoopTrainerData
.SpecialTrainer2
	ld a, [hli] ; get pic ID
	ld [wTrainerPicID], a
	ld a, [hli] ; get AI ID
	ld [wTrainerAINumber], a
.SpecialTrainer
; if this code is being run:
; - each pokemon has a specific level
;      (as opposed to the whole team being of the same level)
; - if [wLoneAttackNo] != 0, one pokemon on the team has a special move
	ld a,[hli]
	and a ; have we reached the end of the trainer data?
	jr z,.AddCustomMoves
	ld [wCurEnemyLVL],a
	ld a,[hli]
	ld [wcf91],a
	ld a,ENEMY_PARTY_DATA
	ld [wMonDataLocation],a
	push hl
	call AddPartyMon
	pop hl
	jr .SpecialTrainer
.AddCustomMoves
	ld hl, TeamMoves
.ReadEntry
	ld a,[hli]
	cp a, $ff
	jr z, .FinishUp
	ld b, a
	ld a, [wTrainerClass]
	cp a, b
	jr nz, .NextEntry
	ld a, [hli]
	ld b, a
	ld a, [wTrainerNo]
	cp a, b
	jr nz, .NextEntry
.MoveLoop
	ld a, [hli] ; Which Pokemon?
	and a
	jr z, .FinishUp
	dec a       ; Decrease so we aren't adding too many times
	push af     ; hang on to this for later
	ld a, [hli] ; get slot number
	dec a       ; decrease so we aren't adding too many times
	ld b, 0
	ld c, a
	pop af      ; get the Pokemon count back
	push hl     ; Don't lose our place
	ld hl, wEnemyMon1Moves
	add hl,bc   ; bc has the slot number
	ld bc, wEnemyMon2 - wEnemyMon1
	call AddNTimes
	push hl     ; hold on to the address to load this move
	pop de      ; put it in de
	pop hl      ; get our place in the move data back
	ld a, [hli] ; get the move to store
	ld [de], a  ; store it
	jr .MoveLoop
.NextEntry
	ld a, [hli]
	and a
	jr z, .ReadEntry
	jr .NextEntry
.FinishUp
; clear wAmountMoneyWon addresses
	xor a
	ld de,wAmountMoneyWon
	ld [de],a
	inc de
	ld [de],a
	inc de
	ld [de],a
	ld a,[wCurEnemyLVL]
	ld b,a
.LastLoop
; update wAmountMoneyWon addresses (money to win) based on enemy's level
	ld hl,wTrainerBaseMoney + 1
	ld c,2 ; wAmountMoneyWon is a 3-byte number
	push bc
	predef AddBCDPredef
	pop bc
	inc de
	inc de
	dec b
	jr nz,.LastLoop ; repeat wCurEnemyLVL times
	ret
