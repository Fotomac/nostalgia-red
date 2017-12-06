CeruleanMartScript:
	jp EnableAutoTextBoxDrawing

CeruleanMartTextPointers:
	dw CeruleanCashierText
	dw CeruleanMartText2
	dw CeruleanMartText3

INCLUDE "data/martInventories/cerulean.asm"

CeruleanMartText2:
	TX_FAR _CeruleanMartText2
	db "@"

CeruleanMartText3:
	TX_FAR _CeruleanMartText3
	db "@"
