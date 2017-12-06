SaffronMartScript:
	jp EnableAutoTextBoxDrawing

SaffronMartTextPointers:
	dw SaffronCashierText
	dw SaffronMartText2
	dw SaffronMartText3

INCLUDE "data/martInventories/saffron.asm"

SaffronMartText2:
	TX_FAR _SaffronMartText2
	db "@"

SaffronMartText3:
	TX_FAR _SaffronMartText3
	db "@"
