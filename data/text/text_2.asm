_MaleAIBattleWithdrawText::
	text_ram wTrainerName
	text " החזיר"
	line "את @"
	text_ram wEnemyMonNick
	text "לכדור!"
	prompt

_FemaleAIBattleWithdrawText::
	text_ram wTrainerName
	text " החזירה"
	line "את @"
	text_ram wEnemyMonNick
	text "לכדור!"
	prompt

_MaleAIBattleUseItemText::
	text_ram wTrainerName
	text "@"
	line "השתמש"
	cont "ב@"
	text_ram wcd6d
	text "@"
	cont "על @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_FemaleAIBattleUseItemText::
	text_ram wTrainerName
	text "@"
	line "השתמשה"
	cont "ב@"
	text_ram wcd6d
	text "@"
	cont "על @"
	text_ram wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	text_ram wcf4b
	text " נשלח"
	line "ל@"
	text_ram wGrassRate
	text "."
	done

_TradeForText::
	text "בעבור"
	line "ה@"
	text_ram wcf4b
	text ""
	line "של <PLAYER>,"
	done

_TradeSendsText::
	text_ram wGrassRate
	text " שלח"
	line "@"
	text_ram wcd6d
	text "."
	done

_TradeWavesFarewellText::
	text_ram wGrassRate
	text " מנפנף"
	line "את ידו לשלום"
	cont "לעבר @"
	done

_TradeTransferredText::
	text_ram wcd6d
	text "."
	done

_TradeTakeCareText::
	text "טפל היטב"
	line "ב@"
	text_ram wcd6d
	text "."
	done

_TradeWillTradeText::
	text_ram wGrassRate
	text " מוכן"
	line "להחליף @"
	text_ram wcd6d
	text ""
	done

_TradeforText::
	text "בעד ה@"
	text_ram wcf4b
	text "@"
	line "של <PLAYER>."
	done

_PlaySlotMachineText::
	text "זו מכונת מזל!"
	line "רוצה לשחק?"
	done

_OutOfCoinsSlotMachineText::
	text "אוח!"
	line "נגמרו האסימונים!"
	done

_BetHowManySlotMachineText::
	text "כמה אסימונים"
	line "תרצה להמר?"
	done

_StartSlotMachineText::
	text "בהצלחה!"
	done

_NotEnoughCoinsSlotMachineText::
	text "אין לך מספיק"
	line "אסימונים!"
	prompt

_OneMoreGoSlotMachineText::
	text "עוד פעם?"
	done

_LinedUpText::
	text "שורה של"
	line "זכית ב@"
	text_ram wcf4b
	text " אסימונים!"
	done

_NotThisTimeText::
	text "לא זכית הפעם!"
	prompt

_YeahText::
	text "יש!@"
	text_end

_DexSeenOwnedText::
	text "#ידע   נראו:@"
	text_decimal wDexRatingNumMonsSeen, 1, 3
	text ""
	line "         נתפסו:@"
	text_decimal wDexRatingNumMonsOwned, 1, 3
	text_end

_DexRatingText::
	text "דירוג ה#ידע", $6d
	done

_GymStatueText1::
	text "מכון ה#ימון של"
	line "@"
	text_ram wGymCityName
	text ""
	cont "מנהיג: @"
	text_ram wGymLeaderName
	text ""

	para "מאמנים מנצחים:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text "מכון ה#ימון של"
	line "@"
	text_ram wGymCityName
	text ""
	cont "מנהיג: @"
	text_ram wGymLeaderName
	text ""

	para "מאמנים מנצחים:"
	line "<RIVAL>"
	cont "<PLAYER>"
	done

_ViridianCityPokecenterGuyText::
	text "מרכזי #ימון"
	line "מרפאים #ימונים"
	cont "מותשים או פצועים!"
	done

_PewterCityPokecenterGuyText::
	text "פיהוווק!"

	para "כשניענפוח שר,"
	line "#ימונים מתחילים"
	cont "להתעייף..."

	para "...גם אני..."
	line "חרררר..."
	done

_CeruleanPokecenterGuyText::
	text "להדר יש המון"
	line "#ימונים!"

	para "הוא אוסף גם כאלה"
	line "נדירים!"
	done

_LavenderPokecenterGuyText::
	text "רשרשים חובשים"
	line "גולגלות על הראש,"
	cont "כן?"

	para "הרבה אנשים מוכנים"
	line "לשלם סכומים נאים"
	cont "בעד אחת כזו!"
	done

_MtMoonPokecenterBenchGuyText::
	text "אם יש לך יותר מדי"
	line "#ימונים, אני"
	cont "מציע שתאחסן אותם"
	cont "במחשב!"
	done

_RockTunnelPokecenterGuyText::
	text "שמעתי שעיר הלבנדר"
	line "רדופת רוחות!"
	done

_UnusedBenchGuyText1:: ; UNUSED
	text "I wish I could"
	line "catch #MON."
	done

_UnusedBenchGuyText2:: ; UNUSED
	text "I'm tired from"
	line "all the fun..."
	done

_UnusedBenchGuyText3:: ; UNUSED
	text "SILPH's manager"
	line "is hiding in the"
	cont "SAFARI ZONE."
	done

_VermilionPokecenterGuyText::
	text "אמנם #ימון ברמה"
	line "גבוהה יותר חזק"
	cont "מאחד ברמה נמוכה..."

	para "אבל לכל"
	line "ה#ימונים יש"
	cont "חולשה לסוגים"
	cont "מסוימים."

	para "כך שאין באמת"
	line "#ימון אחד שיותר"
	cont "חזק מכולם."
	done

_CeladonCityPokecenterGuyText::
	text "אם היו לי אופניים,"
	line "הייתי הולך לדרך"
	cont "האופניים!"
	done

_FuchsiaCityPokecenterGuyText::
	text "אם אתה חוקר"
	line "#ימונים, כדאי"
	cont "לך לבקר באיזור"
	cont "הספארי."

	para "יש שם כל מיני"
	line "#ימונים נדירים."
	done

_CinnabarPokecenterGuyText::
	text "#ימונים עדיין"
	line "יכולים ללמוד"
	cont "מהלכים חדשים, גם"
	cont "אחרי התפתחות"
	cont "שבוטלה."

	para "אפשר לעכב את"
	line "ההתפתחות עד אחרי"
	cont "שה#ימון למד"
	cont "עוד מהלכים."
	done

_SaffronCityPokecenterGuyText1::
	text "הלוואי שהרביעיה"
	line "העילית יבואו"
	cont "לכסח לצוות"
	cont "רוקט את הצורה!"
	done

_SaffronCityPokecenterGuyText2::
	text "צוות רוקט"
	line "הסתלקו! אנחנו"
	cont "שוב יכולים ללכת"
	cont "ברחובות בלי פחד!"
	cont "תודה!"
	done

_CeladonCityHotelText::
	text "אחותי הזמינה אותי"
	line "לחופשה!"
	done

_BookcaseText::
	text "אינספור ספרי"
	line "#ימון!"
	done

_NewBicycleText::
	text "זוג אופניים חדש"
	line "ונוצץ!"
	done

_PushStartText::
	text "לחץ על כפתור TRATS"
	line "כדי לפתוח את"
	cont "התפריט!"
	done

_SaveOptionText::
	text "כפתור שמירת המשחק"
	line "נמצא בתפריט."
	done

_StrengthsAndWeaknessesText::
	text "לכל סוגי ה#ימון"
	line "יש נקודות חזקות"
	cont "וחלשות מול סוגים"
	cont "אחרים."
	done

_TimesUpText::
	text "כריזה: דינג-דונג!"

	para "נגמר הזמן!"
	prompt

_GameOverText::
	text "כריזה: משחק הספארי"
	line "נגמר!"
	done

_CinnabarGymQuizIntroText::
	text "חידון #ימון!"

	para "אם תענה נכון, הדלת"
	line "לחדר הבא תיפתח!"

	para "אם תטעה, תיאלץ"
	line "להילחם במאמן!"

	para "אם אתה רוצה לשמור"
	line "את בריאות"
	cont "ה#ימונים שלך לקרב"
	cont "מול המנהיג..."

	para "כדאי לך לענות"
	line "נכון! קדימה,"
	cont "מתחילים!"
	prompt

_CinnabarQuizQuestionsText1::
	text "כשזחי מתפתח, הוא"
	line "הופך לפרפרץ?"
	done

_CinnabarQuizQuestionsText2::
	text "קיימים 9 תגי"
	line "מכונים רשמיים"
	cont "של ליגת ה#ימון?"
	done

_CinnabarQuizQuestionsText3::
	text "ראשנע מתפתח"
	line "3 פעמים?"
	done

_CinnabarQuizQuestionsText4::
	text "האם מהלכים מסוג"
	line "חשמל אפקטיבים מול"
	cont "#ימונים מסוג"
	cont "אדמה?"
	done

_CinnabarQuizQuestionsText5::
	text "#ימונים מאותו"
	line "זן ובאותה רמה"
	cont "אינם זהים?"
	done

_CinnabarQuizQuestionsText6::
	text "מ”מ82 מכיל את המהלך"
	line "קרן מוות?"
	done

_CinnabarGymQuizCorrectText::
	text "אתה לגמרי"
	line "צודק!"

	para "עבור לחדר הבא!@"
	text_end

_CinnabarGymQuizIncorrectText::
	text "אופס! ניחוש"
	line "שגוי!"
	prompt

_MagazinesText::
	text "עלוני #ימון!"

	para "מחברות #ימון!"

	para "טבלאות #ימון!"
	done

_BillsHouseMonitorText::
	text "על צג המחשב מוצג"
	line "ממשק המשגר."
	done

_BillsHouseInitiatedText::
	text "<PLAYER> הפעיל את"
	line "מערכת הפרדת התאים"
	cont "של המשגר!@"
	text_end

_BillsHousePokemonListText1::
	text "רשימת ה#ימונים"
	line "האהובים על הדר!"
	prompt

_BillsHousePokemonListText2::
	text "איזה #ימון תרצה"
	line "לראות?"
	done

_OakLabEmailText::
	text "יש כאן הודעת"
	line "דואר אלקטרוני!"

	para "..."

	para "הקשיבו, הקשיבו,"
	line "כל מאמני"
	cont "ה#ימון!"

	para "מאמני העילית של"
	line "ליגת ה#ימון"
	cont "מוכנים ומזומנים"
	cont "להילחם מול כל מי"
	cont "שיבוא לאתגר אותם!"

	para "בואו עם ה#ימונים"
	line "הטובים ביותר שלכם"
	cont "ובחנו את כישוריכם"
	cont "בתור מאמנים!"

	para "מפקדת ליגת"
	line "ה#ימון"
	cont "רמת הניל"

	para "נ.ב: פרופ' אלון,"
	line "בבקשה, בוא לבקר!"
	cont "..."
	done

_GameCornerCoinCaseText::
	text "צריך ארנק"
	line "לאסימונים!"
	done

_GameCornerNoCoinsText::
	text "אין לך אסימונים!"
	done

_GameCornerOutOfOrderText::
	text "לא תקין!"
	line "המכונה הזו לא"
	cont "עובדת."
	done

_GameCornerOutToLunchText::
	text "תכף אשוב"
	line "המקום הזה שמור."
	done

_GameCornerSomeonesKeysText::
	text "מפתחות של מישהו!"
	line "הוא עוד יחזור."
	done

_JustAMomentText::
	text "רק רגע."
	done

TMNotebookText::
	text "זה עלון מידע"
	line "מ”מ-ים."

	para "..."

	para "בסך-הכל, ישנם 05"
	line "מכשירי מהלכים, או"
	cont "בקיצור - מ”מ."

	para "קיימים גם 5"
	line "מכשירים נסתרים,"
	cont "או בקיצור מ”נ,"
	cont "הניתנים לשימוש"
	cont "חוזר."

	para "סילף בע”מ.@"
	text_end

_TurnPageText::
	text "לדפדף לעמוד הבא?"
	done

_ViridianSchoolNotebookText5::
	text "ילדה: היי! אל תציץ"
	line "במחברת שלי!@"
	text_end

_ViridianSchoolNotebookText1::
	text "הצצת במחברת!"

	para "עמוד ראשון..."

	para "פוכדורים משמשים"
	line "לתפיסת #ימונים."

	para "אפשר לקחת איתך עד"
	line "6 #ימונים בכל"
	cont "רגע נתון."

	para "אנשים שמגדלים"
	line "#ימונים ועורכים"
	cont "קרבות #ימון"
	cont "נקראים מאמני"
	cont "#ימון."
	prompt

_ViridianSchoolNotebookText2::
	text "עמוד שני..."

	para "קשה לתפוס #ימון"
	line "בריא, אז כדאי"
	cont "להחליש אותו קודם!"

	para "רעל, כויות,"
	line "ופגיעות אחרות הן"
	cont "יעילות מאוד למטרה"
	cont "זו!"
	prompt

_ViridianSchoolNotebookText3::
	text "עמוד שלישי..."

	para "מאמני #ימון"
	line "מחפשים מאמנים"
	cont "אחרים כדי להילחם"
	cont "בקרבות #ימון"
	cont "מולם."

	para "במכוני #ימון,"
	line "כל הזמן מתקיימים"
	cont "קרבות."
	prompt

_ViridianSchoolNotebookText4::
	text "עמוד רביעי..."

	para "המטרה הסופית של"
	line "כל מאמן #ימון"
	cont "היא להביס את 8"
	cont "מנהיגי מכוני"
	cont "ה#ימון."

	para "אלה שמביסים את כל"
	line "ה8 זוכים בהזדמנות"
	cont "לקרב מול..."

	para "הרביעיה העילית של"
	line "ליגת ה#ימון!"
	prompt

_EnemiesOnEverySideText::
	text "אויבים מסתתרים"
	line "בכל פינה!"
	done

_WhatGoesAroundComesAroundText::
	text "עין תחת עין!"
	done

_FightingDojoText::
	text "דוג'ו"
	done

_IndigoPlateauHQText::
	text "רמת הניל"
	line "מפקדת ליגת"
	cont "ה#ימון"
	done

_RedBedroomSNESText::
	text "<PLAYER> משחק"
	line "במגאסון!"
	cont "...אוקיי!"
	cont "צריך ללכת!"
	done

_Route15UpstairsBinocularsText::
	text "הסתכלת"
	line "במשקפת..."

	para "ציפור גדולה"
	line "ומבריקה עפה לכיוון"
	cont "הים."
	done

_AerodactylFossilText::
	text "מאובן אווירונעף."
	line "#ימון קדום"
	cont "ונדיר."
	done

_KabutopsFossilText::
	text "מאובן פרצודה."
	line "#ימון קדום"
	cont "ונדיר."
	done

_LinkCableHelpText1::
	text "טיפים למאמנים"

	para "שימוש בכבל לקישור"
	line "בין מכשירים"
	prompt

_LinkCableHelpText2::
	text "איזה פרק תרצה"
	line "לקרוא?"
	done

_LinkCableInfoText1::
	text "ברגע שתחבר את"
	line "הגיים בוי שלך עם"
	cont ",גיים בוי נוסף"
	cont "דבר עם הנציגה"
	cont "שבצד ימין בכל"
	cont "מרכז #ימון."
	prompt

_LinkCableInfoText2::
	text "הקולוסאום מאפשר לך"
	line "לשחק בקרב מול"
	cont "חבר."
	prompt

_LinkCableInfoText3::
	text "מרכז ההחלפות משמש"
	line "להחלפת #ימונים."
	prompt

_ViridianSchoolBlackboardText1::
	text "הלוח מתאר שינויי"
	line "מצב ש#ימונים"
	cont "עשוים לעבור במהלך"
	cont "קרב."
	prompt

_ViridianSchoolBlackboardText2::
	text "איזה פרק תרצה"
	line "לקרוא?"
	done

_ViridianBlackboardSleepText::
	text "#ימון לא יכול"
	line "לתקוף אם הוא"
	cont "ישן!"

	para "#ימון יישאר ישן"
	line "אפילו אחרי סוף"
	cont "הקרב."

	para "השתמש בשיקוי מעורר"
	line "כדי להעיר אותו!"
	prompt

_ViridianBlackboardPoisonText::
	text "אם #ימון מורעל,"
	line "הוא יאבד נקודות"
	cont "בריאות לאט-לאט."

	para "הרעלה נשארת גם"
	line "אחרי קרבות."

	para "כדי לרפא הרעלה,"
	line "השתמש בנוגדן!"
	prompt

_ViridianBlackboardPrlzText::
	text "שיתוק עשוי לגרום"
	line "ל#ימון שלך"
	cont "לפספס את תורו"
	cont "בקרב!"

	para "שיתוק ממשיך להשפיע"
	line "אפילו אחרי סוף"
	cont "הקרב."

	para "כדי לרפא שיתוק,"
	line "השתמש ברפא שיתוק!"
	prompt

_ViridianBlackboardBurnText::
	text "כויה מפחיתה את"
	line "עוצמת ומהירות"
	cont "ה#ימון. היא גם"
	cont "גורמת לנזק מתמשך."

	para "כויות משפיעות גם"
	line "אחרי הקרב."

	para "כדי לרפא כויה,"
	line "השתמש ברפא כויה!"
	prompt

_ViridianBlackboardFrozenText::
	text "#ימון קפוא הופך"
	line "לדומם לחלוטין!"

	para "הוא נשאר קפוא"
	line "אפילו אחרי סוף"
	cont "הקרב."

	para "כדי להפשיר #ימון"
	line "קפוא, השתמש ברפא"
	cont "קרח!"
	prompt

_VermilionGymTrashText::
	text "נה, כאן יש"
	line "רק אשפה."
	done

_VermilionGymTrashSuccessText1::
	text "היי, יש מתג מתחת"
	line "לכל האשפה!"
	cont "תדליק אותו!"

	para "המנעול החשמלי"
	line "הראשון נפתח!@"
	text_end

_VermilionGymTrashSuccessText2::
	text "היי! יש כאן עוד"
	line "מתג מתחת לאשפה!"
	cont "תדליק אותו!"
	prompt

_VermilionGymTrashSuccessText3::
	text "המנעול החשמלי"
	line "השני נפתח!"

	para "הדלת הממונעת"
	line "נפתחה!@"
	text_end

_VermilionGymTrashFailText::
	text "נה, כאן יש"
	line "רק אשפה."
	cont "היי! המנעולים"
	cont "החשמליים נעלו"
	cont "שוב!"

_FoundHiddenItemText::
	text "<PLAYER> מצא"
	line "@"
	text_ram wcd6d
	text "!@"
	text_end

_HiddenItemBagFullText::
	text "אבל, ל<PLAYER> אין"
	line "עוד מקום בתיק!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> מצא"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " מטבעות!@"
	text_end

_FoundHiddenCoins2Text::
	text "<PLAYER> מצא"
	line "@"
	text_bcd hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " מטבעות!@"
	text_end

_DroppedHiddenCoinsText::
	text ""
	para "אופס! נפלו"
	line "לך מטבעות!"
	done

_IndigoPlateauStatuesText1::
	text "רמת הניל"
	prompt

_IndigoPlateauStatuesText2::
	text "המטרה הסופית של"
	line "מאמני #ימון!"
	cont "מפקדת ליגת"
	cont "ה#ימון"
	done

_IndigoPlateauStatuesText3::
	text "המסמכות הגבוהה"
	line "בנוגע ל#ימון!"
	cont "מפקדת ליגת"
	cont "ה#ימון"
	done

_PokemonBooksText::
	text "עמוס בספרי"
	line "#ימון!"
	done

_DiglettSculptureText::
	text "זה פסל של"
	line "חפיד."
	done

_ElevatorText::
	text "זו מעלית."
	done

_TownMapText::
	text "זו מפה.@"
	text_end

_PokemonStuffText::
	text "וואו! טונה של"
	line "דברי #ימון!"
	done

_OutOfSafariBallsText::
	text "כריזה: דינד-דונג!"

	para "נגמרו לך כדורי"
	line "הספארי!"
	prompt

_WildRanText::
	text "ה@"
	text_ram wEnemyMonNick
	text " הפראי"
	line "ברח!"
	prompt

_EnemyRanText::
	text "ה@"
	text_ram wEnemyMonNick
	text " היריב"
	line "ברח!"
	prompt

_HurtByPoisonText::
	text "<USER>"
	line "ניזוק מהרעל!"
	prompt

_HurtByBurnText::
	text "<USER>"
	line "ניזוק מהכויה!"
	prompt

_HurtByLeechSeedText::
	text "זרע היניקה ינק"
	line "בריאות"
	cont "מ<USER>!"
	prompt

_EnemyMonFaintedText::
	text "ה@"
	text_ram wEnemyMonNick
	text " היריב"
	line "התמוטט!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> זכה"
	line "ב@"
	text_bcd wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "¥!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> הביס את"
	line "@"
	text_ram wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	text_ram wBattleMonNick
	text ""
	line "התמוטט!"
	prompt

_UseNextMonText::
	text "לשלוח #ימון"
	line "נוסף?"
	done

_Sony1WinText::
	text "<RIVAL>: כן! אני"
	line "מדהים או מה?"
	prompt

_PlayerBlackedOutText2::
	text "ל<PLAYER> אין"
	line "עוד #ימונים"
	cont "שיכולים להילחם!"

	para "<PLAYER> התעלף!"
	prompt

_LinkBattleLostText::
	text "<PLAYER> הפסיד"
	line "ל@"
	text_ram wTrainerName
	text "!"
	prompt

_MaleTrainerAboutToUseText::
	text_ram wTrainerName
	text " עומד"
	line "לשלוח"
	cont"@"
	text_ram wEnemyMonNick
	text "!"

	para "האם <PLAYER>"
	line "יחליף #ימון?"
	done

_FemaleTrainerAboutToUseText::
	text_ram wTrainerName
	text " עומדת"
	line "לשלוח"
	cont"@"
	text_ram wEnemyMonNick
	text "!"

	para "האם <PLAYER>"
	line "יחליף #ימון?"
	done

_MaleTrainerSentOutText::
	text "@"
	text_ram wTrainerName
	text " שלח"
	line "את @"
	text_ram wEnemyMonNick
	text "!"
	done

_FemaleTrainerSentOutText::
	text "@"
	text_ram wTrainerName
	text " שלחה"
	line "את @"
	text_ram wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "אין חשק להילחם!"
	prompt

_CantEscapeText::
	text "לא יכול לברוח!"
	prompt

_NoRunningText::
	text "לא! לא בורחים"
	line "מקרב מול מאמן!"
	prompt

_GotAwayText::
	text "הצלחת לברוח"
	line "בלי פגע!"
	prompt

_ItemsCantBeUsedHereText::
	text "אי אפשר להשתמש"
	line "בפריטים כאן."
	prompt

_AlreadyOutText::
	text_ram wBattleMonNick
	text " כבר"
	line "בקרב!"
	prompt

_MoveNoPPText::
	text "למהלך הזה לא נותרו"
	line "נקודות כוח!"
	prompt

_MoveDisabledText::
	text "המהלך הזה"
	line "מושבת!"
	prompt

_NoMovesLeftText::
	text "ל@"
	text_ram wBattleMonNick
	text " לא"
	line "נשארו מהלכים!"
	done

_MultiHitText::
	text "המתקפה פגעה"
	line "@"
	text_decimal wPlayerNumHits,1,1
	text " פעמים!"
	prompt

_ScaredText::
	text_ram wBattleMonNick
	text " משותק"
	line "מפחד!"
	prompt

_GetOutText::
	text "רוח: הסתלק..."
	line "הסתלק מכאן..."
	prompt

_FastAsleepText::
	text "<USER>"
	line "ישן עמוק!"
	prompt

_WokeUpText::
	text "<USER>"
	line "התעורר!"
	prompt

_IsFrozenText::
	text "<USER>"
	line "קפוא לגמרי!"
	prompt

_FullyParalyzedText::
	text "<USER>"
	line "משותק לחלוטין!"
	prompt

_FlinchedText::
	text "<USER>"
	line "נרתע!"
	prompt

_MustRechargeText::
	text "<USER>"
	line "אוגר כוחות מחדש!"
	prompt

_DisabledNoMoreText::
	text "המהלך של"
	line "<USER> כבר"
	cont "לא מושבת!"
	prompt

_IsConfusedText::
	text "<USER>"
	line "מבולבל!"
	prompt

_HurtItselfText::
	text "הוא פגע בעצמו"
	line "מתוך בלבול!"
	prompt

_ConfusedNoMoreText::
	text "<USER> כבר"
	line "לא מבולבל!"
	prompt

_SavingEnergyText::
	text "<USER>"
	line "צובר אנרגיה!"
	prompt

_UnleashedEnergyText::
	text "<USER>"
	line "שחרר אנרגיה!"
	prompt

_ThrashingAboutText::
	text "<USER>"
	line "משתולל!"
	done

_AttackContinuesText::
	text "המתקפה של"
	line "<USER>"
	cont "ממשיכה!"
	done

_CantMoveText::
	text "<USER>"
	line "לא יכול לזוז!"
	prompt

_MoveIsDisabledText::
	text "המהלך"
	line "@"
	text_ram wcd6d
	text "של <USER>"
	line "הושבת!"
	prompt

_MonName1Text::
	text "<USER>@"
	text_end

_Used1Text::
	text ""
	line "השתמש ב@"
	text_end

_Used2Text::
	text ""
	line "השתמש ב@"
	text_end

_InsteadText::
	text "במקום,"
	cont "@"
	text_end

_CF4BText::
	text_ram wcf4b
	text "@"

_ExclamationPoint1Text::
	text "!"
	done

_ExclamationPoint2Text::
	text "!"
	done

_ExclamationPoint3Text::
	text "!"
	done

_ExclamationPoint4Text::
	text "!"
	done

_ExclamationPoint5Text::
	text "!"
	done

_AttackMissedText::
	text "המהלך של"
	line "<USER>"
	cont "החטיא!"
	prompt

_KeptGoingAndCrashedText::
	text "<USER>"
	line "פספס ונפל!"
	prompt

_UnaffectedText::
	text "<TARGET>"
	line "לא מושפע!"
	prompt

_DoesntAffectMonText::
	text "זה לא משפיע על"
	line "<TARGET>!"
	prompt

_CriticalHitText::
	text "זו מכה הרסנית!"
	prompt

_OHKOText::
	text "זו מכה קטלנית!"
	prompt

_LoafingAroundText::
	text_ram wBattleMonNick
	text " מתעצל."
	prompt

_BeganToNapText::
	text_ram wBattleMonNick
	text " התחיל"
	line "לנמנם!"
	prompt

_WontObeyText::
	text_ram wBattleMonNick
	text " לא"
	line "מוכן לציית!"
	prompt

_TurnedAwayText::
	text_ram wBattleMonNick
	text " הפנה"
	line "את הגב!"
	prompt

_IgnoredOrdersText::
	text_ram wBattleMonNick
	text ""
	line "התעלם מהפקודה!"
	prompt

_SubstituteTookDamageText::
	text "ממלא המקום ספג"
	line "את המכה במקום"
	cont "<TARGET>!"
	prompt

_SubstituteBrokeText::
	text "ממלא המקום של"
	line "<TARGET> נשבר!"
	prompt

_BuildingRageText::
	text "<USER> צובר"
	line "זעם!"
	prompt

_MirrorMoveFailedText::
	text "העתקת המהלך"
	next "נכשלה!"
	prompt

_HitXTimesText::
	text "@"
	text_decimal wEnemyNumHits, 1, 1
	text " פגיעות!"
	prompt

_GainedText::
	text_ram wcd6d
	text " קיבל" 
	line "@"
	text_end

_WithExpAllText::
	text "בזכות שיתוף"
	cont "נ”נ,"
	cont "@"
	text_end

_BoostedText::
	text "כמות מוגברת של"
	cont "@"
	text_end

_ExpPointsText::
	text_decimal wExpAmountGained, 2, 4
	text " נקודות"
	cont "נסיון!"
	prompt

_GrewLevelText::
	text_ram wcd6d
	text " עלה"
	line "לרמה @"
	text_decimal wCurEnemyLVL, 1, 3
	text "!@"
	text_end

_WildMonAppearedText::
	text "@"
	text_ram wEnemyMonNick
	text ""
	line "פראי הופיע!"
	prompt

_HookedMonAttackedText::
	text "ה@"
	text_ram wEnemyMonNick
	text ""
	line "שדגת תקף!"
	prompt

_EnemyAppearedText::
	text_ram wEnemyMonNick
	text ""
	line "הופיע!"
	prompt

_TrainerWantsToFightText::
	text_ram wTrainerName
	text " רוצה"
	line "להילחם!"
	prompt

_UnveiledGhostText::
	text "משקף הסילף חשף"
	line "את זהותה של"
	cont "הרוח!"
	prompt

_GhostCantBeIDdText::
	text "אוף! אי אפשר"
	line "לזהות את הרוח!"
	prompt

_GoText::
	text "קדימה! @"
	text_end

_DoItText::
	text "צא! @"
	text_end

_GetmText::
	text "כסח'תו! @"
	text_end

_EnemysWeakText::
	text "היריב כבר חלש!"
	line "כסח'תו! @"
	text_end

_PlayerMon1Text::
	text_ram wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	text_ram wBattleMonNick
	text " @"
	text_end

_EnoughText::
	text "מספיק!@"
	text_end

_OKExclamationText::
	text "בסדר!@"
	text_end

_GoodText::
	text "יופי!@"
	text_end

_ComeBackText::
	text ""
	line "בוא חזרה!"
	done

_SuperEffectiveText::
	text "זה אפקטיבי"
	line "במיוחד!"
	prompt

_NotVeryEffectiveText::
	text "זה לא מאוד"
	line "אפקטיבי..."
	prompt

_SafariZoneEatingText::
	text "ה@"
	text_ram wEnemyMonNick
	text "הפראי"
	line "אוכל!"
	prompt

_SafariZoneAngryText::
	text "ה@"
	text_ram wEnemyMonNick
	text " הפראי"
	line "כועס!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> אסף"
	line "מהרצפה"
	cont "@"
	text_bcd wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "¥!"
	prompt

_ClearSaveDataText::
	text "למחוק את כל"
	line "המידע השמור?"
	done

_WhichFloorText::
	text "איזו קומה?"
	done

_PartyMenuNormalText::
	text "בחר #ימון."
	done

_PartyMenuItemUseText::
	text "על איזה #ימון"
	line "להשתמש בפריט?"
	done

_PartyMenuBattleText::
	text "איזה #ימון"
	line "לשלוח?"
	done

_PartyMenuUseTMText::
	text "על איזה #ימון"
	line "להשתמש במ”מ?"
	done

_PartyMenuSwapMonText::
	text "לאן להעביר את"
	line "ה#ימון?"
	done

_PotionText::
	text_ram wcd6d
	text " נרפא"
	line "ושחזר @"
	text_decimal wHPBarHPDifference, 2, 3
	text "נקודות פגיעה!"
	done

_AntidoteText::
	text_ram wcd6d
	text " כבר"
	line "לא מורעל!"
	done

_ParlyzHealText::
	text_ram wcd6d
	text " כבר"
	line "לא משותק!"
	done

_BurnHealText::
	text "הכויה של"
	line "@"
	text_ram wcd6d
	text ""
	line "החלימה!"
	done

_IceHealText::
	text_ram wcd6d
	text ""
	line "הפשיר!"
	done

_AwakeningText::
	text_ram wcd6d
	text ""
	line "התעורר!"
	done

_FullHealText::
	text "הבריאות של"
	line "@"
	text_ram wcd6d
	text ""
	line "שוחזרה!"
	done

_ReviveText::
	text_ram wcd6d
	text ""
	line "הוברא!"
	done

_RareCandyText::
	text_ram wcd6d
	text " עלה"
	line "לרמה @"
	text_decimal wCurEnemyLVL, 1, 3
	text "!@"
	text_end

_TurnedOnPC1Text::
	text "<PLAYER> הדליק"
	line "את המחשב."
	prompt

_AccessedBillsPCText::
	text "נכנסת למחשב של"
	line "הדר."

	para "נכנסת למערכת"
	line "אחסון #ימונים."
	prompt

_AccessedSomeonesPCText::
	text "נכנסת למחשב של"
	line "???."

	para "נכנסת למערכת"
	line "אחסון #ימונים."
	prompt

_AccessedMyPCText::
	text "נכנסת למחשב שלך."

	para "נכנסת למערכת"
	line "אחסון הפריטים."
	prompt

_TurnedOnPC2Text::
	text "<PLAYER> הדליק"
	line "את המחשב."
	prompt

_WhatDoYouWantText::
	text "מה תרצה לעשות?"
	done

_WhatToDepositText::
	text "מה לאחסן?"
	done

_DepositHowManyText::
	text "כמה?"
	done

_ItemWasStoredText::
	text_ram wcd6d
	text ""
	line "מאוחסן במחשב."
	prompt

_NothingToDepositText::
	text "אין לך אף פריט"
	line "לאחסן."
	prompt

_NoRoomToStoreText::
	text "אין עוד מקום"
	line "באחסון."
	prompt

_WhatToWithdrawText::
	text "מה להוציא?"
	done

_WithdrawHowManyText::
	text "כמה?"
	done

_WithdrewItemText::
	text "לקחת"
	line "@"
	text_ram wcd6d
	text "."
	prompt

_NothingStoredText::
	text "אין שום דבר"
	line "באחסון."
	prompt

_CantCarryMoreText::
	text "אין לך עוד מקום"
	line "בתיק."
	prompt

_WhatToTossText::
	text "מה לזרוק?"
	done

_TossHowManyText::
	text "כמה?"
	done

_AccessedHoFPCText::
	text "נכנסת לאתר ליגת"
	line "ה#ימון."

	para "נכנסת לרשימת היכל"
	line "התהילה."
	prompt

_SwitchOnText::
	text "דולק!"
	prompt

_WhatText::
	text "מה לעשות?"
	done

_DepositWhichMonText::
	text "איזה #ימון"
	line "לאחסן?"
	done

_MonWasStoredText::
	text_ram wcf4b
	text ""
	line "מאוחסן בתא @"
	text_ram wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "אתה לא יכול"
	line "לאחסן את!"
	cont "ה#ימון האחרון!"
	prompt

_BoxFullText::
	text "אופס! התא הזה כבר"
	line "מלא ב#ימונים."
	prompt

_MonIsTakenOutText::
	text_ram wcf4b
	text " יצא."
	line "לקחת את"
	cont "@"
	text_ram wcf4b
	text "."
	prompt

_NoMonText::
	text "מה? אין כאן"
	line "#ימונים!"
	prompt

_CantTakeMonText::
	text "אתה לא יכול לקחת"
	line "עוד #ימונים."

	para "אחסן כמה"
	line "#ימונים כדי"
	cont "לפנות מקום."
	prompt

_ReleaseWhichMonText::
	text "איזה #ימון"
	line "לשחרר?"
	done

_OnceReleasedText::
	text "אם תשחרר"
	line "את @"
	text_ram wcf4b
	text ", הוא"
	cont "יעלם לנצח. בסדר?"
	done

_MonWasReleasedText::
	text_ram wcf4b
	text " שוחרר"
	line "וחזר לטבע."
	cont "להתראות,"
	cont "@"

_CF4BExclamationText::
	text_ram wcf4b
	text "!"
	prompt

_RequireCoinCaseText::
	text "צריך ארנק"
	line "לאסימונים!@"
	text_end

_ExchangeCoinsForPrizesText::
	text "אנחנו מחליפים את"
	line "האסימונים שלך בעד"
	cont "פרסים."
	prompt

_WhichPrizeText::
	text "איזה פרס תרצה?"
	done

_HereYouGoText::
	text "בבקשה!@"
	text_end

_SoYouWantPrizeText::
	text "אז אתה רוצה את"
	line "ה@"
	text_ram wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "אני מצטער, אבל"
	line "אתה צריך עוד"
	cont "אסימונים.@"
	text_end

_OopsYouDontHaveEnoughRoomText::
	text "אופס! אין מספיק"
	line "מקום בתיק!.@"
	text_end

_OhFineThenText::
	text "אה. טוב.@"
	text_end

_GetDexRatedText::
	text "רוצה לקבל ציון"
	line "על ה#ידע שלך?"
	done

_ClosedOaksPCText::
	text "החיבור למחשב של"
	line "פרופ' אלון נסדר.@"
	text_end

_AccessedOaksPCText::
	text "נכנסת למחשב של"
	line "פרופ' אלון."

	para "נכנסת למערכת ציון"
	line "ה#ידע."
	prompt

_WhereWouldYouLikeText::
	text "לאן תרצה ללכת?"
	done

_PleaseWaitText::
	text "בסדר, המתן רק"
	line "רגע."
	done

_LinkCanceledText::
	text "החיבור בוטל."
	done

_OakSpeechText1::
	text "שלום לכם!"
	line "ברוכים הבאים"
	cont "לעולם ה#ימון!"

	para "שמי הוא אלון,"
	line "אבל כולם קוראים"
	cont "לי הפרופסור"
	cont "ל#ימון!"
	prompt

_OakSpeechText2A::
	text "בעולם שלנו חיים"
	line "יצורים בשם"
	cont "#ימונים!@"
	text_end

_OakSpeechText2B::
	text $51,"חלק מהאנשים"
	line "רואים ב#ימונים"
	cont "רק חיות מחמד."
	cont "אחרים משתמשים בהם"
	cont "בקרבות."

	para "ואני..."

	para "אני חוקר"
	line "#ימונים כמקצוע."
	prompt

_IntroducePlayerText::
	text "קודם כל,"
	line "מה שמך?"
	prompt

_IntroduceRivalText::
	text "זה הנכד שלי."
	line "אתה והוא יריבים"
	cont "עוד מאז שהיתם"
	cont "פעוטות."

	para "...אה, מה השם"
	line "שלו שוב?"
	prompt

_OakSpeechText3::
	text "<PLAYER>!"

	para "הרפתקת ה#ימון"
	line "שלך עומדת להתחיל!"

	para "עולם של חלומות"
	line "והרפתקאות עם"
	cont "#ימונים ממתין"
	cont "רק לך! בוא נתחיל!"
	done

_DoYouWantToNicknameText::
	text "אתה רוצה לתת"
	line "ל@"
	text_ram wcd6d
	text " כינוי?"
	; line "כינוי?"
	done

_YourNameIsText::
	text "טוב! אז קוראים"
	line "לך <PLAYER>!"
	prompt

_HisNameIsText::
	text "כמובן, עכשיו אני"
	line "אני זוכר! קוראים"
	cont "לו <RIVAL>!"
	prompt

_WillBeTradedText::
	text_ram wNameOfPlayerMonToBeTraded
	text ""
	line "ו@"
	text_ram wcd6d
	text ""
	cont "יוחלפו."
	done

_TextIDErrorText::
	text_decimal hSpriteIndexOrTextID, 1, 2
	text " ERROR."
	done

_ContCharText::
	text "<_CONT>@"
	text_end
