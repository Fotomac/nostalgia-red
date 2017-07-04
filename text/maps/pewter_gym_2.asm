_PewterGymText_5c4a3::
	text "There are all"
	line "kinds of trainers"
	cont "in this huge"
	cont "world of ours!"

	para "Some raise #MON"
	line "for fights. Some"
	cont "see them as pets."

	para "I'm in training"
	line "to become a"
	cont "#MON BREEDER."

	para "And you..."
	line "You appear to be"
	cont "very gifted as a"
	cont "#MON trainer!"

	para "So let me make a"
	line "suggestion!"

	para "Go to the GYM in"
	line "CERULEAN and test"
	cont "your abilities!"
	done

_TM39PreReceiveText::
	text "Wait! Take this"
	line "with you!"
	done

_ReceivedTM39Text::
	text $52, " received"
	line "TM39!@@"

_TM39ExplanationText::
	db $0
	para "A TM (Technical"
	line "Machine) contains"
	cont "a technique for"
	cont "#MON!"

	para "Using a TM"
	line "teaches the move"
	cont "it contains to a"
	cont "#MON!"

	para "A TM is only good"
	line "for one use! So"
	cont "when you use one,"
	cont "pick the #MON"
	cont "carefully!"

	para "Anyways..."

	para "TM39 contains"
	line "ROCK TOMB!"

	para "It hurls boulders"
	line "at the foe and"
	cont "lowers its SPEED!"
	done

_TM39NoRoomText::
	text "You don't have"
	line "room for this!"
	done

_PewterGymText_5c4bc::
	text "I took"
	line "you for granted,"
	cont "and so I lost."

	para "As proof of your"
	line "victory, I hereby"
	cont "confer upon you"
	cont "the official"
	cont "#MON LEAGUE"
	cont "BOULDERBADGE!"

	para $52, " received"
	line "the BOULDERBADGE!@@"

_PewterGymText_5c4c1::
	db $0
	para "Just having the"
	line "BOULDERBADGE"
	cont "makes your"
	cont "#MON more"
	cont "powerful!"

	para "It also enables"
	line "use of the move"
	cont "FLASH outside of"
	cont "battle!"

	para "Of course, a"
	line "#MON must know"
	cont "FLASH to use it!"
	prompt

_PewterGymBattleText1::
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "BROCK!"
	done

_PewterGymEndBattleText1::
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	prompt

_PewterGymAfterBattleText1::
	text "You're pretty hot,"
	line "but not as hot"
	cont "as BROCK!"
	done

_PewterGymBattleText2::
	text "Rock and roll!"
	line "Let's rumble!"
	done

_PewterGymEndBattleText2::
	text "That"
	line "was just the"
	cont "start!"
	prompt

_PewterGymAfterBattleText2::
	text "Don't rest on your"
	line "laurels just yet!"

	para "BROCK is one of"
	line "the toughest"
	cont "trainers in town!"
	done

_PewterGymText_5c515::
	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#MON champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"
	done

_PewterGymText_5c51a::
	text "All right! Let's"
	line "get happening!"
	prompt

_PewterGymText_5c51f::
	text "The 1st #MON"
	line "out in a match is"
	cont "at the top of the"
	cont "#MON LIST!"

	para "By changing the"
	line "order of #MON,"
	cont "matches could be"
	cont "made easier!"
	done

_PewterGymText_5c524::
	text "It's a free"
	line "service! Let's"
	cont "get happening!"
	prompt

_PewterGymText_5c529::
	text "Just as I thought!"
	line "You're #MON"
	cont "champ material!"
	done
