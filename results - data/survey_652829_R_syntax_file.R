data <- read.csv("survey_652829_R_data_file.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)


# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: F
data[, 3] <- as.numeric(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: A
data[, 7] <- as.character(data[, 7])
attributes(data)$variable.labels[7] <- "refurl"
names(data)[7] <- "refurl"
# LimeSurvey Field type: F
data[, 8] <- as.numeric(data[, 8])
attributes(data)$variable.labels[8] <- "[Zet hier een vinkje als je meer informatie wilt lezen] 	Wat uitleg over de vragenlijst	Het doel van Party Panel is om samen met jou bij te dragen aan goede communicatie over gezond en leuk uitgaan.	De vragenlijst (na deze introductie) is zes pagina\'s lang. We schatten dat je ongeveer 20 minuten bezig bent.	Als je na afloop je emailadres achterlaat (dit wordt apart opgeslagen van je antwoorden, zodat het onmogelijk is die te koppelen) sturen we je de resultaten van deze vragenlijst toe als hij is afgerond.	Op een klein scherm kan het moeilijk zijn de vragenlijst in te vullen. Als je een telefoon of tablet gebruikt, en merkt dat het lastig is, kun je altijd later verdergaan op een PC met het knopje \'Later verdergaan\', rechtsonder."
data[, 8] <- factor(data[, 8], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[8] <- "moreInfo_1"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "Extra uitleg over de vragenlijst	Deze eerste vragenlijst uit de serie Party Panel vragenlijsten gaat over de hooggedoseerde XTC-pillen die sinds een aantal jaar in Nederland op de markt zijn. In het bijzonder zijn er drie onderwerpen: hooggedoseerde XTC pillen, het gebruiken van een hoge dosis XTC, en het laten testen van XTC. Natuurlijk kun je de vragenlijst ook invullen als je geen XTC gebruikt! De volgende vragenlijst gaat ook over uitgaan, maar niet over XTC. Één van de onderwerpen die aanbod zal komen is de EHBO op feesten, maar je kunt zelf meebepalen waar nog meer over.	Deelname is natuurlijk helemaal vrijwillig. Je kunt op elk moment stoppen met invullen. Deze vragenlijst is volledig anoniem. Door de manier waarop we het hebben opgezet, is het onmogelijk om je antwoorden aan jou te linken. Zie voor meer informatie http://partypanel.nl/?info.	De vragenlijst start met een pagina over hoe je uitgaat, en dan één over middelengebruik. Daarna krijg je of twee pagina\'s met vragen over hooggedoseerde XTC pillen, of over het gebruiken van een hoge dosis XTC, of over XTC laten testen (je kunt ook alle vragen maken als je wil). Dan volgt een korte pagina voor iedereen met wat vragen over dosis en testen, en tot slot stellen we wat algemene vragen naar bijvoorbeeld je geslacht en leeftijd (die laatste vragen kun je overslaan).	Als je klaar bent met vragenlijst kun je, ook anoniem, suggesties geven voor onderwerpen die we in de volgende editie kunnen onderzoeken. Je kunt natuurlijk ook andere suggesties en tips geven. Het doel van Party Panel is om samen met jou bij te dragen aan goede communicatie over gezond en leuk uitgaan. Als je hier ideeën over hebt, horen we die graag!"
names(data)[9] <- "intro"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "Voordat je kunt starten willen we je vragen akkoord te gaan met de zogenaamde \'informed consent\'. Dit is nodig voor wetenschappelijk onderzoek. Het is namelijk belangrijk dat jij:			de gelegenheid hebt gehad om de achtergrond-informatie te lezen (die staat op http://partypanel.nl/?info);			de gelegenheid hebt gehad om vragen te stellen (dat kan via http://partypanel.nl/?contact);			de gelegenheid hebt gehad om over je deelname na te denken (neem de tijd);			en begrijpt dat je op elk moment met het onderzoek kunt stoppen.	Hieronder kun je dit bevestigen, en dan kun je starten met de vragenlijst.	Heel erg bedankt alvast voor het meedoen, en veel plezier met het invullen van de vragenlijst!"
data[, 10] <- factor(data[, 10], levels=c("yes","no"),labels=c("Ja, ik ga akkoord met deelname!", "Nee, ik wil toch niet meedoen."))
names(data)[10] <- "informedConsent"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "{rand(1,3)}"
names(data)[11] <- "randomNumber"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "{rand(0,10)}"
names(data)[12] <- "randomTestingPrice"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "Waarom doe je liever niet mee?"
names(data)[13] <- "noConsentReason"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[Een feestje bij mensen thuis] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 14] <- factor(data[, 14], levels=c("XtdNr"),labels=c(""))
names(data)[14] <- "goingOutFreq_houseparty#0"
# LimeSurvey Field type: F
data[, 15] <- as.numeric(data[, 15])
attributes(data)$variable.labels[15] <- "[Een feestje bij mensen thuis] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 15] <- factor(data[, 15], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[15] <- "goingOutFreq_houseparty#1"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[Een café, kroeg, of bar] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 16] <- factor(data[, 16], levels=c("XtdNr"),labels=c(""))
names(data)[16] <- "goingOutFreq_cafe#0"
# LimeSurvey Field type: F
data[, 17] <- as.numeric(data[, 17])
attributes(data)$variable.labels[17] <- "[Een café, kroeg, of bar] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 17] <- factor(data[, 17], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[17] <- "goingOutFreq_cafe#1"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[Een discotheek of club] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 18] <- factor(data[, 18], levels=c("XtdNr"),labels=c(""))
names(data)[18] <- "goingOutFreq_disco#0"
# LimeSurvey Field type: F
data[, 19] <- as.numeric(data[, 19])
attributes(data)$variable.labels[19] <- "[Een discotheek of club] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 19] <- factor(data[, 19], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[19] <- "goingOutFreq_disco#1"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[Een optreden van een band] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 20] <- factor(data[, 20], levels=c("XtdNr"),labels=c(""))
names(data)[20] <- "goingOutFreq_band#0"
# LimeSurvey Field type: F
data[, 21] <- as.numeric(data[, 21])
attributes(data)$variable.labels[21] <- "[Een optreden van een band] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 21] <- factor(data[, 21], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[21] <- "goingOutFreq_band#1"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 22] <- factor(data[, 22], levels=c("XtdNr"),labels=c(""))
names(data)[22] <- "goingOutFreq_smallPartyInside#0"
# LimeSurvey Field type: F
data[, 23] <- as.numeric(data[, 23])
attributes(data)$variable.labels[23] <- "[Een kleinschalig binnenfeest of -festival(minder dan 5000 bezoekers)] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 23] <- factor(data[, 23], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[23] <- "goingOutFreq_smallPartyInside#1"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 24] <- factor(data[, 24], levels=c("XtdNr"),labels=c(""))
names(data)[24] <- "goingOutFreq_bigPartyInside#0"
# LimeSurvey Field type: F
data[, 25] <- as.numeric(data[, 25])
attributes(data)$variable.labels[25] <- "[Een groot binnenfeest of -festival(meer dan 5000 bezoekers)] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 25] <- factor(data[, 25], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[25] <- "goingOutFreq_bigPartyInside#1"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 26] <- factor(data[, 26], levels=c("XtdNr"),labels=c(""))
names(data)[26] <- "goingOutFreq_smallPartyOutside#0"
# LimeSurvey Field type: F
data[, 27] <- as.numeric(data[, 27])
attributes(data)$variable.labels[27] <- "[Een kleinschalig buitenfeest of -festival(minder dan 5000 bezoekers)] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 27] <- factor(data[, 27], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[27] <- "goingOutFreq_smallPartyOutside#1"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)] [Schaal 1] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 28] <- factor(data[, 28], levels=c("XtdNr"),labels=c(""))
names(data)[28] <- "goingOutFreq_bigPartyOutside#0"
# LimeSurvey Field type: F
data[, 29] <- as.numeric(data[, 29])
attributes(data)$variable.labels[29] <- "[Een groot buitenfeest of -festival(meer dan 5000 bezoekers)] [Schaal 2] Kun je aangeven hoe vaak je het afgelopen half jaar (de afgelopen 6 maanden) naar elk van deze gelegenheden bent geweest?"
data[, 29] <- factor(data[, 29], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[29] <- "goingOutFreq_bigPartyOutside#1"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "[Favoriete muziekgenre voor thuis:] Naar welke muziek luister je thuis het liefst?"
names(data)[30] <- "musicPrefHome_genre1"
# LimeSurvey Field type: A
data[, 31] <- as.character(data[, 31])
attributes(data)$variable.labels[31] <- "[Op-één-na favoriete genre voor thuis:] Naar welke muziek luister je thuis het liefst?"
names(data)[31] <- "musicPrefHome_genre2"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[Op-twee-na favoriete genre voor thuis:] Naar welke muziek luister je thuis het liefst?"
names(data)[32] <- "musicPrefHome_genre3"
# LimeSurvey Field type: A
data[, 33] <- as.character(data[, 33])
attributes(data)$variable.labels[33] <- "[Favoriete muziekgenre voor uitgaan:] Sommige mensen luisteren naar andere muziek als ze uitgaan. Naar welke muziek luister jij het liefst als je uitgaat?"
names(data)[33] <- "musicPrefParty_genre1"
# LimeSurvey Field type: A
data[, 34] <- as.character(data[, 34])
attributes(data)$variable.labels[34] <- "[Op-één-na favoriete genre voor uitgaan:] Sommige mensen luisteren naar andere muziek als ze uitgaan. Naar welke muziek luister jij het liefst als je uitgaat?"
names(data)[34] <- "musicPrefParty_genre2"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[Op-twee-na favoriete genre voor uitgaan:] Sommige mensen luisteren naar andere muziek als ze uitgaan. Naar welke muziek luister jij het liefst als je uitgaat?"
names(data)[35] <- "musicPrefParty_genre3"
# LimeSurvey Field type: A
data[, 36] <- as.character(data[, 36])
attributes(data)$variable.labels[36] <- "[Het feest/festival dat ik het leukst vond:] Ben je het afgelopen half jaar nog naar feesten of festivals geweest? Zoja, wat waren de leukste?"
names(data)[36] <- "specificPartiesPast_pastParty1"
# LimeSurvey Field type: A
data[, 37] <- as.character(data[, 37])
attributes(data)$variable.labels[37] <- "[Het op-één-na leukste feest/festival:] Ben je het afgelopen half jaar nog naar feesten of festivals geweest? Zoja, wat waren de leukste?"
names(data)[37] <- "specificPartiesPast_pastParty2"
# LimeSurvey Field type: A
data[, 38] <- as.character(data[, 38])
attributes(data)$variable.labels[38] <- "[Het op-twee-na leukste feest/festival:] Ben je het afgelopen half jaar nog naar feesten of festivals geweest? Zoja, wat waren de leukste?"
names(data)[38] <- "specificPartiesPast_pastParty3"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Het feest/festival waar ik het meeste zin in heb:] En hoe zit het de komende zes maanden? Nog van plan om naar feesten of festivals te gaan? Zoja, waar heb je het meeste zin in?"
names(data)[39] <- "specificPartiesFutur_futureParty1"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Het tweede feest/festival waar ik zin in heb:] En hoe zit het de komende zes maanden? Nog van plan om naar feesten of festivals te gaan? Zoja, waar heb je het meeste zin in?"
names(data)[40] <- "specificPartiesFutur_futureParty2"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[Het derde feest/festival waar ik zin in heb:] En hoe zit het de komende zes maanden? Nog van plan om naar feesten of festivals te gaan? Zoja, waar heb je het meeste zin in?"
names(data)[41] <- "specificPartiesFutur_futureParty3"
# LimeSurvey Field type: F
data[, 42] <- as.numeric(data[, 42])
attributes(data)$variable.labels[42] <- "[Een partner (vriend of vriendin)] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen. Maar natuurlijk heeft niet iedereen broers of zussen, of een vriend of vriendin.	Zou je daarom hier alvast de mensen die er niet zijn kunnen uitvinken?"
data[, 42] <- factor(data[, 42], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[42] <- "socialReferents_partner"
# LimeSurvey Field type: F
data[, 43] <- as.numeric(data[, 43])
attributes(data)$variable.labels[43] <- "[Beste vrienden/vriendinnen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen. Maar natuurlijk heeft niet iedereen broers of zussen, of een vriend of vriendin.	Zou je daarom hier alvast de mensen die er niet zijn kunnen uitvinken?"
data[, 43] <- factor(data[, 43], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[43] <- "socialReferents_bestFriends"
# LimeSurvey Field type: F
data[, 44] <- as.numeric(data[, 44])
attributes(data)$variable.labels[44] <- "[Vrienden waarmee ik meestal XTC gebruik] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen. Maar natuurlijk heeft niet iedereen broers of zussen, of een vriend of vriendin.	Zou je daarom hier alvast de mensen die er niet zijn kunnen uitvinken?"
data[, 44] <- factor(data[, 44], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[44] <- "socialReferents_xtcFriends"
# LimeSurvey Field type: F
data[, 45] <- as.numeric(data[, 45])
attributes(data)$variable.labels[45] <- "[Andere vrienden] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen. Maar natuurlijk heeft niet iedereen broers of zussen, of een vriend of vriendin.	Zou je daarom hier alvast de mensen die er niet zijn kunnen uitvinken?"
data[, 45] <- factor(data[, 45], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[45] <- "socialReferents_otherFriends"
# LimeSurvey Field type: F
data[, 46] <- as.numeric(data[, 46])
attributes(data)$variable.labels[46] <- "[1 of meer ouders en/of verzorgers] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen. Maar natuurlijk heeft niet iedereen broers of zussen, of een vriend of vriendin.	Zou je daarom hier alvast de mensen die er niet zijn kunnen uitvinken?"
data[, 46] <- factor(data[, 46], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[46] <- "socialReferents_parents"
# LimeSurvey Field type: F
data[, 47] <- as.numeric(data[, 47])
attributes(data)$variable.labels[47] <- "[1 of meer broers en/of zussen] 	We gaan je verderop vragen stellen over de mensen in je omgeving, zoals je vrienden, ouders, en broers en zussen. Maar natuurlijk heeft niet iedereen broers of zussen, of een vriend of vriendin.	Zou je daarom hier alvast de mensen die er niet zijn kunnen uitvinken?"
data[, 47] <- factor(data[, 47], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[47] <- "socialReferents_siblings"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- ""
names(data)[48] <- "usedXtc"
# LimeSurvey Field type: A
data[, 49] <- as.character(data[, 49])
attributes(data)$variable.labels[49] <- "Deze vragen gaan over de afgelopen 6 maanden (, , , ,  en )"
names(data)[49] <- "pstBehavIntro"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[Alcohol] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 50] <- factor(data[, 50], levels=c("XtdNr"),labels=c(""))
names(data)[50] <- "substUsePastBeh_alc#0"
# LimeSurvey Field type: F
data[, 51] <- as.numeric(data[, 51])
attributes(data)$variable.labels[51] <- "[Alcohol] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 51] <- factor(data[, 51], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[51] <- "substUsePastBeh_alc#1"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "[Tabak (sigaretten, sigaren)] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 52] <- factor(data[, 52], levels=c("XtdNr"),labels=c(""))
names(data)[52] <- "substUsePastBeh_tbc#0"
# LimeSurvey Field type: F
data[, 53] <- as.numeric(data[, 53])
attributes(data)$variable.labels[53] <- "[Tabak (sigaretten, sigaren)] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 53] <- factor(data[, 53], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[53] <- "substUsePastBeh_tbc#1"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "[Cannabis (wiet, hasj)] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 54] <- factor(data[, 54], levels=c("XtdNr"),labels=c(""))
names(data)[54] <- "substUsePastBeh_cnb#0"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "[Cannabis (wiet, hasj)] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 55] <- factor(data[, 55], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[55] <- "substUsePastBeh_cnb#1"
# LimeSurvey Field type: A
data[, 56] <- as.character(data[, 56])
attributes(data)$variable.labels[56] <- "[XTC pillen] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 56] <- factor(data[, 56], levels=c("XtdNr"),labels=c(""))
names(data)[56] <- "substUsePastBeh_xtc#0"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "[XTC pillen] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 57] <- factor(data[, 57], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[57] <- "substUsePastBeh_xtc#1"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "[MDMA poeder] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 58] <- factor(data[, 58], levels=c("XtdNr"),labels=c(""))
names(data)[58] <- "substUsePastBeh_mdma#0"
# LimeSurvey Field type: F
data[, 59] <- as.numeric(data[, 59])
attributes(data)$variable.labels[59] <- "[MDMA poeder] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 59] <- factor(data[, 59], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[59] <- "substUsePastBeh_mdma#1"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "[4-FA (4FMP)] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 60] <- factor(data[, 60], levels=c("XtdNr"),labels=c(""))
names(data)[60] <- "substUsePastBeh_fourfa#0"
# LimeSurvey Field type: F
data[, 61] <- as.numeric(data[, 61])
attributes(data)$variable.labels[61] <- "[4-FA (4FMP)] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 61] <- factor(data[, 61], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[61] <- "substUsePastBeh_fourfa#1"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[Cocaine] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 62] <- factor(data[, 62], levels=c("XtdNr"),labels=c(""))
names(data)[62] <- "substUsePastBeh_coke#0"
# LimeSurvey Field type: F
data[, 63] <- as.numeric(data[, 63])
attributes(data)$variable.labels[63] <- "[Cocaine] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 63] <- factor(data[, 63], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[63] <- "substUsePastBeh_coke#1"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "[Speed] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 64] <- factor(data[, 64], levels=c("XtdNr"),labels=c(""))
names(data)[64] <- "substUsePastBeh_spd#0"
# LimeSurvey Field type: F
data[, 65] <- as.numeric(data[, 65])
attributes(data)$variable.labels[65] <- "[Speed] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 65] <- factor(data[, 65], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[65] <- "substUsePastBeh_spd#1"
# LimeSurvey Field type: A
data[, 66] <- as.character(data[, 66])
attributes(data)$variable.labels[66] <- "[Lachgas] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 66] <- factor(data[, 66], levels=c("XtdNr"),labels=c(""))
names(data)[66] <- "substUsePastBeh_gas#0"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "[Lachgas] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 67] <- factor(data[, 67], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[67] <- "substUsePastBeh_gas#1"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- "[GHB] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 68] <- factor(data[, 68], levels=c("XtdNr"),labels=c(""))
names(data)[68] <- "substUsePastBeh_ghb#0"
# LimeSurvey Field type: F
data[, 69] <- as.numeric(data[, 69])
attributes(data)$variable.labels[69] <- "[GHB] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 69] <- factor(data[, 69], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[69] <- "substUsePastBeh_ghb#1"
# LimeSurvey Field type: A
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- "[Ketamine] [Schaal 1] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 70] <- factor(data[, 70], levels=c("XtdNr"),labels=c(""))
names(data)[70] <- "substUsePastBeh_ket#0"
# LimeSurvey Field type: F
data[, 71] <- as.numeric(data[, 71])
attributes(data)$variable.labels[71] <- "[Ketamine] [Schaal 2] Kun je van deze middelen aangeven of je ze de afgelopen 6 maanden hebt gebruikt (dus ongeveer sinds ), en zoja, hoe vaak?"
data[, 71] <- factor(data[, 71], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[71] <- "substUsePastBeh_ket#1"
# LimeSurvey Field type: A
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- "[Eerste andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[72] <- "otherSubstances_otherSubstance1"
# LimeSurvey Field type: A
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- "[Tweede andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[73] <- "otherSubstances_otherSubstance2"
# LimeSurvey Field type: A
data[, 74] <- as.character(data[, 74])
attributes(data)$variable.labels[74] <- "[Derde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[74] <- "otherSubstances_otherSubstance3"
# LimeSurvey Field type: A
data[, 75] <- as.character(data[, 75])
attributes(data)$variable.labels[75] <- "[Vierde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[75] <- "otherSubstances_otherSubstance4"
# LimeSurvey Field type: A
data[, 76] <- as.character(data[, 76])
attributes(data)$variable.labels[76] <- "[Vijfde andere middel] Heb je nog iets anders gebruikt dat niet in dit lijstje stond? Dan kun je dat hier aangeven. Anders kun je dit gewoon leeg laten."
names(data)[76] <- "otherSubstances_otherSubstance5"
# LimeSurvey Field type: A
data[, 77] <- as.character(data[, 77])
attributes(data)$variable.labels[77] <- "[{otherSubstances_otherSubstance1.NAOK}] [Schaal 1] Kun je ook aangeven hoe vaak ongeveer?"
data[, 77] <- factor(data[, 77], levels=c("XtdNr"),labels=c(""))
names(data)[77] <- "otherSubstancesFreq_otherSubstance1#0"
# LimeSurvey Field type: F
data[, 78] <- as.numeric(data[, 78])
attributes(data)$variable.labels[78] <- "[{otherSubstances_otherSubstance1.NAOK}] [Schaal 2] Kun je ook aangeven hoe vaak ongeveer?"
data[, 78] <- factor(data[, 78], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[78] <- "otherSubstancesFreq_otherSubstance1#1"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "[{otherSubstances_otherSubstance2.NAOK}] [Schaal 1] Kun je ook aangeven hoe vaak ongeveer?"
data[, 79] <- factor(data[, 79], levels=c("XtdNr"),labels=c(""))
names(data)[79] <- "otherSubstancesFreq_otherSubstance2#0"
# LimeSurvey Field type: F
data[, 80] <- as.numeric(data[, 80])
attributes(data)$variable.labels[80] <- "[{otherSubstances_otherSubstance2.NAOK}] [Schaal 2] Kun je ook aangeven hoe vaak ongeveer?"
data[, 80] <- factor(data[, 80], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[80] <- "otherSubstancesFreq_otherSubstance2#1"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "[{otherSubstances_otherSubstance3.NAOK}] [Schaal 1] Kun je ook aangeven hoe vaak ongeveer?"
data[, 81] <- factor(data[, 81], levels=c("XtdNr"),labels=c(""))
names(data)[81] <- "otherSubstancesFreq_otherSubstance3#0"
# LimeSurvey Field type: F
data[, 82] <- as.numeric(data[, 82])
attributes(data)$variable.labels[82] <- "[{otherSubstances_otherSubstance3.NAOK}] [Schaal 2] Kun je ook aangeven hoe vaak ongeveer?"
data[, 82] <- factor(data[, 82], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[82] <- "otherSubstancesFreq_otherSubstance3#1"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[{otherSubstances_otherSubstance4.NAOK}] [Schaal 1] Kun je ook aangeven hoe vaak ongeveer?"
data[, 83] <- factor(data[, 83], levels=c("XtdNr"),labels=c(""))
names(data)[83] <- "otherSubstancesFreq_otherSubstance4#0"
# LimeSurvey Field type: F
data[, 84] <- as.numeric(data[, 84])
attributes(data)$variable.labels[84] <- "[{otherSubstances_otherSubstance4.NAOK}] [Schaal 2] Kun je ook aangeven hoe vaak ongeveer?"
data[, 84] <- factor(data[, 84], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[84] <- "otherSubstancesFreq_otherSubstance4#1"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "[{otherSubstances_otherSubstance5.NAOK}] [Schaal 1] Kun je ook aangeven hoe vaak ongeveer?"
data[, 85] <- factor(data[, 85], levels=c("XtdNr"),labels=c(""))
names(data)[85] <- "otherSubstancesFreq_otherSubstance5#0"
# LimeSurvey Field type: F
data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "[{otherSubstances_otherSubstance5.NAOK}] [Schaal 2] Kun je ook aangeven hoe vaak ongeveer?"
data[, 86] <- factor(data[, 86], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[86] <- "otherSubstancesFreq_otherSubstance5#1"
# LimeSurvey Field type: A
data[, 87] <- as.character(data[, 87])
attributes(data)$variable.labels[87] <- "Deze vragen gaan over de komende 6 maanden (, , , ,  en )	In deze editie van Party Panel gaan we in op de hooggedoseerde XTC-pillen die sinds een aantal jaren op de markt zijn. We gaan vanaf nu dus vooral in op XTC-pillen. Als we het over de dosis MDMA hebben, bedoelen we dus het aantal milligram MDMA in XTC-pillen, niet MDMA poeder!"
names(data)[87] <- "intentionIntro"
# LimeSurvey Field type: F
data[, 88] <- as.numeric(data[, 88])
attributes(data)$variable.labels[88] <- "Ben jij van plan om de komende zes maanden (dus ergens voor ) XTC-pillen te gebruiken?"
data[, 88] <- factor(data[, 88], levels=c(0,1),labels=c("Nee, ik weet zeker dat ik de komende 6 maanden sowieso geen XTC ga gebruiken.", "Ja, ik ga de komende 6 maanden (misschien) XTC gebruiken."))
names(data)[88] <- "xtcUseIntention"
# LimeSurvey Field type: A
data[, 89] <- as.character(data[, 89])
attributes(data)$variable.labels[89] <- "{if(((!is_empty(substUsePastBeh_xtc_1.NAOK)) && (usedXtc.NAOK > 0)) || (xtcUseIntention.NAOK == 1), 1, 0)}"
names(data)[89] <- "xtcUser"
# LimeSurvey Field type: F
data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- "Je hebt aangegeven dat je het afgelopen halfjaar geen XTC hebt gebruikt, en ook niet van plan bent het komende halfjaar XTC te gaan gebruiken. Omdat deze eerste vragenlijst over hooggedoseerde XTC gaat, willen we graag zeker weten of jij wel of geen XTC-gebruiker bent. Zie jij jezelf als XTC-gebruiker?"
data[, 90] <- factor(data[, 90], levels=c(0,1),labels=c("Nee, ik gebruik geen XTC", "Ja, ik gebruik wel XTC (alleen toevallig het afgelopen halfjaar en komende halfjaar niet)"))
names(data)[90] <- "xtcUserOverride"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "[Hoe sterk ben je van plan het komende half jaar XTC te gebruiken?Helemaal niet sterk|Heel sterk] Hoe sterk ben je van plan het komende halfjaar XTC te gebruiken?"
data[, 91] <- factor(data[, 91], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[91] <- "xtcUseIntentionRAA_intention"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "[Hoe graag wil je het komende halfjaar XTC gebruiken?Helemaal niet graag|Heel erg graag] Hoe sterk ben je van plan het komende halfjaar XTC te gebruiken?"
data[, 92] <- factor(data[, 92], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[92] <- "xtcUseIntentionRAA_want"
# LimeSurvey Field type: F
data[, 93] <- as.numeric(data[, 93])
attributes(data)$variable.labels[93] <- "[Hoe waarschijnlijk is het dat je het komende half jaar ook echt XTC gaat gebruiken?Helemaal niet zeker|Absoluut zeker] Hoe sterk ben je van plan het komende halfjaar XTC te gebruiken?"
data[, 93] <- factor(data[, 93], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[93] <- "xtcUseIntentionRAA_expectation"
# LimeSurvey Field type: A
data[, 94] <- as.character(data[, 94])
attributes(data)$variable.labels[94] <- "[] [Schaal 1] 	Hoe vaak ben je van plan om de komende zes maanden XTC-pillen te gebruiken?"
data[, 94] <- factor(data[, 94], levels=c("XtdNr"),labels=c(""))
names(data)[94] <- "xtcUseIntentionFreq_freq#0"
# LimeSurvey Field type: F
data[, 95] <- as.numeric(data[, 95])
attributes(data)$variable.labels[95] <- "[] [Schaal 2] 	Hoe vaak ben je van plan om de komende zes maanden XTC-pillen te gebruiken?"
data[, 95] <- factor(data[, 95], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[95] <- "xtcUseIntentionFreq_freq#1"
# LimeSurvey Field type: A
data[, 96] <- as.character(data[, 96])
attributes(data)$variable.labels[96] <- "Hooggedoseerde XTC-pillen en het gebruiken van een hoge dosis MDMA (XTC)	Voor we verder gaan even wat verduidelijking. Zoals je weet gaat het over hooggedoseerde XTC. Deze komt sinds een aantal jaren veel meer voor dan vroeger. De dosis MDMA in een gemiddelde XTC-pil is nu dus hoger dan vroeger. Maar we weten hier nog te weinig over:			Gebruiken mensen nu meer dan vroeger, of hetzelfde?			Willen mensen liever hooggedoseerde pillen, of maakt dat niet uit?			Is het effect van hooggedoseerde pillen hetzelfde als van lager gedoseerde pillen?			Verschilt het effect van een hogere dosis MDMA van een lagere dosis? Hoe?	Deze editie van Party Panel probeert deze, en nog meer, vragen te beantwoorden. Maar voordat we beginnen, willen we weten wat jij een hooggedoseerde XTC-pil vindt, en wanneer jij vindt dat je een hoge dosis MDMA (XTC) gebruikt."
names(data)[96] <- "disambiguation"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "Wat vind jij zelf hoog gedoseerd?"
names(data)[97] <- "strngXTCDefinition"
# LimeSurvey Field type: F
data[, 98] <- as.numeric(data[, 98])
attributes(data)$variable.labels[98] <- "[Ik neem meestal een bepaald aantal XTC pillen] Hoe bepaal jij je dosering als je XTC gebruikt?"
data[, 98] <- factor(data[, 98], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[98] <- "xtcRegulationType_pills"
# LimeSurvey Field type: F
data[, 99] <- as.numeric(data[, 99])
attributes(data)$variable.labels[99] <- "[Ik zorg meestal dat ik een bepaald aantal milligram MDMA binnen krijg] Hoe bepaal jij je dosering als je XTC gebruikt?"
data[, 99] <- factor(data[, 99], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[99] <- "xtcRegulationType_dose"
# LimeSurvey Field type: F
data[, 100] <- as.numeric(data[, 100])
attributes(data)$variable.labels[100] <- "[Ik let helemaal niet op het aantal pillen of aantal milligram MDMA] Hoe bepaal jij je dosering als je XTC gebruikt?"
data[, 100] <- factor(data[, 100], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[100] <- "xtcRegulationType_none"
# LimeSurvey Field type: F
data[, 101] <- as.numeric(data[, 101])
attributes(data)$variable.labels[101] <- "Wat vind jij een hoge dosis om in één keer (trip) te gebruiken, in XTC-pillen?"
names(data)[101] <- "xtcUsePillHigh"
# LimeSurvey Field type: F
data[, 102] <- as.numeric(data[, 102])
attributes(data)$variable.labels[102] <- "Wat vind jij een hoge dosis om in één keer (trip) te gebruiken, in milligram MDMA?"
names(data)[102] <- "xtcUseDoseHigh"
# LimeSurvey Field type: F
data[, 103] <- as.numeric(data[, 103])
attributes(data)$variable.labels[103] <- "We zijn ook benieuwd hoeveel je het liefste zelf gebruikt. Kun je hier intypen hoeveel XTC-pillen je het liefst per keer (trip) gebruikt?"
names(data)[103] <- "xtcUsePillPref"
# LimeSurvey Field type: F
data[, 104] <- as.numeric(data[, 104])
attributes(data)$variable.labels[104] <- "We zijn ook benieuwd hoeveel je het liefste zelf gebruikt. Kun je hier intypen hoeveel milligram MDMA je het liefst per keer (trip) gebruikt?"
names(data)[104] <- "xtcUseDosePref"
# LimeSurvey Field type: F
data[, 105] <- as.numeric(data[, 105])
attributes(data)$variable.labels[105] <- "[Ik vind het beantwoorden van één deel wel genoeg.] 	Omdat er heel veel is dat we graag willen vragen, hebben we de vragen in drie delen gesplitst:			het eerste deel gaat over het gebruiken van hooggedoseerde XTC pillen; en			het tweede deel gaat over het gebruiken van een hoge dosis XTC (MDMA);			het derde deel gaat over XTC laten testen.	Elke deelnemer krijgt willekeurig een deel toegewezen, maar je kunt ook alle delen invullen als je wil. Het deel dat jij toegewezen hebt gekregen gaat over {if(randomNumber==2,\"het gebruiken van een hoge dosis XTC (MDMA).\",if(randomNumber==1, \"het gebruiken van hooggedoseerde XTC pillen.\",if(randomNumber==3, \"het laten testen van XTC.\",\"niets - als je dit ziet is er iets fout gegaan . . . Dat betekent dat je straks geen vragen krijgt, tenzij je hieronder iets aanvinkt, of de vragenlijst opnieuw start. Sorry voor het ongemak!\")))}	Als je meer delen wil invullen (wat fantastisch zou zijn!) kun je dat hieronder aangeven."
data[, 105] <- factor(data[, 105], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[105] <- "wantToDoMoreParts_0"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "[Ik wil ook graag de vragen over hooggedoseerde XTC beantwoorden] 	Omdat er heel veel is dat we graag willen vragen, hebben we de vragen in drie delen gesplitst:			het eerste deel gaat over het gebruiken van hooggedoseerde XTC pillen; en			het tweede deel gaat over het gebruiken van een hoge dosis XTC (MDMA);			het derde deel gaat over XTC laten testen.	Elke deelnemer krijgt willekeurig een deel toegewezen, maar je kunt ook alle delen invullen als je wil. Het deel dat jij toegewezen hebt gekregen gaat over {if(randomNumber==2,\"het gebruiken van een hoge dosis XTC (MDMA).\",if(randomNumber==1, \"het gebruiken van hooggedoseerde XTC pillen.\",if(randomNumber==3, \"het laten testen van XTC.\",\"niets - als je dit ziet is er iets fout gegaan . . . Dat betekent dat je straks geen vragen krijgt, tenzij je hieronder iets aanvinkt, of de vragenlijst opnieuw start. Sorry voor het ongemak!\")))}	Als je meer delen wil invullen (wat fantastisch zou zijn!) kun je dat hieronder aangeven."
data[, 106] <- factor(data[, 106], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[106] <- "wantToDoMoreParts_1"
# LimeSurvey Field type: F
data[, 107] <- as.numeric(data[, 107])
attributes(data)$variable.labels[107] <- "[Ik wil ook graag de vragen over het gebruiken van een hoge dosis XTC beantwoorden] 	Omdat er heel veel is dat we graag willen vragen, hebben we de vragen in drie delen gesplitst:			het eerste deel gaat over het gebruiken van hooggedoseerde XTC pillen; en			het tweede deel gaat over het gebruiken van een hoge dosis XTC (MDMA);			het derde deel gaat over XTC laten testen.	Elke deelnemer krijgt willekeurig een deel toegewezen, maar je kunt ook alle delen invullen als je wil. Het deel dat jij toegewezen hebt gekregen gaat over {if(randomNumber==2,\"het gebruiken van een hoge dosis XTC (MDMA).\",if(randomNumber==1, \"het gebruiken van hooggedoseerde XTC pillen.\",if(randomNumber==3, \"het laten testen van XTC.\",\"niets - als je dit ziet is er iets fout gegaan . . . Dat betekent dat je straks geen vragen krijgt, tenzij je hieronder iets aanvinkt, of de vragenlijst opnieuw start. Sorry voor het ongemak!\")))}	Als je meer delen wil invullen (wat fantastisch zou zijn!) kun je dat hieronder aangeven."
data[, 107] <- factor(data[, 107], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[107] <- "wantToDoMoreParts_2"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "[Ik wil ook graag de vragen over het laten testen van XTC beantwoorden] 	Omdat er heel veel is dat we graag willen vragen, hebben we de vragen in drie delen gesplitst:			het eerste deel gaat over het gebruiken van hooggedoseerde XTC pillen; en			het tweede deel gaat over het gebruiken van een hoge dosis XTC (MDMA);			het derde deel gaat over XTC laten testen.	Elke deelnemer krijgt willekeurig een deel toegewezen, maar je kunt ook alle delen invullen als je wil. Het deel dat jij toegewezen hebt gekregen gaat over {if(randomNumber==2,\"het gebruiken van een hoge dosis XTC (MDMA).\",if(randomNumber==1, \"het gebruiken van hooggedoseerde XTC pillen.\",if(randomNumber==3, \"het laten testen van XTC.\",\"niets - als je dit ziet is er iets fout gegaan . . . Dat betekent dat je straks geen vragen krijgt, tenzij je hieronder iets aanvinkt, of de vragenlijst opnieuw start. Sorry voor het ongemak!\")))}	Als je meer delen wil invullen (wat fantastisch zou zijn!) kun je dat hieronder aangeven."
data[, 108] <- factor(data[, 108], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[108] <- "wantToDoMoreParts_3"
# LimeSurvey Field type: A
data[, 109] <- as.character(data[, 109])
attributes(data)$variable.labels[109] <- "Wist jij dat je in Nederland je XTC kunt laten testen in een testcentrum?"
data[, 109] <- factor(data[, 109], levels=c("no","heard","yes"),labels=c("Nee, dat wist ik niet", "Ik heb al wel eens zoiets gehoord, maar weet niet hoe het precies zit", "Ja, dat weet ik"))
names(data)[109] <- "testingAwareness"
# LimeSurvey Field type: A
data[, 110] <- as.character(data[, 110])
attributes(data)$variable.labels[110] <- "[] [Schaal 1] 	Je gaf aan dat je het afgelopen halfjaar XTC hebt gebruikt. Heb je je XTC toen ook laten testen, en zoja, hoe vaak?"
data[, 110] <- factor(data[, 110], levels=c("XtdNr"),labels=c(""))
names(data)[110] <- "testingBehavior_freq#0"
# LimeSurvey Field type: F
data[, 111] <- as.numeric(data[, 111])
attributes(data)$variable.labels[111] <- "[] [Schaal 2] 	Je gaf aan dat je het afgelopen halfjaar XTC hebt gebruikt. Heb je je XTC toen ook laten testen, en zoja, hoe vaak?"
data[, 111] <- factor(data[, 111], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[111] <- "testingBehavior_freq#1"
# LimeSurvey Field type: F
data[, 112] <- as.numeric(data[, 112])
attributes(data)$variable.labels[112] <- "Ben jij van plan om de komende zes maanden (dus ergens voor ) XTC-pillen te laten testen?"
data[, 112] <- factor(data[, 112], levels=c(0,1),labels=c("Nee, ik weet zeker dat ik de komende 6 maanden sowieso geen XTC ga testen bij een testcentrum.", "Ja, ik ga de komende 6 maanden (misschien) XTC laten testen bij een testcentrum."))
names(data)[112] <- "testingIntention"
# LimeSurvey Field type: F
data[, 113] <- as.numeric(data[, 113])
attributes(data)$variable.labels[113] <- "[Hoe sterk ben je van plan het komende half jaar XTC te testen?Helemaal niet sterk|Heel sterk] Hoe sterk ben je dat van plan?"
data[, 113] <- factor(data[, 113], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[113] <- "testingIntentionRAA_intention"
# LimeSurvey Field type: F
data[, 114] <- as.numeric(data[, 114])
attributes(data)$variable.labels[114] <- "[Hoe graag wil je het komende halfjaar XTC testen?Helemaal niet graag|Heel erg graag] Hoe sterk ben je dat van plan?"
data[, 114] <- factor(data[, 114], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[114] <- "testingIntentionRAA_want"
# LimeSurvey Field type: F
data[, 115] <- as.numeric(data[, 115])
attributes(data)$variable.labels[115] <- "[Hoe waarschijnlijk is het dat je het komende half jaar ook echt XTC gaat testen?Helemaal niet zeker|Absoluut zeker] Hoe sterk ben je dat van plan?"
data[, 115] <- factor(data[, 115], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[115] <- "testingIntentionRAA_expectation"
# LimeSurvey Field type: A
data[, 116] <- as.character(data[, 116])
attributes(data)$variable.labels[116] <- "[] [Schaal 1] Hoe vaak schat je dat je het komende halfjaar XTC gaat laten testen bij het testcentrum?"
data[, 116] <- factor(data[, 116], levels=c("XtdNr"),labels=c(""))
names(data)[116] <- "testingIntentionFreq_testBehav#0"
# LimeSurvey Field type: F
data[, 117] <- as.numeric(data[, 117])
attributes(data)$variable.labels[117] <- "[] [Schaal 2] Hoe vaak schat je dat je het komende halfjaar XTC gaat laten testen bij het testcentrum?"
data[, 117] <- factor(data[, 117], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[117] <- "testingIntentionFreq_testBehav#1"
# LimeSurvey Field type: A
data[, 118] <- as.character(data[, 118])
attributes(data)$variable.labels[118] <- "Je hebt aangegeven dat je geen XTC gebruikt. De meeste vragen uit deze eerste Party Panel vragenlijst gaan over hooggedoseerde XTC en XTC laten testen. Een aantal delen uit deze vragenlijst zijn dus niet voor jou van toepassing.	Je gaat daarom hierna naar het laatste deel van de vragenlijst. Je kunt daarna je email adres achterlaten, zodat we je voor de volgende vragenlijst (in januari 2016) kunnen mailen, en zodat we je kunnen mailen als we de resultaten hebben. De volgende vragenlijst gaat ook over uitgaan, maar niet over XTC. Één van de onderwerpen die aan bod zal komen is de EHBO op feesten, maar je kunt zelf meebepalen waar nog meer over door op de laatste pagina\'s suggesties te doen.	Als je iets verkeerd hebt ingevuld en eigenlijk wel XTC gebruikt, dan kun je dat hierboven nog aangeven natuurlijk."
names(data)[118] <- "nonUser"
# LimeSurvey Field type: F
data[, 119] <- as.numeric(data[, 119])
attributes(data)$variable.labels[119] <- "[Hoe sterk ben je van plan het komende half jaar hooggedoseerde XTC-pillen te gebruiken?Helemaal niet sterk|Heel sterk] 	Om te beginnen zijn we benieuwd of jij ook van plan bent om de komende 6 maanden hooggedoseerde XTC-pillen te gebruiken.	Het gaat dus om het opzettelijk gebruiken van hooggedoseerde XTC-pillen, los van hoeveel je daar dan van gebruikt."
data[, 119] <- factor(data[, 119], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[119] <- "strngXTCIntentionRAA_intention"
# LimeSurvey Field type: F
data[, 120] <- as.numeric(data[, 120])
attributes(data)$variable.labels[120] <- "[Hoe graag wil je het komende halfjaar hooggedoseerde XTC-pillen gebruiken?Helemaal niet graag|Heel erg graag] 	Om te beginnen zijn we benieuwd of jij ook van plan bent om de komende 6 maanden hooggedoseerde XTC-pillen te gebruiken.	Het gaat dus om het opzettelijk gebruiken van hooggedoseerde XTC-pillen, los van hoeveel je daar dan van gebruikt."
data[, 120] <- factor(data[, 120], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[120] <- "strngXTCIntentionRAA_want"
# LimeSurvey Field type: F
data[, 121] <- as.numeric(data[, 121])
attributes(data)$variable.labels[121] <- "[Hoe waarschijnlijk is het dat je het komende half jaar ook echt hooggedoseerde XTC-pillen gaat gebruiken?Helemaal niet zeker|Absoluut zeker] 	Om te beginnen zijn we benieuwd of jij ook van plan bent om de komende 6 maanden hooggedoseerde XTC-pillen te gebruiken.	Het gaat dus om het opzettelijk gebruiken van hooggedoseerde XTC-pillen, los van hoeveel je daar dan van gebruikt."
data[, 121] <- factor(data[, 121], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[121] <- "strngXTCIntentionRAA_expectation"
# LimeSurvey Field type: A
data[, 122] <- as.character(data[, 122])
attributes(data)$variable.labels[122] <- "[] [Schaal 1] 	Hoe vaak ben je van plan om de komende zes maanden hooggedoseerde XTC-pillen te gebruiken?"
data[, 122] <- factor(data[, 122], levels=c("XtdNr"),labels=c(""))
names(data)[122] <- "strngXTCIntentionFrq_freq#0"
# LimeSurvey Field type: F
data[, 123] <- as.numeric(data[, 123])
attributes(data)$variable.labels[123] <- "[] [Schaal 2] 	Hoe vaak ben je van plan om de komende zes maanden hooggedoseerde XTC-pillen te gebruiken?"
data[, 123] <- factor(data[, 123], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[123] <- "strngXTCIntentionFrq_freq#1"
# LimeSurvey Field type: F
data[, 124] <- as.numeric(data[, 124])
attributes(data)$variable.labels[124] <- "[slecht|goed] Als ik XTC pillen gebruik, vind ik het gebruiken van hooggedoseerde XTC-pillen . . ."
data[, 124] <- factor(data[, 124], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[124] <- "strngXTCAttGeneral_good"
# LimeSurvey Field type: F
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[onprettig|prettig] Als ik XTC pillen gebruik, vind ik het gebruiken van hooggedoseerde XTC-pillen . . ."
data[, 125] <- factor(data[, 125], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[125] <- "strngXTCAttGeneral_prettig"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "[dom|slim] Als ik XTC pillen gebruik, vind ik het gebruiken van hooggedoseerde XTC-pillen . . ."
data[, 126] <- factor(data[, 126], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[126] <- "strngXTCAttGeneral_slim"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[ongezond|gezond] Als ik XTC pillen gebruik, vind ik het gebruiken van hooggedoseerde XTC-pillen . . ."
data[, 127] <- factor(data[, 127], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[127] <- "strngXTCAttGeneral_gezond"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[saai|spannend] Als ik XTC pillen gebruik, vind ik het gebruiken van hooggedoseerde XTC-pillen . . ."
data[, 128] <- factor(data[, 128], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[128] <- "strngXTCAttGeneral_spannend"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik, als ik XTC gebruik, een hooggedoseerde XTC moet nemen.Niet waar|Wel waar] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij hooggedoseerde XTC-pillen gebruikt."
data[, 129] <- factor(data[, 129], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[129] <- "strngXTCNormGeneral_in1"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik hooggedoseerde XTC neem.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij hooggedoseerde XTC-pillen gebruikt."
data[, 130] <- factor(data[, 130], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[130] <- "strngXTCNormGeneral_in2"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[De mensen die ik respecteer en bewonder gebruiken hooggedoseerde XTC als ze XTC nemen.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij hooggedoseerde XTC-pillen gebruikt."
data[, 131] <- factor(data[, 131], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[131] <- "strngXTCNormGeneral_dn1"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[De meeste mensen zoals ik gebruiken hooggedoseerde XTC als ze XTC nemen.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij hooggedoseerde XTC-pillen gebruikt."
data[, 132] <- factor(data[, 132], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[132] <- "strngXTCNormGeneral_dn2"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[Als ik hooggedoseerde XTC-pillen zou willen gebruiken, dan zou mij dat . . .Zeker niet lukken|Zeker lukken] Hier nog een aantal algemene vragen over wat bepaalt of jij hooggedoseerde XTC neemt, als je XTC-pillen gebruikt."
data[, 133] <- factor(data[, 133], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[133] <- "strngXTCPBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "[Hooggedoseerde XTC-pillen gebruiken is voor mij . . .Heel moeilijk|Heel makkelijk] Hier nog een aantal algemene vragen over wat bepaalt of jij hooggedoseerde XTC neemt, als je XTC-pillen gebruikt."
data[, 134] <- factor(data[, 134], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[134] <- "strngXTCPBCgeneral_easy"
# LimeSurvey Field type: F
data[, 135] <- as.numeric(data[, 135])
attributes(data)$variable.labels[135] <- "[Ik heb . . . controle over of ik hooggedoseerde XTC-pillen gebruikHelemaal geen|Volledige] Hier nog een aantal algemene vragen over wat bepaalt of jij hooggedoseerde XTC neemt, als je XTC-pillen gebruikt."
data[, 135] <- factor(data[, 135], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[135] <- "strngXTCPBCgeneral_control"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik hooggedoseerde XTC-pillen ga gebruiken.Helemaal geen|Heel veel] Hier nog een aantal algemene vragen over wat bepaalt of jij hooggedoseerde XTC neemt, als je XTC-pillen gebruikt."
data[, 136] <- factor(data[, 136], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[136] <- "strngXTCPBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 137] <- as.numeric(data[, 137])
attributes(data)$variable.labels[137] <- "[Of ik hooggedoseerde XTC-pillen gebruik, ligt . . .Alleen aan andere mensen|Alleen aan mij] Hier nog een aantal algemene vragen over wat bepaalt of jij hooggedoseerde XTC neemt, als je XTC-pillen gebruikt."
data[, 137] <- factor(data[, 137], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[137] <- "strngXTCPBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 138] <- as.character(data[, 138])
attributes(data)$variable.labels[138] <- "Bedankt voor die antwoorden. Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover hooggedoseerde XTC staat. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen hooggedoseerde XTC gebruiken?"
names(data)[138] <- "strngXtcOpenWhy"
# LimeSurvey Field type: A
data[, 139] <- as.character(data[, 139])
attributes(data)$variable.labels[139] <- "En redenen om juist geen hooggedoseerde XTC te gebruiken?"
names(data)[139] <- "strngXtcOpenWhyNot"
# LimeSurvey Field type: F
data[, 140] <- as.numeric(data[, 140])
attributes(data)$variable.labels[140] <- "[Als ik hooggedoseerde XTC-pillen gebruik,is mijn trip . . .Korter|Langer] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 140] <- factor(data[, 140], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[140] <- "strngXTCAttBeliefs_long"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "[Als ik hooggedoseerde XTC-pillen gebruik,is mijn trip . . .Milder|Intenser] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 141] <- factor(data[, 141], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[141] <- "strngXTCAttBeliefs_intensity"
# LimeSurvey Field type: F
data[, 142] <- as.numeric(data[, 142])
attributes(data)$variable.labels[142] <- "[Als ik hooggedoseerde XTC-pillen gebruik,ga ik . . .Veel minder hard|Veel harder] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 142] <- factor(data[, 142], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[142] <- "strngXTCAttBeliefs_intoxicated"
# LimeSurvey Field type: F
data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "[Met hooggedoseerde XTC-pillen krijg ik . . .Veel minder energie|Veel meer energie] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 143] <- factor(data[, 143], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[143] <- "strngXTCAttBeliefs_energy"
# LimeSurvey Field type: F
data[, 144] <- as.numeric(data[, 144])
attributes(data)$variable.labels[144] <- "[Met hooggedoseerde XTC-pillen is het hele gelukkige, euforische gevoel . . .Veel minder sterk|Veel sterker] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 144] <- factor(data[, 144], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[144] <- "strngXTCAttBeliefs_euphoria"
# LimeSurvey Field type: F
data[, 145] <- as.numeric(data[, 145])
attributes(data)$variable.labels[145] <- "[Als ik hooggedoseerde XTC-pillen gebruik,leer ik . . .Veel minder over mezelf|Veel meer over mezelf] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 145] <- factor(data[, 145], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[145] <- "strngXTCAttBeliefs_insight"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "[Als ik hooggedoseerde XTC-pillen gebruik,voel ik me . . .Veel minder verbonden met anderen|Veel meer verbonden met anderen] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 146] <- factor(data[, 146], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[146] <- "strngXTCAttBeliefs_connection"
# LimeSurvey Field type: F
data[, 147] <- as.numeric(data[, 147])
attributes(data)$variable.labels[147] <- "[Als ik hooggedoseerde XTC-pillen gebruik,krijg ik . . .Veel minder makkelijk contact met anderen|Veel makkelijker contact met anderen] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 147] <- factor(data[, 147], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[147] <- "strngXTCAttBeliefs_contact"
# LimeSurvey Field type: F
data[, 148] <- as.numeric(data[, 148])
attributes(data)$variable.labels[148] <- "[Als ik hooggedoseerde XTC-pillen gebruik,krijg ik . . .Veel minder zin in seks|Veel meer zin in seks] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 148] <- factor(data[, 148], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[148] <- "strngXTCAttBeliefs_sex"
# LimeSurvey Field type: F
data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "[Met hooggedoseerde XTC-pillen vergeet ik mijn problemen . . .Veel minder snel|Veel sneller] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 149] <- factor(data[, 149], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[149] <- "strngXTCAttBeliefs_coping"
# LimeSurvey Field type: F
data[, 150] <- as.numeric(data[, 150])
attributes(data)$variable.labels[150] <- "[Bij de ingang van een feest of festival loop je met hooggedoseerde XTC . . .Veel minder risico|Veel meer risico] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 150] <- factor(data[, 150], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[150] <- "strngXTCAttBeliefs_risk"
# LimeSurvey Field type: F
data[, 151] <- as.numeric(data[, 151])
attributes(data)$variable.labels[151] <- "[Als ik hooggedoseerde XTC-pillen gebruik,voel ik me . . .Veel minder in mezelf gekeerd|Veel meer in mezelf gekeerd] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 151] <- factor(data[, 151], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[151] <- "strngXTCAttBeliefs_isolated"
# LimeSurvey Field type: F
data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[Met hooggedoseerde XTC-pillen kan ik mijn grenzen . . .Veel minder goed opzoeken|Veel beter opzoeken] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 152] <- factor(data[, 152], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[152] <- "strngXTCAttBeliefs_boundaries"
# LimeSurvey Field type: F
data[, 153] <- as.numeric(data[, 153])
attributes(data)$variable.labels[153] <- "[Hooggedoseerde XTC pillen zijn . . .Veel minder zuiver|Veel zuiverder] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 153] <- factor(data[, 153], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[153] <- "strngXTCAttBeliefs_purity"
# LimeSurvey Field type: F
data[, 154] <- as.numeric(data[, 154])
attributes(data)$variable.labels[154] <- "[Als ik hooggedoseerde XTC-pillen gebruik,klinkt de muziek . . .Veel slechter|Veel beter] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 154] <- factor(data[, 154], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[154] <- "strngXTCAttBeliefs_music"
# LimeSurvey Field type: F
data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "[Als ik hooggedoseerde XTC-pillen gebruik,ga ik . . .Veel minder hallucineren|Veel meer hallucineren] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 155] <- factor(data[, 155], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[155] <- "strngXTCAttBeliefs_hallucinate"
# LimeSurvey Field type: F
data[, 156] <- as.numeric(data[, 156])
attributes(data)$variable.labels[156] <- "[Als ik hooggedoseerde XTC-pillen gebruik,gaat de tijd voor mij . . .Veel minder snel|Veel sneller] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 156] <- factor(data[, 156], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[156] <- "strngXTCAttBeliefs_timeAwareness"
# LimeSurvey Field type: F
data[, 157] <- as.numeric(data[, 157])
attributes(data)$variable.labels[157] <- "[Als ik hooggedoseerde XTC-pillen gebruik,herinner ik mij achteraf . . .Veel minder|Veel meer] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 157] <- factor(data[, 157], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[157] <- "strngXTCAttBeliefs_memory"
# LimeSurvey Field type: F
data[, 158] <- as.numeric(data[, 158])
attributes(data)$variable.labels[158] <- "[Voor mijn gezondheid zijn hooggedoseerde XTC-pillen . . .Veel slechter|Veel beter] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 158] <- factor(data[, 158], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[158] <- "strngXTCAttBeliefs_health"
# LimeSurvey Field type: F
data[, 159] <- as.numeric(data[, 159])
attributes(data)$variable.labels[159] <- "[Als ik hooggedoseerde XTC pillen koop,krijg ik . . .Veel minder waard voor mijn geld|Veel meer waar voor mijn geld] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 159] <- factor(data[, 159], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[159] <- "strngXTCAttBeliefs_priceQuality"
# LimeSurvey Field type: F
data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "[Mijn ervaring met het gebruiken van hooggedoseerde XTC-pillen is . . .Slechter|Beter] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 160] <- factor(data[, 160], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[160] <- "strngXTCAttBeliefs_better"
# LimeSurvey Field type: F
data[, 161] <- as.numeric(data[, 161])
attributes(data)$variable.labels[161] <- "[Maak je je evenveel, meer of minder zorgen over de lichamelijke bijwerkingen van hooggedoseerde XTC-pillen?Veel minder zorgen|Veel meer zorgen] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 161] <- factor(data[, 161], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[161] <- "strngXTCAttBeliefs_physicalSideEffects"
# LimeSurvey Field type: F
data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "[Maak je je evenveel, meer of minder zorgen over de emotionele en psychische bijwerkingen van hooggedoseerde XTC-pillen?Veel minder zorgen|Veel meer zorgen] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 162] <- factor(data[, 162], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[162] <- "strngXTCAttBeliefs_psychicSideEffects"
# LimeSurvey Field type: F
data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[Heb je achteraf evenveel, meer of minder spijt als je hooggedoseerde XTC-pillen gebruikte?Veel minder spijt|Veel meer spijt] 	Eerst een aantal vragen over hoe het gebruiken van hooggedoseerde -pillenXTC voor jou verschilt van het gebruiken van normale XTC-pillen.	Als jij alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, of juist alleen nog maar hooggedoseerde XTC-pillen hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 163] <- factor(data[, 163], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[163] <- "strngXTCAttBeliefs_regret"
# LimeSurvey Field type: F
data[, 164] <- as.numeric(data[, 164])
attributes(data)$variable.labels[164] <- "[Ik vind het prettiger als een XTC-trip:Korter duurt|Langer duurt] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 164] <- factor(data[, 164], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[164] <- "strngXTCAttDesirable_long"
# LimeSurvey Field type: F
data[, 165] <- as.numeric(data[, 165])
attributes(data)$variable.labels[165] <- "[Ik vind het prettiger als een XTC-trip:Milder is|Intenser is] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 165] <- factor(data[, 165], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[165] <- "strngXTCAttDesirable_intens"
# LimeSurvey Field type: F
data[, 166] <- as.numeric(data[, 166])
attributes(data)$variable.labels[166] <- "[Ik vind het prettiger als ik:Minder hard ga"
data[, 166] <- factor(data[, 166], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[166] <- "strngXTCAttDesirable_intoxicated"
# LimeSurvey Field type: F
data[, 167] <- as.numeric(data[, 167])
attributes(data)$variable.labels[167] <- "[Ik vind het prettiger als ik van XTC:Minder energie krijg|Meer energie krijg] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 167] <- factor(data[, 167], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[167] <- "strngXTCAttDesirable_energy"
# LimeSurvey Field type: F
data[, 168] <- as.numeric(data[, 168])
attributes(data)$variable.labels[168] <- "[Ik vind het prettiger als ik door XTC:Minder gelukkig/euforisch wordt|eer gelukkig/euforisch wordt] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 168] <- factor(data[, 168], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[168] <- "strngXTCAttDesirable_euphoria"
# LimeSurvey Field type: F
data[, 169] <- as.numeric(data[, 169])
attributes(data)$variable.labels[169] <- "[Ik vind het prettiger als ik van XTC:Minder over mezelf leer|Meer over mezelf leer] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 169] <- factor(data[, 169], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[169] <- "strngXTCAttDesirable_insight"
# LimeSurvey Field type: F
data[, 170] <- as.numeric(data[, 170])
attributes(data)$variable.labels[170] <- "[Ik vind het prettiger als ik me door XTC:Minder verbonden voel met anderen|Meer verbonden voel met anderen] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 170] <- factor(data[, 170], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[170] <- "strngXTCAttDesirable_connection"
# LimeSurvey Field type: F
data[, 171] <- as.numeric(data[, 171])
attributes(data)$variable.labels[171] <- "[Ik vind het prettiger als ik op XTC:Minder makkelijk contact maak|Makkelijker contact maak] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 171] <- factor(data[, 171], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[171] <- "strngXTCAttDesirable_contact"
# LimeSurvey Field type: F
data[, 172] <- as.numeric(data[, 172])
attributes(data)$variable.labels[172] <- "[Ik vind het prettiger als ik op XTC:Minder zin heb ik seks|Meer zin heb ik seks] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 172] <- factor(data[, 172], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[172] <- "strngXTCAttDesirable_sex"
# LimeSurvey Field type: F
data[, 173] <- as.numeric(data[, 173])
attributes(data)$variable.labels[173] <- "[Ik vind het prettiger als ik mijn problemen door XTC:Minder snel vergeet|Sneller vergeet] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 173] <- factor(data[, 173], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[173] <- "strngXTCAttDesirable_coping"
# LimeSurvey Field type: F
data[, 174] <- as.numeric(data[, 174])
attributes(data)$variable.labels[174] <- "[Ik vind het prettiger als ik bij de ingang van een feest of festival:Minder risico loop|Meer risico loop] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 174] <- factor(data[, 174], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[174] <- "strngXTCAttDesirable_risk"
# LimeSurvey Field type: F
data[, 175] <- as.numeric(data[, 175])
attributes(data)$variable.labels[175] <- "[Ik vind het prettiger als ik me door XTC:Minder in mezelf gekeerd voel|Meer in mezelf gekeerd voel] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 175] <- factor(data[, 175], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[175] <- "strngXTCAttDesirable_isolated"
# LimeSurvey Field type: F
data[, 176] <- as.numeric(data[, 176])
attributes(data)$variable.labels[176] <- "[Ik vind het prettiger om mijn grenzen met XTC:Niet op te zoeken|Op te zoeken] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 176] <- factor(data[, 176], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[176] <- "strngXTCAttDesirable_boundaries"
# LimeSurvey Field type: F
data[, 177] <- as.numeric(data[, 177])
attributes(data)$variable.labels[177] <- "[Ik vind XTC pillen prettiger als ze:Onzuiver zijn|Zuiver zijn] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 177] <- factor(data[, 177], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[177] <- "strngXTCAttDesirable_purity"
# LimeSurvey Field type: F
data[, 178] <- as.numeric(data[, 178])
attributes(data)$variable.labels[178] <- "[Ik vind het prettiger als muziek op XTC:Slechter klinkt|Beter klinkt] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 178] <- factor(data[, 178], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[178] <- "strngXTCAttDesirable_music"
# LimeSurvey Field type: F
data[, 179] <- as.numeric(data[, 179])
attributes(data)$variable.labels[179] <- "[Ik vind het prettiger als ik op XTC:Minder hallucineer|Meer hallucineer] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 179] <- factor(data[, 179], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[179] <- "strngXTCAttDesirable_hallucinate"
# LimeSurvey Field type: F
data[, 180] <- as.numeric(data[, 180])
attributes(data)$variable.labels[180] <- "[Ik vind het prettiger als de tijd tijdens een XTC trip:Minder snel gaat|Sneller gaat] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 180] <- factor(data[, 180], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[180] <- "strngXTCAttDesirable_timeAwareness"
# LimeSurvey Field type: F
data[, 181] <- as.numeric(data[, 181])
attributes(data)$variable.labels[181] <- "[Ik vind het prettiger als ik me na een XTC trip:Minder herinner|Meer herinner] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 181] <- factor(data[, 181], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[181] <- "strngXTCAttDesirable_memory"
# LimeSurvey Field type: F
data[, 182] <- as.numeric(data[, 182])
attributes(data)$variable.labels[182] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 182] <- factor(data[, 182], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[182] <- "strngXTCNormBeliefs_partner"
# LimeSurvey Field type: F
data[, 183] <- as.numeric(data[, 183])
attributes(data)$variable.labels[183] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 183] <- factor(data[, 183], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[183] <- "strngXTCNormBeliefs_bestFriends"
# LimeSurvey Field type: F
data[, 184] <- as.numeric(data[, 184])
attributes(data)$variable.labels[184] <- "[De vrienden waarmee ik meestal XTC gebruikHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 184] <- factor(data[, 184], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[184] <- "strngXTCNormBeliefs_xtcFriends"
# LimeSurvey Field type: F
data[, 185] <- as.numeric(data[, 185])
attributes(data)$variable.labels[185] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 185] <- factor(data[, 185], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[185] <- "strngXTCNormBeliefs_otherFriends"
# LimeSurvey Field type: F
data[, 186] <- as.numeric(data[, 186])
attributes(data)$variable.labels[186] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 186] <- factor(data[, 186], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[186] <- "strngXTCNormBeliefs_partyPeople"
# LimeSurvey Field type: F
data[, 187] <- as.numeric(data[, 187])
attributes(data)$variable.labels[187] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 187] <- factor(data[, 187], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[187] <- "strngXTCNormBeliefs_parents"
# LimeSurvey Field type: F
data[, 188] <- as.numeric(data[, 188])
attributes(data)$variable.labels[188] <- "[Mijn broertjes/zusjesHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij hooggedoseerde XTC gebruikt?"
data[, 188] <- factor(data[, 188], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[188] <- "strngXTCNormBeliefs_siblings"
# LimeSurvey Field type: F
data[, 189] <- as.numeric(data[, 189])
attributes(data)$variable.labels[189] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 189] <- factor(data[, 189], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[189] <- "strngXTCNormMTC_partner"
# LimeSurvey Field type: F
data[, 190] <- as.numeric(data[, 190])
attributes(data)$variable.labels[190] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 190] <- factor(data[, 190], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[190] <- "strngXTCNormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 191] <- as.numeric(data[, 191])
attributes(data)$variable.labels[191] <- "[De vrienden waarmee ik meestal XTC gebruikHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 191] <- factor(data[, 191], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[191] <- "strngXTCNormMTC_xtcFriends"
# LimeSurvey Field type: F
data[, 192] <- as.numeric(data[, 192])
attributes(data)$variable.labels[192] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 192] <- factor(data[, 192], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[192] <- "strngXTCNormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 193] <- as.numeric(data[, 193])
attributes(data)$variable.labels[193] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 193] <- factor(data[, 193], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[193] <- "strngXTCNormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 194] <- as.numeric(data[, 194])
attributes(data)$variable.labels[194] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 194] <- factor(data[, 194], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[194] <- "strngXTCNormMTC_parents"
# LimeSurvey Field type: F
data[, 195] <- as.numeric(data[, 195])
attributes(data)$variable.labels[195] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij hooggedoseerde XTC gebruikt?"
data[, 195] <- factor(data[, 195], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[195] <- "strngXTCNormMTC_siblings"
# LimeSurvey Field type: F
data[, 196] <- as.numeric(data[, 196])
attributes(data)$variable.labels[196] <- "[Mijn partner (vriendin of vriendin) gebruikt . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 196] <- factor(data[, 196], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[196] <- "strngXTCDescrNorm_partner"
# LimeSurvey Field type: F
data[, 197] <- as.numeric(data[, 197])
attributes(data)$variable.labels[197] <- "[Mijn beste vrienden/vriendinnen gebruiken . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 197] <- factor(data[, 197], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[197] <- "strngXTCDescrNorm_bestFriends"
# LimeSurvey Field type: F
data[, 198] <- as.numeric(data[, 198])
attributes(data)$variable.labels[198] <- "[De vrienden waarmee ik meestal XTC gebruik gebruiken . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 198] <- factor(data[, 198], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[198] <- "strngXTCDescrNorm_xtcFriends"
# LimeSurvey Field type: F
data[, 199] <- as.numeric(data[, 199])
attributes(data)$variable.labels[199] <- "[Mijn andere vrienden gebruiken . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 199] <- factor(data[, 199], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[199] <- "strngXTCDescrNorm_otherFriends"
# LimeSurvey Field type: F
data[, 200] <- as.numeric(data[, 200])
attributes(data)$variable.labels[200] <- "[De meeste mensen op een feest gebruiken . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 200] <- factor(data[, 200], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[200] <- "strngXTCDescrNorm_partyPeople"
# LimeSurvey Field type: F
data[, 201] <- as.numeric(data[, 201])
attributes(data)$variable.labels[201] <- "[Mijn ouders/verzorgers gebruiken . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 201] <- factor(data[, 201], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[201] <- "strngXTCDescrNorm_parents"
# LimeSurvey Field type: F
data[, 202] <- as.numeric(data[, 202])
attributes(data)$variable.labels[202] <- "[Mijn broertjes/zusjes gebruiken . . .Nooit hoog-gedoseerde XTC|Altijd hoog-gedoseerde XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 202] <- factor(data[, 202], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[202] <- "strngXTCDescrNorm_siblings"
# LimeSurvey Field type: F
data[, 203] <- as.numeric(data[, 203])
attributes(data)$variable.labels[203] <- "[Als iemand mij hooggedoseerde XTC-pillen aanbiedt, vind ik \"nee\" zeggen . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om hooggedoseerde of juist niet-hooggedoseerde XTC-pillen te nemen?"
data[, 203] <- factor(data[, 203], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[203] <- "strngXTCContrBeliefs_sayNo"
# LimeSurvey Field type: F
data[, 204] <- as.numeric(data[, 204])
attributes(data)$variable.labels[204] <- "[Voor mij is het nemen van hooggedoseerde XTC-pillen . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om hooggedoseerde of juist niet-hooggedoseerde XTC-pillen te nemen?"
data[, 204] <- factor(data[, 204], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[204] <- "strngXTCContrBeliefs_highDoseEasy"
# LimeSurvey Field type: F
data[, 205] <- as.numeric(data[, 205])
attributes(data)$variable.labels[205] <- "[Voor mij is voorkomen dat ik hooggedoseerde XTC-pillen neem . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om hooggedoseerde of juist niet-hooggedoseerde XTC-pillen te nemen?"
data[, 205] <- factor(data[, 205], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[205] <- "strngXTCContrBeliefs_normalDoseEasy"
# LimeSurvey Field type: F
data[, 206] <- as.numeric(data[, 206])
attributes(data)$variable.labels[206] <- "[Als ik al XTC heb gebruikt, is het nemen van hooggedoseerde XTC-pillen voor mij . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om hooggedoseerde of juist niet-hooggedoseerde XTC-pillen te nemen?"
data[, 206] <- factor(data[, 206], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[206] <- "strngXTCContrBeliefs_easyHighDoseWhenHigh"
# LimeSurvey Field type: F
data[, 207] <- as.numeric(data[, 207])
attributes(data)$variable.labels[207] <- "[Als ik al XTC heb gebruikt is voorkomen dat ik hooggedoseerde XTC-pillen neem . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om hooggedoseerde of juist niet-hooggedoseerde XTC-pillen te nemen?"
data[, 207] <- factor(data[, 207], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[207] <- "strngXTCContrBeliefs_easyNormalDoWhenHigh"
# LimeSurvey Field type: A
data[, 208] <- as.character(data[, 208])
attributes(data)$variable.labels[208] <- "Heel erg bedankt dat je deze vragen allemaal al hebt beantwoord! Je bent bijna klaar.	Zijn we belangrijke dingen vergeten te vragen? Of stonden er verkeerde vragen in? Moet de vragenlijst korter? Of juist langer?	Dit kun je op het einde van de vragenlijst aangeven, dan houden we er de volgende keer rekening mee!"
names(data)[208] <- "strXTCFeedbackPrompt"
# LimeSurvey Field type: F
data[, 209] <- as.numeric(data[, 209])
attributes(data)$variable.labels[209] <- "[Hoe sterk ben je van plan het komende half jaar een hoge dosis XTC te gebruiken?Helemaal niet sterk|Heel sterk] 	Om te beginnen zijn we benieuwd of jij ook van plan bent om de komende 6 maanden een hoge dosis XTC (MDMA) te gebruiken.	Het gaat dus om het opzettelijk gebruiken van een hoge dosis MDMA, bijvoorbeeld door veel of sterke pillen te gebruiken."
data[, 209] <- factor(data[, 209], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[209] <- "highDoseIntentionRAA_intention"
# LimeSurvey Field type: F
data[, 210] <- as.numeric(data[, 210])
attributes(data)$variable.labels[210] <- "[Hoe graag wil je het komende halfjaar een hoge dosis XTC gebruiken?Helemaal niet graag|Heel erg graag] 	Om te beginnen zijn we benieuwd of jij ook van plan bent om de komende 6 maanden een hoge dosis XTC (MDMA) te gebruiken.	Het gaat dus om het opzettelijk gebruiken van een hoge dosis MDMA, bijvoorbeeld door veel of sterke pillen te gebruiken."
data[, 210] <- factor(data[, 210], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[210] <- "highDoseIntentionRAA_want"
# LimeSurvey Field type: F
data[, 211] <- as.numeric(data[, 211])
attributes(data)$variable.labels[211] <- "[Hoe waarschijnlijk is het dat je het komende half jaar ook echt een hoge dosis XTC gaat gebruiken?Helemaal niet zeker|Absoluut zeker] 	Om te beginnen zijn we benieuwd of jij ook van plan bent om de komende 6 maanden een hoge dosis XTC (MDMA) te gebruiken.	Het gaat dus om het opzettelijk gebruiken van een hoge dosis MDMA, bijvoorbeeld door veel of sterke pillen te gebruiken."
data[, 211] <- factor(data[, 211], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[211] <- "highDoseIntentionRAA_expectation"
# LimeSurvey Field type: A
data[, 212] <- as.character(data[, 212])
attributes(data)$variable.labels[212] <- "[] [Schaal 1] 	Hoe vaak ben je van plan om de komende zes maanden een hoge dosis XTC te gebruiken?"
data[, 212] <- factor(data[, 212], levels=c("XtdNr"),labels=c(""))
names(data)[212] <- "highDoseIntentionFrq_freq#0"
# LimeSurvey Field type: F
data[, 213] <- as.numeric(data[, 213])
attributes(data)$variable.labels[213] <- "[] [Schaal 2] 	Hoe vaak ben je van plan om de komende zes maanden een hoge dosis XTC te gebruiken?"
data[, 213] <- factor(data[, 213], levels=c(26,6,1),labels=c("Per week", "Per maand", "In totaal (per 6 maanden)"))
names(data)[213] <- "highDoseIntentionFrq_freq#1"
# LimeSurvey Field type: F
data[, 214] <- as.numeric(data[, 214])
attributes(data)$variable.labels[214] <- "[slecht|goed] Als ik XTC pillen gebruik, vind ik het gebruiken van een hoge dosis . . ."
data[, 214] <- factor(data[, 214], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[214] <- "highDoseAttGeneral_good"
# LimeSurvey Field type: F
data[, 215] <- as.numeric(data[, 215])
attributes(data)$variable.labels[215] <- "[onprettig|prettig] Als ik XTC pillen gebruik, vind ik het gebruiken van een hoge dosis . . ."
data[, 215] <- factor(data[, 215], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[215] <- "highDoseAttGeneral_prettig"
# LimeSurvey Field type: F
data[, 216] <- as.numeric(data[, 216])
attributes(data)$variable.labels[216] <- "[dom|slim] Als ik XTC pillen gebruik, vind ik het gebruiken van een hoge dosis . . ."
data[, 216] <- factor(data[, 216], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[216] <- "highDoseAttGeneral_slim"
# LimeSurvey Field type: F
data[, 217] <- as.numeric(data[, 217])
attributes(data)$variable.labels[217] <- "[ongezond|gezond] Als ik XTC pillen gebruik, vind ik het gebruiken van een hoge dosis . . ."
data[, 217] <- factor(data[, 217], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[217] <- "highDoseAttGeneral_gezond"
# LimeSurvey Field type: F
data[, 218] <- as.numeric(data[, 218])
attributes(data)$variable.labels[218] <- "[saai|spannend] Als ik XTC pillen gebruik, vind ik het gebruiken van een hoge dosis . . ."
data[, 218] <- factor(data[, 218], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[218] <- "highDoseAttGeneral_spannend"
# LimeSurvey Field type: F
data[, 219] <- as.numeric(data[, 219])
attributes(data)$variable.labels[219] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik, als ik XTC gebruik, een hoge dosis moet nemen.Niet waar|Wel waar] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij een hoge dosis XTC gebruikt."
data[, 219] <- factor(data[, 219], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[219] <- "highDoseNormGeneral_in1"
# LimeSurvey Field type: F
data[, 220] <- as.numeric(data[, 220])
attributes(data)$variable.labels[220] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik een hoge dosis neem.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij een hoge dosis XTC gebruikt."
data[, 220] <- factor(data[, 220], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[220] <- "highDoseNormGeneral_in2"
# LimeSurvey Field type: F
data[, 221] <- as.numeric(data[, 221])
attributes(data)$variable.labels[221] <- "[De mensen die ik respecteer en bewonder gebruiken een hoge dosis als ze XTC nemen.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij een hoge dosis XTC gebruikt."
data[, 221] <- factor(data[, 221], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[221] <- "highDoseNormGeneral_dn1"
# LimeSurvey Field type: F
data[, 222] <- as.numeric(data[, 222])
attributes(data)$variable.labels[222] <- "[De meeste mensen zoals ik gebruiken een hoge dosis als ze XTC nemen.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij een hoge dosis XTC gebruikt."
data[, 222] <- factor(data[, 222], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[222] <- "highDoseNormGeneral_dn2"
# LimeSurvey Field type: F
data[, 223] <- as.numeric(data[, 223])
attributes(data)$variable.labels[223] <- "[Als ik een hoge dosis XTC zou willen gebruiken, dan zou mij dat . . .Zeker niet lukken|Zeker lukken] Hier nog een aantal algemene vragen over wat bepaalt of jij een hoge dosis neemt, als je XTC-pillen gebruikt."
data[, 223] <- factor(data[, 223], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[223] <- "highDosePBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 224] <- as.numeric(data[, 224])
attributes(data)$variable.labels[224] <- "[Een hoge dosis XTC gebruiken is voor mij . . .Heel moeilijk|Heel makkelijk] Hier nog een aantal algemene vragen over wat bepaalt of jij een hoge dosis neemt, als je XTC-pillen gebruikt."
data[, 224] <- factor(data[, 224], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[224] <- "highDosePBCgeneral_easy"
# LimeSurvey Field type: F
data[, 225] <- as.numeric(data[, 225])
attributes(data)$variable.labels[225] <- "[Ik heb . . . controle over of ik een hoge dosis XTC gebruikHelemaal geen|Volledige] Hier nog een aantal algemene vragen over wat bepaalt of jij een hoge dosis neemt, als je XTC-pillen gebruikt."
data[, 225] <- factor(data[, 225], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[225] <- "highDosePBCgeneral_control"
# LimeSurvey Field type: F
data[, 226] <- as.numeric(data[, 226])
attributes(data)$variable.labels[226] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik een hoge dosis XTC ga gebruiken.Helemaal geen|Heel veel] Hier nog een aantal algemene vragen over wat bepaalt of jij een hoge dosis neemt, als je XTC-pillen gebruikt."
data[, 226] <- factor(data[, 226], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[226] <- "highDosePBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 227] <- as.numeric(data[, 227])
attributes(data)$variable.labels[227] <- "[Of ik een hoge dosis XTC gebruik, ligt . . .Alleen aan andere mensen|Alleen aan mij] Hier nog een aantal algemene vragen over wat bepaalt of jij een hoge dosis neemt, als je XTC-pillen gebruikt."
data[, 227] <- factor(data[, 227], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[227] <- "highDosePBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 228] <- as.character(data[, 228])
attributes(data)$variable.labels[228] <- "Bedankt voor die antwoorden! Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover het gebruiken van een hoge dosis XTC staat. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen een hoge dosis XTC gebruiken?"
names(data)[228] <- "highDoseOpenWhy"
# LimeSurvey Field type: A
data[, 229] <- as.character(data[, 229])
attributes(data)$variable.labels[229] <- "En redenen om juist geen hoge dosis XTC te gebruiken?"
names(data)[229] <- "highDoseOpenWhyNot"
# LimeSurvey Field type: F
data[, 230] <- as.numeric(data[, 230])
attributes(data)$variable.labels[230] <- "[Als ik een hoge dosis XTC gebruik,is mijn trip . . .Korter|Langer] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 230] <- factor(data[, 230], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[230] <- "highDoseAttBeliefs_long"
# LimeSurvey Field type: F
data[, 231] <- as.numeric(data[, 231])
attributes(data)$variable.labels[231] <- "[Als ik een hoge dosis XTC gebruik,is mijn trip . . .Milder|Intenser] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 231] <- factor(data[, 231], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[231] <- "highDoseAttBeliefs_intensity"
# LimeSurvey Field type: F
data[, 232] <- as.numeric(data[, 232])
attributes(data)$variable.labels[232] <- "[Als ik een hoge dosis XTC gebruik,ga ik . . .Veel minder hard|Veel harder] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 232] <- factor(data[, 232], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[232] <- "highDoseAttBeliefs_intoxicated"
# LimeSurvey Field type: F
data[, 233] <- as.numeric(data[, 233])
attributes(data)$variable.labels[233] <- "[Met een hoge dosis XTC krijg ik . . .Veel minder energie|Veel meer energie] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 233] <- factor(data[, 233], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[233] <- "highDoseAttBeliefs_energy"
# LimeSurvey Field type: F
data[, 234] <- as.numeric(data[, 234])
attributes(data)$variable.labels[234] <- "[Met een hoge dosis XTC is het hele gelukkige, euforische gevoel . . .Veel minder sterk|Veel sterker] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 234] <- factor(data[, 234], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[234] <- "highDoseAttBeliefs_euphoria"
# LimeSurvey Field type: F
data[, 235] <- as.numeric(data[, 235])
attributes(data)$variable.labels[235] <- "[Als ik een hoge dosis XTC gebruik,leer ik . . .Veel minder over mezelf|Veel meer over mezelf] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 235] <- factor(data[, 235], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[235] <- "highDoseAttBeliefs_insight"
# LimeSurvey Field type: F
data[, 236] <- as.numeric(data[, 236])
attributes(data)$variable.labels[236] <- "[Als ik een hoge dosis XTC gebruik,voel ik me . . .Veel minder verbonden met anderen|Veel meer verbonden met anderen] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 236] <- factor(data[, 236], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[236] <- "highDoseAttBeliefs_connection"
# LimeSurvey Field type: F
data[, 237] <- as.numeric(data[, 237])
attributes(data)$variable.labels[237] <- "[Als ik een hoge dosis XTC gebruik,krijg ik . . .Veel minder makkelijk contact met anderen|Veel makkelijker contact met anderen] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 237] <- factor(data[, 237], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[237] <- "highDoseAttBeliefs_contact"
# LimeSurvey Field type: F
data[, 238] <- as.numeric(data[, 238])
attributes(data)$variable.labels[238] <- "[Als ik een hoge dosis XTC gebruik,krijg ik . . .Veel minder zin in seks|Veel meer zin in seks] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 238] <- factor(data[, 238], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[238] <- "highDoseAttBeliefs_sex"
# LimeSurvey Field type: F
data[, 239] <- as.numeric(data[, 239])
attributes(data)$variable.labels[239] <- "[Met een hoge dosis XTC vergeet ik mijn problemen . . .Veel minder snel|Veel sneller] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 239] <- factor(data[, 239], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[239] <- "highDoseAttBeliefs_coping"
# LimeSurvey Field type: F
data[, 240] <- as.numeric(data[, 240])
attributes(data)$variable.labels[240] <- "[Als ik een hoge dosis XTC gebruik,voel ik me . . .Veel minder in mezelf gekeerd|Veel meer in mezelf gekeerd] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 240] <- factor(data[, 240], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[240] <- "highDoseAttBeliefs_isolated"
# LimeSurvey Field type: F
data[, 241] <- as.numeric(data[, 241])
attributes(data)$variable.labels[241] <- "[Met een hoge dosis XTC kan ik mijn grenzen . . .Veel minder goed opzoeken|Veel beter opzoeken] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 241] <- factor(data[, 241], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[241] <- "highDoseAttBeliefs_boundaries"
# LimeSurvey Field type: F
data[, 242] <- as.numeric(data[, 242])
attributes(data)$variable.labels[242] <- "[Als ik een hoge dosis XTC gebruik,klinkt de muziek . . .Veel slechter|Veel beter] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 242] <- factor(data[, 242], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[242] <- "highDoseAttBeliefs_music"
# LimeSurvey Field type: F
data[, 243] <- as.numeric(data[, 243])
attributes(data)$variable.labels[243] <- "[Als ik een hoge dosis XTC gebruik,ga ik . . .Veel minder hallucineren|Veel meer hallucineren] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 243] <- factor(data[, 243], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[243] <- "highDoseAttBeliefs_hallucinate"
# LimeSurvey Field type: F
data[, 244] <- as.numeric(data[, 244])
attributes(data)$variable.labels[244] <- "[Als ik een hoge dosis XTC gebruik,gaat de tijd voor mij . . .Veel minder snel|Veel sneller] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 244] <- factor(data[, 244], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[244] <- "highDoseAttBeliefs_timeAwareness"
# LimeSurvey Field type: F
data[, 245] <- as.numeric(data[, 245])
attributes(data)$variable.labels[245] <- "[Als ik een hoge dosis XTC gebruik,herinner ik mij achteraf . . .Veel minder|Veel meer] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 245] <- factor(data[, 245], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[245] <- "highDoseAttBeliefs_memory"
# LimeSurvey Field type: F
data[, 246] <- as.numeric(data[, 246])
attributes(data)$variable.labels[246] <- "[Voor mijn gezondheid is een hoge dosis XTC . . .Veel slechter|Veel beter] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 246] <- factor(data[, 246], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[246] <- "highDoseAttBeliefs_health"
# LimeSurvey Field type: F
data[, 247] <- as.numeric(data[, 247])
attributes(data)$variable.labels[247] <- "[Mijn ervaring met het gebruiken van een hoge dosis XTC is . . .Slechter|Beter] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 247] <- factor(data[, 247], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[247] <- "highDoseAttBeliefs_better"
# LimeSurvey Field type: F
data[, 248] <- as.numeric(data[, 248])
attributes(data)$variable.labels[248] <- "[Maak je je evenveel, meer of minder zorgen over de lichamelijke bijwerkingen van een hoge dosis XTC?Veel minder zorgen|Veel meer zorgen] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 248] <- factor(data[, 248], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[248] <- "highDoseAttBeliefs_physicalSideEffects"
# LimeSurvey Field type: F
data[, 249] <- as.numeric(data[, 249])
attributes(data)$variable.labels[249] <- "[Maak je je evenveel, meer of minder zorgen over de emotionele en psychische bijwerkingen van een hoge dosis XTC?Veel minder zorgen|Veel meer zorgen] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 249] <- factor(data[, 249], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[249] <- "highDoseAttBeliefs_psychicSideEffects"
# LimeSurvey Field type: F
data[, 250] <- as.numeric(data[, 250])
attributes(data)$variable.labels[250] <- "[Heb je achteraf evenveel, meer of minder spijt als je een hoge dosis XTC gebruikte?Veel minder spijt|Veel meer spijt] 	Eerst een aantal vragen over hoe het gebruiken van een hoge dosis XTC voor jou verschilt van het gebruiken van een gewone dosis XTC (MDMA).	Als jij alleen nog maar een gewone dosis hebt gebruikt, of alleen nog maar een hoge dosis hebt gebruikt, geef dan aan wat je denkt dat het verschil zal zijn."
data[, 250] <- factor(data[, 250], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[250] <- "highDoseAttBeliefs_regret"
# LimeSurvey Field type: F
data[, 251] <- as.numeric(data[, 251])
attributes(data)$variable.labels[251] <- "[Ik vind het prettiger als een XTC-trip:Korter duurt|Langer duurt] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 251] <- factor(data[, 251], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[251] <- "highDoseAttDesirable_long"
# LimeSurvey Field type: F
data[, 252] <- as.numeric(data[, 252])
attributes(data)$variable.labels[252] <- "[Ik vind het prettiger als een XTC-trip:Milder is|Intenser is] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 252] <- factor(data[, 252], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[252] <- "highDoseAttDesirable_intens"
# LimeSurvey Field type: F
data[, 253] <- as.numeric(data[, 253])
attributes(data)$variable.labels[253] <- "[Ik vind het prettiger als ik:Minder hard ga|Harder ga] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 253] <- factor(data[, 253], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[253] <- "highDoseAttDesirable_intoxicated"
# LimeSurvey Field type: F
data[, 254] <- as.numeric(data[, 254])
attributes(data)$variable.labels[254] <- "[Ik vind het prettiger als ik van XTC:Minder energie krijg|Meer energie krijg] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 254] <- factor(data[, 254], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[254] <- "highDoseAttDesirable_energy"
# LimeSurvey Field type: F
data[, 255] <- as.numeric(data[, 255])
attributes(data)$variable.labels[255] <- "[Ik vind het prettiger als ik door XTC:Minder gelukkig/euforisch wordt|eer gelukkig/euforisch wordt] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 255] <- factor(data[, 255], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[255] <- "highDoseAttDesirable_euphoria"
# LimeSurvey Field type: F
data[, 256] <- as.numeric(data[, 256])
attributes(data)$variable.labels[256] <- "[Ik vind het prettiger als ik van XTC:Minder over mezelf leer|Meer over mezelf leer] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 256] <- factor(data[, 256], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[256] <- "highDoseAttDesirable_insight"
# LimeSurvey Field type: F
data[, 257] <- as.numeric(data[, 257])
attributes(data)$variable.labels[257] <- "[Ik vind het prettiger als ik me door XTC:Minder verbonden voel met anderen|Meer verbonden voel met anderen] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 257] <- factor(data[, 257], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[257] <- "highDoseAttDesirable_connection"
# LimeSurvey Field type: F
data[, 258] <- as.numeric(data[, 258])
attributes(data)$variable.labels[258] <- "[Ik vind het prettiger als ik op XTC:Minder makkelijk contact maak|Makkelijker contact maak] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 258] <- factor(data[, 258], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[258] <- "highDoseAttDesirable_contact"
# LimeSurvey Field type: F
data[, 259] <- as.numeric(data[, 259])
attributes(data)$variable.labels[259] <- "[Ik vind het prettiger als ik op XTC:Minder zin heb ik seks|Meer zin heb ik seks] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 259] <- factor(data[, 259], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[259] <- "highDoseAttDesirable_sex"
# LimeSurvey Field type: F
data[, 260] <- as.numeric(data[, 260])
attributes(data)$variable.labels[260] <- "[Ik vind het prettiger als ik mijn problemen door XTC:Minder snel vergeet|Sneller vergeet] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 260] <- factor(data[, 260], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[260] <- "highDoseAttDesirable_coping"
# LimeSurvey Field type: F
data[, 261] <- as.numeric(data[, 261])
attributes(data)$variable.labels[261] <- "[Ik vind het prettiger als ik me door XTC:Minder in mezelf gekeerd voel|Meer in mezelf gekeerd voel] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 261] <- factor(data[, 261], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[261] <- "highDoseAttDesirable_isolated"
# LimeSurvey Field type: F
data[, 262] <- as.numeric(data[, 262])
attributes(data)$variable.labels[262] <- "[Ik vind het prettiger om mijn grenzen met XTC:Niet op te zoeken|Op te zoeken] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 262] <- factor(data[, 262], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[262] <- "highDoseAttDesirable_boundaries"
# LimeSurvey Field type: F
data[, 263] <- as.numeric(data[, 263])
attributes(data)$variable.labels[263] <- "[Ik vind XTC pillen prettiger als ze:Onzuiver zijn|Zuiver zijn] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 263] <- factor(data[, 263], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[263] <- "highDoseAttDesirable_purity"
# LimeSurvey Field type: F
data[, 264] <- as.numeric(data[, 264])
attributes(data)$variable.labels[264] <- "[Ik vind het prettiger als muziek op XTC:Slechter klinkt|Beter klinkt] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 264] <- factor(data[, 264], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[264] <- "highDoseAttDesirable_music"
# LimeSurvey Field type: F
data[, 265] <- as.numeric(data[, 265])
attributes(data)$variable.labels[265] <- "[Ik vind het prettiger als ik op XTC:Minder hallucineer|Meer hallucineer] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 265] <- factor(data[, 265], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[265] <- "highDoseAttDesirable_hallucinate"
# LimeSurvey Field type: F
data[, 266] <- as.numeric(data[, 266])
attributes(data)$variable.labels[266] <- "[Ik vind het prettiger als de tijd tijdens een XTC trip:Minder snel gaat|Sneller gaat] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 266] <- factor(data[, 266], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[266] <- "highDoseAttDesirable_timeAwareness"
# LimeSurvey Field type: F
data[, 267] <- as.numeric(data[, 267])
attributes(data)$variable.labels[267] <- "[Ik vind het prettiger als ik me na een XTC trip:Minder herinner|Meer herinner] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 267] <- factor(data[, 267], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[267] <- "highDoseAttDesirable_memory"
# LimeSurvey Field type: F
data[, 268] <- as.numeric(data[, 268])
attributes(data)$variable.labels[268] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 268] <- factor(data[, 268], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[268] <- "highDoseNormBeliefs_partner"
# LimeSurvey Field type: F
data[, 269] <- as.numeric(data[, 269])
attributes(data)$variable.labels[269] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 269] <- factor(data[, 269], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[269] <- "highDoseNormBeliefs_bestFriends"
# LimeSurvey Field type: F
data[, 270] <- as.numeric(data[, 270])
attributes(data)$variable.labels[270] <- "[De vrienden waarmee ik meestal XTC gebruikHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 270] <- factor(data[, 270], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[270] <- "highDoseNormBeliefs_xtcFriends"
# LimeSurvey Field type: F
data[, 271] <- as.numeric(data[, 271])
attributes(data)$variable.labels[271] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 271] <- factor(data[, 271], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[271] <- "highDoseNormBeliefs_otherFriends"
# LimeSurvey Field type: F
data[, 272] <- as.numeric(data[, 272])
attributes(data)$variable.labels[272] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 272] <- factor(data[, 272], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[272] <- "highDoseNormBeliefs_partyPeople"
# LimeSurvey Field type: F
data[, 273] <- as.numeric(data[, 273])
attributes(data)$variable.labels[273] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 273] <- factor(data[, 273], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[273] <- "highDoseNormBeliefs_parents"
# LimeSurvey Field type: F
data[, 274] <- as.numeric(data[, 274])
attributes(data)$variable.labels[274] <- "[Mijn broertjes/zusjesHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als jij een hoge dosis XTC gebruikt?"
data[, 274] <- factor(data[, 274], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[274] <- "highDoseNormBeliefs_siblings"
# LimeSurvey Field type: F
data[, 275] <- as.numeric(data[, 275])
attributes(data)$variable.labels[275] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 275] <- factor(data[, 275], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[275] <- "highDoseNormMTC_partner"
# LimeSurvey Field type: F
data[, 276] <- as.numeric(data[, 276])
attributes(data)$variable.labels[276] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 276] <- factor(data[, 276], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[276] <- "highDoseNormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 277] <- as.numeric(data[, 277])
attributes(data)$variable.labels[277] <- "[De vrienden waarmee ik meestal XTC gebruikHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 277] <- factor(data[, 277], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[277] <- "highDoseNormMTC_xtcFriends"
# LimeSurvey Field type: F
data[, 278] <- as.numeric(data[, 278])
attributes(data)$variable.labels[278] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 278] <- factor(data[, 278], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[278] <- "highDoseNormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 279] <- as.numeric(data[, 279])
attributes(data)$variable.labels[279] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 279] <- factor(data[, 279], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[279] <- "highDoseNormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 280] <- as.numeric(data[, 280])
attributes(data)$variable.labels[280] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 280] <- factor(data[, 280], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[280] <- "highDoseNormMTC_parents"
# LimeSurvey Field type: F
data[, 281] <- as.numeric(data[, 281])
attributes(data)$variable.labels[281] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij een hoge dosis XTC (MDMA) gebruikt?"
data[, 281] <- factor(data[, 281], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[281] <- "highDoseNormMTC_siblings"
# LimeSurvey Field type: F
data[, 282] <- as.numeric(data[, 282])
attributes(data)$variable.labels[282] <- "[Mijn partner (vriendin of vriendin) gebruikt . . .Nooit een hoge dosis XTC|Altijd een hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 282] <- factor(data[, 282], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[282] <- "highDoseDescrNorm_partner"
# LimeSurvey Field type: F
data[, 283] <- as.numeric(data[, 283])
attributes(data)$variable.labels[283] <- "[Mijn beste vrienden/vriendinnen gebruiken . . .Nooit een hoge dosis XTC|Altijd een hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 283] <- factor(data[, 283], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[283] <- "highDoseDescrNorm_bestFriends"
# LimeSurvey Field type: F
data[, 284] <- as.numeric(data[, 284])
attributes(data)$variable.labels[284] <- "[De vrienden waarmee ik meestal XTC gebruik gebruiken . . .Nooit een hoge dosis XTC|Altijd een hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 284] <- factor(data[, 284], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[284] <- "highDoseDescrNorm_xtcFriends"
# LimeSurvey Field type: F
data[, 285] <- as.numeric(data[, 285])
attributes(data)$variable.labels[285] <- "[Mijn andere vrienden gebruiken . . .Nooit een hoge dosis XTC|Altijd heen hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 285] <- factor(data[, 285], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[285] <- "highDoseDescrNorm_otherFriends"
# LimeSurvey Field type: F
data[, 286] <- as.numeric(data[, 286])
attributes(data)$variable.labels[286] <- "[De meeste mensen op een feest gebruiken . . .Nooit een hoge dosis XTC|Altijd een hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 286] <- factor(data[, 286], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[286] <- "highDoseDescrNorm_partyPeople"
# LimeSurvey Field type: F
data[, 287] <- as.numeric(data[, 287])
attributes(data)$variable.labels[287] <- "[Mijn ouders/verzorgers gebruiken . . .Nooit een hoge dosis XTC|Altijd een hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 287] <- factor(data[, 287], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[287] <- "highDoseDescrNorm_parents"
# LimeSurvey Field type: F
data[, 288] <- as.numeric(data[, 288])
attributes(data)$variable.labels[288] <- "[Mijn broertjes/zusjes gebruiken . . .Nooit een hoge dosis XTC|Altijd een hoge dosis XTC] Wat doen deze mensen zelf als ze XTC gebruiken, denk je?"
data[, 288] <- factor(data[, 288], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[288] <- "highDoseDescrNorm_siblings"
# LimeSurvey Field type: F
data[, 289] <- as.numeric(data[, 289])
attributes(data)$variable.labels[289] <- "[Als iemand mij een hoge dosis XTC aanbiedt, vind ik \"nee\" zeggen . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om een hoge of lage dosis XTC te nemen?"
data[, 289] <- factor(data[, 289], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[289] <- "highDoseContrBeliefs_sayNo"
# LimeSurvey Field type: F
data[, 290] <- as.numeric(data[, 290])
attributes(data)$variable.labels[290] <- "[Voor mij is het nemen van een hoge dosis XTC . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om een hoge of lage dosis XTC te nemen?"
data[, 290] <- factor(data[, 290], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[290] <- "highDoseContrBeliefs_highDoseEasy"
# LimeSurvey Field type: F
data[, 291] <- as.numeric(data[, 291])
attributes(data)$variable.labels[291] <- "[Voor mij is voorkomen dat ik een hoge dosis XTC neem . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om een hoge of lage dosis XTC te nemen?"
data[, 291] <- factor(data[, 291], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[291] <- "highDoseContrBeliefs_normalDoseEasy"
# LimeSurvey Field type: F
data[, 292] <- as.numeric(data[, 292])
attributes(data)$variable.labels[292] <- "[Als ik al XTC heb gebruikt, is het nemen van een hoge dosis XTC voor mij . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om een hoge of lage dosis XTC te nemen?"
data[, 292] <- factor(data[, 292], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[292] <- "highDoseContrBeliefs_easyHighDoseWhenHigh"
# LimeSurvey Field type: F
data[, 293] <- as.numeric(data[, 293])
attributes(data)$variable.labels[293] <- "[Als ik al XTC heb gebruikt is voorkomen dat ik een hoge dosis XTC neem . . .Heel moeilijk|Heel makkelijk] Hoe makkelijk is het voor jou om een hoge of lage dosis XTC te nemen?"
data[, 293] <- factor(data[, 293], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[293] <- "highDoseContrBeliefs_easyNormalDoWhenHigh"
# LimeSurvey Field type: A
data[, 294] <- as.character(data[, 294])
attributes(data)$variable.labels[294] <- "Heel erg bedankt dat je deze vragen allemaal al hebt beantwoord! Je bent bijna klaar.	Zijn we belangrijke dingen vergeten te vragen? Of stonden er verkeerde vragen in? Moet de vragenlijst korter? Of juist langer?	Dit kun je op het einde van de vragenlijst aangeven, dan houden we er de volgende keer rekening mee!"
names(data)[294] <- "hiDoseFeedbackPrompt"
# LimeSurvey Field type: F
data[, 295] <- as.numeric(data[, 295])
attributes(data)$variable.labels[295] <- "[slecht|goed] Ik vind het laten testen van mijn XTC pillen . . ."
data[, 295] <- factor(data[, 295], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[295] <- "testingAttGeneral_good"
# LimeSurvey Field type: F
data[, 296] <- as.numeric(data[, 296])
attributes(data)$variable.labels[296] <- "[onprettig|prettig] Ik vind het laten testen van mijn XTC pillen . . ."
data[, 296] <- factor(data[, 296], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[296] <- "testingAttGeneral_prettig"
# LimeSurvey Field type: F
data[, 297] <- as.numeric(data[, 297])
attributes(data)$variable.labels[297] <- "[dom|slim] Ik vind het laten testen van mijn XTC pillen . . ."
data[, 297] <- factor(data[, 297], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[297] <- "testingAttGeneral_slim"
# LimeSurvey Field type: F
data[, 298] <- as.numeric(data[, 298])
attributes(data)$variable.labels[298] <- "[ongezond|gezond] Ik vind het laten testen van mijn XTC pillen . . ."
data[, 298] <- factor(data[, 298], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[298] <- "testingAttGeneral_gezond"
# LimeSurvey Field type: F
data[, 299] <- as.numeric(data[, 299])
attributes(data)$variable.labels[299] <- "[saai|spannend] Ik vind het laten testen van mijn XTC pillen . . ."
data[, 299] <- factor(data[, 299], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[299] <- "testingAttGeneral_spannend"
# LimeSurvey Field type: F
data[, 300] <- as.numeric(data[, 300])
attributes(data)$variable.labels[300] <- "[De meeste mensen die belangrijk voor mij zijn vinden dat ik mijn XTC moet testen bij een testcentrum.Niet waar|Wel waar] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij XTC laat testen in een testcentrum."
data[, 300] <- factor(data[, 300], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[300] <- "testingNormGeneral_in1"
# LimeSurvey Field type: F
data[, 301] <- as.numeric(data[, 301])
attributes(data)$variable.labels[301] <- "[De mensen van wie ik belangrijk vind wat ze denken, zouden het goed vinden als ik mijn XTC laat testen.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij XTC laat testen in een testcentrum."
data[, 301] <- factor(data[, 301], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[301] <- "testingNormGeneral_in2"
# LimeSurvey Field type: F
data[, 302] <- as.numeric(data[, 302])
attributes(data)$variable.labels[302] <- "[De mensen die ik respecteer en bewonder testen hun XTC bij een testcentrum.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij XTC laat testen in een testcentrum."
data[, 302] <- factor(data[, 302], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[302] <- "testingNormGeneral_dn1"
# LimeSurvey Field type: F
data[, 303] <- as.numeric(data[, 303])
attributes(data)$variable.labels[303] <- "[De meeste mensen zoals ik testen hun XTC bij een testcentrum.Waarschijnlijk niet|Waarschijnlijk wel] Hier een aantal algemene vragen over wat je denkt dat mensen die belangrijk voor je zijn er van vinden als jij XTC laat testen in een testcentrum."
data[, 303] <- factor(data[, 303], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[303] <- "testingNormGeneral_dn2"
# LimeSurvey Field type: F
data[, 304] <- as.numeric(data[, 304])
attributes(data)$variable.labels[304] <- "[Als ik XTC zou willen laten testen bij een testcentrum, dan zou mij dat . . .Zeker niet lukken|Zeker lukken] Hier nog een aantal algemene vragen over wat bepaalt of jij je XTC laat testen bij een testcentrum."
data[, 304] <- factor(data[, 304], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[304] <- "testingPBCgeneral_ifwanted"
# LimeSurvey Field type: F
data[, 305] <- as.numeric(data[, 305])
attributes(data)$variable.labels[305] <- "[XTC laten testen bij een testcentrum is voor mij . . .Heel moeilijk|Heel makkelijk] Hier nog een aantal algemene vragen over wat bepaalt of jij je XTC laat testen bij een testcentrum."
data[, 305] <- factor(data[, 305], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[305] <- "testingPBCgeneral_easy"
# LimeSurvey Field type: F
data[, 306] <- as.numeric(data[, 306])
attributes(data)$variable.labels[306] <- "[Ik heb . . . controle over of ik XTC laat testen bij een testcentrumHelemaal geen|Volledige] Hier nog een aantal algemene vragen over wat bepaalt of jij je XTC laat testen bij een testcentrum."
data[, 306] <- factor(data[, 306], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[306] <- "testingPBCgeneral_control"
# LimeSurvey Field type: F
data[, 307] <- as.numeric(data[, 307])
attributes(data)$variable.labels[307] <- "[Er zijn . . . factoren buiten mijzelf om die mede bepalen of ik XTC laat testen bij een testcentrum.Helemaal geen|Heel veel] Hier nog een aantal algemene vragen over wat bepaalt of jij je XTC laat testen bij een testcentrum."
data[, 307] <- factor(data[, 307], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[307] <- "testingPBCgeneral_externalFactors"
# LimeSurvey Field type: F
data[, 308] <- as.numeric(data[, 308])
attributes(data)$variable.labels[308] <- "[Of ik XTC laat testen bij een testcentrum, ligt . . .Alleen aan andere mensen|Alleen aan mij] Hier nog een aantal algemene vragen over wat bepaalt of jij je XTC laat testen bij een testcentrum."
data[, 308] <- factor(data[, 308], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[308] <- "testingPBCgeneral_notOnlyMe"
# LimeSurvey Field type: A
data[, 309] <- as.character(data[, 309])
attributes(data)$variable.labels[309] <- "Bedankt voor die antwoorden! Op de volgende pagina gaan we hier wat dieper op in.	Maar eerst zijn we benieuwd hoe jij tegenover het laten testen van XTC staat. Als jij naar jezelf en naar andere mensen kijkt, wat zijn dan volgens jou de belangrijkste redenen waarom mensen hun XTC bij een testcentrum laten testen?"
names(data)[309] <- "testingOpenWhy"
# LimeSurvey Field type: A
data[, 310] <- as.character(data[, 310])
attributes(data)$variable.labels[310] <- "En redenen om XTC niet te laten testen?"
names(data)[310] <- "testingOpenWhyNot"
# LimeSurvey Field type: F
data[, 311] <- as.numeric(data[, 311])
attributes(data)$variable.labels[311] <- "[Mijn dealer weet wat er in de XTC-pillen zit die hij/zij verkoopt.Absoluut niet|Absoluut wel] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 311] <- factor(data[, 311], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[311] <- "testingAttBeliefs_dealerKnows"
# LimeSurvey Field type: F
data[, 312] <- as.numeric(data[, 312])
attributes(data)$variable.labels[312] <- "[Als je XTC laat testen, weet je daarna precies hoeveel MDMA er in zit.Absoluut niet|Absoluut wel] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 312] <- factor(data[, 312], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[312] <- "testingAttBeliefs_testingDose"
# LimeSurvey Field type: F
data[, 313] <- as.numeric(data[, 313])
attributes(data)$variable.labels[313] <- "[Als je XTC laat testen, weet je daarna precies wat er in je pil zit.Absoluut niet|Absoluut wel] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 313] <- factor(data[, 313], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[313] <- "testingAttBeliefs_testingAdulterants"
# LimeSurvey Field type: F
data[, 314] <- as.numeric(data[, 314])
attributes(data)$variable.labels[314] <- "[Als je XTC laat testen bij een testcentrum, dan kost dan . . .Niets: het is gratis|Veel geld] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 314] <- factor(data[, 314], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[314] <- "testingAttBeliefs_testingPrice"
# LimeSurvey Field type: F
data[, 315] <- as.numeric(data[, 315])
attributes(data)$variable.labels[315] <- "[Als je je XTC laat testen, wordt het doseren . . .Veel moeilijker|Veel makkelijker] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 315] <- factor(data[, 315], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[315] <- "testingAttBeliefs_helpsToDose"
# LimeSurvey Field type: F
data[, 316] <- as.numeric(data[, 316])
attributes(data)$variable.labels[316] <- "[Als je je XTC laat testen, kost dat je . . .Nooit een pil|Altijd minimaal een pil] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 316] <- factor(data[, 316], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[316] <- "testingAttBeliefs_losePill"
# LimeSurvey Field type: F
data[, 317] <- as.numeric(data[, 317])
attributes(data)$variable.labels[317] <- "[XTC laat testen bij een testcentrum is . . .Nooit anoniem|Altijd helemaal anoniem] 	Eerst een algemene aantal vragen over het laten testen van XTC.	Het gaat hier om wat je van testen denkt - als jij je XTC nog nooit hebt laten testen, geef dan aan wat je denkt. We zijn geïnteresseerd in jouw indrukken, niet om of iets goed of fout is."
data[, 317] <- factor(data[, 317], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[317] <- "testingAttBeliefs_anonimity"
# LimeSurvey Field type: F
data[, 318] <- as.numeric(data[, 318])
attributes(data)$variable.labels[318] <- "[Precies weten hoeveel milligram MDMA er in mijn XTC-pillen zit vind ik . . .Heel onprettig|Heel prettig] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 318] <- factor(data[, 318], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[318] <- "testingAttDesirable_knowDose"
# LimeSurvey Field type: F
data[, 319] <- as.numeric(data[, 319])
attributes(data)$variable.labels[319] <- "[Precies weten wat er in mijn XTC-pillen zit vind ik . . .Heel onprettig|Heel prettig] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 319] <- factor(data[, 319], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[319] <- "testingAttDesirable_knowAdulterates"
# LimeSurvey Field type: F
data[, 320] <- as.numeric(data[, 320])
attributes(data)$variable.labels[320] <- "[Als ik een pil kwijt ben als ik mijn XTC wil laten testen bij een testcentrum vind ik dat . . .Heel onprettig|Heel prettig] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 320] <- factor(data[, 320], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[320] <- "testingAttDesirable_costs"
# LimeSurvey Field type: F
data[, 321] <- as.numeric(data[, 321])
attributes(data)$variable.labels[321] <- "[Ik vind anonimiteit bij een XTC testcentrum . . .Heel onprettig|Heel prettig] Kun je nu aangeven wat jij zelf prettig vindt?"
data[, 321] <- factor(data[, 321], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[321] <- "testingAttDesirable_anonimity"
# LimeSurvey Field type: F
data[, 322] <- as.numeric(data[, 322])
attributes(data)$variable.labels[322] <- "[Mijn partner (vriendin of vriendin)Heel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 322] <- factor(data[, 322], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[322] <- "testingNormBeliefs_partner"
# LimeSurvey Field type: F
data[, 323] <- as.numeric(data[, 323])
attributes(data)$variable.labels[323] <- "[Mijn beste vrienden/vriendinnenHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 323] <- factor(data[, 323], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[323] <- "testingNormBeliefs_bestFriends"
# LimeSurvey Field type: F
data[, 324] <- as.numeric(data[, 324])
attributes(data)$variable.labels[324] <- "[De vrienden waarmee ik meestal XTC gebruikHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 324] <- factor(data[, 324], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[324] <- "testingNormBeliefs_xtcFriends"
# LimeSurvey Field type: F
data[, 325] <- as.numeric(data[, 325])
attributes(data)$variable.labels[325] <- "[Mijn andere vriendenHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 325] <- factor(data[, 325], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[325] <- "testingNormBeliefs_otherFriends"
# LimeSurvey Field type: F
data[, 326] <- as.numeric(data[, 326])
attributes(data)$variable.labels[326] <- "[De meeste mensen op een feestHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 326] <- factor(data[, 326], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[326] <- "testingNormBeliefs_partyPeople"
# LimeSurvey Field type: F
data[, 327] <- as.numeric(data[, 327])
attributes(data)$variable.labels[327] <- "[Mijn ouders/verzorgersHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 327] <- factor(data[, 327], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[327] <- "testingNormBeliefs_parents"
# LimeSurvey Field type: F
data[, 328] <- as.numeric(data[, 328])
attributes(data)$variable.labels[328] <- "[Mijn broertjes/zusjesHeel afkeurend|Heel goedkeurend] Hoe staan de mensen die je kent er tegenover als je je XTC laat testen bij een testcentrum?"
data[, 328] <- factor(data[, 328], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[328] <- "testingNormBeliefs_siblings"
# LimeSurvey Field type: F
data[, 329] <- as.numeric(data[, 329])
attributes(data)$variable.labels[329] <- "[Mijn partner (vriendin of vriendin)Heel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 329] <- factor(data[, 329], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[329] <- "testingNormMTC_partner"
# LimeSurvey Field type: F
data[, 330] <- as.numeric(data[, 330])
attributes(data)$variable.labels[330] <- "[Mijn beste vrienden/vriendinnenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 330] <- factor(data[, 330], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[330] <- "testingNormMTC_bestFriends"
# LimeSurvey Field type: F
data[, 331] <- as.numeric(data[, 331])
attributes(data)$variable.labels[331] <- "[De vrienden waarmee ik meestal XTC gebruikHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 331] <- factor(data[, 331], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[331] <- "testingNormMTC_xtcFriends"
# LimeSurvey Field type: F
data[, 332] <- as.numeric(data[, 332])
attributes(data)$variable.labels[332] <- "[Mijn andere vriendenHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 332] <- factor(data[, 332], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[332] <- "testingNormMTC_otherFriends"
# LimeSurvey Field type: F
data[, 333] <- as.numeric(data[, 333])
attributes(data)$variable.labels[333] <- "[De meeste mensen op een feestHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 333] <- factor(data[, 333], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[333] <- "testingNormMTC_partyPeople"
# LimeSurvey Field type: F
data[, 334] <- as.numeric(data[, 334])
attributes(data)$variable.labels[334] <- "[Mijn ouders/verzorgersHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 334] <- factor(data[, 334], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[334] <- "testingNormMTC_parents"
# LimeSurvey Field type: F
data[, 335] <- as.numeric(data[, 335])
attributes(data)$variable.labels[335] <- "[Mijn broertjes/zusjesHeel onbelangrijk|Heel belangrijk] Hoe belangrijk is voor jou de mening van de onderstaande personen met betrekking tot of jij je XTC laat testen?"
data[, 335] <- factor(data[, 335], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[335] <- "testingNormMTC_siblings"
# LimeSurvey Field type: F
data[, 336] <- as.numeric(data[, 336])
attributes(data)$variable.labels[336] <- "[Mijn partner (vriendin of vriendin) laat zijn/haar XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 336] <- factor(data[, 336], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[336] <- "testingDescrNorm_partner"
# LimeSurvey Field type: F
data[, 337] <- as.numeric(data[, 337])
attributes(data)$variable.labels[337] <- "[Mijn beste vrienden/vriendinnen laten hun XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 337] <- factor(data[, 337], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[337] <- "testingDescrNorm_bestFriends"
# LimeSurvey Field type: F
data[, 338] <- as.numeric(data[, 338])
attributes(data)$variable.labels[338] <- "[De vrienden waarmee ik meestal XTC gebruik laten hun XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 338] <- factor(data[, 338], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[338] <- "testingDescrNorm_xtcFriends"
# LimeSurvey Field type: F
data[, 339] <- as.numeric(data[, 339])
attributes(data)$variable.labels[339] <- "[Mijn andere vrienden laten hun XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 339] <- factor(data[, 339], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[339] <- "testingDescrNorm_otherFriends"
# LimeSurvey Field type: F
data[, 340] <- as.numeric(data[, 340])
attributes(data)$variable.labels[340] <- "[De meeste mensen op een feest laten hun XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 340] <- factor(data[, 340], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[340] <- "testingDescrNorm_partyPeople"
# LimeSurvey Field type: F
data[, 341] <- as.numeric(data[, 341])
attributes(data)$variable.labels[341] <- "[Mijn ouders/verzorgers laten hun XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 341] <- factor(data[, 341], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[341] <- "testingDescrNorm_parents"
# LimeSurvey Field type: F
data[, 342] <- as.numeric(data[, 342])
attributes(data)$variable.labels[342] <- "[Mijn broertjes/zusjes laten hun XTC . . .Nooit testen|Altijd testen] Laten deze mensen hun XTC testen bij een testcentrum, denk je?"
data[, 342] <- factor(data[, 342], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[342] <- "testingDescrNorm_siblings"
# LimeSurvey Field type: F
data[, 343] <- as.numeric(data[, 343])
attributes(data)$variable.labels[343] <- "[Ik weet waar ik mijn XTC kan laten testenNiet waar|Wel waar] Hoeveel weet jij over XTC testen, en hoe makkelijk is het voor jou?"
data[, 343] <- factor(data[, 343], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[343] <- "testingContrBeliefs_testCentreLocation"
# LimeSurvey Field type: F
data[, 344] <- as.numeric(data[, 344])
attributes(data)$variable.labels[344] <- "[Bij het testcentrum komen is voor mij . . .Heel moeilijk|Heel makkelijk] Hoeveel weet jij over XTC testen, en hoe makkelijk is het voor jou?"
data[, 344] <- factor(data[, 344], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[344] <- "testingContrBeliefs_locationTransport"
# LimeSurvey Field type: F
data[, 345] <- as.numeric(data[, 345])
attributes(data)$variable.labels[345] <- "[Ik ken de procedure voor het laten testen van XTCNiet waar|Wel waar] Hoeveel weet jij over XTC testen, en hoe makkelijk is het voor jou?"
data[, 345] <- factor(data[, 345], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[345] <- "testingContrBeliefs_testProcedure"
# LimeSurvey Field type: F
data[, 346] <- as.numeric(data[, 346])
attributes(data)$variable.labels[346] <- "[Het bezoeken van een testcentrum kost mij . . .Weinig tijd|Veel tijd] Hoeveel weet jij over XTC testen, en hoe makkelijk is het voor jou?"
data[, 346] <- factor(data[, 346], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[346] <- "testingContrBeliefs_costsTime"
# LimeSurvey Field type: F
data[, 347] <- as.numeric(data[, 347])
attributes(data)$variable.labels[347] <- "[Als ik XTC zou willen laten testen, dan zou dat lukken voordat ik ga gebruikenNiet waar|Wel waar] Hoeveel weet jij over XTC testen, en hoe makkelijk is het voor jou?"
data[, 347] <- factor(data[, 347], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[347] <- "testingContrBeliefs_timelyTesting"
# LimeSurvey Field type: F
data[, 348] <- as.numeric(data[, 348])
attributes(data)$variable.labels[348] <- "[Ik kan mijn XTC anoniem laten testenNiet waar|Wel waar] Hoeveel weet jij over XTC testen, en hoe makkelijk is het voor jou?"
data[, 348] <- factor(data[, 348], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[348] <- "testingContrBeliefs_anonymousTesting"
# LimeSurvey Field type: F
data[, 349] <- as.numeric(data[, 349])
attributes(data)$variable.labels[349] <- "[De XTC zelf laten testen bij een testcentrumHeel onbetrouwbaar|Heel betrouwbaar] Er zijn verschillende manieren om informatie te krijgen over wat er in je XTC pillen zit. Hoe betrouwbaar zijn die manieren volgens jou?"
data[, 349] <- factor(data[, 349], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[349] <- "testingTrustworthy_testCentre"
# LimeSurvey Field type: F
data[, 350] <- as.numeric(data[, 350])
attributes(data)$variable.labels[350] <- "[Een vriend(in) heeft de XTC laten testenHeel onbetrouwbaar|Heel betrouwbaar] Er zijn verschillende manieren om informatie te krijgen over wat er in je XTC pillen zit. Hoe betrouwbaar zijn die manieren volgens jou?"
data[, 350] <- factor(data[, 350], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[350] <- "testingTrustworthy_friendTestCentre"
# LimeSurvey Field type: F
data[, 351] <- as.numeric(data[, 351])
attributes(data)$variable.labels[351] <- "[Een dealer heeft de XTC laten testenHeel onbetrouwbaar|Heel betrouwbaar] Er zijn verschillende manieren om informatie te krijgen over wat er in je XTC pillen zit. Hoe betrouwbaar zijn die manieren volgens jou?"
data[, 351] <- factor(data[, 351], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[351] <- "testingTrustworthy_dealerTestCentre"
# LimeSurvey Field type: F
data[, 352] <- as.numeric(data[, 352])
attributes(data)$variable.labels[352] <- "[Vrienden vertellen de dosis op basis van hun ervaringen met die pillenHeel onbetrouwbaar|Heel betrouwbaar] Er zijn verschillende manieren om informatie te krijgen over wat er in je XTC pillen zit. Hoe betrouwbaar zijn die manieren volgens jou?"
data[, 352] <- factor(data[, 352], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[352] <- "testingTrustworthy_friendsExperience"
# LimeSurvey Field type: F
data[, 353] <- as.numeric(data[, 353])
attributes(data)$variable.labels[353] <- "[De pil opzoeken op PillReports.com (of een andere website)Heel onbetrouwbaar|Heel betrouwbaar] Er zijn verschillende manieren om informatie te krijgen over wat er in je XTC pillen zit. Hoe betrouwbaar zijn die manieren volgens jou?"
data[, 353] <- factor(data[, 353], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[353] <- "testingTrustworthy_pillReports"
# LimeSurvey Field type: F
data[, 354] <- as.numeric(data[, 354])
attributes(data)$variable.labels[354] <- "[Over de pillen overleggen op een online forum (bijvoorbeeld PartyFlock)Heel onbetrouwbaar|Heel betrouwbaar] Er zijn verschillende manieren om informatie te krijgen over wat er in je XTC pillen zit. Hoe betrouwbaar zijn die manieren volgens jou?"
data[, 354] <- factor(data[, 354], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[354] <- "testingTrustworthy_forum"
# LimeSurvey Field type: A
data[, 355] <- as.character(data[, 355])
attributes(data)$variable.labels[355] <- "Heel erg bedankt dat je deze vragen allemaal al hebt beantwoord! Je bent bijna klaar.	Zijn we belangrijke dingen vergeten te vragen? Of stonden er verkeerde vragen in? Moet de vragenlijst korter? Of juist langer?	Dit kun je op het einde van de vragenlijst aangeven, dan houden we er de volgende keer rekening mee!"
names(data)[355] <- "testngFeedbackPrompt"
# LimeSurvey Field type: F
data[, 356] <- as.numeric(data[, 356])
attributes(data)$variable.labels[356] <- "[Ik heb keus uit meerdere soorten XTC-pillen met verschillende doseringenAbsoluut niet waar|Absoluut waar] Hoe kom jij aan je XTC pillen, en hoeveel weet je over de dosis in jouw XTC pillen?"
data[, 356] <- factor(data[, 356], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[356] <- "doseControlBeliefs_choice"
# LimeSurvey Field type: F
data[, 357] <- as.numeric(data[, 357])
attributes(data)$variable.labels[357] <- "[Ik kan er makkelijk achterkomen hoeveel MDMA er in mijn XTC zitAbsoluut niet waar|Absoluut waar] Hoe kom jij aan je XTC pillen, en hoeveel weet je over de dosis in jouw XTC pillen?"
data[, 357] <- factor(data[, 357], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[357] <- "doseControlBeliefs_identifyDose"
# LimeSurvey Field type: F
data[, 358] <- as.numeric(data[, 358])
attributes(data)$variable.labels[358] <- "[Ik koop zelf mijn XTCAbsoluut niet waar|Absoluut waar] Hoe kom jij aan je XTC pillen, en hoeveel weet je over de dosis in jouw XTC pillen?"
data[, 358] <- factor(data[, 358], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[358] <- "doseControlBeliefs_buyOwn"
# LimeSurvey Field type: F
data[, 359] <- as.numeric(data[, 359])
attributes(data)$variable.labels[359] <- "[Ik weet hoeveel MDMA mijn XTC bevatAbsoluut niet waar|Absoluut waar] Hoe kom jij aan je XTC pillen, en hoeveel weet je over de dosis in jouw XTC pillen?"
data[, 359] <- factor(data[, 359], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[359] <- "doseControlBeliefs_knowDose"
# LimeSurvey Field type: F
data[, 360] <- as.numeric(data[, 360])
attributes(data)$variable.labels[360] <- "[Ik ben ervan op de hoogte hoeveel MDMA ik per keer gebruikAbsoluut niet waar|Absoluut waar] Hoe kom jij aan je XTC pillen, en hoeveel weet je over de dosis in jouw XTC pillen?"
data[, 360] <- factor(data[, 360], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[360] <- "doseControlBeliefs_knowIntensity"
# LimeSurvey Field type: F
data[, 361] <- as.numeric(data[, 361])
attributes(data)$variable.labels[361] <- "[Hoeveel ik meeneemHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 361] <- factor(data[, 361], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[361] <- "intensityCause_availSelf"
# LimeSurvey Field type: F
data[, 362] <- as.numeric(data[, 362])
attributes(data)$variable.labels[362] <- "[Hoeveel anderen meenemenHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 362] <- factor(data[, 362], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[362] <- "intensityCause_availOther"
# LimeSurvey Field type: F
data[, 363] <- as.numeric(data[, 363])
attributes(data)$variable.labels[363] <- "[Waar ik naartoe gaHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 363] <- factor(data[, 363], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[363] <- "intensityCause_location"
# LimeSurvey Field type: F
data[, 364] <- as.numeric(data[, 364])
attributes(data)$variable.labels[364] <- "[Wat ik verder gebruikHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 364] <- factor(data[, 364], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[364] <- "intensityCause_setting"
# LimeSurvey Field type: F
data[, 365] <- as.numeric(data[, 365])
attributes(data)$variable.labels[365] <- "[Hoe ik me voelHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 365] <- factor(data[, 365], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[365] <- "intensityCause_set"
# LimeSurvey Field type: F
data[, 366] <- as.numeric(data[, 366])
attributes(data)$variable.labels[366] <- "[Hoe sterk de pillen zijn/het poeder isHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 366] <- factor(data[, 366], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[366] <- "intensityCause_milligram"
# LimeSurvey Field type: F
data[, 367] <- as.numeric(data[, 367])
attributes(data)$variable.labels[367] <- "[Of ik de dag(en) na het gebruik vrij hebt of bijvoorbeeld moet werken/lerenHelemaal niet|Heel veel] 	Waar hangt het vanaf hoeveel XTC-pillen jij per keer neemt?"
data[, 367] <- factor(data[, 367], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[367] <- "intensityCause_nextDays"
# LimeSurvey Field type: A
data[, 368] <- as.character(data[, 368])
attributes(data)$variable.labels[368] <- "Voor sommige mensen hangt wat ze een hoge dosis vinden af van hoeveel ze wegen. Hoeveel weeg jij?"
data[, 368] <- factor(data[, 368], levels=c("noKg"),labels=c("Ik wil liever niet zeggen hoeveel ik weeg."))
names(data)[368] <- "weight"
# LimeSurvey Field type: F
data[, 369] <- as.numeric(data[, 369])
attributes(data)$variable.labels[369] <- "[Andere] Voor sommige mensen hangt wat ze een hoge dosis vinden af van hoeveel ze wegen. Hoeveel weeg jij?"
names(data)[369] <- "weight_other"
# LimeSurvey Field type: F
data[, 370] <- as.numeric(data[, 370])
attributes(data)$variable.labels[370] <- "Hoe sterk zijn de XTC pillen die jij meestal hebt?"
names(data)[370] <- "myPillDose"
# LimeSurvey Field type: F
data[, 371] <- as.numeric(data[, 371])
attributes(data)$variable.labels[371] <- "[Ik laat mijn XTC pillen testen bij de testservice] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 371] <- factor(data[, 371], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[371] <- "xtcDoseStrategy_testService"
# LimeSurvey Field type: F
data[, 372] <- as.numeric(data[, 372])
attributes(data)$variable.labels[372] <- "[Een vriend(in) laat onze XTC pillen testen bij de testservice] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 372] <- factor(data[, 372], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[372] <- "xtcDoseStrategy_friendTests"
# LimeSurvey Field type: F
data[, 373] <- as.numeric(data[, 373])
attributes(data)$variable.labels[373] <- "[Mijn dealer laat de XTC pillen testen bij de testservice] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 373] <- factor(data[, 373], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[373] <- "xtcDoseStrategy_dealer"
# LimeSurvey Field type: F
data[, 374] <- as.numeric(data[, 374])
attributes(data)$variable.labels[374] <- "[Mijn vrienden vertellen me de dosis op basis van hun ervaring met die pillen] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 374] <- factor(data[, 374], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[374] <- "xtcDoseStrategy_friendExperience"
# LimeSurvey Field type: F
data[, 375] <- as.numeric(data[, 375])
attributes(data)$variable.labels[375] <- "[Ik zoek mijn pillen op de pillreports.com (of een andere website)] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 375] <- factor(data[, 375], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[375] <- "xtcDoseStrategy_pillreports"
# LimeSurvey Field type: F
data[, 376] <- as.numeric(data[, 376])
attributes(data)$variable.labels[376] <- "[Ik overleg over mijn pillen met vrienden op een online forum (bijvoorbeeld PartyFlock)] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 376] <- factor(data[, 376], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[376] <- "xtcDoseStrategy_onlineForum"
# LimeSurvey Field type: F
data[, 377] <- as.numeric(data[, 377])
attributes(data)$variable.labels[377] <- "[Geen van deze opties: ik kom er meestal niet achter] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
data[, 377] <- factor(data[, 377], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[377] <- "xtcDoseStrategy_noStrategy"
# LimeSurvey Field type: A
data[, 378] <- as.character(data[, 378])
attributes(data)$variable.labels[378] <- "[Andere] Hoe kom jij er achter hoe sterk je XTC pillen zijn (dus, wat de dosis MDMA in je pillen is)?"
names(data)[378] <- "xtcDoseStrategy_other"
# LimeSurvey Field type: F
data[, 379] <- as.numeric(data[, 379])
attributes(data)$variable.labels[379] <- "[Ik heb helemaal geen gewenning ontwikkeld|Ik heb heel veel gewenning ontwikkeld] Het is mogelijk dat als je vaker XTC of MDMA gebruikt, de effecten bij dezelfde dosis afnemen. Dat wordt gewenning of tolerantie genoemd."
data[, 379] <- factor(data[, 379], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[379] <- "highDoseTolerance_tolerance"
# LimeSurvey Field type: F
data[, 380] <- as.numeric(data[, 380])
attributes(data)$variable.labels[380] <- "[Ik vind dat . . .Heel erg goedkoop|Heel erg duur] Stel je voor dat je vanaf morgen in heel Nederland XTC-pillen zou kunnen laten testen, en dat dit altijd precies € {randomTestingPrice},- zou kosten. Wat zou je daarvan vinden?"
data[, 380] <- factor(data[, 380], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[380] <- "testingPriceWilling_findExpensive"
# LimeSurvey Field type: F
data[, 381] <- as.numeric(data[, 381])
attributes(data)$variable.labels[381] <- "[Ik zou dan mijn XTC-pillen . . .Nooit laten testen|Altijd laten testen] Stel je voor dat je vanaf morgen in heel Nederland XTC-pillen zou kunnen laten testen, en dat dit altijd precies € {randomTestingPrice},- zou kosten. Wat zou je daarvan vinden?"
data[, 381] <- factor(data[, 381], levels=c(1,2,3,4,5,6,7),labels=c("〈〈〈", "〈〈", "〈", "|", "〉", "〉〉", "〉〉〉"))
names(data)[381] <- "testingPriceWilling_wouldTest"
# LimeSurvey Field type: F
data[, 382] <- as.numeric(data[, 382])
attributes(data)$variable.labels[382] <- "Stel dat je XTC-pillen hebt en dat je overweegt die te laten testen bij een test-centrum. Hoe ver ben jij bereid te reizen naar een testcentrum?"
names(data)[382] <- "testingTravelling"
# LimeSurvey Field type: A
data[, 383] <- as.character(data[, 383])
attributes(data)$variable.labels[383] <- "Wat is je geslacht (gender)?"
data[, 383] <- factor(data[, 383], levels=c("NA","male","femal","other"),labels=c("Ik wil deze vraag niet beantwoorden", "Man", "Vrouw", "Anders (bijvoorbeeld genderqueer)"))
names(data)[383] <- "gender"
# LimeSurvey Field type: F
data[, 384] <- as.numeric(data[, 384])
attributes(data)$variable.labels[384] <- "Hoe oud ben je?"
names(data)[384] <- "age"
# LimeSurvey Field type: F
data[, 385] <- as.numeric(data[, 385])
attributes(data)$variable.labels[385] <- "Heb je een baan?"
data[, 385] <- factor(data[, 385], levels=c(1,2,3),labels=c("Ik wil deze vraag niet beantwoorden", "Ja, ik heb een baan, bijbaan, of eigen bedrijf", "Nee, ik heb geen baan, bijbaan, of eigen bedrijf"))
names(data)[385] <- "hasJob"
# LimeSurvey Field type: F
data[, 386] <- as.numeric(data[, 386])
attributes(data)$variable.labels[386] <- "Hoeveel uur per week besteed je aan je baan, bijbaan, of eigen bedrijf?"
names(data)[386] <- "jobHours"
# LimeSurvey Field type: F
data[, 387] <- as.numeric(data[, 387])
attributes(data)$variable.labels[387] <- "Volg je op dit moment een studie, en zoja, waar?"
data[, 387] <- factor(data[, 387], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Nee, ik volg op dit moment geen studie", "Ja, ik doe VMBO (vroeger MAVO)", "Ja, ik doe HAVO", "Ja, ik doe VWO", "Ja, ik doe MBO (ROC)", "Ja, ik doe HBO (hogeschool)", "Ja, ik doe WO (universiteit)"))
names(data)[387] <- "currentEducation"
# LimeSurvey Field type: F
data[, 388] <- as.numeric(data[, 388])
attributes(data)$variable.labels[388] <- "Wat is de hoogste opleiding die je hebt voltooid?"
data[, 388] <- factor(data[, 388], levels=c(1,2,3,4,5,6,7,8),labels=c("Ik wil deze vraag niet beantwoorden", "Basisschool", "VMBO (vroeger MAVO)", "HAVO", "VWO", "MBO (ROC)", "HBO (hogeschool)", "WO (universiteit)"))
names(data)[388] <- "prevEducation"
# LimeSurvey Field type: A
data[, 389] <- as.character(data[, 389])
attributes(data)$variable.labels[389] <- "In welk land woon je?"
data[, 389] <- factor(data[, 389], levels=c("NONE","NL","BE"),labels=c("Wil ik niet zeggen", "Nederland", "Belgie"))
names(data)[389] <- "country"
# LimeSurvey Field type: A
data[, 390] <- as.character(data[, 390])
attributes(data)$variable.labels[390] <- "[Andere] In welk land woon je?"
names(data)[390] <- "country_other"
# LimeSurvey Field type: F
data[, 391] <- as.numeric(data[, 391])
attributes(data)$variable.labels[391] <- "Om een grove indruk te krijgen van waar de Party Panel deelnemers wonen, is het handig als we de eerste twee codes van je postcode hebben. Wat zijn de eerste twee cijfers van jouw postcode?"
names(data)[391] <- "postcode"
# LimeSurvey Field type: A
data[, 392] <- as.character(data[, 392])
attributes(data)$variable.labels[392] <- "Je Party Panel Code	Party Panel is een panelstudie: dat betekent dat we periodiek een nieuwe vragenlijst online plaatsen (zie http://partypanel.nl?info voor meer informatie). We proberen dan informatie van dezelfde mensen aan elkaar te koppelen. De enige manier waarop dat kan en we tegelijkertijd absoluut zeker weten dat je anoniem blijft, is met een persoonlijke code.	Je kunt je persoonlijke code genereren op http://partypanel.nl?code, en die dan hier invullen.	Met deze code van 6 tekens (2 letters, 2 cijfers, 2 letters) blijf je anoniem, zonder dat je zelf iets hoeft te onthouden."
names(data)[392] <- "partyPanelCode"
# LimeSurvey Field type: A
data[, 393] <- as.character(data[, 393])
attributes(data)$variable.labels[393] <- "Heb je nog ideeen voor de volgende Party Panel? Of heb je nog andere tips of ideeen die je ons wil meegeven?	Die kun je hieronder opgeven. Deze worden bij je data opgeslagen, en dus anoniem - we kunnen geen contact met je opnemen. Als je een suggestie hebt en graag een reactie wil of als je een vraag hebt kun je het formulier gebruiken op http://partypanel.nl/?contact."
names(data)[393] <- "suggestions"
# LimeSurvey Field type: F
data[, 394] <- as.numeric(data[, 394])
attributes(data)$variable.labels[394] <- "[Ik heb de vragenlijst ingevuld om hem te testen, of gewoon om eens te kijken naar het soort vragen, en mijn antwoord zijn dus niet serieus.] Heb je deze vragenlijst niet serieus ingevuld, bijvoorbeeld als test of gewoon om eens te kijken wat voor vragen werden gesteld? Dan kun je dat hier aangeven. Je data worden dan niet gebruikt in de analyses."
data[, 394] <- factor(data[, 394], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[394] <- "testEntry_test"
# LimeSurvey Field type: A
data[, 395] <- as.character(data[, 395])
attributes(data)$variable.labels[395] <- "Als je op \'Insturen\' klikt, wordt je doorgestuurd naar http://partypanel.nl/?reg waar je je email adres kunt achterlaten.	We mailen je dan als de resultaten binnen zijn en vertellen we je wat we er mee gaan doen. Bovendien mailen we je als in januari de volgende Party Panel vragenlijst klaar is.	Heb je vrienden die ook uitgaan? Klik hier om de link naar Party Panel te delen op Facebook!	Ook als je je niet in wil schrijven voor Party Panel zijn we je heel erg dankbaar! Door deze vragenlijst in te vullen heb je nu al geholpen het Nederlandse uitgaansleven te verbeteren!"
names(data)[395] <- "endingFinal"
# LimeSurvey Field type: 
data[, 396] <- as.character(data[, 396])
attributes(data)$variable.labels[396] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 397] <- as.character(data[, 397])
attributes(data)$variable.labels[397] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 398] <- as.character(data[, 398])
attributes(data)$variable.labels[398] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 399] <- as.character(data[, 399])
attributes(data)$variable.labels[399] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 400] <- as.character(data[, 400])
attributes(data)$variable.labels[400] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 401] <- as.character(data[, 401])
attributes(data)$variable.labels[401] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 402] <- as.character(data[, 402])
attributes(data)$variable.labels[402] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 403] <- as.character(data[, 403])
attributes(data)$variable.labels[403] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 404] <- as.character(data[, 404])
attributes(data)$variable.labels[404] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 405] <- as.character(data[, 405])
attributes(data)$variable.labels[405] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 406] <- as.character(data[, 406])
attributes(data)$variable.labels[406] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 407] <- as.character(data[, 407])
attributes(data)$variable.labels[407] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 408] <- as.character(data[, 408])
attributes(data)$variable.labels[408] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 409] <- as.character(data[, 409])
attributes(data)$variable.labels[409] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 410] <- as.character(data[, 410])
attributes(data)$variable.labels[410] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 411] <- as.character(data[, 411])
attributes(data)$variable.labels[411] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 412] <- as.character(data[, 412])
attributes(data)$variable.labels[412] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 413] <- as.character(data[, 413])
attributes(data)$variable.labels[413] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 414] <- as.character(data[, 414])
attributes(data)$variable.labels[414] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 415] <- as.character(data[, 415])
attributes(data)$variable.labels[415] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 416] <- as.character(data[, 416])
attributes(data)$variable.labels[416] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 417] <- as.character(data[, 417])
attributes(data)$variable.labels[417] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 418] <- as.character(data[, 418])
attributes(data)$variable.labels[418] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 419] <- as.character(data[, 419])
attributes(data)$variable.labels[419] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 420] <- as.character(data[, 420])
attributes(data)$variable.labels[420] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 421] <- as.character(data[, 421])
attributes(data)$variable.labels[421] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 422] <- as.character(data[, 422])
attributes(data)$variable.labels[422] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 423] <- as.character(data[, 423])
attributes(data)$variable.labels[423] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 424] <- as.character(data[, 424])
attributes(data)$variable.labels[424] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 425] <- as.character(data[, 425])
attributes(data)$variable.labels[425] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 426] <- as.character(data[, 426])
attributes(data)$variable.labels[426] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 427] <- as.character(data[, 427])
attributes(data)$variable.labels[427] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 428] <- as.character(data[, 428])
attributes(data)$variable.labels[428] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 429] <- as.character(data[, 429])
attributes(data)$variable.labels[429] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 430] <- as.character(data[, 430])
attributes(data)$variable.labels[430] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 431] <- as.character(data[, 431])
attributes(data)$variable.labels[431] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 432] <- as.character(data[, 432])
attributes(data)$variable.labels[432] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 433] <- as.character(data[, 433])
attributes(data)$variable.labels[433] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 434] <- as.character(data[, 434])
attributes(data)$variable.labels[434] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 435] <- as.character(data[, 435])
attributes(data)$variable.labels[435] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 436] <- as.character(data[, 436])
attributes(data)$variable.labels[436] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 437] <- as.character(data[, 437])
attributes(data)$variable.labels[437] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 438] <- as.character(data[, 438])
attributes(data)$variable.labels[438] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 439] <- as.character(data[, 439])
attributes(data)$variable.labels[439] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 440] <- as.character(data[, 440])
attributes(data)$variable.labels[440] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 441] <- as.character(data[, 441])
attributes(data)$variable.labels[441] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 442] <- as.character(data[, 442])
attributes(data)$variable.labels[442] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 443] <- as.character(data[, 443])
attributes(data)$variable.labels[443] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 444] <- as.character(data[, 444])
attributes(data)$variable.labels[444] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 445] <- as.character(data[, 445])
attributes(data)$variable.labels[445] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 446] <- as.character(data[, 446])
attributes(data)$variable.labels[446] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 447] <- as.character(data[, 447])
attributes(data)$variable.labels[447] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 448] <- as.character(data[, 448])
attributes(data)$variable.labels[448] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 449] <- as.character(data[, 449])
attributes(data)$variable.labels[449] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 450] <- as.character(data[, 450])
attributes(data)$variable.labels[450] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 451] <- as.character(data[, 451])
attributes(data)$variable.labels[451] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 452] <- as.character(data[, 452])
attributes(data)$variable.labels[452] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 453] <- as.character(data[, 453])
attributes(data)$variable.labels[453] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 454] <- as.character(data[, 454])
attributes(data)$variable.labels[454] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 455] <- as.character(data[, 455])
attributes(data)$variable.labels[455] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 456] <- as.character(data[, 456])
attributes(data)$variable.labels[456] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 457] <- as.character(data[, 457])
attributes(data)$variable.labels[457] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 458] <- as.character(data[, 458])
attributes(data)$variable.labels[458] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 459] <- as.character(data[, 459])
attributes(data)$variable.labels[459] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 460] <- as.character(data[, 460])
attributes(data)$variable.labels[460] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 461] <- as.character(data[, 461])
attributes(data)$variable.labels[461] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 462] <- as.character(data[, 462])
attributes(data)$variable.labels[462] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 463] <- as.character(data[, 463])
attributes(data)$variable.labels[463] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 464] <- as.character(data[, 464])
attributes(data)$variable.labels[464] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 465] <- as.character(data[, 465])
attributes(data)$variable.labels[465] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 466] <- as.character(data[, 466])
attributes(data)$variable.labels[466] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 467] <- as.character(data[, 467])
attributes(data)$variable.labels[467] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 468] <- as.character(data[, 468])
attributes(data)$variable.labels[468] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 469] <- as.character(data[, 469])
attributes(data)$variable.labels[469] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 470] <- as.character(data[, 470])
attributes(data)$variable.labels[470] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 471] <- as.character(data[, 471])
attributes(data)$variable.labels[471] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 472] <- as.character(data[, 472])
attributes(data)$variable.labels[472] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 473] <- as.character(data[, 473])
attributes(data)$variable.labels[473] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 474] <- as.character(data[, 474])
attributes(data)$variable.labels[474] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 475] <- as.character(data[, 475])
attributes(data)$variable.labels[475] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 476] <- as.character(data[, 476])
attributes(data)$variable.labels[476] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 477] <- as.character(data[, 477])
attributes(data)$variable.labels[477] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 478] <- as.character(data[, 478])
attributes(data)$variable.labels[478] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 479] <- as.character(data[, 479])
attributes(data)$variable.labels[479] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 480] <- as.character(data[, 480])
attributes(data)$variable.labels[480] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 481] <- as.character(data[, 481])
attributes(data)$variable.labels[481] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 482] <- as.character(data[, 482])
attributes(data)$variable.labels[482] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 483] <- as.character(data[, 483])
attributes(data)$variable.labels[483] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 484] <- as.character(data[, 484])
attributes(data)$variable.labels[484] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 485] <- as.character(data[, 485])
attributes(data)$variable.labels[485] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 486] <- as.character(data[, 486])
attributes(data)$variable.labels[486] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 487] <- as.character(data[, 487])
attributes(data)$variable.labels[487] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 488] <- as.character(data[, 488])
attributes(data)$variable.labels[488] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 489] <- as.character(data[, 489])
attributes(data)$variable.labels[489] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 490] <- as.character(data[, 490])
attributes(data)$variable.labels[490] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 491] <- as.character(data[, 491])
attributes(data)$variable.labels[491] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 492] <- as.character(data[, 492])
attributes(data)$variable.labels[492] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 493] <- as.character(data[, 493])
attributes(data)$variable.labels[493] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 494] <- as.character(data[, 494])
attributes(data)$variable.labels[494] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 495] <- as.character(data[, 495])
attributes(data)$variable.labels[495] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 496] <- as.character(data[, 496])
attributes(data)$variable.labels[496] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 497] <- as.character(data[, 497])
attributes(data)$variable.labels[497] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 498] <- as.character(data[, 498])
attributes(data)$variable.labels[498] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 499] <- as.character(data[, 499])
attributes(data)$variable.labels[499] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 500] <- as.character(data[, 500])
attributes(data)$variable.labels[500] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 501] <- as.character(data[, 501])
attributes(data)$variable.labels[501] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 502] <- as.character(data[, 502])
attributes(data)$variable.labels[502] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 503] <- as.character(data[, 503])
attributes(data)$variable.labels[503] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 504] <- as.character(data[, 504])
attributes(data)$variable.labels[504] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 505] <- as.character(data[, 505])
attributes(data)$variable.labels[505] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 506] <- as.character(data[, 506])
attributes(data)$variable.labels[506] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 507] <- as.character(data[, 507])
attributes(data)$variable.labels[507] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 508] <- as.character(data[, 508])
attributes(data)$variable.labels[508] <- ""
#sql_name not set
