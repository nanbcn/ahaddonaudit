local addonName, ns = ...

local viewerData = {
    ["líder"] = 18975,
    ["evilpaín"] = 8689,
    ["crissaegrim"] = 4705,
    ["chupete"] = 4578,
    ["pájara"] = 4469,
    ["xupetesuazo"] = 4405,
    ["zykar"] = 4405,
    ["nexxuz"] = 3608,
    ["doñaconcha"] = 3159,
    ["déss"] = 3140,
    ["borgun"] = 2985,
    ["calimoxo"] = 2735,
    ["kzo"] = 2512,
    ["weli"] = 2169,
    ["foyeti"] = 2169,
    ["andersitavip"] = 1597,
    ["megabombón"] = 1241,
    ["uups"] = 1210,
    ["elureon"] = 1210,
    ["poppendo"] = 791,
    ["wipehype"] = 760,
    ["quemazo"] = 760,
    ["xguiry"] = 760,
    ["ñakis"] = 744,
    ["tanizen"] = 697,
    ["edac"] = 666,
    ["extocineta"] = 615,
    ["kalathras"] = 585,
    ["abandonedd"] = 579,
    ["mayichi"] = 503,
    ["allioli"] = 500,
    ["cabolin"] = 439,
    ["elojoninjahc"] = 437,
    ["barbesita"] = 437,
    ["elprstamista"] = 410,
    ["pochólo"] = 386,
    ["xavito"] = 375,
    ["gragasbujara"] = 373,
    ["arbmeis"] = 366,
    ["juanquest"] = 341,
    ["manteconsha"] = 299,
    ["webito"] = 251,
    ["elisawaves"] = 249,
    ["alimentación"] = 241,
    ["dragonnegro"] = 241,
    ["laxxuz"] = 234,
    ["laxxwz"] = 234,
    ["todasmienten"] = 228,
    ["todaasmientn"] = 228,
    ["searnyox"] = 222,
    ["cojeburras"] = 218,
    ["ceitordep"] = 218,
    ["ceitor"] = 218,
    ["alheco"] = 215,
    ["barbastres"] = 178,
    ["vaga"] = 172,
    ["deowarro"] = 158,
    ["fordlobo"] = 157,
    ["candelfa"] = 153,
    ["zhotanthree"] = 128,
    ["apowow"] = 126,
    ["biodesdecero"] = 122,
    ["chowdeerst"] = 118,
    ["enjoyfenta"] = 112,
    ["sephibro"] = 108,
    ["sephipro"] = 108,
    ["niñarata"] = 101,
    ["vaperdemelon"] = 87,
    ["cyanewow"] = 83,
    ["cyanedos"] = 83,
    ["tookii"] = 82,
    ["tookiitwo"] = 82,
    ["insanesqt"] = 82,
    ["anixsu"] = 77,
    ["djalminha"] = 73,
    ["djalminhaa"] = 73,
    ["bladecito"] = 71,
    ["sgtocharli"] = 69,
    ["capitán"] = 68,
    ["twcheffius"] = 67,
    ["diabloemt"] = 52,
    ["piessucios"] = 45,
    ["kÿ"] = 44,
    ["paellero"] = 43,
    ["elowiin"] = 37,
    ["arleo"] = 33,
    ["emilioslim"] = 29,
    ["mitusina"] = 28,
    ["medroidtwo"] = 26,
    ["darkrell"] = 25,
    ["eini"] = 25,
    ["masyebra"] = 20,
    ["fliyin"] = 20,
    ["papafrita"] = 19,
    ["budcatluchon"] = 18,
    ["budcat"] = 18,
    ["zheilani"] = 18,
    ["masillas"] = 17,
    ["rastibulis"] = 17,
    ["morboson"] = 14,
    ["yulirojas"] = 12,
    ["xnasa"] = 8,
    ["elcyrax"] = 8,
    ["elcyráx"] = 8,
    ["osgodudu"] = 8,
    ["perikerilla"] = 7,
    ["xomegaa"] = 6,
    ["avarisocio"] = 2,
    ["yiyii"] = 1,
    ["falcony"] = 1,
    ["cuatrodos"] = 1,
    ["wolframito"] = 0,
    ["perikilla"] = 0,
    ["magonesa"] = 0,
    ["zeldarl"] = 0,
    ["peritapop"] = 0,
    ["jimrising"] = 0,
    ["pancetolla"] = 0,
    ["elmagoluis"] = 0,
    ["chikitonoble"] = 0,
    ["chowdeer"] = 0,
    ["lavalkiriaii"] = 0,
    ["juanleblanc"] = 0,
    ["potaje"] = 0,
    ["imcheffius"] = 0,
    ["kzz"] = 0,
    ["lunita"] = 0,
    ["samiwi"] = 0,
    ["poppyenfour"] = 0,
    ["etryh"] = 0,
    ["torrijas"] = 0,
    ["machacanovis"] = 0,
    ["raevencca"] = 0,
    ["cochinerios"] = 0,
    ["odiiwii"] = 0,
    ["moconegro"] = 0,
    ["sammwyii"] = 0,
    ["voyadecirlo"] = 0,
    ["jackfyah"] = 0,
    ["mayin"] = 0,
    ["abril"] = 0,
    ["mäsyebra"] = 0,
    ["healurónico"] = 0,
    ["pusydon"] = 0,
    ["novï"] = 0,
    ["ovonai"] = 0,
    ["lilpapaya"] = 0,
    ["poppyeniv"] = 0,
    ["mamañema"] = 0,
    ["pochipoom"] = 0,
    ["chabela"] = 0,
    ["toluxx"] = 0,
    ["xixuxas"] = 0,
    ["alguacil"] = 0,
    ["rivotrill"] = 0,
    ["ðadgamer"] = 0,
    ["phoby"] = 0,
    ["pájaro"] = 0,
    ["renrize"] = 0,
    ["catacroquer"] = 0,
    ["medroidx"] = 0,
    ["moyorz"] = 0,
    ["vyktor"] = 0,
    ["deowasd"] = 0,
    ["manteconcha"] = 0,
    ["caravergon"] = 0,
    ["zthefocusz"] = 0,
    ["andarieli"] = 0,
    ["pancetilla"] = 0,
    ["miichiwi"] = 0,
    ["osgorath"] = 0,
    ["kevinuwu"] = 0,
    ["markush"] = 0,
    ["sutan"] = 0,
    ["otrobrujillo"] = 0,
    ["sajonarco"] = 0,
    ["muchamiel"] = 0,
    ["patosy"] = 0,
    ["sayho"] = 0,
    ["pilavamigo"] = 0,
    ["kalakeño"] = 0,
    ["minidukesita"] = 0,
    ["meindini"] = 0,
    ["evanael"] = 0,
    ["kitoh"] = 0,
    ["lemboseis"] = 0,
    ["danielzoom"] = 0,
    ["nancla"] = 0,
    ["choniwela"] = 0,
    ["dondegentes"] = 0,
    ["mocotriste"] = 0,
    ["panry"] = 0,
    ["elvirayuki"] = 0,
    ["chowdeerstt"] = 0,
    ["corderita"] = 0,
    ["safoco"] = 0,
    ["lunariavieja"] = 0,
    ["whiteküm"] = 0,
    ["blastinhos"] = 0,
    ["farlopérez"] = 0,
    ["trakasnofear"] = 0,
    ["reve"] = 0,
    ["taponcito"] = 0,
    ["smashdota"] = 0,
    ["tánkcido"] = 0,
    ["wyccan"] = 0,
    ["alanitaa"] = 0,
    ["ikercasillas"] = 0,
    ["randomnup"] = 0,
    ["miguel"] = 0,
    ["mequedecalva"] = 0,
    ["majinkuu"] = 0,
    ["visillo"] = 0,
    ["caderita"] = 0,
    ["suzyroxx"] = 0,
    ["vyrnal"] = 0,
    ["hôls"] = 0,
    ["ocelote"] = 0,
    ["megalia"] = 0,
    ["sharpeyezz"] = 0,
    ["ratonio"] = 0,
    ["peritapotter"] = 0,
    ["goldenw"] = 0,
    ["zarcort"] = 0,
    ["quiquito"] = 0,
    ["coletitrans"] = 0,
    ["zhoeyth"] = 0,
    ["melandryu"] = 0,
    ["juanlenegre"] = 0,
    ["ángeles"] = 0,
    ["élcyrax"] = 0,
    ["strydee"] = 0,
    ["elfomao"] = 0,
    ["bigmayo"] = 0,
    ["mitu"] = 0,
    ["sekox"] = 0,
    ["piitagoras"] = 0,
    ["nevihijo"] = 0,
    ["hotgg"] = 0,
    ["friguin"] = 0,
    ["wolfangkill"] = 0,
    ["lüh"] = 0,
    ["anciana"] = 0,
    ["hecty"] = 0,
    ["mimarido"] = 0,
    ["hawnk"] = 0,
    ["grekko"] = 0,
    ["kuraleks"] = 0,
    ["recuerdop"] = 0,
    ["katthi"] = 0,
    ["martito"] = 0,
    ["carpo"] = 0,
    ["yirak"] = 0,
    ["ronieseis"] = 0,
    ["accamama"] = 0,
    ["byrabas"] = 0,
    ["imcubalitro"] = 0,
    ["chumbi"] = 0,
    ["crowerone"] = 0,
    ["mulletmaster"] = 0,
    ["elychustas"] = 0,
    ["paullexd"] = 0,
    ["wachinanii"] = 0,
    ["empalasink"] = 0,
    ["ayaguasko"] = 0,
    ["patateira"] = 0,
    ["rubitaxix"] = 0,
    ["noconfío"] = 0,
    ["nevibastardo"] = 0,
    ["segaroamego"] = 0,
    ["elurent"] = 0,
    ["parazmor"] = 0,
    ["sayurit"] = 0,
    ["atlasreal"] = 0,
    ["nathrim"] = 0,
    ["norehh"] = 0,
    ["bocata"] = 0,
    ["joanlaporta"] = 0,
    ["sweetceci"] = 0,
    ["follagor"] = 0,
    ["segárro"] = 0,
    ["palatricio"] = 0,
    ["feelink"] = 0,
    ["javaa"] = 0,
    ["arycer"] = 0,
    ["chorizitos"] = 0,
    ["elwasabitm"] = 0,
    ["lunariabuela"] = 0,
    ["danikongi"] = 0,
    ["gnomasmuerte"] = 0,
    ["suzyroxxii"] = 0,
    ["jimmyfumi"] = 0,
    ["mugrerios"] = 0,
    ["danikongigg"] = 0,
    ["lavalkiria"] = 0,
    ["bigotudito"] = 0,
    ["nanunicorn"] = 0,
    ["renegado"] = 0,
    ["neptunohc"] = 0,
    ["parlante"] = 0,
    ["zhotantwo"] = 0,
    ["tormentitas"] = 0,
    ["dodø"] = 0,
    ["disstrez"] = 0,
    ["estiala"] = 0,
    ["misrra"] = 0,
    ["folladita"] = 0,
    ["sekiam"] = 0,
    ["vantias"] = 0,
    ["wolfangkiler"] = 0,
    ["zoeyth"] = 0,
    ["melocotón"] = 0,
    ["poligoneira"] = 0,
    ["jonnya"] = 0,
    ["alioli"] = 0,
    ["elenomo"] = 0,
    ["fentalover"] = 0,
    ["turbomomium"] = 0,
    ["andiie"] = 0,
    ["elmagolozo"] = 0,
    ["theelfzztwo"] = 0,
    ["flakkitoo"] = 0,
    ["nomoriréhoy"] = 0,
    ["pipipupi"] = 0,
    ["gatitrans"] = 0,
    ["feeckz"] = 0,
    ["traain"] = 0,
    ["candewow"] = 0,
    ["mariasoledad"] = 0,
    ["elpapitanktv"] = 0,
    ["popotas"] = 0,

    ["reverysbbl"] = 28,
    ["selmi"] = 19,
    ["joeymuscles"] = 52,
    ["mhyochi"] = 551,
    ["beastyqt"] = 757,
    ["yellowflashg"] = 7,
    ["pocketbell"] = 11,
    ["takenote"] = 141,
    ["bonkeroji"] = 455,
    ["gravehunt"] = 74,
    ["crayoneat"] = 240,
    ["notlikethis"] = 14,
    ["stepahmpy"] = 2352,
    ["juddmon"] = 927,
    ["vthevictim"] = 76,
    ["hottedmon"] = 173,
    ["basebowzo"] = 53,
    ["meloncat"] = 187,
    ["clamclapper"] = 1,
    ["itmejpbank"] = 1183,
    ["gunnartank"] = 296,
    ["saunagollum"] = 47,
    ["cinnamonroll"] = 1,
    ["bislan"] = 238,
    ["neekomelee"] = 317,
    ["derekmac"] = 650,
    ["deadjohnvii"] = 138,
    ["anboni"] = 69,
    ["crix"] = 36,
    ["alfieheals"] = 271,
    ["wagwand"] = 1,
    ["laurenurgirl"] = 5,
    ["ebontwo"] = 20,
    ["kameu"] = 51,
    ["chelb"] = 14,
    ["callbox"] = 11,
    ["droghiere"] = 30,
    ["mccrogue"] = 1959,
    ["snumootwo"] = 765,
    ["triumphantez"] = 87,
    ["driixtwo"] = 55,
    ["ventor"] = 1,
    ["gizmok"] = 1,
    ["whaazzbank"] = 244,
    ["pint"] = 368,
    ["realsodabank"] = 178,
    ["bingbongfyl"] = 243,
    ["jaygriff"] = 1004,
    ["larxio"] = 263,
    ["syrupagain"] = 41,
    ["smollymon"] = 560,
    ["nidasman"] = 161,
    ["immadnêss"] = 72,
    ["fragnance"] = 453,
    ["chessmove"] = 40,
    ["britt"] = 5,
    ["xzane"] = 10,
    ["larxia"] = 263,
    ["wisetauren"] = 1,
    ["swiftytotem"] = 315,
    ["igodie"] = 81,
    ["fangdomsneak"] = 37,
    ["hornwood"] = 2252,
    ["betwithbeth"] = 66,
    ["tazleeto"] = 11,
    ["tooca"] = 13,
    ["zapla"] = 423,
    ["musashii"] = 1,
    ["alies"] = 693,
    ["softpawz"] = 436,
    ["effiez"] = 63,
    ["gentlegiant"] = 11,
    ["patlistar"] = 113,
    ["swagdudeguy"] = 1,
    ["seanic"] = 257,
    ["rivornith"] = 112,
    ["rengawrtwo"] = 228,
    ["patsmith"] = 1,
    ["vampthony"] = 528,
    ["mewnfare"] = 223,
    ["dcsamoorah"] = 5,
    ["bnans"] = 423,
    ["apollolol"] = 321,
    ["zipps"] = 15,
    ["vondilldo"] = 11,
    ["angelaoreoo"] = 378,
    ["sykkunoe"] = 4091,
    ["mes"] = 220,
    ["kerdul"] = 8,
    ["rawkus"] = 1,
    ["dakata"] = 46,
    ["jaeroze"] = 85,
    ["sevkanmandon"] = 187,
    ["bigskenger"] = 550,
    ["giftedsubs"] = 56,
    ["boschy"] = 149,
    ["gregomage"] = 10,
    ["cramerhoof"] = 27,
    ["nohitjerome"] = 63,
    ["svennossmage"] = 565,
    ["sgtpeppertv"] = 9,
    ["metashi"] = 3724,
    ["jeely"] = 77,
    ["jujukins"] = 928,
    ["joeexotics"] = 565,
    ["onlybox"] = 260,
    ["lewislastone"] = 306,
    ["tjna"] = 1,
    ["cornsnooters"] = 1689,
    ["sadcat"] = 48,
    ["smitkit"] = 834,
    ["portalzz"] = 1,
    ["pokemonn"] = 2012,
    ["peanutthekid"] = 124,
    ["anniefuchsia"] = 2713,
    ["pilavpower"] = 2184,
    ["dontdying"] = 8,
    ["mamafae"] = 284,
    ["junbi"] = 1,
    ["muchorcs"] = 92,
    ["mikamonlight"] = 610,
    ["beekeeper"] = 830,
    ["triumphantmf"] = 87,
    ["mancosix"] = 122,
    ["rpr"] = 812,
    ["ahmpydown"] = 2352,
    ["gingizf"] = 2555,
    ["johan"] = 231,
    ["retautwo"] = 10,
    ["spookycgi"] = 1,
    ["hiimjason"] = 8054,
    ["moogeta"] = 383,
    ["code"] = 187,
    ["emclol"] = 1,
    ["mommatuna"] = 1,
    ["puncayshun"] = 20,
    ["fakeananas"] = 276,
    ["cpp"] = 1,
    ["carestormi"] = 319,
    ["summithc"] = 10264,
    ["tuna"] = 29,
    ["odd"] = 24,
    ["garek"] = 206,
    ["kneelox"] = 1,
    ["neekow"] = 317,
    ["mooerism"] = 63,
    ["datarune"] = 14,
    ["coughcat"] = 187,
    ["bakerd"] = 3646,
    ["melkey"] = 119,
    ["rubengks"] = 343,
    ["stormfall"] = 661,
    ["mauiiwowie"] = 232,
    ["snuwutwo"] = 765,
    ["baseagain"] = 53,
    ["davidsong"] = 6,
    ["vindichee"] = 25,
    ["pon"] = 70,
    ["notvelleka"] = 81,
    ["laxing"] = 37,
    ["giucedtwo"] = 461,
    ["snot"] = 620,
    ["pontus"] = 70,
    ["alicemayami"] = 1,
    ["hubert"] = 979,
    ["chodie"] = 131,
    ["dinofood"] = 223,
    ["onlywalkz"] = 7,
    ["andreisafk"] = 42,
    ["bobkax"] = 219,
    ["uddabrudda"] = 1171,
    ["stillou"] = 52,
    ["nojhinn"] = 6,
    ["dogdogger"] = 3183,
    ["tymburlol"] = 17,
    ["defacedroach"] = 452,
    ["attdingo"] = 59,
    ["forsenlol"] = 142,
    ["vindiche"] = 25,
    ["chelbbank"] = 14,
    ["tuskdungo"] = 17806,
    ["faefam"] = 284,
    ["artemishowl"] = 7,
    ["lastmonk"] = 10066,
    ["anniedro"] = 87,
    ["nextmeme"] = 430,
    ["turghoul"] = 661,
    ["epy"] = 289,
    ["jordyfaefam"] = 284,
    ["kzugger"] = 13,
    ["fiaa"] = 131,
    ["sãra"] = 1,
    ["lomont"] = 4372,
    ["davidwarsong"] = 6,
    ["hakis"] = 446,
    ["potzie"] = 19,
    ["kalle"] = 5,
    ["nessonetta"] = 30,
    ["denamoomy"] = 37,
    ["nazgulbank"] = 39,
    ["voosham"] = 1,
    ["emcl"] = 1,
    ["allexiia"] = 71,
    ["tommysalamii"] = 315,
    ["infernion"] = 71,
    ["geranimoh"] = 1102,
    ["kersploded"] = 17,
    ["papafae"] = 284,
    ["servinghünt"] = 610,
    ["polen"] = 8,
    ["ksuper"] = 13,
    ["ashlyne"] = 95,
    ["vrey"] = 426,
    ["milkmomma"] = 97,
    ["bubbah"] = 979,
    ["missunstuck"] = 178,
    ["alexbones"] = 85,
    ["planefactmax"] = 48,
    ["crick"] = 1,
    ["enemacharlie"] = 500,
    ["judd"] = 927,
    ["xconbank"] = 23,
    ["sonydigital"] = 346,
    ["xedgemaster"] = 10264,
    ["ahlaundos"] = 511,
    ["mikamika"] = 610,
    ["mcconnell"] = 1959,
    ["lastlastmoo"] = 9,
    ["naowhtwo"] = 897,
    ["bigtextv"] = 40,
    ["sgtpepperttv"] = 9,
    ["peypot"] = 289,
    ["breakycpk"] = 16,
    ["bluesquadron"] = 1281,
    ["erob"] = 4372,
    ["camsoda"] = 150,
    ["palmblade"] = 949,
    ["aprikat"] = 71,
    ["dani"] = 63,
    ["jimmyhere"] = 1272,
    ["domibank"] = 1152,
    ["syrup"] = 41,
    ["aident"] = 371,
    ["gingicheat"] = 2555,
    ["znck"] = 18,
    ["azizsultan"] = 12,
    ["texbigly"] = 40,
    ["leetmoo"] = 36,
    ["grubbae"] = 3777,
    ["miyana"] = 124,
    ["onepeg"] = 241,
    ["qqs"] = 24,
    ["kennyundead"] = 1,
    ["gunnter"] = 296,
    ["ozyfallz"] = 531,
    ["nazori"] = 67,
    ["thiji"] = 1041,
    ["infernionp"] = 71,
    ["thepeanut"] = 124,
    ["surfaced"] = 452,
    ["rengawrthree"] = 228,
    ["dashel"] = 43,
    ["xmasteredge"] = 10264,
    ["gibbonn"] = 664,
    ["emongg"] = 3232,
    ["bobdaintern"] = 30,
    ["tippietoe"] = 914,
    ["zombieward"] = 596,
    ["pokelol"] = 2012,
    ["rypee"] = 26,
    ["formioly"] = 1,
    ["crimsonetv"] = 14,
    ["idareyou"] = 8,
    ["renny"] = 486,
    ["teapotzug"] = 208,
    ["slyptachi"] = 363,
    ["avizura"] = 490,
    ["phineas"] = 979,
    ["rainbowmes"] = 1,
    ["pilavgoat"] = 2184,
    ["treys"] = 13,
    ["swiftyfrost"] = 315,
    ["addyfiend"] = 14,
    ["camyo"] = 14,
    ["mona"] = 196,
    ["akitwu"] = 165,
    ["hthehunter"] = 76,
    ["ziqo"] = 2356,
    ["cornerguy"] = 1,
    ["missrage"] = 178,
    ["ravioly"] = 561,
    ["lastmoo"] = 9,
    ["swiftyhc"] = 315,
    ["aznbbygirl"] = 486,
    ["immadness"] = 72,
    ["josham"] = 11,
    ["bankvarm"] = 10,
    ["emilyalt"] = 1522,
    ["peachachoo"] = 250,
    ["itslesliehey"] = 44,
    ["whaazzdingo"] = 244,
    ["soaphia"] = 1138,
    ["mazelle"] = 4,
    ["muchastwo"] = 11,
    ["tazderoji"] = 455,
    ["rakuula"] = 32,
    ["rainhoe"] = 1646,
    ["glorplord"] = 10,
    ["threetimer"] = 30,
    ["iampregnant"] = 739,
    ["tugtug"] = 1233,
    ["grimmztwo"] = 583,
    ["elemoontal"] = 353,
    ["newsham"] = 77,
    ["chozzie"] = 9,
    ["shoozki"] = 194,
    ["jonathanorc"] = 92,
    ["jangbi"] = 797,
    ["katinuh"] = 39,
    ["kyladrine"] = 351,
    ["nbkgold"] = 1,
    ["zachisbackgg"] = 18,
    ["moos"] = 31,
    ["grimmzthree"] = 583,
    ["babynikki"] = 382,
    ["chloexo"] = 705,
    ["hakiim"] = 446,
    ["basetrade"] = 53,
    ["bosch"] = 149,
    ["mânco"] = 122,
    ["idaredyou"] = 8,
    ["domigodx"] = 1152,
    ["cashcow"] = 17,
    ["grimmzfour"] = 583,
    ["beanana"] = 1918,
    ["bobkabank"] = 219,
    ["gingiscarab"] = 2555,
    ["graysfurdays"] = 260,
    ["kyliebitkin"] = 311,
    ["rageperson"] = 1295,
    ["aprikatt"] = 71,
    ["athenegpt"] = 263,
    ["snupybank"] = 106,
    ["jaythebard"] = 231,
    ["chloe"] = 705,
    ["deedss"] = 480,
    ["graysfiveday"] = 260,
    ["riggler"] = 2261,
    ["snumoo"] = 765,
    ["guldak"] = 7,
    ["mocktailx"] = 8,
    ["yuhlyssa"] = 35,
    ["tronkler"] = 427,
    ["locktailx"] = 8,
    ["pine"] = 174,
    ["moosealt"] = 714,
    ["kinamazing"] = 63,
    ["retau"] = 10,
    ["mannestchad"] = 1077,
    ["meteos"] = 380,
    ["crixdarkhoof"] = 36,
    ["maralle"] = 58,
    ["maxplanefact"] = 48,
    ["texzug"] = 40,
    ["sharpflex"] = 15,
    ["renbutthole"] = 486,
    ["lambsnooter"] = 1689,
    ["nns"] = 1,
    ["morgrarted"] = 14,
    ["rennie"] = 156,
    ["sparkykawa"] = 180,
    ["tenzinniznet"] = 490,
    ["nineimpulse"] = 889,
    ["hydra"] = 498,
    ["shikaridill"] = 7,
    ["pandatv"] = 174,
    ["thurtilla"] = 70,
    ["shroudy"] = 12523,
    ["ofbankai"] = 575,
    ["tsmwonky"] = 4372,
    ["necrit"] = 1966,
    ["nominomi"] = 230,
    ["mainmisery"] = 9,
    ["vadeve"] = 20,
    ["nitenightkid"] = 327,
    ["mururu"] = 74,
    ["stupidotters"] = 7,
    ["zzuck"] = 18,
    ["itzmasayoshi"] = 2197,
    ["grubby"] = 3777,
    ["goonerman"] = 401,
    ["reexxistenxe"] = 5,
    ["foggedftw"] = 325,
    ["taruli"] = 7,
    ["brucewaynerd"] = 124,
    ["holysmart"] = 15,
    ["shobek"] = 575,
    ["nymnsen"] = 1362,
    ["nbkraft"] = 1,
    ["tactics"] = 283,
    ["garektwo"] = 206,
    ["kersplode"] = 17,
    ["klerk"] = 10,
    ["steakcom"] = 5,
    ["winford"] = 12,
    ["cletusmoofrd"] = 469,
    ["baldsoap"] = 318,
    ["kcakes"] = 6,
    ["laejthunt"] = 1,
    ["alykitty"] = 35,
    ["infernionw"] = 71,
    ["graysbank"] = 260,
    ["moosfortune"] = 31,
    ["neekotwo"] = 317,
    ["arrabbiatta"] = 93,
    ["pillshc"] = 10,
    ["puffi"] = 13,
    ["onlyfaux"] = 767,
    ["selmiqt"] = 19,
    ["gentlemilker"] = 11,
    ["titoboy"] = 10,
    ["nayukimeow"] = 35,
    ["morgana"] = 196,
    ["traumz"] = 107,
    ["gingiurinal"] = 2555,
    ["magnusz"] = 74,
    ["notbarny"] = 830,
    ["shugr"] = 12,
    ["howudoin"] = 217,
    ["azamousbank"] = 231,
    ["himfritzy"] = 44,
    ["purpprogue"] = 245,
    ["spengo"] = 18,
    ["willshayhan"] = 110,
    ["parla"] = 240,
    ["zoltanhc"] = 349,
    ["ggqf"] = 23,
    ["kcakedup"] = 6,
    ["hozimakgora"] = 44,
    ["maester"] = 90,
    ["gingidc"] = 2555,
    ["margrit"] = 473,
    ["sorairl"] = 1,
    ["tarktuah"] = 6,
    ["redcloudtv"] = 18,
    ["veirgin"] = 4019,
    ["bankofsnu"] = 765,
    ["jeelyplays"] = 77,
    ["mirlolbank"] = 182,
    ["rekfurio"] = 1,
    ["abollo"] = 12,
    ["slyptuah"] = 363,
    ["noobk"] = 1,
    ["laejten"] = 1,
    ["dowskybank"] = 37,
    ["iriebitkin"] = 311,
    ["pinktuah"] = 596,
    ["thearchitect"] = 51,
    ["potss"] = 19,
    ["emilios"] = 18,
    ["pikafullsend"] = 8054,
    ["dananttv"] = 7,
    ["rhythmic"] = 1,
    ["potzz"] = 19,
    ["claytone"] = 99,
    ["qqslock"] = 24,
    ["undeadpp"] = 1116,
    ["kersin"] = 7,
    ["chethankz"] = 1850,
    ["vei"] = 4019,
    ["highstyled"] = 102,
    ["johnpal"] = 580,
    ["wozzy"] = 7,
    ["thetodfather"] = 33,
    ["kittmeow"] = 56,
    ["nemsko"] = 2116,
    ["swock"] = 140,
    ["blindsamurai"] = 10066,
    ["kalixta"] = 135,
    ["aggravatemon"] = 9,
    ["reisha"] = 881,
    ["soogsx"] = 100,
    ["erubbz"] = 223,
    ["twooby"] = 82,
    ["gemz"] = 6,
    ["pojkemon"] = 238,
    ["alicetazyami"] = 1,
    ["coreyalt"] = 15,
    ["lewisencriss"] = 306,
    ["dangheesling"] = 1087,
    ["jollyjameshd"] = 104,
    ["jakubcavallo"] = 1,
    ["alodar"] = 16,
    ["maestertv"] = 90,
    ["silverdahunt"] = 6,
    ["akiwuu"] = 165,
    ["làdyhope"] = 112,
    ["peanutspells"] = 124,
    ["xcontuah"] = 23,
    ["yougelly"] = 435,
    ["tan"] = 93,
    ["sayawontdie"] = 7,
    ["meeres"] = 725,
    ["qynoa"] = 82,
    ["dendi"] = 1525,
    ["dakataa"] = 46,
    ["gingibank"] = 2555,
    ["anniebiotic"] = 2713,
    ["gingiah"] = 2555,
    ["xuén"] = 12,
    ["meteosdruid"] = 380,
    ["eedyaj"] = 48,
    ["stakeof"] = 5,
    ["dowsky"] = 37,
    ["minglebomboo"] = 13,
    ["drstabston"] = 5,
    ["netherim"] = 63,
    ["eiya"] = 227,
    ["arzondir"] = 47,
    ["gravitycen"] = 2765,
    ["autarki"] = 6,
    ["lacari"] = 2826,
    ["debauched"] = 10063,
    ["stoneyshe"] = 160,
    ["papafaeshamy"] = 284,
    ["blindkill"] = 23,
    ["magetea"] = 8,
    ["akiwu"] = 165,
    ["layervacuum"] = 2356,
    ["goochy"] = 68,
    ["wakewilding"] = 881,
    ["tymbur"] = 17,
    ["lghtsknjsus"] = 40,
    ["beetlê"] = 76,
    ["luxxmage"] = 358,
    ["isj"] = 40,
    ["cheesecaake"] = 528,
    ["synderenn"] = 182,
    ["yamatuwu"] = 3223,
    ["jamesthegray"] = 104,
    ["stoneyeish"] = 160,
    ["nathankb"] = 125,
    ["sunlitters"] = 1514,
    ["aquabigcow"] = 1284,
    ["touchpadtusk"] = 118,
    ["purpledaddy"] = 5,
    ["achillehc"] = 204,
    ["tangent"] = 297,
    ["blipp"] = 76,
    ["minpojkehc"] = 238,
    ["barrmanalol"] = 10,
    ["sunglitters"] = 1514,
    ["ventorr"] = 1,
    ["nothzan"] = 19,
    ["dadbertt"] = 5,
    ["twofaced"] = 452,
    ["sillyanne"] = 914,
    ["meatwrist"] = 131,
    ["zugzagé"] = 201,
    ["kaisamoo"] = 338,
    ["tuskdre"] = 42,
    ["nathankbheal"] = 125,
    ["jaybeezy"] = 214,
    ["gravemeat"] = 157,
    ["jamieoliver"] = 71,
    ["cdankfire"] = 312,
    ["mestwo"] = 220,
    ["mirlól"] = 182,
    ["fasffy"] = 317,
    ["morcbank"] = 14,
    ["edgezu"] = 4705,
    ["kioshima"] = 301,
    ["braccs"] = 366,
    ["pju"] = 228,
    ["feedthecats"] = 693,
    ["dafran"] = 5674,
    ["crankkate"] = 139,
    ["mánco"] = 122,
    ["komedyjatt"] = 25,
    ["barrymeow"] = 18,
    ["blinkflex"] = 15,
    ["tryndamerex"] = 351,
    ["walnutcast"] = 125,
    ["moat"] = 143,
    ["nidasclaat"] = 161,
    ["barrygirl"] = 18,
    ["kappataxes"] = 9,
    ["abstergeof"] = 82,
    ["pirate"] = 14936,
    ["alfienotmage"] = 271,
    ["xullcrusher"] = 81,
    ["hexism"] = 15,
    ["gorgooning"] = 43,
    ["dakkiin"] = 42,
    ["lmgd"] = 472,
    ["tydyed"] = 17,
    ["azamous"] = 231,
    ["szajr"] = 66,
    ["mewnfk"] = 223,
    ["riv"] = 112,
    ["oraxd"] = 27,
    ["psybear"] = 52,
    ["saveyoumon"] = 60,
    ["purppriest"] = 245,
    ["nothsann"] = 19,
    ["ghouliakins"] = 928,
    ["strangler"] = 1,
    ["jorkerd"] = 1,
    ["miseryy"] = 9,
    ["froggyhex"] = 16,
    ["hiimpika"] = 8054,
    ["breadlotion"] = 178,
    ["garretmon"] = 16,
    ["metashinext"] = 3724,
    ["leapy"] = 549,
    ["gemxo"] = 6,
    ["yuukidav"] = 142,
    ["potsie"] = 19,
    ["stillow"] = 52,
    ["gingitoilet"] = 2555,
    ["koreanbanker"] = 3001,
    ["jouffa"] = 190,
    ["gordan"] = 71,
    ["psherohc"] = 769,
    ["rotlinlin"] = 260,
    ["wardpink"] = 596,
    ["mojoefudge"] = 339,
    ["wartullo"] = 28,
    ["xn"] = 10,
    ["ari"] = 376,
    ["emonggthree"] = 3232,
    ["chrissychi"] = 1,
    ["kittspresso"] = 56,
    ["fandymoo"] = 1969,
    ["zonk"] = 15,
    ["joardee"] = 113,
    ["zoomkinz"] = 9,
    ["battlewhat"] = 1,
    ["djpenguins"] = 7,
    ["azuna"] = 214,
    ["theendboss"] = 150,
    ["mary"] = 1306,
    ["lenfang"] = 15,
    ["ashhole"] = 74,
    ["tankfordays"] = 260,
    ["blacklung"] = 26010,
    ["nomanz"] = 39,
    ["wobblestv"] = 1338,
    ["ang"] = 362,
    ["growlmage"] = 797,
    ["stembridge"] = 20,
    ["spengy"] = 18,
    ["jamesirl"] = 12,
    ["riddlerr"] = 170,
    ["barrycatt"] = 18,
    ["fatboyklat"] = 1336,
    ["vedcdee"] = 3331,
    ["thillawalker"] = 70,
    ["deedgenuts"] = 614,
    ["vezypoop"] = 8,
    ["anbone"] = 69,
    ["shadybunny"] = 1378,
    ["kermoodo"] = 18,
    ["dennis"] = 107,
    ["druidgie"] = 11,
    ["ora"] = 27,
    ["bwoxh"] = 70,
    ["zombatstreak"] = 819,
    ["bakafalldmg"] = 6,
    ["atolanos"] = 43,
    ["johnpald"] = 580,
    ["achillebk"] = 204,
    ["dantist"] = 2855,
    ["sealiony"] = 14,
    ["hakiis"] = 446,
    ["hherold"] = 12,
    ["djmike"] = 2356,
    ["ninjalooter"] = 1,
    ["kccybertruck"] = 55,
    ["mysticalos"] = 95,
    ["jellybeanshc"] = 48,
    ["grego"] = 10,
    ["ozyfell"] = 531,
    ["alfie"] = 271,
    ["parkzeragain"] = 259,
    ["orophia"] = 217,
    ["deadpaku"] = 8,
    ["linkinbio"] = 159,
    ["tekken"] = 14,
    ["taintboygg"] = 14,
    ["samoorah"] = 5,
    ["tributechest"] = 17806,
    ["synderen"] = 182,
    ["vondill"] = 11,
    ["jakenbake"] = 1594,
    ["tarulli"] = 7,
    ["disto"] = 2567,
    ["itzkatchii"] = 10218,
    ["novacht"] = 6,
    ["blastedboy"] = 214,
    ["spkycgi"] = 1,
    ["velyna"] = 124,
    ["gingireform"] = 2555,
    ["legaleagle"] = 84,
    ["maesta"] = 90,
    ["poekit"] = 197,
    ["faebae"] = 23,
    ["jaybeezyr"] = 214,
    ["guzuldan"] = 4705,
    ["unsaltedsalt"] = 103,
    ["babychonkers"] = 1,
    ["itmejp"] = 1183,
    ["weedhunterxx"] = 159,
    ["prefaced"] = 452,
    ["ptitebanque"] = 63,
    ["alecafter"] = 282,
    ["willshayhán"] = 110,
    ["aquahugecow"] = 1284,
    ["deadjohnx"] = 19,
    ["starsx"] = 178,
    ["gluum"] = 15,
    ["ozymandios"] = 531,
    ["todbenford"] = 33,
    ["jakenbank"] = 1594,
    ["butchies"] = 243,
    ["emilioos"] = 1,
    ["tonkatonk"] = 21071,
    ["sro"] = 478,
    ["payold"] = 2411,
    ["adamax"] = 321,
    ["pilavf"] = 2184,
    ["ventorm"] = 1,
    ["nayuki"] = 35,
    ["defaced"] = 452,
    ["lunya"] = 610,
    ["orcungus"] = 2688,
    ["wasjimmy"] = 570,
    ["wittrock"] = 1,
    ["johnnysings"] = 897,
    ["sevtwo"] = 187,
    ["thethree"] = 1,
    ["roflgatorr"] = 1848,
    ["raktuah"] = 32,
    ["nohitjerom"] = 63,
    ["mannco"] = 122,
    ["toastmon"] = 79,
    ["willscarlet"] = 7,
    ["camicalf"] = 1,
    ["hopefulx"] = 247,
    ["vulpestwo"] = 68,
    ["goopydoo"] = 8,
    ["squuchi"] = 2242,
    ["fruitorcs"] = 92,
    ["toocah"] = 13,
    ["sardrinko"] = 901,
    ["flutten"] = 287,
    ["tju"] = 1,
    ["kyun"] = 70,
    ["deedgenutz"] = 614,
    ["pullsbraids"] = 5,
    ["yamdefmage"] = 3223,
    ["herbvendor"] = 14,
    ["lewisbigd"] = 306,
    ["frostadamus"] = 208,
    ["cloakzyep"] = 1927,
    ["plumprstump"] = 63,
    ["shamansux"] = 170,
    ["distjuan"] = 2567,
    ["tactuah"] = 283,
    ["kyoot"] = 4206,
    ["claytonerp"] = 99,
    ["blazy"] = 8,
    ["nazguldru"] = 39,
    ["fogged"] = 60,
    ["nmp"] = 17734,
    ["zeroji"] = 455,
    ["rokman"] = 11,
    ["mocktuah"] = 8,
    ["morgdead"] = 14,
    ["marymaybe"] = 1306,
    ["helena"] = 367,
    ["mamafairyfae"] = 284,
    ["mordiell"] = 267,
    ["spensz"] = 49,
    ["onlyinvites"] = 1,
    ["cassielaynez"] = 169,
    ["mizsis"] = 394,
    ["sarthetv"] = 49,
    ["hemoroidd"] = 3709,
    ["amberpet"] = 25,
    ["emilya"] = 1522,
    ["despian"] = 8,
    ["shokie"] = 470,
    ["portallz"] = 1,
    ["grimmzhc"] = 583,
    ["emi"] = 21049,
    ["nothsan"] = 19,
    ["refaced"] = 452,
    ["milkmaid"] = 1455,
    ["alexbonesmon"] = 85,
    ["wake"] = 881,
    ["totempops"] = 172,
    ["muchas"] = 11,
    ["nezba"] = 1869,
    ["sarzerko"] = 901,
    ["zommie"] = 1,
    ["takenotetv"] = 141,
    ["sgtpepper"] = 9,
    ["cassielayne"] = 169,
    ["zuckzug"] = 18,
    ["mistahmoon"] = 1065,
    ["fornikait"] = 84,
    ["eveuhh"] = 87,
    ["sealion"] = 14,
    ["cobaltstreak"] = 819,
    ["geñerálemu"] = 9,
    ["winky"] = 274,
    ["eralyne"] = 6,
    ["redzy"] = 106,
    ["beanis"] = 1918,
    ["onlykargoz"] = 149,
    ["laeppa"] = 549,
    ["ivanhoof"] = 24,
    ["amberspells"] = 25,
    ["simonizetwo"] = 214,
    ["earthwarrior"] = 79,
    ["mudvix"] = 3001,
    ["beetlé"] = 76,
    ["geñeralemu"] = 9,
    ["zaitohro"] = 12,
    ["growl"] = 797,
    ["eiyabozo"] = 227,
    ["cdanks"] = 312,
    ["silvertheorc"] = 6,
    ["texcad"] = 40,
    ["papayas"] = 174,
    ["touchpad"] = 118,
    ["slampaku"] = 8,
    ["korimaeh"] = 73,
    ["saintzu"] = 13,
    ["llamootodd"] = 105,
    ["dalastdime"] = 87,
    ["sardonko"] = 901,
    ["veraneka"] = 31,
    ["sartaunto"] = 901,
    ["jive"] = 6,
    ["broxh"] = 70,
    ["syncopated"] = 6,
    ["burnbaclat"] = 419,
    ["zùgzug"] = 28,
    ["geranibro"] = 1102,
    ["bullgates"] = 32,
    ["cramergency"] = 27,
    ["growltuah"] = 797,
    ["itsmewolly"] = 6,
    ["maralli"] = 58,
    ["zugbeard"] = 59,
    ["miz"] = 17811,
    ["cdank"] = 312,
    ["pinkward"] = 596,
    ["yazpad"] = 1,
    ["deaderism"] = 63,
    ["greenward"] = 596,
    ["snupy"] = 106,
    ["hahnster"] = 52,
    ["fragbuddy"] = 453,
    ["gordanramsey"] = 71,
    ["shkak"] = 1,
    ["kioshimax"] = 301,
    ["morrog"] = 661,
    ["winkymancer"] = 274,
    ["peppennas"] = 203,
    ["moosebrother"] = 714,
    ["tryndamyr"] = 351,
    ["crunkmuffin"] = 229,
    ["masonburn"] = 6,
    ["chasecloute"] = 5382,
    ["theevun"] = 13,
    ["ðømmymømmyx"] = 406,
    ["tomcat"] = 44,
    ["hotted"] = 173,
    ["ravjr"] = 561,
    ["nothzann"] = 19,
    ["gluggle"] = 496,
    ["svennoss"] = 565,
    ["lmgdingo"] = 472,
    ["knavish"] = 7,
    ["dananlockin"] = 7,
    ["popestar"] = 139,
    ["zeltic"] = 1,
    ["jorgie"] = 1,
    ["faefamtv"] = 284,
    ["barrmana"] = 10,
    ["jadez"] = 93,
    ["willsháyhan"] = 110,
    ["magicperson"] = 1295,
    ["nothsa"] = 19,
    ["korimae"] = 73,
    ["shammypops"] = 172,
    ["varmellaa"] = 10,
    ["yamdef"] = 3223,
    ["grilledonion"] = 74,
    ["tinyspark"] = 52,
    ["curseplode"] = 17,
    ["rycave"] = 5,
    ["meerestwo"] = 725,
    ["travpiper"] = 739,
    ["alecagain"] = 282,
    ["wutrr"] = 90,
    ["kalamazi"] = 316,
    ["jaystreazy"] = 224,
    ["alcorsx"] = 17806,
    ["skeppo"] = 7,
    ["ahlaundoh"] = 511,
    ["dingleoosevn"] = 79,
    ["sleepybuh"] = 1347,
    ["silverthehog"] = 6,
    ["lourlo"] = 984,
    ["shangles"] = 14,
    ["wozzie"] = 7,
    ["dásh"] = 43,
    ["gingerbeardy"] = 122,
    ["lenxo"] = 15,
    ["mendo"] = 496,
    ["jellypeanut"] = 297,
    ["fandy"] = 1969,
    ["senjinmon"] = 60,
    ["basetradetv"] = 53,
    ["attillee"] = 59,
    ["theflesh"] = 14,
    ["hozibank"] = 44,
    ["tommysalamix"] = 315,
    ["midnightblue"] = 20,
    ["lacula"] = 2826,
    ["sput"] = 584,
    ["dogcdee"] = 3331,
    ["hydramist"] = 498,
    ["maannbank"] = 122,
    ["artemisfowl"] = 7,
    ["thijihiguri"] = 1041,
    ["kanyequest"] = 13,
    ["sobadstrange"] = 199,
    ["roxheals"] = 203,
    ["pjeh"] = 228,
    ["roxmiral"] = 203,
    ["despain"] = 8,
    ["starzugzug"] = 174,
    ["sumslayer"] = 927,
    ["poketuah"] = 2012,
    ["ttvmrwobbles"] = 1338,
    ["onlythree"] = 1,
    ["tacticsbank"] = 283,
    ["methp"] = 331,
    ["moofie"] = 38,
    ["deathrow"] = 56,
    ["gemzie"] = 6,
    ["slyp"] = 363,
    ["xcon"] = 23,
    ["paulen"] = 8,
    ["mauii"] = 232,
    ["wallah"] = 11,
    ["spens"] = 1,
    ["brinkku"] = 25,
    ["bloodcho"] = 92,
    ["drondo"] = 1525,
    ["jogie"] = 11,
    ["nazg"] = 39,
    ["defacedtwo"] = 452,
    ["thetusk"] = 17806,
    ["vanessxd"] = 89,
    ["lauren"] = 5,
    ["starsdc"] = 178,
    ["coreytheguyy"] = 15,
    ["jordyfaefamm"] = 284,
    ["fluggle"] = 5,
    ["keegans"] = 27,
    ["wargallow"] = 5,
    ["stheshaman"] = 76,
    ["manliestchad"] = 1077,
    ["tunatornado"] = 29,
    ["searingfool"] = 10066,
    ["narutard"] = 8,
    ["jerminator"] = 8,
    ["tauryan"] = 11,
    ["tacticswar"] = 283,
    ["lettucesux"] = 170,
    ["warlrox"] = 203,
    ["softsheep"] = 436,
    ["web"] = 5,
    ["hotforms"] = 309,
    ["jaytullo"] = 28,
    ["deadflip"] = 37,
    ["rengawrmage"] = 228,
    ["azunatwo"] = 214,
    ["puffies"] = 13,
    ["grintwo"] = 42,
    ["manchadman"] = 1077,
    ["puffymuffin"] = 13,
    ["buhmonson"] = 398,
    ["garretdenmon"] = 16,
    ["unchainedali"] = 5,
    ["deadjohnvi"] = 138,
    ["kooby"] = 82,
    ["bodhicount"] = 127,
    ["amandamac"] = 7,
    ["snowmixy"] = 275,
    ["healkitty"] = 496,
    ["zoomkins"] = 9,
    ["trillebartom"] = 356,
    ["trolldm"] = 575,
}

ns.GetAvgViewers = function(name)
    if not name then return 0 end
    return viewerData[name:lower()] or 0
end
