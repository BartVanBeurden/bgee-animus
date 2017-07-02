/*
	This dialog happens whenever you converse with the sword (after the introduction)
	Actors: Animus
	Translation: @2
*/
APPEND ~E)ANIMU1~

	IF ~Global("E)ADialogIntro", "GLOBAL", 1)~ THEN
	BEGIN ~ConverseMain~
		SAY @2000 // Greetings wielder. Do you wish to converse?
		
		IF ~OR(2) Global("E)ADialogCandlekeep", "GLOBAL", 0) Global("E)ADialogGorion", "GLOBAL", 0)~ THEN
			REPLY @2001 // You said you would like to talk about me last time we talked.
			GOTO ConversePersonal
			
		IF ~~ THEN
			REPLY @2002 // I would like to know a little more about you, Animus.
			GOTO ConverseAnimus1
			
		IF ~~ THEN
			REPLY @2003 // You're not particularly powerful, sword, and I begin to tire of the novelty of a chatty weapon. Convince me to keep you.
			GOTO ConverseUpgrade
			
		IF ~~ THEN
			REPLY @2004 // Is there any way I can make you more powerful?
			GOTO ConverseUpgrade
			
		IF ~Global("E)ADialogBhaal", "GLOBAL", 1)~ THEN
			REPLY @2005 // I know of my heritage now, Animus. 
			GOTO ConverseHeritage1
			
		IF ~~ THEN
			REPLY @2006 // Actually, never mind.~
			EXIT
			
	END

	IF ~~ THEN
	BEGIN ConversePersonal
		SAY @2010 // I did indeed - I always like to know a little about each of my masters. What would you be comfortable discussing?
		
		IF ~Global("E)ADialogCandlekeep", "GLOBAL", 0)~ THEN
			REPLY @2011 // My home, Candlekeep. 
			DO ~SetGlobal("E)ADialogCandlekeep", "GLOBAL", 1)~
			GOTO ConverseCandlekeep1
			
		IF ~Global("E)ADialogGorion", "GLOBAL", 0)~ THEN
			REPLY @2012 // My father, Gorion.
			DO ~SetGlobal("E)ADialogGorion", "GLOBAL", 1)~
			GOTO ConverseGorion1
		
		IF ~~ THEN
			REPLY @2013 // Actually, I've changed my mind. Let's discuss something else.
			GOTO ConverseMain
			
	END

	/*
		CANDLEKEEP BRANCH
	*/
	IF ~~ THEN
	BEGIN ConverseCandlekeep1
		SAY @2020 // Candlekeep? The library keep on the Sword Coast? I was not aware many children were raised there. An odd place to grow up, to be sure. Did you enjoy it?
		
		IF ~~ THEN
			REPLY @2021 // I loved it. The monks there were wonderful, scholarly people and I learned much under their tutelage. Even now I miss it.
			GOTO ConverseCandlekeep2
			
		IF ~~ THEN
			REPLY @2022 // It was wonderful. The monks were fools - easy to manipulate. The doddering imbeciles were wrapped around my finger.
			GOTO ConverseCandlekeep3
			
		IF ~~ THEN
			REPLY @2023 // I hated it. The monks were good people, but I always chafed under their rules and regulations. I miss them on occasion, but in truth, I feel more comfortable free of them.
			GOTO ConverseCandlekeep4
			
		IF ~~ THEN
			REPLY @2024 // I despised Candlekeep and it's feeble-minded occupants. Those do-gooder monks and priests will be forever held in my contempt. I am forever glad to be free of such fools. The day I was set free to make my own mark on this world will always be a day dear to me.
			GOTO ConverseCandlekeep4
			
	END
	
	IF ~~ THEN
	BEGIN ConverseCandlekeep2
		SAY @2030 // Even so, you must have keenly felt the age divide amongst you and the monks.

		IF ~~ THEN
			GOTO ConverseCandlekeep6
	END
	
	IF ~~ THEN
	BEGIN ConverseCandlekeep3
		SAY @2040 // Even so, you must have occasionally grown bored with such fools. 

		IF ~~ THEN
			GOTO ConverseCandlekeep6
	END
	
	IF ~~ THEN
	BEGIN ConverseCandlekeep4
		SAY @2050 // I can sympathise, certainly - I too know the suffering of being caged. 

		IF ~~ THEN
			GOTO ConverseCandlekeep6
	END
	
	IF ~~ THEN
	BEGIN ConverseCandlekeep6
		SAY @2060 // Were there, perhaps, others of your age with whom you could pass your time with?
		
		IF ~~ THEN
			REPLY @2061 // There was no one there with whom I had any desire to converse.
			GOTO ConverseCandlekeep7
			
		IF ~~ THEN
			REPLY @2062 // I suppose there was always Imoen.
			GOTO ConverseCandlekeep8
			
	END
	
	IF ~~ THEN
	BEGIN ConverseCandlekeep7
		SAY @2070 // I see. Perhaps we should talk of other things? 
		
		IF ~~ THEN
			GOTO ConverseMain
	END
	
	IF ~~ THEN
	BEGIN ConverseCandlekeep8
		SAY @2080 // Imoen? Would you like to discuss her further?
		
		IF ~~ THEN
			REPLY @2081 // Not really. 
			GOTO ConverseCandlekeep9
			
		IF ~~ THEN
			REPLY @2082 // She's been my friend for years. When we were younger, the things we would get up to would drive the poor monks crazy!
			GOTO ConverseCandlekeep9
			
		IF ~~ THEN
			REPLY @2083 // She's an old friend of mine, but she was always a little immature. She used to get on the monks nerves an awful lot.
			GOTO ConverseCandlekeep9
			
		IF ~~ THEN
			REPLY @2084 // A fool of a girl who I had the great misfortune to grow up with. She was good for the occasional laugh, but no more.
			GOTO ConverseCandlekeep9
			
		IF ~~ THEN
			REPLY @2085 // An idiotic girl of no real substance. Too weak-willed to make her way in life on her own, she followed me out of Candlekeep.
			GOTO ConverseCandlekeep9
	
	END

	IF ~~ THEN
	BEGIN ConverseCandlekeep9
		SAY @2090 // I see. In all honesty, I have little interest in your companions, be they current or former-but I thank you for your openness nonetheless. I feel as if I know you a little better now.

		IF ~~ THEN
			EXIT
	END
	
	/* 
		GORION BRANCH
	*/
	IF ~~ THEN
	BEGIN ConverseGorion1
		SAY @2100 // Gorion? What did you think of him?
		
		IF ~~ THEN
			REPLY @2101 // He was a great mage, and a greater father.
			GOTO ConverseGorion2
			
		IF ~~ THEN
			REPLY @2102 // He was powerful, and for that I respected him.
			GOTO ConverseGorion2
			
		IF ~~ THEN
			REPLY @2103 // He was somewhat too...noble...for my tastes, yet he is the man who raised me and for that I held him in higher regard than I otherwise would have.
			GOTO ConverseGorion2
			
	END
	
	IF ~~ THEN
	BEGIN ConverseGorion2
		SAY @2110 // “Was”? What became of him?
		
		IF ~~ THEN
			REPLY @2111 // The memory is too painful to speak of. Please, I would have some time to myself if you don't mind...
			EXIT
		
		IF ~~ THEN
			REPLY @2112 // He was cruelly slain by a powerful warrior and his cronies.
			GOTO ConverseGorion3
			
		IF ~~ THEN
			REPLY @2113 // He died.
			GOTO ConverseGorion3
			
	END

	IF ~~ THEN
	BEGIN ConverseGorion3
		SAY @2120 // Ah. My condolences, wielder. You must miss him terribly.
		
		IF ~~ THEN
			REPLY @2121 // I would rather not speak of this.
			EXIT
			
		IF ~~ THEN
			REPLY @2122 // Every day. It is a burden from which I fear I shall never recover.
			GOTO ConverseGorion4
			
		IF ~~ THEN
			REPLY @2123 // Not really. He was a good father and I loved him, but I've always felt it's better not to dwell on tragedies. I am sure that is not what he would have wanted.
			GOTO ConverseGorion5
			
		IF ~~ THEN
			REPLY @2124 // Regret and misery are for the weak. I do not concern myself with the past.
			GOTO ConverseGorion5
			
	END
	
	IF ~~ THEN
	BEGIN ConverseGorion4
		SAY @2130 // That saddens me to hear, wielder. Perhaps we should cease our conversation now, I fear we tread upon painful ground.

		IF ~~ THEN
			EXIT
	END
	
	IF ~~ THEN
	BEGIN ConverseGorion5
		SAY @2140 // Wise of you. I agree, to dwell on such memories is unwise.
		
		IF ~~ THEN
			EXIT
	END

	/*
		ANIMUS BRANCH
	*/
	IF ~~ THEN
	BEGIN ConverseAnimus1
		SAY @2150 // A little...a little about me? This is most unexpected, I've never had a wielder who has taken an interest in my own past.

		IF ~~ THEN
			GOTO ConverseAnimus2
	END
	
	IF ~~ THEN
	BEGIN ConverseAnimus2
		SAY @2160 // I will answer any questions you care to ask, if I can.
		
		IF ~~ THEN
			REPLY @2161 // How old are you?
			GOTO ConverseAnimusAge
			
		IF ~Global("E)ADialogOrigins", "GLOBAL", 0)~ THEN
			REPLY @2162 // How were you made?
			DO ~SetGlobal("E)ADialogOrigins", "GLOBAL", 1)~
			GOTO ConverseOrigins1
			
		IF ~~ THEN
			REPLY @2163 // Do you have any stories to tell about previous owners?
			GOTO ConverseStories1
			
		IF ~~ THEN
			REPLY @2164 // Why were you in a dormant state before I touched you? 
			GOTO ConverseSleep
			
		IF ~~ THEN
			REPLY @2165 // You have an odd sense of morality, do you not?
			GOTO ConverseMorality
			
		IF ~~ THEN
			REPLY @2166 // Actually, let us speak of something else.
			GOTO ConverseMain
			
	END
	
	IF ~~ THEN
	BEGIN ConverseAnimusAge
		SAY @2170 // Truth be told, I am not quite sure. My consciousness is greatly weakened every time my wielder passes away, until I am wielded once again, and thus I find it very difficult to ascertain details such as time.

		IF ~~ THEN
			GOTO ConverseAnimus2
	END
	
	/*
		ANIMUS ORIGINS BRANCH
	*/
	
	IF ~~ THEN
	BEGIN ConverseOrigins1
		SAY @2180 // I was not 'made', at least not in the typical sense. I was once a man, a powerful servant of a god. As I died, my god rewarded me for my years of service by granting me immortality - if you can call being trapped in a sword for all eternity immortality. 

		IF ~~ THEN
			REPLY @2181 // Which god?
			GOTO ConverseOrigins2
			
		IF ~~ THEN
			REPLY @2182 // A cruel god indeed, to consign you to such a fate.
			GOTO ConverseOrigins3
			
	END

	IF ~~ THEN
	BEGIN ConverseOrigins2
		SAY @2190 // Is it not clear? I was made immortal by… by… what!? No! My memories are hazy , obscured...my apologies, wielder. I fear I cannot answer your question.
		
		IF ~~ THEN
			GOTO ConverseOrigins4
	END
	
	IF ~~ THEN
	BEGIN ConverseOrigins3
		SAY @2200 // Cruel? No, at the time it was a great kindness. I was grateful to him. You see, I was an ardent follower of his every teaching. It was only after years of service that I began to tire of being wielded by bloodthirsty warrior after bloodthirsty warrior, useful only as an instrument of murder. I assure you, my lord's act was seen as a sign of favor to me… and yet I find the details hazy. I cannot seem to recall why I was granted such an immortality, nor can I recall the name of my patron.
		
		IF ~~ THEN
			GOTO ConverseOrigins4
	END
	
	IF ~~ THEN
	BEGIN ConverseOrigins4
		SAY @2210 // This… this is most troubling.
		
		IF ~~ THEN
			REPLY @2211 // You can't remember the God you worshipped? How odd.
			GOTO ConverseOrigins5
			
		IF ~~ THEN
			REPLY @2212 // Tired of bloodshed, blade? A pity, for you will see more in the days to come. Far more.
			GOTO ConverseOrigins6
			
		IF ~~ THEN
			REPLY @2213 // I am pleased that you are no longer such a bloodthirsty individual. I fear I would be uncomfortable wielding such a cruel instrument.
			GOTO ConverseOrigins7
			
	END
	
	IF ~~ THEN
	BEGIN ConverseOrigins5
		SAY @2220 // I am aware of the oddity of the situation, wielder. I beg you, leave me be for a time. My memories are hazy and this troubles me greatly.
	
		IF ~~ THEN
			EXIT
	END
	
	IF ~~ THEN
	BEGIN ConverseOrigins6
		SAY @2230 // Perhaps I shall, wielder. I pray that is not the case, but I accept that in the hands of one such as yourself, it is an inevitability. Now I beg you, leave me be for a time. My memories are hazy and my mind is troubling me.
	
		IF ~~ THEN
			EXIT
	END
	
	IF ~~ THEN
	BEGIN ConverseOrigins7
		SAY @2240 // I am pleased you agree with my new outlook, wielder. You may be the first of my masters to share with me such a sentiment, and I assure you that I am grateful for it. However, I must implore you to allow me some time to myself. My memories - or lack thereof - are a disturbing prospect and I fear I require some time to consider my conundrum. 
	
		IF ~~ THEN
			EXIT
	END
	
	IF ~~ THEN
	BEGIN ConverseStories1
		SAY @2250 // Ah, yes! I have a few amusing tales to tell, and I would be glad to share them!

		IF ~~ THEN
			GOTO ConverseStories2
	END
	
	IF ~~ THEN
	BEGIN ConverseStories2
		SAY @2260 // Would you care to learn the story of Gaulm Bloodspear, or perhaps the tragedy of Nazath Shadowbreaker? Perhaps the exploits of the savage Grimscar, or my account of the machinations of Valas the Obscured? Or does the tale of Beread, Lady of Night, hold more appeal to you?
		
		IF ~~ THEN
			REPLY @2261 // Tell me about Gaulm Bloodspear.
			GOTO ConverseStories3
			
		IF ~~ THEN
			REPLY @2262 // Tell me the tale of Nazath Shadowbreaker.
			GOTO ConverseStories4
			
		IF ~~ THEN
			REPLY @2263 // This Grimscar fellow sounds interesting.
			GOTO ConverseStories5
			
		IF ~~ THEN
			REPLY @2264 // Beread, Lady of the Night? Tell me more.
			GOTO ConverseStories6
			
		IF ~~ THEN
			REPLY @2265 // Valas the Obscured? Sounds like a devious fellow.
			GOTO ConverseStories7
			
		IF ~~ THEN
			REPLY @2266 // I would like to ask something else.
			GOTO ConverseAnimus2
			
	END
	
	IF ~~ THEN
	BEGIN ConverseStories3
		SAY @2270
		  = @2271
		  = @2272
		  = @2273
		  = @2274
		  = @2275
		
		IF ~~ THEN
			GOTO ConverseStories2
	END
	
	IF ~~ THEN
	BEGIN ConverseStories4
		SAY @2280
		  = @2281
		  = @2282
		  = @2275
		
		IF ~~ THEN
			GOTO ConverseStories2
	END
	
	IF ~~ THEN
	BEGIN ConverseStories5
		SAY @2290
		  = @2291
		  = @2292
		  = @2293
		  = @2275
		
		IF ~~ THEN
			GOTO ConverseStories2
	END
	
	IF ~~ THEN
	BEGIN ConverseStories6
		SAY @2300
		  = @2301
		  = @2302
		  = @2275
		
		IF ~~ THEN
			GOTO ConverseStories2
	END
	
	IF ~~ THEN
	BEGIN ConverseStories7
		SAY @2310
		  = @2311
		  = @2312
		  = @2313
		  = @2275
		
		IF ~~ THEN
			GOTO ConverseStories2
	END
	
	/*
		CONVERSE SLEEP / MORALITY / UPGRADE
	*/
	IF ~~ THEN
	BEGIN ConverseSleep
		SAY @2320 // My consciousness fades away to almost nothing when I am not being wielded, to prevent me going mad with loneliness I suspect. Never before has the sleep been so deep however. 

		IF ~~ THEN
			GOTO ConverseAnimus2
	END
	
	IF ~~ THEN
	BEGIN ConverseMorality
		SAY @2330 // You have an odd sense of morality, do you not?

		IF ~~ THEN
			GOTO ConverseAnimus2
	END
	
	IF ~~ THEN
	BEGIN ConverseUpgrade
		SAY @2340 // It is true that my power is greatly diminished, yet I cannot perceive why. Perhaps the issue is linked to my master? Perhaps if I am able to remember his identity I may find the key to unlocking more of my old magics.

		IF ~~ THEN
			EXIT
	END
	
	/*
		CONVERSE HERITAGE
	*/
	IF ~~ THEN
	BEGIN ConverseHeritage1
		SAY @2350 // Your heritage? Please elucidate, wielder.
		
		IF ~~ THEN
			REPLY @2351	// Actually, this isn't something that I feel you should be concerned with.
			GOTO ConverseMain
			
		IF ~~ THEN
			REPLY @2352 // I am the spawn of Bhaal, the dead god of murder.
			GOTO ConverseHeritage2
			
	END

	IF ~~ THEN
	BEGIN ConverseHeritage2
		SAY @2360 // The...the dead god...Bhaal? Lord of Murder? Bhaal is slain? How!? When!?
		
		IF ~CheckStatGT([PC], 13, INT)~ THEN
			REPLY @2361 // He was slain more than 20 years ago, during the Time of Troubles, a cataclysmic event that claimed the lives of all the Dead Three. He was killed by a mortal named Cyric, who went on to become the new God of Murder.
			GOTO ConverseHeritage3
			
		IF ~~ THEN
			REPLY @2362 // A while ago. I don't know when. I think he was killed by another god.
			GOTO ConverseHeritage4
		
	END

	IF ~~ THEN
	BEGIN ConverseHeritage3
		SAY @2370 // This… this explains much. Bhaal must have been my patron God. Of course, it is so clear now - why else would my previous wielders share solely their violence and love for death?

		IF ~~ THEN
			GOTO ConverseHeritage5
	END
	
	IF ~~ THEN
	BEGIN ConverseHeritage4
		SAY @2380 // Which god!? No… no, that means nothing now. Regardless of his killer, he is dead. He must have been my patron, it is the only plausible solution.

		IF ~~ THEN
			GOTO ConverseHeritage5
	END
	
	IF ~~ THEN
	BEGIN ConverseHeritage5
		SAY @2390 // Suddenly I understand much of my current predicament. My lapse in existence must have been triggered by Bhaal's demise. Furthermore, my great loss of power must too be due to the fact his strength no longer sustains me.
		  = @2400 // My soul must have been rendered catatonic, too bound to this blade to pass on to the next life and yet too weak without my master's sustenance to remain sentient. That is why I was only reawakened by your touch. You returned me to life, it is your divine spark that sustains me now. This revelation changes much. If you would be willing to channel more of your strength into me, a portion of my strength could surely be renewed.
		  
		IF ~~ THEN
			REPLY @2401 // I think not. Such a process seems too risky.
			GOTO ConverseHeritage6
			
		IF ~~ THEN
			REPLY @2402 // Very well, Animus. Let's give this a go.
			DO ~SetGlobal("E)ADialogBhaal", "GLOBAL", 2)
				CreateItem("E)ANIMU2", 0, 0, 0)
				DestroyItem("E)ANIMU1")
				CreateVisualEffectObject("SPGFLSH1", Myself)~
			GOTO ConverseHeritage7
			
	END

	IF ~~ THEN
	BEGIN ConverseHeritage6
		SAY @2410 // … As you wish, master.

		IF ~~ THEN
			EXIT
	END
	
	IF ~~ THEN
	BEGIN ConverseHeritage7
		SAY @2420 // That… that was a more difficult process than I had expected. Forgive me, master, but I fear my consciousness must slumber for a time while my mind comes to terms with the memories that have been restored to me...

		IF ~~ THEN
			DO ~SetGlobal("E)ADialogBhaal", "GLOBAL", 3)~
			EXIT
	END
	
END
