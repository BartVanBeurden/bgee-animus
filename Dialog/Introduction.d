/*
	This dialog happens when you obtain the sword
	Actors: Animus
	Translation: @1
*/
APPEND ~E)ANIMU1~

	IF ~Global("E)ADialogIntro", "GLOBAL", 0)~ THEN
	BEGIN Intro1A
		SAY @1000 // (As you grip the weapon, thoughts that are not your own flash through your mind…)
		
		IF ~~ THEN
			DO ~SetGlobal("E)ADialogIntro", "GLOBAL", 1)~
			GOTO Intro1B
	END
	
	IF ~~ THEN
	BEGIN Intro1B
		SAY @1010 // What...what is this? Do I feel a spark of life stirring within me once more? Peculiar... It feels as if I have been sleeping for a long time, longer than ever before. Greetings, wielder, I am Animus, the spirit inhabiting your blade.
	
		IF ~~ THEN
			REPLY @1011 // My sword can speak!?
			GOTO Intro2
			
		IF ~~ THEN
			REPLY @1012 // Aargh!
			GOTO Intro3
			
		IF ~CheckStatGT([PC], 12, INT)~ THEN
			REPLY @1013 // A sentient weapon? Interesting.
			GOTO Intro4
			
		IF ~~ THEN
			REPLY @1014 // <attempt to throw the sword away>
			GOTO Intro5
			
	END
	
	IF ~~ THEN
	BEGIN Intro2
		SAY @1020 // Very astute of you. I am indeed capable of elocution, even eloquence - which is more than can be said for most of my previous wielders. Hopefully you will prove to be less of a...disappointment. Regardless, that is of little interest to you, I am sure. I would much rather discuss you.

		IF ~~ THEN
			GOTO Intro6
	END
	
	IF ~~ THEN
	BEGIN Intro3
		SAY @1030 // Wonderful, it appears that in my infinite good fortune I have been granted a wielder even more foolish than my last. With any luck my initial impression will be proved false. Perhaps you would be amenable to sharing a little information about yourself?

		IF ~~ THEN
			GOTO Intro6
	END
	
	IF ~~ THEN
	BEGIN Intro4
		SAY @1040 // Well observed, wielder. I must confess that I was expecting a more...hasty...response. You cannot imagine the vast number of fools who I have had the misfortune to work with during my inhabitance of this blade. Perhaps you would be willing to converse with me further-I would be interested to know a little more of my current master.

		IF ~~ THEN
			GOTO Intro6
	END
	
	IF ~~ THEN
	BEGIN Intro5
		SAY @1050 // Wait! Please, good wielder, I beg you-do not be so quick to discard me. I may not appear particularly impressive, but I assure you I am somewhat more powerful than my current state would suggest. 
	
		IF ~~ THEN
			REPLY @1051 // <throw the sword away>
			DO ~DropItem("E)ANIMU1", [-1.-1])~
			EXIT
	
		IF ~~ THEN
			REPLY @1052 // Is that so? Perhaps I can make good use of you.
			GOTO Intro7
			
	END
	
	IF ~~ THEN
	BEGIN Intro6
		SAY @1060 // Of course, I fully understand if you are not willing to share your thoughts with a mere blade. If the fancy takes you, I would be pleased to speak with you again.

		IF ~~ THEN
			EXIT
	END
	
	IF ~~ THEN
	BEGIN Intro7
		SAY @1070 // I would hope so, wielder. Perhaps you would be amenable to sharing a little information about yourself?

		IF ~~ THEN
			GOTO Intro6
	END
	
END
