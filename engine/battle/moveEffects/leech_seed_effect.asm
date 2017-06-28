LeechSeedEffect_:
	callab MoveHitTest
	ld a, [wMoveMissed]
	and a
	jr nz, .moveMissed
	ld hl, wEnemyBattleStatus2
	ld de, wEnemyMonType1
	ld a, [H_WHOSETURN]
	and a
	jr z, .leechSeedEffect
	ld hl, wPlayerBattleStatus2
	ld de, wBattleMonType1
.leechSeedEffect
; miss if the target is grass-type or already seeded
	ld a, [de]
	cp GRASS
	jr z, .doesntAffect
	inc de
	ld a, [de]
	cp GRASS
	jr z, .doesntAffect
	bit Seeded, [hl]
	jr nz, .alreadySeeded
	set Seeded, [hl]
	callab PlayCurrentMoveAnimation
	ld hl, WasSeededText
	jp PrintText
.alreadySeeded
	ld c, 50
	call DelayFrames
	ld hl, AlreadySeededText
	jp PrintText
.moveMissed
	ld c, 50
	call DelayFrames
	ld hl, EvadedAttackText
	jp PrintText
.doesntAffect
	call DelayFrames
	callba PrintDoesntAffectText
	ret

WasSeededText:
	TX_FAR _WasSeededText
	db "@"

AlreadySeededText:
	TX_FAR _AlreadySeededText
	db "@"

EvadedAttackText:
	TX_FAR _EvadedAttackText
	db "@"
