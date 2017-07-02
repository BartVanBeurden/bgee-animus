/*
	This dialog happens whenever you converse with Animus + 2
	Actors: Animus
	Translation: @3
*/
APPEND ~E)ANIMU2~

	/*
		DORMANT
	*/
	IF ~Global("E)ADialogBhaal", "GLOBAL", 3)~ THEN
	BEGIN ConverseHeritage8
		SAY @3000 // (Animus' consciousness is dormant once more. It may not reawaken for some time)

		IF ~~ THEN
			EXIT
	END
	
END
