INCLUDE "charmap.asm"

INCLUDE "constants/text_constants.asm"

TEXT_1  EQU $20
TEXT_2  EQU TEXT_1 + 1
TEXT_3  EQU TEXT_2 + 1
TEXT_4  EQU TEXT_3 + 1
TEXT_5  EQU TEXT_4 + 1
TEXT_6  EQU TEXT_5 + 1
TEXT_7  EQU TEXT_6 + 1
TEXT_8  EQU TEXT_7 + 1
TEXT_9  EQU TEXT_8 + 1
TEXT_10 EQU TEXT_9 + 1
TEXT_11 EQU TEXT_10 + 1

POKEDEX_TEXT EQU TEXT_11 + 1
MOVE_NAMES   EQU POKEDEX_TEXT + 1

INCLUDE "macros.asm"

INCLUDE "hram.asm"


SECTION "Text 1", ROMX ; BANK $20

_CardKeySuccessText1::
	text "יש!@@"

_CardKeySuccessText2::
	text ""
	line "כרטיס המפתח פתח"
	cont "את הדלת!"
	done

_CardKeyFailText::
	text "אוף! צריך להשתמש"
	line "בכרטיס מפתח!"
	done

_TrainerNameText::
	TX_RAM wcd6d
	text ": @@"

_NoNibbleText::
	text "אף לא כירסום!"
	prompt

_NothingHereText::
	text "אין כאן כלום."
	prompt

_ItsABiteText::
	text "אה!"
	line "תפסת משהו!"
	prompt

_ExclamationText::
	text "!"
	done

_GroundRoseText:: ; UNUSED
	text "Ground rose up"
	line "somewhere!"
	done

_BoulderText::
	text "דרושה עוצמה כדי"
	line "להזיז את זה!"
	done

_MartSignText::
	text "יש לנו כל פריט"
	line "שרק תרצו!"
	cont "#יוסק"
	done

_PokeCenterSignText::
	text "אנחנו מרפאים"
	line "#ימונים!"
	cont "מרכז ה#ימון"
	done

_FoundItemText::
	text "<PLAYER> מצא"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_NoMoreRoomForItemText::
	text "אתה לא יכול לסחוב"
	line "עוד פריטים!"
	done

_OaksAideHiText::
	text "היי! זוכר אותי?"
	line "אני העוזר של פרופ'"
	cont "אלון!"

	para "אם תפסת @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "סוגים שונים של"
	cont "#ימון, אלון ביקש"
	cont "שאני אתן לך"
	cont "@"
	TX_RAM wOaksAideRewardItemName
	text "!"

	para "<PLAYER>! כבר"
	line "תפסת לפחות @"
	TX_NUM hOaksAideRequirement, 1, 3
	text "סוגי #ימון שונים?"
	done

_OaksAideUhOhText::
	text "בוא נראה..."
	line "אוי לא! נראה שתפסת"
	cont "רק @"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text ""
	cont "סוגי #ימון!"

	para "תצטרך לתפוס @"
	TX_NUM hOaksAideRequirement, 1, 3
	text " סוגים"
	line "כדי לקבל את"
	cont "ה@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideComeBackText::
	text "המ. טוב, לא נורא."

	para "כשתשיג @"
	TX_NUM hOaksAideRequirement, 1, 3
	text ""
	line "סוגים, בוא לדבר"
	cont "איתי ואתן לך@@"
	TX_RAM wOaksAideRewardItemName
	text "."
	done

_OaksAideHereYouGoText::
	text "מצוין! תפסת"
	line "@"
	TX_NUM hOaksAideNumMonsOwned, 1, 3
	text " סוגי "
	cont "#ימון!"
	cont "כל הכבוד!"

	para "הנה לך!"
	prompt

_OaksAideGotItemText::
	text "<PLAYER> קיבל את"
	line "ה@"
	TX_RAM wOaksAideRewardItemName
	text "!@@"

_OaksAideNoRoomText::
	text "אוי! נראה שאין"
	line "לך מספיק מקום בתיק."
	done

INCLUDE "text/maps/ViridianForest.asm"
INCLUDE "text/maps/MtMoon1F.asm"
INCLUDE "text/maps/MtMoonB1F.asm"
INCLUDE "text/maps/MtMoonB2F.asm"
INCLUDE "text/maps/SSAnne1F.asm"
INCLUDE "text/maps/SSAnne2F.asm"
INCLUDE "text/maps/SSAnne3F.asm"
INCLUDE "text/maps/SSAnneBow.asm"
INCLUDE "text/maps/SSAnneKitchen.asm"
INCLUDE "text/maps/SSAnneCaptainsRoom.asm"
INCLUDE "text/maps/SSAnne1FRooms.asm"
INCLUDE "text/maps/SSAnne2FRooms.asm"
INCLUDE "text/maps/SSAnneB1FRooms.asm"
INCLUDE "text/maps/VictoryRoad3F.asm"
INCLUDE "text/maps/RocketHideoutB1F.asm"
INCLUDE "text/maps/RocketHideoutB2F.asm"
INCLUDE "text/maps/RocketHideoutB3F.asm"
INCLUDE "text/maps/RocketHideoutB4F.asm"
INCLUDE "text/maps/RocketHideoutElevator.asm"
INCLUDE "text/maps/SilphCo2F.asm"
INCLUDE "text/maps/SilphCo3F.asm"
INCLUDE "text/maps/SilphCo4F.asm"
INCLUDE "text/maps/SilphCo5F.asm"


SECTION "Text 2", ROMX ; BANK $21

INCLUDE "text/maps/SilphCo5F_2.asm"
INCLUDE "text/maps/SilphCo6F.asm"
INCLUDE "text/maps/SilphCo7F.asm"
INCLUDE "text/maps/SilphCo8F.asm"
INCLUDE "text/maps/SilphCo9F.asm"
INCLUDE "text/maps/SilphCo10F.asm"
INCLUDE "text/maps/SilphCo11F.asm"
INCLUDE "text/maps/PokemonMansion2F.asm"
INCLUDE "text/maps/PokemonMansion3F.asm"
INCLUDE "text/maps/PokemonMansionB1F.asm"
INCLUDE "text/maps/SafariZoneEast.asm"
INCLUDE "text/maps/SafariZoneNorth.asm"
INCLUDE "text/maps/SafariZoneWest.asm"
INCLUDE "text/maps/SafariZoneCenter.asm"
INCLUDE "text/maps/SafariZoneCenterRestHouse.asm"
INCLUDE "text/maps/SafariZoneSecretHouse.asm"
INCLUDE "text/maps/SafariZoneWestRestHouse.asm"
INCLUDE "text/maps/SafariZoneEastRestHouse.asm"
INCLUDE "text/maps/SafariZoneNorthRestHouse.asm"
INCLUDE "text/maps/CeruleanCaveB1F.asm"
INCLUDE "text/maps/VictoryRoad1F.asm"
INCLUDE "text/maps/LancesRoom.asm"
INCLUDE "text/maps/HallOfFame.asm"
INCLUDE "text/maps/ChampionsRoom.asm"
INCLUDE "text/maps/LoreleisRoom.asm"
INCLUDE "text/maps/BrunosRoom.asm"
INCLUDE "text/maps/AgathasRoom.asm"
INCLUDE "text/maps/RockTunnelB1F.asm"


SECTION "Text 3", ROMX ; BANK $22

INCLUDE "text/maps/RockTunnelB1F_2.asm"
INCLUDE "text/maps/SeafoamIslandsB4F.asm"

_AIBattleWithdrawText::
	TX_RAM wTrainerName
	text " החזיר"
	line "את @"
	TX_RAM wEnemyMonNick
	text "לכדור!"
	prompt

_AIBattleUseItemText::
	TX_RAM wTrainerName
	text ""
	line "השתמש"
	cont "ב@"
	TX_RAM wcd6d
	text ""
	cont "על @"
	TX_RAM wEnemyMonNick
	text "!"
	prompt

_TradeWentToText::
	TX_RAM wcf4b
	text " נשלח"
	line "ל@"
	TX_RAM wGrassRate
	text "."
	done

_TradeForText::
	text "בעבור"
	line "ה@"
	TX_RAM wcf4b
	text ""
	line "של <PLAYER>,"
	done

_TradeSendsText::
	TX_RAM wGrassRate
	text " שלח"
	line "@"
	TX_RAM wcd6d
	text "."
	done

_TradeWavesFarewellText::
	TX_RAM wGrassRate
	text " מנפנף"
	line "את ידו לשלום"
	cont "לעבר"
	done

_TradeTransferredText::
	TX_RAM wcd6d
	text "."
	done

_TradeTakeCareText::
	text "טפל היטב"
	line "ב@"
	TX_RAM wcd6d
	text "."
	done

_TradeWillTradeText::
	TX_RAM wGrassRate
	text " מוכן"
	line "להחליף @"
	TX_RAM wcd6d
	text ""
	done

_TradeforText::
	text "בעד ה@"
	TX_RAM wcf4b
	text "@"
	line "של <PLAYER>."
	done

_PlaySlotMachineText::
	text "זו מכונת מזל!"
	line "רוצה לשחק?"
	done

_OutOfCoinsSlotMachineText::
	text "אוח!"
	line "נגמרו המטבעות!"
	done

_BetHowManySlotMachineText::
	text "על כמה מטבעות"
	line "תרצה להמר?"
	done

_StartSlotMachineText::
	text "בהצלחה!"
	done

_NotEnoughCoinsSlotMachineText::
	text "אין לך מספיק"
	line "מטבעות!"
	prompt

_OneMoreGoSlotMachineText::
	text "עוד פעם?"
	done

_LinedUpText::
	text "שורה של"
	line "זכית ב@"
	TX_RAM wcf4b
	text " מטבעות!"
	done

_NotThisTimeText::
	text "לא זכית הפעם!"
	prompt

_YeahText::
	text "יש!@@"

_DexSeenOwnedText::
	text "#ידע   נראו:@"
	TX_NUM wDexRatingNumMonsSeen, 1, 3
	text ""
	line "         נתפסו:@"
	TX_NUM wDexRatingNumMonsOwned, 1, 3
	db "@"

_DexRatingText::
	text "דירוג ה#ידע", $6d
	done

_GymStatueText1::
	text "מכון ה#ימון של"
	line "@"
	TX_RAM wGymCityName
	text ""
	cont "מנהיג: @"
	TX_RAM wGymLeaderName
	text ""

	para "מאמנים מנצחים:"
	line "<RIVAL>"
	done

_GymStatueText2::
	text "מכון ה#ימון של"
	line "@"
	TX_RAM wGymCityName
	text ""
	cont "מנהיג: @"
	TX_RAM wGymLeaderName
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
	text "פיהוק!"

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
	line "#ימונים, אני מציע"
	cont "שתאחסן אותם במחשב!"
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
	line "ההתפתחות עד אחריs"
	cont "שה#ימון למד"
	cont "עוד מהלכים."
	done

_SaffronCityPokecenterGuyText1::
	text "הלוואי שהרביעיה"
	line "העילית יבואו"
	cont "לכסח לצוות רוקט"
	cont "את הצורה!"
	done

_SaffronCityPokecenterGuyText2::
	text "צוות רוקט הסתלקו!"
	line "אנחנו יכולים שוב"
	cont "להסתובב ברחוב"
	cont "בלי לפחד! תודה!"
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
	text "82MT מכיל את המהלך"
	line "קרן מוות?"
	done

_CinnabarGymQuizCorrectText::
	text "אתה לגמרי"
	line "צודק!"

	para "עבור לחדר הבא!@@"

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
	cont "של המשגר!@@"

_BillsHousePokemonListText1::
	text "רשימת ה#ימונים"
	line "האהובה על הדר!"
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
	text "צריך ארנק למטבעות!"
	done

_GameCornerNoCoinsText::
	text "אין לך מטבעות!"
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
	line "לגבי MTים."

	para "..."

	para "בסך-הכל, ישנם 50"
	line "MTים."

	para "קיימים גם 5 MHים"
	line "שניתנים לשימוש"
	cont "חוזר."

	para "סילף בע″מ.@@"

_TurnPageText::
	text "לדפדף לעמוד הבא?"
	done

_ViridianSchoolNotebookText5::
	text "ילדה: היי! אל תציץ"
	line "במחברת שלי!@@"

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
	cont "היא להביא את 8"
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
	line "בSENS!"
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
	text "איזו כותרת תרצה"
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
	text "איזו כותרת תרצה"
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
	line "הראשון נפתח!@@"

_VermilionGymTrashSuccessText2::
	text "היי! יש כאן עוד"
	line "מתג מתחת לאשפה!"
	cont "תדליק אותו!"
	prompt

_VermilionGymTrashSuccessText3::
	text "המנעול החשמלי"
	line "השני נפתח!"

	para "הדלת הממונעת"
	line "נפתחה!@@"

_VermilionGymTrashFailText::
	text "נה, כאן יש"
	line "רק אשפה."
	cont "היי! המנעולים"
	cont "החשמליים נעלו"
	cont "שוב!"

_FoundHiddenItemText::
	text "<PLAYER> מצא"
	line "@"
	TX_RAM wcd6d
	text "!@@"

_HiddenItemBagFullText::
	text "אבל, ל<PLAYER> אין"
	line "עוד מקום בתיק!"
	done

_FoundHiddenCoinsText::
	text "<PLAYER> מצא"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " מטבעות!@@"

_FoundHiddenCoins2Text::
	text "<PLAYER> מצא"
	line "@"
	TX_BCD hCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " מטבעות!@@"

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
	text "זו מפה.@@"

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
	TX_RAM wEnemyMonNick
	text " הפראי"
	line "ברח!"
	prompt

_EnemyRanText::
	text "ה@"
	TX_RAM wEnemyMonNick
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
	TX_RAM wEnemyMonNick
	text " היריב"
	line "התמוטט!"
	prompt

_MoneyForWinningText::
	text "<PLAYER> זכה"
	line "ב@"
	TX_BCD wAmountMoneyWon, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "¥!"
	prompt

_TrainerDefeatedText::
	text "<PLAYER> הביס את"
	line "@"
	TX_RAM wTrainerName
	text "!"
	prompt

_PlayerMonFaintedText::
	TX_RAM wBattleMonNick
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
	TX_RAM wTrainerName
	text "!"
	prompt

_TrainerAboutToUseText::
	TX_RAM wTrainerName
	text " עומד"
	line "לשלוח"
	cont"@"
	TX_RAM wEnemyMonNick
	text "!"

	para "האם <PLAYER>"
	line "יחליף #ימון?"
	done

_TrainerSentOutText::
	text "@"
	TX_RAM wTrainerName
	text " שלח"
	line "את @"
	TX_RAM wEnemyMonNick
	text "!"
	done

_NoWillText::
	text "אין חשק להילחם!"
	prompt

_CantEscapeText::
	text "לא ניתן לברוח!"
	prompt

_NoRunningText::
	text "לא! אסור לברוח"
	line "מקרבות מאמן!"
	prompt

_GotAwayText::
	text "יצא מזה בשלום!"
	prompt

_ItemsCantBeUsedHereText::
	text "אי אפשר להשתמש"
	line "בפריטים כאן."
	prompt

_AlreadyOutText::
	TX_RAM wBattleMonNick
	text " כבר"
	line "בקרב!"
	prompt

_MoveNoPPText::
	text "למהלך הזה נגמר"
	line "הPP!"
	prompt

_MoveDisabledText::
	text "המהלך הזה"
	line "מושבת!"
	prompt

_NoMovesLeftText::
	text "ל@"
	TX_RAM wBattleMonNick
	text " לא"
	line "נשארו מהלכים!"
	done

_MultiHitText::
	text "המתקפה פגעה"
	line "@"
	TX_NUM wPlayerNumHits,1,1
	text " פעמים!"
	prompt

_ScaredText::
	TX_RAM wBattleMonNick
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
	text "<USER> כבר"
	line "לא מושבת!"
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
	TX_RAM wcd6d
	text "של <USER>"
	cont "הושבת!"
	prompt

_MonName1Text::
	text "<USER>@@"

_Used1Text::
	text ""
	line "השתמש ב@@"

_Used2Text::
	text ""
	line "השתמש ב@@"

_InsteadText::
	text "במקום,"
	cont "@@"

_CF4BText::
	TX_RAM wcf4b
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
	line "<USER> החטיא!"
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
	TX_RAM wBattleMonNick
	text " מתעצל."
	prompt

_BeganToNapText::
	TX_RAM wBattleMonNick
	text " התחיל"
	line "לנמנם!"
	prompt

_WontObeyText::
	TX_RAM wBattleMonNick
	text " לא"
	line "מוכן לציית!"
	prompt

_TurnedAwayText::
	TX_RAM wBattleMonNick
	text " הפנה"
	line "את הגב!"
	prompt

_IgnoredOrdersText::
	TX_RAM wBattleMonNick
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
	TX_NUM wEnemyNumHits, 1, 1
	text " פגיעות!"
	prompt

_GainedText::
	TX_RAM wcd6d
	text " קיבל" 
	line "@@"

_WithExpAllText::
	text "בזכות שיתוף"
	cont "PXE,"
	cont "@@"

_BoostedText::
	text "כמות מוגברת של"
	cont "@@"

_ExpPointsText::
	TX_NUM wExpAmountGained, 2, 4
	text " נקודות"
	cont "PXE!"
	prompt

_GrewLevelText::
	TX_RAM wcd6d
	text " עלה"
	line "לרמה @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

_WildMonAppearedText::
	text "@"
	TX_RAM wEnemyMonNick
	text ""
	line "פראי הופיע!"
	prompt

_HookedMonAttackedText::
	text "ה@"
	TX_RAM wEnemyMonNick
	text ""
	line "שדגת תקף!"
	prompt

_EnemyAppearedText::
	TX_RAM wEnemyMonNick
	text ""
	line "הופיע!"
	prompt

_TrainerWantsToFightText::
	TX_RAM wTrainerName
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
	text "קדימה! @@"

_DoItText::
	text "צא! @@"

_GetmText::
	text "חסכ'תו! @@"

_EnemysWeakText::
	text "היריב כבר חלש!"
	line "כסח'תו! @@"

_PlayerMon1Text::
	TX_RAM wBattleMonNick
	text "!"
	done

_PlayerMon2Text::
	TX_RAM wBattleMonNick
	text " @@"

_EnoughText::
	text "מספיק!@@"

_OKExclamationText::
	text "בסדר!@@"

_GoodText::
	text "יופי!@@"

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
	TX_RAM wEnemyMonNick
	text "הפראי"
	line "אוכל!"
	prompt

_SafariZoneAngryText::
	text "ה@"
	TX_RAM wEnemyMonNick
	text " הפראי"
	line "כועס!"
	prompt

; money related
_PickUpPayDayMoneyText::
	text "<PLAYER> אסף"
	line "מהרצפה"
	cont "@"
	TX_BCD wTotalPayDayMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
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
	line "להשתמש בMT?"
	done

_PartyMenuSwapMonText::
	text "לאן להעביר את"
	line "ה#ימון?"
	done

_PotionText::
	TX_RAM wcd6d
	text " נרפא"
	line "ב@"
	TX_NUM wHPBarHPDifference, 2, 3
	text "נק' PH!"
	done

_AntidoteText::
	TX_RAM wcd6d
	text " כבר"
	line "לא מורעל!"
	done

_ParlyzHealText::
	TX_RAM wcd6d
	text " כבר"
	line "לא משותק!"
	done

_BurnHealText::
	text "הכויה של"
	line "@"
	TX_RAM wcd6d
	text ""
	line "החלימה!"
	done

_IceHealText::
	TX_RAM wcd6d
	text ""
	line "הפשיר!"
	done

_AwakeningText::
	TX_RAM wcd6d
	text ""
	line "התעורר!"
	done

_FullHealText::
	text "הבריאות של"
	line "@"
	TX_RAM wcd6d
	text ""
	line "שוחזרה!"
	done

_ReviveText::
	TX_RAM wcd6d
	text ""
	line "הוברא!"
	done

_RareCandyText::
	TX_RAM wcd6d
	text " עלה"
	line "לרמה @"
	TX_NUM wCurEnemyLVL, 1, 3
	text "!@@"

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
	TX_RAM wcd6d
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
	TX_RAM wcd6d
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
	text "Switch on!"
	prompt

_WhatText::
	text "מה?"
	done

_DepositWhichMonText::
	text "איזה #ימון"
	line "להכניס?"
	done

_MonWasStoredText::
	TX_RAM wcf4b
	text ""
	line "מאוחסן בתא @"
	TX_RAM wBoxNumString
	text "."
	prompt

_CantDepositLastMonText::
	text "אתה לא יכול"
	line "להכניס את!"
	cont "ה#ימון האחרון!"
	prompt

_BoxFullText::
	text "אופס! התא הזה כבר"
	line "מלא ב#ימונים."
	prompt

_MonIsTakenOutText::
	TX_RAM wcf4b
	text " יצא."
	line "לקחת את"
	cont "@"
	TX_RAM wcf4b
	text "."
	prompt

_NoMonText::
	text "מה? אין כאן"
	line "#ימונים!"
	prompt

_CantTakeMonText::
	text "אתה לא יכול לקחת"
	line "עוד #ימונים."

	para "הכנס כמה"
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
	TX_RAM wcf4b
	text ", הוא"
	cont "יעלם לנצח. בסדר?"
	done

_MonWasReleasedText::
	TX_RAM wcf4b
	text " שוחרר"
	line "וחזר לטבע."
	cont "להתראות,"
	cont "@"

_CF4BExclamationText::
	TX_RAM wcf4b
	text "!"
	prompt

_RequireCoinCaseText::
	text "צריך ארנק"
	line "למטבעות!@@"

_ExchangeCoinsForPrizesText::
	text "אנחנו מחליפים את"
	line "המטבעות שלך בעבור"
	cont "פרסים."
	prompt

_WhichPrizeText::
	text "איזה פרס תרצה?"
	done

_HereYouGoText::
	text "בבקשה!@@"

_SoYouWantPrizeText::
	text "אז אתה רוצה את"
	line "ה@"
	TX_RAM wcd6d
	text "?"
	done

_SorryNeedMoreCoinsText::
	text "אני מצטער, אבל"
	line "אתה צריך עוד"
	cont "מטבעות.@@"

_OopsYouDontHaveEnoughRoomText::
	text "אופס! אין מספיק"
	line "מקום בתיק!.@@"

_OhFineThenText::
	text "אה. טוב.@@"

_GetDexRatedText::
	text "רוצה לקבל ציון"
	line "על ה#ידע שלך?"
	done

_ClosedOaksPCText::
	text "החיבור למחשב של"
	line "פרופ' אלון נסדר.@@"

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

INCLUDE "text/oakspeech.asm"

_DoYouWantToNicknameText::
	text "אתה רוצה לתת"
	line "ל@"
	TX_RAM wcd6d
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
	TX_RAM wNameOfPlayerMonToBeTraded
	text ""
	line "ו@"
	TX_RAM wcd6d
	text ""
	cont "יוחלפו."
	done

_Char00Text::
	TX_NUM hSpriteIndexOrTextID,1,2
	text " שגיאה."
	done

_Char55Text::
	text $4B,"@@"

INCLUDE "text/maps/DiglettsCaveRoute2.asm"
INCLUDE "text/maps/ViridianForestNorthGate.asm"
INCLUDE "text/maps/Route2TradeHouse.asm"
INCLUDE "text/maps/Route2Gate.asm"
INCLUDE "text/maps/ViridianForestSouthGate.asm"
INCLUDE "text/maps/MtMoonPokecenter.asm"
INCLUDE "text/maps/SaffronGates.asm"
INCLUDE "text/maps/Daycare.asm"


SECTION "Text 4", ROMX ; BANK $23

INCLUDE "text/maps/Daycare_2.asm"
INCLUDE "text/maps/UndergroundPathRoute6.asm"
INCLUDE "text/maps/UndergroundPathRoute7.asm"
INCLUDE "text/maps/UndergroundPathRoute7Copy.asm"
INCLUDE "text/maps/UndergroundPathRoute8.asm"
INCLUDE "text/maps/RockTunnelPokecenter.asm"
INCLUDE "text/maps/RockTunnel1F.asm"
INCLUDE "text/maps/PowerPlant.asm"
INCLUDE "text/maps/Route11Gate1F.asm"
INCLUDE "text/maps/Route11Gate2F.asm"
INCLUDE "text/maps/DiglettsCaveRoute11.asm"
INCLUDE "text/maps/Route12Gate1F.asm"
INCLUDE "text/maps/Route12Gate2F.asm"
INCLUDE "text/maps/Route12SuperRodHouse.asm"
INCLUDE "text/maps/Route15Gate1F.asm"
INCLUDE "text/maps/Route15Gate2F.asm"
INCLUDE "text/maps/Route16Gate1F.asm"
INCLUDE "text/maps/Route16Gate2F.asm"
INCLUDE "text/maps/Route16FlyHouse.asm"
INCLUDE "text/maps/Route18Gate1F.asm"
INCLUDE "text/maps/Route18Gate2F.asm"
INCLUDE "text/maps/Route22Gate.asm"
INCLUDE "text/maps/VictoryRoad2F.asm"
INCLUDE "text/maps/BillsHouse.asm"
INCLUDE "text/maps/Route1.asm"
INCLUDE "text/maps/Route2.asm"
INCLUDE "text/maps/Route3.asm"
INCLUDE "text/maps/Route4.asm"
INCLUDE "text/maps/Route5.asm"
INCLUDE "text/maps/Route6.asm"
INCLUDE "text/maps/Route7.asm"
INCLUDE "text/maps/Route8.asm"
INCLUDE "text/maps/Route9.asm"
INCLUDE "text/maps/Route10.asm"
INCLUDE "text/maps/Route11.asm"


SECTION "Text 5", ROMX ; BANK $24

INCLUDE "text/maps/Route11_2.asm"
INCLUDE "text/maps/Route12.asm"
INCLUDE "text/maps/Route13.asm"
INCLUDE "text/maps/Route14.asm"
INCLUDE "text/maps/Route15.asm"
INCLUDE "text/maps/Route16.asm"
INCLUDE "text/maps/Route17.asm"
INCLUDE "text/maps/Route18.asm"
INCLUDE "text/maps/Route19.asm"
INCLUDE "text/maps/Route20.asm"
INCLUDE "text/maps/Route21.asm"
INCLUDE "text/maps/Route22.asm"
INCLUDE "text/maps/Route23.asm"
INCLUDE "text/maps/Route24.asm"


SECTION "Text 6", ROMX ; BANK $25

INCLUDE "text/maps/Route24_2.asm"
INCLUDE "text/maps/Route25.asm"

_FileDataDestroyedText::
	text "המידע בקובץ השמירה"
	line "נהרס! לא ניתן"
	cont "לקרוא את הקובץ!"
	prompt

_WouldYouLikeToSaveText::
	text "לשמור את"
	line "המשחק?"
	done

_GameSavedText::
	text "<PLAYER> שמר"
	line "את המשחק!"
	done

_OlderFileWillBeErasedText::
	text "קובץ השמירה הישן"
	line "יימחק כדי לפנות"
	cont "לחדש. בסדר?"
	done

_WhenYouChangeBoxText::
	text "כשאתה מחליף בין"
	line "תאים במחשב, המשחק"
	cont "יישמר."

	para "בסדר?"
	done

_ChooseABoxText::
	text "בחר תא.@@"

_EvolvedText::
	TX_RAM wcf4b
	text " התפתח"
	done

_IntoText::
	text "והפך"
	line "ל@"
	TX_RAM wcd6d
	text "!"
	done

_StoppedEvolvingText::
	text "הא? @"
	TX_RAM wcf4b
	text ""
	line "הפסיק להתפתח!"
	prompt

_IsEvolvingText::
	text "מה? @"
	TX_RAM wcf4b
	text ""
	line "מתפתח!"
	done

_FellAsleepText::
	text "<TARGET>"
	line "fell asleep!"
	prompt

_AlreadyAsleepText::
	text "<TARGET>"
	line "כבר ישן!"
	prompt

_PoisonedText::
	text "<TARGET>"
	line "הורעל!"
	prompt

_BadlyPoisonedText::
	text "<TARGET>"
	line "מורעל קשות!"
	prompt

_BurnedText::
	text "<TARGET>"
	line "נכווה!"
	prompt

_FrozenText::
	text "<TARGET>"
	line "קפא!"
	prompt

_FireDefrostedText::
	text "האש הפשירה את"
	line "<TARGET>!"
	prompt

_MonsStatsRoseText::
	text "ה@"
	TX_RAM wcf4b
	text ""
	line "של <USER>"
	cont "@@"

_GreatlyRoseText::
	text "גדלה מאוד!"
	prompt

_RoseText::
	text "גדלה!"
	prompt

_MonsStatsFellText::
	text "ה@"
	TX_RAM wcf4b
	text ""
	line "של <TARGET>"
	cont "@@"

_GreatlyFellText::
	text "הופחתה מאוד!"
	prompt

_FellText::
	text "הופחתה!"
	prompt

_RanFromBattleText::
	text "<USER>"
	line "ran from battle!"
	prompt

_RanAwayScaredText::
	text "<TARGET>"
	line "ברח מרוב פחד!"
	prompt

_WasBlownAwayText::
	text "<TARGET>"
	line "הועף!"
	prompt

_ChargeMoveEffectText::
	text "<USER>@@"

_MadeWhirlwindText::
	text ""
	line "יצר מערבולת רוח!"
	prompt

_TookInSunlightText::
	text ""
	line "ספג אור שמש!"
	prompt

_LoweredItsHeadText::
	text ""
	line "הנמיך את הראש!"
	prompt

_SkyAttackGlowingText::
	text ""
	line "זורח!"
	prompt

_FlewUpHighText::
	text ""
	line "עף גבוה!"
	prompt

_DugAHoleText::
	text ""
	line "חפר בחור!"
	prompt

_BecameConfusedText::
	text "<TARGET>"
	line "נהיה מבולבל!"
	prompt

_MimicLearnedMoveText::
	text "<USER>"
	line "למד"
	cont "@"
	TX_RAM wcd6d
	text "!"
	prompt

_MoveWasDisabledText::
	text "המהלך @"
	TX_RAM wcd6d
	text ""
	line "@"
	text "של <TARGET>"
	line "הושבת!"
	prompt

_NothingHappenedText::
	text "לא קרה כלום!"
	prompt

_NoEffectText::
	text "אין השפעה!"
	prompt

_ButItFailedText::
	text "אבל, זה לא עבד! "
	prompt

_DidntAffectText::
	text "זה לא השפיע על"
	line "<TARGET>!"
	prompt

_IsUnaffectedText::
	text "<TARGET>"
	line "לא מושפע!"
	prompt

_ParalyzedMayNotAttackText::
	text "<TARGET>"
	line "משותק! הוא לא"
	cont "יכול לתקוף!"
	prompt

_SubstituteText::
	text "הוא הפיק ממלא"
	line "מקום!"
	prompt

_HasSubstituteText::
	text "ל<USER>"
	line "יש ממלא מקום!"
	prompt

_TooWeakSubstituteText::
	text "חלש מדי כדי להפיק"
	line "ממלא מקום!"
	prompt

_CoinsScatteredText::
	text "מטבעות התפזרו"
	line "לכל עבר!"
	prompt

_GettingPumpedText::
	text "<USER>"
	line "צובר אנרגיה!"
	prompt

_WasSeededText::
	text "זרע נזרע אצל"
	line "<TARGET>!"
	prompt

_EvadedAttackText::
	text "<TARGET>"
	line "חמק מהמתקפה!"
	prompt

_HitWithRecoilText::
	text "<USER> נפגע"
	line "מההדף!"
	prompt

_ConvertedTypeText::
	text "שינה סוג לסוג של"
	line "<TARGET>!"
	prompt

_StatusChangesEliminatedText::
	text "כל שינויי הסטטוס"
	line "נמחקו!"
	prompt

_StartedSleepingEffect::
	text "<USER>"
	line "נרדם!"
	done

_FellAsleepBecameHealthyText::
	text "<USER>"
	line "נרדם והבריא!"
	done

_RegainedHealthText::
	text "<USER>"
	line "הבריא!"
	prompt

_TransformedText::
	text "<USER>"
	line "שינה צורה והפך"
	cont "ל@"
	TX_RAM wcd6d
	text "!"
	prompt

_LightScreenProtectedText::
	text "<USER> מוגן"
	line "נגד מתקפות"
	cont "מיוחדות!"
	prompt

_ReflectGainedArmorText::
	text "<USER>"
	line "שיפר את ההגנה"
	cont "שלו!"
	prompt

_ShroudedInMistText::
	text "<USER> לוט"
	line "בערפל!"
	prompt

_SuckedHealthText::
	text "<TARGET> איבד"
	line "PH בגלל היניקה!"
	prompt

_DreamWasEatenText::
	text "החלום של <TARGET>"
	line "נאכל!"
	prompt

_TradeCenterText1::
	text "!"
	done

_ColosseumText1::
	text "!"
	done

INCLUDE "text/maps/RedsHouse1F.asm"
INCLUDE "text/maps/BluesHouse.asm"
INCLUDE "text/maps/OaksLab.asm"
INCLUDE "text/maps/ViridianPokecenter.asm"
INCLUDE "text/maps/ViridianMart.asm"
INCLUDE "text/maps/ViridianSchoolHouse.asm"
INCLUDE "text/maps/ViridianNicknameHouse.asm"
INCLUDE "text/maps/ViridianGym.asm"
INCLUDE "text/maps/Museum1F.asm"
INCLUDE "text/maps/Museum2F.asm"
INCLUDE "text/maps/PewterGym.asm"


SECTION "Text 7", ROMX ; BANK $26

INCLUDE "text/maps/PewterGym_2.asm"
INCLUDE "text/maps/PewterNidoranHouse.asm"
INCLUDE "text/maps/PewterMart.asm"
INCLUDE "text/maps/PewterSpeechHouse.asm"
INCLUDE "text/maps/PewterPokecenter.asm"
INCLUDE "text/maps/CeruleanTrashedHouse.asm"
INCLUDE "text/maps/CeruleanTradeHouse.asm"
INCLUDE "text/maps/CeruleanPokecenter.asm"
INCLUDE "text/maps/CeruleanGym.asm"
INCLUDE "text/maps/BikeShop.asm"
INCLUDE "text/maps/CeruleanMart.asm"
INCLUDE "text/maps/CeruleanBadgeHouse.asm"
INCLUDE "text/maps/LavenderPokecenter.asm"
INCLUDE "text/maps/PokemonTower1F.asm"
INCLUDE "text/maps/PokemonTower2F.asm"
INCLUDE "text/maps/PokemonTower3F.asm"
INCLUDE "text/maps/PokemonTower4F.asm"
INCLUDE "text/maps/PokemonTower5F.asm"
INCLUDE "text/maps/PokemonTower6F.asm"
INCLUDE "text/maps/PokemonTower7F.asm"
INCLUDE "text/maps/MrFujisHouse.asm"
INCLUDE "text/maps/LavenderMart.asm"
INCLUDE "text/maps/LavenderCuboneHouse.asm"
INCLUDE "text/maps/NameRatersHouse.asm"
INCLUDE "text/maps/VermilionPokecenter.asm"
INCLUDE "text/maps/PokemonFanClub.asm"
INCLUDE "text/maps/VermilionMart.asm"
INCLUDE "text/maps/VermilionGym.asm"


SECTION "Text 8", ROMX ; BANK $27

INCLUDE "text/maps/VermilionGym_2.asm"
INCLUDE "text/maps/VermilionPidgeyHouse.asm"
INCLUDE "text/maps/VermilionDock.asm"
INCLUDE "text/maps/VermilionOldRodHouse.asm"
INCLUDE "text/maps/CeladonMart1F.asm"
INCLUDE "text/maps/CeladonMart2F.asm"
INCLUDE "text/maps/CeladonMart3F.asm"
INCLUDE "text/maps/CeladonMart4F.asm"
INCLUDE "text/maps/CeladonMartRoof.asm"
INCLUDE "text/maps/CeladonMansion1F.asm"
INCLUDE "text/maps/CeladonMansion2F.asm"
INCLUDE "text/maps/CeladonMansion3F.asm"
INCLUDE "text/maps/CeladonMansionRoof.asm"
INCLUDE "text/maps/CeladonMansionRoofHouse.asm"
INCLUDE "text/maps/CeladonPokecenter.asm"
INCLUDE "text/maps/CeladonGym.asm"
INCLUDE "text/maps/GameCorner.asm"
INCLUDE "text/maps/CeladonMart5F.asm"
INCLUDE "text/maps/GameCornerPrizeRoom.asm"
INCLUDE "text/maps/CeladonDiner.asm"
INCLUDE "text/maps/CeladonChiefHouse.asm"
INCLUDE "text/maps/CeladonHotel.asm"
INCLUDE "text/maps/FuchsiaMart.asm"
INCLUDE "text/maps/FuchsiaBillsGrandpasHouse.asm"
INCLUDE "text/maps/FuchsiaPokecenter.asm"
INCLUDE "text/maps/WardensHouse.asm"
INCLUDE "text/maps/SafariZoneGate.asm"
INCLUDE "text/maps/FuchsiaGym.asm"


SECTION "Text 9", ROMX ; BANK $28

INCLUDE "text/maps/FuchsiaGym_2.asm"
INCLUDE "text/maps/FuchsiaMeetingRoom.asm"
INCLUDE "text/maps/FuchsiaGoodRodHouse.asm"
INCLUDE "text/maps/PokemonMansion1F.asm"
INCLUDE "text/maps/CinnabarGym.asm"
INCLUDE "text/maps/CinnabarLab.asm"
INCLUDE "text/maps/CinnabarLabTradeRoom.asm"
INCLUDE "text/maps/CinnabarLabMetronomeRoom.asm"
INCLUDE "text/maps/CinnabarLabFossilRoom.asm"
INCLUDE "text/maps/CinnabarPokecenter.asm"
INCLUDE "text/maps/CinnabarMart.asm"
INCLUDE "text/maps/IndigoPlateauLobby.asm"
INCLUDE "text/maps/CopycatsHouse1F.asm"
INCLUDE "text/maps/CopycatsHouse2F.asm"
INCLUDE "text/maps/FightingDojo.asm"
INCLUDE "text/maps/SaffronGym.asm"
INCLUDE "text/maps/SaffronPidgeyHouse.asm"
INCLUDE "text/maps/SaffronMart.asm"
INCLUDE "text/maps/SilphCo1F.asm"
INCLUDE "text/maps/SaffronPokecenter.asm"
INCLUDE "text/maps/MrPsychicsHouse.asm"

_PokemartGreetingText::
	text "שלום! איך"
	next "אפשר לעזור לך?"
	done

_PokemonFaintedText::
	TX_RAM wcd6d
	text ""
	line "התמוטט!"
	done

_PlayerBlackedOutText::
	text "ל<PLAYER> אין עוד"
	line "#ימונים שיכולים"
	cont "להילחם!"

	para "<PLAYER> התעלף!"
	prompt

_RepelWoreOffText::
	text "השפעת הדוחה"
	line "התפוגגה."
	done

_PokemartBuyingGreetingText::
	text "קח את הזמן."
	done

_PokemartTellBuyPriceText::
	TX_RAM wcf4b
	text "?"
	line "זה יעלה לך"
	cont "@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "¥. בסדר?"
	done

_PokemartBoughtItemText::
	text "אין בעיה!"
	line "בבקשה!"
	prompt

_PokemartNotEnoughMoneyText::
	text "אין לך מספיק"
	line "כסף."
	prompt

_PokemartItemBagFullText::
	text "אין לך מקום"
	line "לעוד פריטים."
	prompt

_PokemonSellingGreetingText::
	text "מה תרצה למכור?"
	done

_PokemartTellSellPriceText::
	text "אני יכול לשלם"
	line "@"
	TX_BCD hMoney, 3 | LEADING_ZEROES | LEFT_ALIGN
	text "¥ בעד זה."
	done

_PokemartItemBagEmptyText::
	text "אין לך שום דבר"
	line "למכור."
	prompt

_PokemartUnsellableItemText::
	text "אני לא יכול לשים"
	line "מחיר על פריט כזה."
	prompt

_PokemartThankYouText::
	text "תודה רבה!"
	done

_PokemartAnythingElseText::
	text "זה הכל?"
	done

_LearnedMove1Text::
	TX_RAM wLearnMoveMonName
	text " למד"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_WhichMoveToForgetText::
	text "למחוק איזה"
	next "מהלך?"
	done

_AbandonLearningText::
	text "לוותר על המהלך"
	line "@"
	TX_RAM wcf4b
	text "?"
	done

_DidNotLearnText::
	TX_RAM wLearnMoveMonName
	text ""
	line "לא למד"
	cont "@"
	TX_RAM wcf4b
	text "!"
	prompt

_TryingToLearnText::
	TX_RAM wLearnMoveMonName
	text " מנסה"
	line "ללמוד את המהלך"
	cont "@"
	TX_RAM wcf4b
	text "!"

	para "אבל, @"
	TX_RAM wLearnMoveMonName
	text ""
	line "לא יכול ללמוד"
	cont "יותר מ-3 מהלכים!"

	para "למחוק מהלך קיים"
	line "כדי לפנות מקום"
	cont "ל@"
	TX_RAM wcf4b
	text "?"
	done

_OneTwoAndText::
	text "1, 2 ו...@@"

_PoofText::
	text " פוף!@@"

_ForgotAndText::
	text ""
	para "@"
	TX_RAM wLearnMoveMonName
	text " שכח"
	line "את @"
	TX_RAM wcd6d
	text "!"

	para "And..."
	prompt

_HMCantDeleteText::
	text "לא ניתן לשכוח"
	line "מהלכי MH!"
	prompt

_PokemonCenterWelcomeText::
	text "ברוך הבא למרכז"
	line "ה#ימון!"

	para "אנחנו מרפאים"
	line "#ימונים עייפים"
	cont "או פצועים!"
	prompt

_ShallWeHealYourPokemonText::
	text "תרצה שנרפא את"
	line "ה#ימונים שלך?"
	done

_NeedYourPokemonText::
	text "אוקיי. אקח"
	line "את ה#ימונים שלך"
	cont "רק לרגע."
	done

_PokemonFightingFitText::
	text "תודה!"
	line "ה#ימונים שלך"
	cont "שוב בריאים"
	cont "ובכושר!"
	prompt

_PokemonCenterFarewellText::
	text "נשמח לראותך"
	line "שוב!"
	done

_CableClubNPCAreaReservedFor2FriendsLinkedByCableText::
	text "האיזור הזה שמור"
	line "עבור שני חברים"
	cont "שמתקשרים בחיבור"
	cont "כבל."
	done

_CableClubNPCWelcomeText::
	text "ברוך הבא"
	line "למועדון החיבור!" ; TODO
	done

_CableClubNPCPleaseApplyHereHaveToSaveText::
	text "ההרשמה כאן."

	para "לפני שנפתח את"
	line "החיבור, צריך"
	cont "לשמור את המשחק."
	done

_CableClubNPCPleaseWaitText::
	text "אנא המתן.@@"

_CableClubNPCLinkClosedBecauseOfInactivityText::
	text "החיבור נסגר עקב"
	line "חוסר פעילות."

	para "אנא, צור קשר עם"
	line "חברך. נשמח לראותך"
	cont "שוב!"
	done


SECTION "Text 10", ROMX ; BANK $29

_CableClubNPCPleaseComeAgainText::
	text "נשמח לראותך שוב!"
	done

_CableClubNPCMakingPreparationsText::
	text "אנחנו מתכוננים."
	line "כמה רגעים..."
	done

_UsedStrengthText::
	TX_RAM wcd6d
	text " השתמש"
	line "בעוצמה.@@"

_CanMoveBouldersText::
	TX_RAM wcd6d
	text " יכול"
	line "להזיז סלעים."
	prompt

_CurrentTooFastText::
	text "הזרמים חזקים"
	line "מדי!"
	prompt

_CyclingIsFunText::
	text "רכיבה על אופניים"
	line "זה הכי! גלישה זה"
	line "פאסה!"
	prompt

_FlashLightsAreaText::
	text "הבזק אור מסנוור"
	line "האיר את האיזור!"
	prompt

_WarpToLastPokemonCenterText::
	text "משתגר למרכז ה#ימון"
	line "האחרון שביקרת בו."
	done

_CannotUseTeleportNowText::
	TX_RAM wcd6d
	text " לא"
	line "יכול להשתמש"
	cont "בהשתגרות כרגע."
	prompt

_CannotFlyHereText::
	TX_RAM wcd6d
	text " לא יכול"
	line "לעוף כאן."
	prompt

_NotHealthyEnoughText::
	text "לא בריא"
	line "מספיק."
	prompt

_NewBadgeRequiredText::
	text "לא! צריך תג נוסף"
	line "בשביל זה."
	prompt

_CannotUseItemsHereText::
	text "אי אפשר להשתמש"
	line "בפריטים כאן."
	prompt

_CannotGetOffHereText::
	text "אי אפשר לרדת"
	line "כאן."
	prompt

_GotMonText::
	text "<PLAYER> קיבל"
	line "את @"
	TX_RAM wcd6d
	text "!@@"

_SentToBoxText::
	text "אין עוד מקום"
	line "ל#ימונים!"
	cont "@"
	TX_RAM wBoxMonNicks
	text " הוכנס"
	cont "לתא"
	cont "מס. @"
	TX_RAM wcf4b
	text " במחשב!"
	done

_BoxIsFullText::
	text "אין עוד מקום"
	line "ל#ימונים!"

	para "התא במחשב מלא ואי"
	line "אפשר לשלוח אליו"
	cont "עוד #ימונים!"

	para "לך למרכז ה#ימון"
	line "ותחליף את התא"
	cont "במחשב!"
	done

INCLUDE "text/maps/PalletTown.asm"
INCLUDE "text/maps/ViridianCity.asm"
INCLUDE "text/maps/PewterCity.asm"
INCLUDE "text/maps/CeruleanCity.asm"
INCLUDE "text/maps/LavenderTown.asm"
INCLUDE "text/maps/VermilionCity.asm"
INCLUDE "text/maps/CeladonCity.asm"
INCLUDE "text/maps/FuchsiaCity.asm"
INCLUDE "text/maps/CinnabarIsland.asm"
INCLUDE "text/maps/SaffronCity.asm"

_ItemUseBallText00::
	text "הוא התחמק מהכדור"
	line "שזרקת!"

	para "אי אפשר לתפוס"
	line "את ה#ימון הזה!"
	prompt

_ItemUseBallText01::
	text "פספסת את"
	line "ה#ימון!"
	prompt

_ItemUseBallText02::
	text "אוח! ה#ימון"
	line "ברח!"
	prompt

_ItemUseBallText03::
	text "אוי! חשבתי שהוא"
	line "נתפס! "
	prompt

_ItemUseBallText04::
	text "אוף! זה היה ממש"
	line "קרוב!"
	prompt

_ItemUseBallText05::
	text "מעולה!"
	line "@"
	TX_RAM wEnemyMonNick
	text ""
	cont "נתפס!@@"

_ItemUseBallText07::
	TX_RAM wBoxMonNicks
	text " נשלח"
	line "למחשב של הדר!"
	prompt

_ItemUseBallText08::
	TX_RAM wBoxMonNicks
	text " נשלח"
	line "למחשב של ???!"
	prompt

_ItemUseBallText06::
	text "מידע חדש על"
	line "@"
	TX_RAM wEnemyMonNick
	text ""
	text "נוסף ל@#ידע!@@"

_SurfingGotOnText::
	text "<PLAYER> עלה על"
	line "@"
	TX_RAM wcd6d
	text "!"
	prompt

_SurfingNoPlaceToGetOffText::
	text "אין איפה לרדת!"
	prompt

_VitaminStatRoseText::
	text "ה@"
	TX_RAM wcf4b
	text " של"
	line "@"
	TX_RAM wcd6d
	text " הוגבר."
	prompt

_VitaminNoEffectText::
	text "זה לא ישפיע."
	prompt

_ThrewBaitText::
	text "<PLAYER> זרק"
	line "קצת אוכל."
	done

_ThrewRockText::
	text "<PLAYER> זרק אבן."
	done

_PlayedFluteNoEffectText::
	text "ניגן בחלילית"
	line "הקסם."

	para "זה מה שנקרא"
	line "מנגינה קליטה!"
	prompt

_FluteWokeUpText::
	text "כל ה#ימונים"
	line "שישנו התעוררו."
	prompt

_PlayedFluteHadEffectText::
	text "<PLAYER> ניגן"
	line "בחלילית הקסם.@@"

_CoinCaseNumCoinsText::
	text "מטבעות"
	line "@"
	TX_BCD wPlayerCoins, 2 | LEADING_ZEROES | LEFT_ALIGN
	text " "
	prompt

_ItemfinderFoundItemText::
	text "יש! מאתר החפצים"
	line "מראה שיש חפץ"
	cont "בקרבת מקום."
	prompt

_ItemfinderFoundNothingText::
	text "כלום! מאתר החפצים"
	line "לא מגיב!"
	prompt

_RaisePPWhichTechniqueText::
	text "להגדיל PP של איזה"
	line "מהלך?"
	done

_RestorePPWhichTechniqueText::
	text "לשחזר PP של איזה"
	line "מהלך?"
	done

_PPMaxedOutText::
	text "הPP של"
	line "@"
	TX_RAM wcf4b
	text " כבר"
	line "נמצא בערך המרבי!"
	prompt

_PPIncreasedText::
	text "הPP של המהלך"
	line "@"
	TX_RAM wcf4b
	text " גדל."
	prompt

_PPRestoredText::
	text "PP שוחזר."
	prompt

_BootedUpTMText::
	text "הדלקת מכשיר MT!"
	prompt

_BootedUpHMText::
	text "הדלקת מכשיר MH!"
	prompt

_TeachMachineMoveText::
	text "הוא מכיל את המהלך"
	line "@"
	TX_RAM wcf4b
	text "!"

	para "ללמד #ימון את"
	line "המהלך @"
	TX_RAM wcf4b
	text "?"
	done

_MonCannotLearnMachineMoveText::
	TX_RAM wcd6d
	text " לא"
	line "יכול ללמוד"
	cont "@"
	TX_RAM wcf4b
	text "."
	prompt

_ItemUseNotTimeText::
	text "אלון: <PLAYER>!"
	line "זה לא הזמן המתאים"
	cont "להשתמש בפריט הזה!"
	prompt

_ItemUseNotYoursToUseText::
	text "אל תשתמש במה"
	line "שלא שלך!"
	prompt

_ItemUseNoEffectText::
	text "זה לא ישפיע."
	prompt

_ThrowBallAtTrainerMonText1::
	text "המאמן חסם את"
	line "הכדור!"
	prompt

_ThrowBallAtTrainerMonText2::
	text "אל תהיה גנב!"
	prompt

_NoCyclingAllowedHereText::
	text "אסור לרכב"
	next "על אופניים כאן."
	prompt

_NoSurfingHereText::
	text "אי אפשר לגלוש על"
	line "@"
	TX_RAM wcd6d
	text " כאן!"
	prompt

_BoxFullCannotThrowBallText::
	text "אתה לא יכול"
	line "להשתמש בפריט הזה"
	cont "כי התא במחשב מלא!"
	prompt


SECTION "Text 11", ROMX ; BANK $2a

_ItemUseText001::
	text "<PLAYER> השתמש@@"

_ItemUseText002::
	text "ב@"
	TX_RAM wcf4b
	text "!"
	done

_GotOnBicycleText1::
	text "<PLAYER> עלה על@@"

_GotOnBicycleText2::
	text "ה@"
	TX_RAM wcf4b
	text "!"
	prompt

_GotOffBicycleText1::
	text "<PLAYER> ירד@@"

_GotOffBicycleText2::
	text "מה@"
	TX_RAM wcf4b
	text "."
	prompt

_ThrewAwayItemText::
	text "<PLAYER> זרק"
	line "את ה@"
	TX_RAM wcd6d
	text "."
	prompt

_IsItOKToTossItemText::
	text "אתה בטוח שאתה"
	line "רוצה לזרוק את"
	cont "ה@"
	TX_RAM wcf4b
	text "?"
	prompt

_TooImportantToTossText::
	text "זה פריט חשוב!"
	line "לא כדאי לזרוק"
	cont "אותו!"
	prompt

_AlreadyKnowsText::
	TX_RAM wcd6d
	text ""
	line "כבר יודע את"
	cont "המהלך"
	cont "@"
	TX_RAM wcf4b
	text "!"
	prompt

_ConnectCableText::
	text "אוקיי, ככה מחברים"
	line "את הכבל!"
	prompt

_TradedForText::
	text "<PLAYER> החליף"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text " בעד"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "!@@"

_WannaTrade1Text::
	text "אני מחפש"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "! רוצה"

	para "להחליף אחד בשביל"
	line "@"
	TX_RAM wInGameTradeReceiveMonName
	text "? "
	done

_NoTrade1Text::
	text "אוף!!"
	line "הפסד שלך..."
	done

_WrongMon1Text::
	text "מה? זה ממש לא"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "!"

	para "אם אתה משיג אחד,"
	line "תחזור לכאן!"
	done

_Thanks1Text::
	text "היי, תודה!"
	done

_AfterTrade1Text::
	text "איך אתה מסתדר עם"
	line "ה@"
	TX_RAM wInGameTradeReceiveMonName
	text ""
	line "שנתתי לך?"
	done

_WannaTrade2Text::
	text "שלום לך! אתה"
	line "מעוניין במקרה"
	cont "להחליף את"
	para "ה@"
	TX_RAM wInGameTradeGiveMonName
	text " שלך"
	line "בעד @"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade2Text::
	text "לא רוצה, לא"
	line "צריך..."
	done

_WrongMon2Text::
	text "המ? זה לא"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "כשתתפוס אחד,"
	line "תזכור לחזור"
	cont "ולהחליף אותו."
	done

_Thanks2Text::
	text "תודה!"
	done

_AfterTrade2Text::
	text "ה@"
	TX_RAM wInGameTradeGiveMonName
	text ""
	line "שנתת לי"

	para "התפתח!"
	done

_WannaTrade3Text::
	text "היי! יש לך"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "?"

	para "רוצה להחליף אותו"
	line "ב@"
	TX_RAM wInGameTradeReceiveMonName
	text "?"
	done

_NoTrade3Text::
	text "חבל."
	done

_WrongMon3Text::
	text "...זה לא"
	line "@"
	TX_RAM wInGameTradeGiveMonName
	text "."

	para "אם אתה תופס אחד,"
	line "בוא להחליף אותו!"
	done

_Thanks3Text::
	text "תודה חבר!"
	done

_AfterTrade3Text::
	text "מה שלום"
	line "ה@"
	TX_RAM wInGameTradeReceiveMonName
	text "שנתתי לך?"

	para "ה@"
	TX_RAM wInGameTradeGiveMonName
	text " שלי"
	line "מסתדר מצוין!"
	done

_NothingToCutText::
	text "אין כאן שום דבר"
	line "לחתוך!"
	prompt

_UsedCutText::
	TX_RAM wcd6d
	text " השתמש"
	line "בחיתוך!"
	prompt


SECTION "Pokedex Text", ROMX ; BANK $2b

INCLUDE "text/pokedex.asm"


SECTION "Move Names", ROMX ; BANK $2c

INCLUDE "text/move_names.asm"
