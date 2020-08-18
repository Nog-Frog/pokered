PewterGym_Script:
	ld hl, wCurrentMapScriptFlags
	bit 6, [hl]
	res 6, [hl]
	call nz, PewterGymScript_5c3a4
	call EnableAutoTextBoxDrawing
	ld hl, PewterGymTrainerHeader0
	ld de, PewterGym_ScriptPointers
	ld a, [wPewterGymCurScript]
	call ExecuteCurMapScriptInTable
	ld [wPewterGymCurScript], a
	ret

PewterGymScript_5c3a4:
	ld hl, Gym1CityName
	ld de, Gym1LeaderName
	jp LoadGymLeaderAndCityName

Gym1CityName:
	db "עיר הכספית@"

Gym1LeaderName:
	db "צור@"

PewterGymScript_5c3bf:
	xor a
	ld [wJoyIgnore], a
	ld [wPewterGymCurScript], a
	ld [wCurMapScript], a
	ret

PewterGym_ScriptPointers:
	dw CheckFightingMapTrainers
	dw DisplayEnemyTrainerTextAndStartBattle
	dw EndTrainerBattle
	dw PewterGymScript3

PewterGymScript3:
	ld a, [wIsInBattle]
	cp $ff
	jp z, PewterGymScript_5c3bf
	ld a, $f0
	ld [wJoyIgnore], a

PewterGymScript_5c3df:
	ld a, $4
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_BEAT_BROCK
	lb bc, TM_BIDE, 1
	call GiveItem
	jr nc, .BagFull
	ld a, $5
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
	SetEvent EVENT_GOT_TM34
	jr .gymVictory
.BagFull
	ld a, $6
	ld [hSpriteIndexOrTextID], a
	call DisplayTextID
.gymVictory
	ld hl, wObtainedBadges
	set 0, [hl]
	ld hl, wBeatGymFlags
	set 0, [hl]

	ld a, HS_GYM_GUY
	ld [wMissableObjectIndex], a
	predef HideObject
	ld a, HS_ROUTE_22_RIVAL_1
	ld [wMissableObjectIndex], a
	predef HideObject

	ResetEvents EVENT_1ST_ROUTE22_RIVAL_BATTLE, EVENT_ROUTE22_RIVAL_WANTS_BATTLE

	; deactivate gym trainers
	SetEvent EVENT_BEAT_PEWTER_GYM_TRAINER_0

	jp PewterGymScript_5c3bf

PewterGym_TextPointers:
	dw PewterGymText1
	dw PewterGymText2
	dw PewterGymText3
	dw PewterGymText4
	dw PewterGymText5
	dw PewterGymText6

PewterGymTrainerHeader0:
	dbEventFlagBit EVENT_BEAT_PEWTER_GYM_TRAINER_0
	db ($5 << 4) ; trainer's view range
	dwEventFlagAddress EVENT_BEAT_PEWTER_GYM_TRAINER_0
	dw PewterGymBattleText1 ; TextBeforeBattle
	dw PewterGymAfterBattleText1 ; TextAfterBattle
	dw PewterGymEndBattleText1 ; TextEndBattle
	dw PewterGymEndBattleText1 ; TextEndBattle

	db $ff

PewterGymText1:
	text_asm
	CheckEvent EVENT_BEAT_BROCK
	jr z, .beginBattle
	CheckEventReuseA EVENT_GOT_TM34
	jr nz, .gymVictory
	call z, PewterGymScript_5c3df
	call DisableWaitingAfterTextDisplay
	jr .done
.gymVictory
	ld hl, PewterGymText_5c4a3
	call PrintText
	jr .done
.beginBattle
	ld hl, PewterGymText_5c49e
	call PrintText
	ld hl, wd72d
	set 6, [hl]
	set 7, [hl]
	ld hl, PewterGymText_5c4bc
	ld de, PewterGymText_5c4bc
	call SaveEndBattleTextPointers
	ld a, [hSpriteIndex]
	ld [wSpriteIndex], a
	call EngageMapTrainer
	call InitBattleEnemyParameters
	ld a, $1
	ld [wGymLeaderNo], a
	xor a
	ld [hJoyHeld], a
	ld a, $3
	ld [wPewterGymCurScript], a
	ld [wCurMapScript], a
.done
	jp TextScriptEnd

PewterGymText_5c49e:
	text_far _PewterGymText_5c49e
	text_end

PewterGymText_5c4a3:
	text_far _PewterGymText_5c4a3
	text_end

PewterGymText4:
	text_far _TM34PreReceiveText
	text_end

PewterGymText5:
	text_far _ReceivedTM34Text
	sound_get_item_1
	text_far _TM34ExplanationText
	text_end

PewterGymText6:
	text_far _TM34NoRoomText
	text_end

PewterGymText_5c4bc:
	text_far _PewterGymText_5c4bc
	sound_level_up ; probably supposed to play SFX_GET_ITEM_1 but the wrong music bank is loaded
	text_far _PewterGymText_5c4c1
	text_end

PewterGymText2:
	text_asm
	ld hl, PewterGymTrainerHeader0
	call TalkToTrainer
	jp TextScriptEnd

PewterGymBattleText1:
	text_far _PewterGymBattleText1
	text_end

PewterGymEndBattleText1:
	text_far _PewterGymEndBattleText1
	text_end

PewterGymAfterBattleText1:
	text_far _PewterGymAfterBattleText1
	text_end

PewterGymText3:
	text_asm
	ld a, [wBeatGymFlags]
	bit 0, a
	jr nz, .asm_5c50c
	ld hl, PewterGymText_5c515
	call PrintText
	call YesNoChoice
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .asm_5c4fe
	ld hl, PewterGymText_5c51a
	call PrintText
	jr .asm_5c504
.asm_5c4fe
	ld hl, PewterGymText_5c524
	call PrintText
.asm_5c504
	ld hl, PewterGymText_5c51f
	call PrintText
	jr .asm_5c512
.asm_5c50c
	ld hl, PewterGymText_5c529
	call PrintText
.asm_5c512
	jp TextScriptEnd

PewterGymText_5c515:
	text_far _PewterGymText_5c515
	text_end

PewterGymText_5c51a:
	text_far _PewterGymText_5c51a
	text_end

PewterGymText_5c51f:
	text_far _PewterGymText_5c51f
	text_end

PewterGymText_5c524:
	text_far _PewterGymText_5c524
	text_end

PewterGymText_5c529:
	text_far _PewterGymText_5c529
	text_end
