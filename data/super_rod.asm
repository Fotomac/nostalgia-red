; super rod data
; format: map, pointer to fishing group
SuperRodData:
	dbw PALLET_TOWN, FishingGroup1
	dbw VIRIDIAN_CITY, FishingGroup2
	dbw CERULEAN_CITY, FishingGroup3
	dbw VERMILION_CITY, FishingGroup4
	dbw CELADON_CITY, FishingGroup5
	dbw FUCHSIA_CITY, FishingGroup6
	dbw CINNABAR_ISLAND, FishingGroup1
	dbw ROUTE_4, FishingGroup3
	dbw ROUTE_6, FishingGroup2
	dbw ROUTE_10, FishingGroup3
	dbw ROUTE_11, FishingGroup3
	dbw ROUTE_12, FishingGroup3
	dbw ROUTE_13, FishingGroup3
	dbw ROUTE_17, FishingGroup7
	dbw ROUTE_18, FishingGroup7
	dbw ROUTE_19, FishingGroup8
	dbw ROUTE_20, FishingGroup8
	dbw ROUTE_21, FishingGroup8
	dbw ROUTE_22, FishingGroup2
	dbw ROUTE_23, FishingGroup2
	dbw ROUTE_24, FishingGroup3
	dbw ROUTE_25, FishingGroup2
	dbw CERULEAN_GYM, FishingGroup3
	dbw VERMILION_DOCK, FishingGroup4
	dbw SEAFOAM_ISLANDS_4, FishingGroup3
	dbw SEAFOAM_ISLANDS_5, FishingGroup8
	dbw SAFARI_ZONE_EAST, FishingGroup9
	dbw SAFARI_ZONE_NORTH, FishingGroup9
	dbw SAFARI_ZONE_WEST, FishingGroup9
	dbw SAFARI_ZONE_CENTER, FishingGroup9
	dbw UNKNOWN_DUNGEON_2, FishingGroup2
	dbw UNKNOWN_DUNGEON_3, FishingGroup2
	dbw UNKNOWN_DUNGEON_1, FishingGroup2
	db $FF

; fishing groups
; number of monsters, followed by level/monster pairs
FishingGroup1:
	db 5
	IF DEF(_RED)
		db 15,SHELLDER
		db 15,HORSEA
	ELSE
		db 15,STARYU
		db 15,KRABBY
	ENDC
	db 15,GYARADOS
	IF DEF(_RED)
		db 25,SEADRA
		db 25,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 25,KINGLER
		db 25,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 25,KINGLER
		db 25,HORSEA
	ENDC

FishingGroup2:
	db 4
	db 15,POLIWAG
	db 20,POLIWHIRL
	db 15,GYARADOS
	IF DEF(_RED)
		db 15,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 15,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 15,HORSEA
	ENDC

FishingGroup3:
	db 3
	IF DEF(_RED)
		db 15,HORSEA
	ELSE
		db 15,KRABBY
	ENDC
	db 15,GYARADOS
	IF DEF(_RED)
		db 25,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 25,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 25,HORSEA
	ENDC

FishingGroup4:
	db 4
	IF DEF(_RED)
		db 15,HORSEA
		db 15,SHELLDER
	ELSE
		db 15,KRABBY
		db 15,STARYU
	ENDC
	db 15,GYARADOS
	IF DEF(_RED)
		db 25,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 25,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 25,HORSEA
	ENDC

FishingGroup5:
	db 2
	db 15,MAGIKARP
	db 30,GRIMER

FishingGroup6:
	db 4
	db 15,GOLDEEN
	db 20,SEAKING
	db 15,GYARADOS
	IF DEF(_RED)
		db 15,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 15,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 15,HORSEA
	ENDC

FishingGroup7:
	db 4
	db 5,TENTACOOL
	db 15,KRABBY
	db 15,GOLDEEN
	db 15,MAGIKARP

FishingGroup8:
	db 4
	IF DEF(_RED)
		db 15,HORSEA
		db 25,SEADRA
	ELSE
		db 15,KRABBY
		db 25,KINGLER
	ENDC
	db 15,GYARADOS
	IF DEF(_RED)
		db 15,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 15,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 15,HORSEA
	ENDC

FishingGroup9:
	db 5
	IF DEF(_RED)
		db 15,SLOWPOKE
	ENDC
	IF DEF(_GREEN)
		db 15,PSYDUCK
	ENDC
	IF DEF(_BLUE)
		db 15,HORSEA
	ENDC
	db 15,GOLDEEN
	db 20,SEAKING
	db 15,DRATINI
	db 25,DRAGONAIR
