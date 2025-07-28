Config = {}

--Turn your framework to true and all the others to false. This is to check jobs

Config.RoleRestriction   = false
Config.REDEMRP2          = false
Config.REDEMRP2023REBOOT = false
Config.VORP              = true
Config.RSG               = false
Config.QBR               = false
 
--List of roles enabled to open the menu if Config.RoleRestriction = true
Config.Roles = {
"trapper",
}

-------------------------------------------
				--MENU --
-------------------------------------------
Config.Debug		     = false
Config.GeneralMenuIsUsed = false      -- Only turn to true if you are using this general menu script from tebex : https://sire-vlc-scripts.tebex.io/package/5765603
Config.MenuActive 		 = false       -- If the menu is active when pressing the key or not
Config.OpenMenuKey 		 = 0xA1FDE2A6 -- [6] by default  
Config.Code 			 = ""		  --Leave it as it is :) 		

--------------------------------------------
               --EVENT CALLS-- 
--------------------------------------------
--To add an outfit as inventory item, simply create an item as you would for any other item and on it's use event (here's an example with the vorp server RegisterUsableItem):
-- VORP.RegisterUsableItem("dress1", function(data)
--    TriggerClientEvent('sirevlc_dress_pack_01', data.source, 'WomenOutfit001')
-- end)
 
--Here's the classic event call with all options listed below:			   
--TriggerEvent("sirevlc_dress_pack_01",InsertOptionHere)
--List of Options :
--"mainmenu"
--"WomenOutfit0001"
--"WomenOutfit0002"
--"WomenOutfit001"
--"WomenOutfit002"
--"WomenOutfit003"
--"WomenOutfit004"
--"WomenOutfit005"
--"WomenOutfit006"
--"WomenOutfit007"
--"WomenOutfit008"
--"WomenOutfit009"
--"WomenOutfit010"
--"WomenOutfit011"
--"WomenOutfit012"
--"WomenOutfit013"
--"WomenOutfit014"
--"WomenOutfit015"
--"WomenOutfit016"
--"WomenOutfit017"
--"WomenOutfit018"
--"WomenOutfit019"
--"WomenOutfit020"
--"WomenOutfit021"
--"WomenOutfit022"
--"WomenOutfit023"
--"WomenOutfit024"
--"WomenOutfit025"
--"WomenOutfit026"
--"WomenOutfit027"
--"WomenOutfit028"
--"WomenOutfit029"
--"WomenOutfit030"
--"WomenOutfit031"
--"WomenOutfit032"
--"WomenOutfit033"
--"WomenOutfit034"
--"WomenOutfit035"
--"WomenOutfit036"
--"WomenOutfit037"
--"WomenOutfit038"
--"WomenOutfit039"
--"WomenOutfit040"
--"WomenOutfit041"
--"WomenOutfit042"
--"WomenOutfit043"
--"WomenOutfit044"
--"WomenOutfit045"
--"WomenOutfit046"
--"WomenOutfit047"
--"WomenOutfit048"
--"WomenOutfit049"
--"WomenOutfit050"
--"WomenOutfit051"
--"WomenOutfit052"
--"WomenOutfit053"
--"WomenOutfit054"
--"WomenOutfit055"
--"WomenOutfit056"
--"WomenOutfit057"
--"WomenOutfit058"
--"WomenOutfit059"
--"WomenOutfit060"
--"WomenOutfit061"
--"WomenOutfit062"
--"WomenOutfit063"
--"WomenOutfit064"
--"WomenOutfit065"
--"WomenOutfit066"
--"WomenOutfit067"
--"WomenOutfit068"
--"WomenOutfit069"
--"WomenOutfit070"
--"WomenOutfit071"
--"WomenOutfit072"
--"WomenOutfit073"
--"WomenOutfit074"
--"WomenOutfit075"
--"WomenOutfit076"
--"WomenOutfit077"
--"WomenOutfit078"
--"WomenOutfit079"
--"WomenOutfit080"
--"WomenOutfit081"
--"WomenOutfit082"
--"WomenOutfit083"
--"WomenOutfit084"
--"WomenOutfit085"
--"WomenOutfit086"
--"WomenOutfit087"
--"WomenOutfit088"
--"WomenOutfit089"
--"WomenOutfit090"
--"WomenOutfit091"
--"WomenOutfit092"
--"WomenOutfit093"
--"WomenOutfit094"
--"WomenOutfit095"
--"WomenOutfit096"
--"WomenOutfit097"
--"WomenOutfit098"
--"WomenOutfit099"
--"WomenOutfit100"
--"WomenOutfit101"
--"WomenOutfit102"
--"WomenOutfit103"
--"WomenOutfit104"
--"WomenOutfit105"
--"WomenOutfit106"
--"WomenOutfit107"
--"WomenOutfit108"
--"WomenOutfit109"
--"WomenOutfit110"
--"WomenOutfit111"
--"WomenOutfit112"
--"WomenOutfit113"
--"WomenOutfit114"
--"WomenOutfit115"
--"WomenOutfit116"
--"WomenOutfit117"

--MIND THE GAP HERE :)

--"WomenOutfit120" 
--"WomenOutfit121" 
--"WomenOutfit122" 
--"WomenOutfit123" 
--"WomenOutfit124" 
--"WomenOutfit125" 
--"WomenOutfit126" 
--"WomenOutfit127" 
--"WomenOutfit128" 
--"WomenOutfit129" 
--"WomenOutfit130" 
--"WomenOutfit131" 
--"WomenOutfit132" 
--"WomenOutfit133" 
--"WomenOutfit134" 
--"WomenOutfit135" 
--"WomenOutfit136" 
--"WomenOutfit137" 
--"WomenOutfit138" 
--"WomenOutfit139" 
--"WomenOutfit140" 
--"WomenOutfit141" 
--"WomenOutfit142" 
--"WomenOutfit143" 
--"WomenOutfit144" 
--"WomenOutfit145" 
--"WomenOutfit146" 
--"WomenOutfit147" 
--"WomenOutfit148" 
--"WomenOutfit149" 
--"WomenOutfit150" 
--"WomenOutfit151" 
--"WomenOutfit152" 
--"WomenOutfit153" 
--"WomenOutfit154" 
--"WomenOutfit155" 
--"WomenOutfit156" 
--"WomenOutfit157" 
--"WomenOutfit158" 
--"WomenOutfit159" 
--"WomenOutfit160" 
--"WomenOutfit161" 
--"WomenOutfit162" 
--"WomenOutfit163" 
--"WomenOutfit164" 
--"WomenOutfit165" 
--"WomenOutfit166" 
--"WomenOutfit167" 
--"WomenOutfit168" 
--"WomenOutfit169" 
--"WomenOutfit170" 
--"WomenOutfit171" 
--"WomenOutfit172" 
--"WomenOutfit173" 
--"WomenOutfit174" 
--"WomenOutfit175" 
--"WomenOutfit176" 
--"WomenOutfit177" 
--"WomenOutfit178" 
--"WomenOutfit179" 
--"WomenOutfit180" 
--"WomenOutfit181" 
--"WomenOutfit182" 
--"WomenOutfit183" 
--"WomenOutfit184" 
--"WomenOutfit185" 
--"WomenOutfit186" 
--"WomenOutfit187" 
--"WomenOutfit188" 
--"WomenOutfit189" 
--"WomenOutfit190" 
--"WomenOutfit191" 
--"WomenOutfit192" 
--"WomenOutfit193" 
--"WomenOutfit194" 
--"WomenOutfit195" 
--"WomenOutfit196" 
--"WomenOutfit197" 
--"WomenOutfit198" 
--"WomenOutfit199" 
--"WomenOutfit200" 
--"WomenOutfit201" 
--"WomenOutfit202" 
--"WomenOutfit203" 
--"WomenOutfit204" 
--"WomenOutfit205" 
--"WomenOutfit206" 
--"WomenOutfit207" 
--"WomenOutfit208" 
--"WomenOutfit209" 
--"WomenOutfit210" 
--"WomenOutfit211" 
--"WomenOutfit212" 
--"WomenOutfit213" 
--"WomenOutfit214" 
--"WomenOutfit215" 
--"WomenOutfit216" 
--"WomenOutfit217" 
--"WomenOutfit218" 
--"WomenOutfit219" 
--"WomenOutfit220" 
--"WomenOutfit221" 
--"WomenOutfit222" 

 
--"WomenBracelets001"
--"WomenBracelets002"
--"WomenBracelets003"
--"WomenBracelets004"
--"WomenBracelets005"
--"WomenBracelets006"
--"WomenBracelets007"
--"WomenBracelets008"
--"WomenBracelets009"
--"WomenBracelets010"
--"WomenBracelets011"
--"WomenBracelets012"

--"WomenNecklaces001"
--"WomenNecklaces002"
--"WomenNecklaces003"
--"WomenNecklaces004"
--"WomenNecklaces005"
--"WomenNecklaces006"
--"WomenNecklaces007"
--"WomenNecklaces008"
--"WomenNecklaces009"
--"WomenNecklaces010"
--"WomenNecklaces011"
--"WomenNecklaces012"
--"WomenNecklaces013"
--"WomenNecklaces014"
--"WomenNecklaces015"
--"WomenNecklaces016"
--"WomenNecklaces017"
--"WomenNecklaces018"
--"WomenNecklaces019"
--"WomenNecklaces020"
--"WomenNecklaces021"
--"WomenNecklaces022"
--"WomenNecklaces023"
--"WomenNecklaces024"
--"WomenNecklaces025"


--"WomenGloves001"
--"WomenGloves002"
--"WomenGloves003"
--"WomenGloves004"
--"WomenGloves005"
--"WomenGloves006"
--"WomenGloves007"
--"WomenGloves008"
--"WomenGloves009"
--"WomenGloves010"
--"WomenGloves011"
--"WomenGloves012"
--"WomenGloves013"
--"WomenGloves014"
--"WomenGloves015"
--"WomenGloves016"
--"WomenGloves017"
--"WomenGloves018"
--"WomenGloves019"
--"WomenGloves020"
--"WomenGloves021"
--"WomenGloves022"
--"WomenGloves023"
--"WomenGloves024"

--"WomenHats001"
--"WomenHats002"
--"WomenHats003"
--"WomenHats004"
--"WomenHats005"
--"WomenHats006"
--"WomenHats007"
--"WomenHats008"
--"WomenHats009"
--"WomenHats010"
--"WomenHats011"
--"WomenHats012"
--"WomenHats013"
--"WomenHats014"
--"WomenHats015"
--"WomenHats016"
--"WomenHats017"
--"WomenHats018"
--"WomenHats019"
--"WomenHats020"
--"WomenHats021"
--"WomenHats022"
--"WomenHats023"
--"WomenHats024"
--"WomenHats025"
--"WomenHats026"
--"WomenHats027"
--"WomenHats028"
--"WomenHats029"
--"WomenHats030"
--"WomenHats031"
--"WomenHats032"
--"WomenHats033"
--"WomenHats034"
--"WomenHats035"
--"WomenHats036"
--"WomenHats037"
--"WomenHats038"
--"WomenHats039"
--"WomenHats040"
--"WomenHats041"
--"WomenHats042"
--"WomenHats043"
--"WomenHats044"
--"WomenHats045"
--"WomenHats046"
--"WomenHats047"
--"WomenHats048"
--"WomenHats049"
--"WomenHats050"
--"WomenHats051"
--"WomenHats052"
--"WomenHats053"
--"WomenHats054"
--"WomenHats055"
--"WomenHats056"
--"WomenHats057"
--"WomenHats058"
--"WomenHats059"
--"WomenHats060"
--"WomenHats061"
--"WomenHats062"
--"WomenHats063"
--"WomenHats064"
--"WomenHats065"
--"WomenHats066"
--"WomenHats067"
--"WomenHats068"
--"WomenHats069"
--"WomenHats070"
--"WomenHats071"
--"WomenHats072"
--"WomenHats073"
--"WomenHats074"
--"WomenHats075"
--"WomenHats076"
--"WomenHats077"
--"WomenHats078"
--"WomenHats079"
--"WomenHats080"
--"WomenHats081"
--"WomenHats082"
--"WomenHats083"
--"WomenHats084"
--"WomenHats085"
--"WomenHats086"
--"WomenHats087"
--"WomenHats088"
--"WomenHats089"
--"WomenHats090"
--"WomenHats091"
--"WomenHats092"
--"WomenHats093"
--"WomenHats094"
--"WomenHats095"
--"WomenHats096"
--"WomenHats097"
--"WomenHats098"
--"WomenHats099"
--"WomenHats100"
--"WomenHats101"
--"WomenHats102"
--"WomenHats103"
--"WomenHats104"
--"WomenHats105"
--"WomenHats106"
--"WomenHats107"
--"WomenHats108"
--"WomenHats109"
--"WomenHats110"
--"WomenHats111"
--"WomenHats112"
--"WomenHats113"
--"WomenHats114"
--"WomenHats115"
--"WomenHats116"
--"WomenHats117"
--"WomenHats118"
--"WomenHats119"
--"WomenHats120"
--"WomenHats121"
--"WomenHats122"
--"WomenHats123"
--"WomenHats124"
--"WomenHats125"
--"WomenHats126"
--"WomenHats127"
--"WomenHats128"
--"WomenHats129"
--"WomenHats130"
--"WomenHats131"
--"WomenHats132"
--"WomenHats133"
--"WomenHats134"
--"WomenHats135"
--"WomenHats136"
--"WomenHats137"
--"WomenHats138"
--"WomenHats139"
--"WomenHats140"
--"WomenHats141"
--"WomenHats142"
--"WomenHats143"
--"WomenHats144"
--"WomenHats145"
--"WomenHats146"
--"WomenHats147"
--"WomenHats148"
--"WomenHats149"
--"WomenHats150"
--"WomenHats151"
--"WomenHats152"
--"WomenHats153"
--"WomenHats154"
--"WomenHats155"
--"WomenHats156"
--"WomenHats157"
--"WomenHats158"
--"WomenHats159"
--"WomenHats160"
--"WomenHats161"
--"WomenHats162"
--"WomenHats163"
--"WomenHats164"
--"WomenHats165"
--"WomenHats166"
--"WomenHats167"
--"WomenHats168"
--"WomenHats169"
--"WomenHats170"
--"WomenHats171"
--"WomenHats172"
--"WomenHats173"
--"WomenHats174"
--"WomenHats175"
--"WomenHats176"
--"WomenHats177"
--"WomenHats178"
--"WomenHats179"
--"WomenHats180"
--"WomenHats181"
--"WomenHats182"
--"WomenHats183"
--"WomenHats184"
--"WomenHats185"
--"WomenHats186"
--"WomenHats187"
--"WomenHats188"
--"WomenHats189"
--"WomenHats190"
--"WomenHats191"
--"WomenHats192"
--"WomenHats193"
--"WomenHats194"
--"WomenHats195"
--"WomenHats196"
--"WomenHats197"
--"WomenHats198"
--"WomenHats199"
--"WomenHats200"
--"WomenHats201"
--"WomenHats202"
--"WomenHats203"
--"WomenHats204"
--"WomenHats205"
--"WomenHats206"
--"WomenHats207"
--"WomenHats208" 
--"WomenHats209" 
--"WomenHats210"

--"WomenShawls001"
--"WomenShawls002"
--"WomenShawls003"
--"WomenShawls004"
--"WomenShawls005"
--"WomenShawls006"

 
-------------------------------------------
           --TEXTS TRANSLATIONS--
-------------------------------------------
--Menus
Config.TextMenuTitle              = "Dresses"
Config.TextMenuLabel01            = 'Women'      
Config.TextMenuDescriptionLabel01 = 'Dresses'                  
 

-------------------------------------------
              --COMMANDS--
-------------------------------------------
--Here's the list of quick f8 console commands to fix the body scale if you experience clipping

--Body Scale
--fixscaledress1
--fixscaledress2
--fixscaledress3
--fixscaledress4
--fixscaledress5

--Body tint 
--femaletint1
--femaletint2
--femaletint3
--femaletint4
--femaletint5
--femaletint6

-------------------------------------------
           -- DRESSES MENUS --
-------------------------------------------
--if you want to remove a dress in a menu add -- in front of the line

--MAIN MENU

	Config.DressMainMenuTitle = "Dresses"
Config.DressMainMenu = {
  {label = "Dresses",      value = "action01",  desc = "Dresses",       image='items/sirevlc_dresses.png'},
  {label = "Accessories",  value = "action02",  desc = "Accessories",   image='items/provision_golden_wedding_chain_ring.png'},	
}
 
Config.AccessoriesTitle = "Accessories"
Config.AccessoriesMain = {
	{label = "Hats",      value = "action01",  desc = "Hats"     },
	{label = "Gloves",    value = "action02",  desc = "Gloves"   },
    {label = "Necklaces", value = "action03",  desc = "Necklaces"},
    {label = "Bracelets", value = "action04",  desc = "Bracelets"},
    {label = "Shawls",    value = "action05",  desc = "Shawls"   },
} 
 
Config.HatsTitle = "Hats"
Config.HatsMain = {
	{label = "Hat I",     value = "action01",  desc = "Hat I"   },
	{label = "Hat II",    value = "action02",  desc = "Hat II"  },
	{label = "Hat III",   value = "action03",  desc = "Hat III" },
} 
 
 
Config.HatsOptionsV1Title = "Variants"
Config.HatsOptionsV1 = {
	{label = "Hat I V01",   value = "action01",  desc = "Hat I V01"},
	{label = "Hat I V02",   value = "action02",  desc = "Hat I V02"},
	{label = "Hat I V03",   value = "action03",  desc = "Hat I V03"},
	{label = "Hat I V04",   value = "action04",  desc = "Hat I V04"},
	{label = "Hat I V05",   value = "action05",  desc = "Hat I V05"},
	{label = "Hat I V06",   value = "action06",  desc = "Hat I V06"},
	{label = "Hat I V07",   value = "action07",  desc = "Hat I V07"},
	{label = "Hat I V08",   value = "action08",  desc = "Hat I V08"},
	{label = "Hat I V09",   value = "action09",  desc = "Hat I V09"},
	{label = "Hat I V10",   value = "action10",  desc = "Hat I V10"},
	{label = "Hat I V11",   value = "action11",  desc = "Hat I V11"},
	{label = "Hat I V12",   value = "action12",  desc = "Hat I V12"},
	{label = "Hat I V13",   value = "action13",  desc = "Hat I V13"},
	{label = "Hat I V14",   value = "action14",  desc = "Hat I V14"},
	{label = "Hat I V15",   value = "action15",  desc = "Hat I V15"},
	{label = "Hat I V16",   value = "action16",  desc = "Hat I V16"},
	{label = "Hat I V17",   value = "action17",  desc = "Hat I V17"},
	{label = "Hat I V18",   value = "action18",  desc = "Hat I V18"},
	{label = "Hat I V19",   value = "action19",  desc = "Hat I V19"},
	{label = "Hat I V20",   value = "action20",  desc = "Hat I V20"},
	{label = "Hat I V21",   value = "action21",  desc = "Hat I V21"},
	{label = "Hat I V22",   value = "action22",  desc = "Hat I V22"},
	{label = "Hat I V23",   value = "action23",  desc = "Hat I V23"},
	{label = "Hat I V24",   value = "action24",  desc = "Hat I V24"},
	{label = "Hat I V25",   value = "action25",  desc = "Hat I V25"},
	{label = "Hat I V26",   value = "action26",  desc = "Hat I V26"},
	{label = "Hat I V27",   value = "action27",  desc = "Hat I V27"},
	{label = "Hat I V28",   value = "action28",  desc = "Hat I V28"},
	{label = "Hat I V29",   value = "action29",  desc = "Hat I V29"},
	{label = "Hat I V30",   value = "action30",  desc = "Hat I V30"},
	{label = "Hat I V31",   value = "action31",  desc = "Hat I V31"},
	{label = "Hat I V32",   value = "action32",  desc = "Hat I V32"},
	{label = "Hat I V33",   value = "action33",  desc = "Hat I V33"},
	{label = "Hat I V34",   value = "action34",  desc = "Hat I V34"},
	{label = "Hat I V35",   value = "action35",  desc = "Hat I V35"},
	{label = "Hat I V36",   value = "action36",  desc = "Hat I V36"},
	{label = "Hat I V37",   value = "action37",  desc = "Hat I V37"},
	{label = "Hat I V38",   value = "action38",  desc = "Hat I V38"},
	{label = "Hat I V39",   value = "action39",  desc = "Hat I V39"},
	{label = "Hat I V40",   value = "action40",  desc = "Hat I V40"},
	{label = "Hat I V41",   value = "action41",  desc = "Hat I V41"},
	{label = "Hat I V42",   value = "action42",  desc = "Hat I V42"},
	{label = "Hat I V43",   value = "action43",  desc = "Hat I V43"},
	{label = "Hat I V44",   value = "action44",  desc = "Hat I V44"},
	{label = "Hat I V45",   value = "action45",  desc = "Hat I V45"},
	{label = "Hat I V46",   value = "action46",  desc = "Hat I V46"},
	{label = "Hat I V47",   value = "action47",  desc = "Hat I V47"},
	{label = "Hat I V48",   value = "action48",  desc = "Hat I V48"},
	{label = "Hat I V49",   value = "action49",  desc = "Hat I V49"},
	{label = "Hat I V50",   value = "action50",  desc = "Hat I V50"},
	{label = "Hat I V51",   value = "action51",  desc = "Hat I V51"},
	{label = "Hat I V52",   value = "action52",  desc = "Hat I V52"},
	{label = "Hat I V53",   value = "action53",  desc = "Hat I V53"},
	{label = "Hat I V54",   value = "action54",  desc = "Hat I V54"},
	{label = "Hat I V55",   value = "action55",  desc = "Hat I V55"},
	{label = "Hat I V56",   value = "action56",  desc = "Hat I V56"},
	{label = "Hat I V57",   value = "action57",  desc = "Hat I V57"},
	{label = "Hat I V58",   value = "action58",  desc = "Hat I V58"},
	{label = "Hat I V59",   value = "action59",  desc = "Hat I V59"},
	{label = "Hat I V60",   value = "action60",  desc = "Hat I V60"},
	{label = "Hat I V61",   value = "action61",  desc = "Hat I V61"},
	{label = "Hat I V62",   value = "action62",  desc = "Hat I V62"},
	{label = "Hat I V63",   value = "action63",  desc = "Hat I V63"},
	{label = "Hat I V64",   value = "action64",  desc = "Hat I V64"},
	{label = "Hat I V65",   value = "action65",  desc = "Hat I V65"},
	{label = "Hat I V66",   value = "action66",  desc = "Hat I V66"},
	{label = "Hat I V67",   value = "action67",  desc = "Hat I V67"},
	{label = "Hat I V68",   value = "action68",  desc = "Hat I V68"},
	{label = "Hat I V69",   value = "action69",  desc = "Hat I V69"},
	{label = "Hat I V70",   value = "action70",  desc = "Hat I V70"},
} 


Config.HatsOptionsV2Title = "Variants"
Config.HatsOptionsV2 = {
	{label = "Hat II V01",   value = "action01",  desc = "Hat II V01"},
	{label = "Hat II V02",   value = "action02",  desc = "Hat II V02"},
	{label = "Hat II V03",   value = "action03",  desc = "Hat II V03"},
	{label = "Hat II V04",   value = "action04",  desc = "Hat II V04"},
	{label = "Hat II V05",   value = "action05",  desc = "Hat II V05"},
	{label = "Hat II V06",   value = "action06",  desc = "Hat II V06"},
	{label = "Hat II V07",   value = "action07",  desc = "Hat II V07"},
	{label = "Hat II V08",   value = "action08",  desc = "Hat II V08"},
	{label = "Hat II V09",   value = "action09",  desc = "Hat II V09"},
	{label = "Hat II V10",   value = "action10",  desc = "Hat II V10"},
	{label = "Hat II V11",   value = "action11",  desc = "Hat II V11"},
	{label = "Hat II V12",   value = "action12",  desc = "Hat II V12"},
	{label = "Hat II V13",   value = "action13",  desc = "Hat II V13"},
	{label = "Hat II V14",   value = "action14",  desc = "Hat II V14"},
	{label = "Hat II V15",   value = "action15",  desc = "Hat II V15"},
	{label = "Hat II V16",   value = "action16",  desc = "Hat II V16"},
	{label = "Hat II V17",   value = "action17",  desc = "Hat II V17"},
	{label = "Hat II V18",   value = "action18",  desc = "Hat II V18"},
	{label = "Hat II V19",   value = "action19",  desc = "Hat II V19"},
	{label = "Hat II V20",   value = "action20",  desc = "Hat II V20"},
	{label = "Hat II V21",   value = "action21",  desc = "Hat II V21"},
	{label = "Hat II V22",   value = "action22",  desc = "Hat II V22"},
	{label = "Hat II V23",   value = "action23",  desc = "Hat II V23"},
	{label = "Hat II V24",   value = "action24",  desc = "Hat II V24"},
	{label = "Hat II V25",   value = "action25",  desc = "Hat II V25"},
	{label = "Hat II V26",   value = "action26",  desc = "Hat II V26"},
	{label = "Hat II V27",   value = "action27",  desc = "Hat II V27"},
	{label = "Hat II V28",   value = "action28",  desc = "Hat II V28"},
	{label = "Hat II V29",   value = "action29",  desc = "Hat II V29"},
	{label = "Hat II V30",   value = "action30",  desc = "Hat II V30"},
	{label = "Hat II V31",   value = "action31",  desc = "Hat II V31"},
	{label = "Hat II V32",   value = "action32",  desc = "Hat II V32"},
	{label = "Hat II V33",   value = "action33",  desc = "Hat II V33"},
	{label = "Hat II V34",   value = "action34",  desc = "Hat II V34"},
	{label = "Hat II V35",   value = "action35",  desc = "Hat II V35"},
	{label = "Hat II V36",   value = "action36",  desc = "Hat II V36"},
	{label = "Hat II V37",   value = "action37",  desc = "Hat II V37"},
	{label = "Hat II V38",   value = "action38",  desc = "Hat II V38"},
	{label = "Hat II V39",   value = "action39",  desc = "Hat II V39"},
	{label = "Hat II V40",   value = "action40",  desc = "Hat II V40"},
	{label = "Hat II V41",   value = "action41",  desc = "Hat II V41"},
	{label = "Hat II V42",   value = "action42",  desc = "Hat II V42"},
	{label = "Hat II V43",   value = "action43",  desc = "Hat II V43"},
	{label = "Hat II V44",   value = "action44",  desc = "Hat II V44"},
	{label = "Hat II V45",   value = "action45",  desc = "Hat II V45"},
	{label = "Hat II V46",   value = "action46",  desc = "Hat II V46"},
	{label = "Hat II V47",   value = "action47",  desc = "Hat II V47"},
	{label = "Hat II V48",   value = "action48",  desc = "Hat II V48"},
	{label = "Hat II V49",   value = "action49",  desc = "Hat II V49"},
	{label = "Hat II V50",   value = "action50",  desc = "Hat II V50"},
	{label = "Hat II V51",   value = "action51",  desc = "Hat II V51"},
	{label = "Hat II V52",   value = "action52",  desc = "Hat II V52"},
	{label = "Hat II V53",   value = "action53",  desc = "Hat II V53"},
	{label = "Hat II V54",   value = "action54",  desc = "Hat II V54"},
	{label = "Hat II V55",   value = "action55",  desc = "Hat II V55"},
	{label = "Hat II V56",   value = "action56",  desc = "Hat II V56"},
	{label = "Hat II V57",   value = "action57",  desc = "Hat II V57"},
	{label = "Hat II V58",   value = "action58",  desc = "Hat II V58"},
	{label = "Hat II V59",   value = "action59",  desc = "Hat II V59"},
	{label = "Hat II V60",   value = "action60",  desc = "Hat II V60"},
	{label = "Hat II V61",   value = "action61",  desc = "Hat II V61"},
	{label = "Hat II V62",   value = "action62",  desc = "Hat II V62"},
	{label = "Hat II V63",   value = "action63",  desc = "Hat II V63"},
	{label = "Hat II V64",   value = "action64",  desc = "Hat II V64"},
	{label = "Hat II V65",   value = "action65",  desc = "Hat II V65"},
	{label = "Hat II V66",   value = "action66",  desc = "Hat II V66"},
	{label = "Hat II V67",   value = "action67",  desc = "Hat II V67"},
	{label = "Hat II V68",   value = "action68",  desc = "Hat II V68"},
	{label = "Hat II V69",   value = "action69",  desc = "Hat II V69"},
	{label = "Hat II V70",   value = "action70",  desc = "Hat II V70"},
} 

Config.HatsOptionsV3Title = "Variants"
Config.HatsOptionsV3 = {
	{label = "Hat III V01",   value = "action01",  desc = "Hat III V01"},
	{label = "Hat III V02",   value = "action02",  desc = "Hat III V02"},
	{label = "Hat III V03",   value = "action03",  desc = "Hat III V03"},
	{label = "Hat III V04",   value = "action04",  desc = "Hat III V04"},
	{label = "Hat III V05",   value = "action05",  desc = "Hat III V05"},
	{label = "Hat III V06",   value = "action06",  desc = "Hat III V06"},
	{label = "Hat III V07",   value = "action07",  desc = "Hat III V07"},
	{label = "Hat III V08",   value = "action08",  desc = "Hat III V08"},
	{label = "Hat III V09",   value = "action09",  desc = "Hat III V09"},
	{label = "Hat III V10",   value = "action10",  desc = "Hat III V10"},
	{label = "Hat III V11",   value = "action11",  desc = "Hat III V11"},
	{label = "Hat III V12",   value = "action12",  desc = "Hat III V12"},
	{label = "Hat III V13",   value = "action13",  desc = "Hat III V13"},
	{label = "Hat III V14",   value = "action14",  desc = "Hat III V14"},
	{label = "Hat III V15",   value = "action15",  desc = "Hat III V15"},
	{label = "Hat III V16",   value = "action16",  desc = "Hat III V16"},
	{label = "Hat III V17",   value = "action17",  desc = "Hat III V17"},
	{label = "Hat III V18",   value = "action18",  desc = "Hat III V18"},
	{label = "Hat III V19",   value = "action19",  desc = "Hat III V19"},
	{label = "Hat III V20",   value = "action20",  desc = "Hat III V20"},
	{label = "Hat III V21",   value = "action21",  desc = "Hat III V21"},
	{label = "Hat III V22",   value = "action22",  desc = "Hat III V22"},
	{label = "Hat III V23",   value = "action23",  desc = "Hat III V23"},
	{label = "Hat III V24",   value = "action24",  desc = "Hat III V24"},
	{label = "Hat III V25",   value = "action25",  desc = "Hat III V25"},
	{label = "Hat III V26",   value = "action26",  desc = "Hat III V26"},
	{label = "Hat III V27",   value = "action27",  desc = "Hat III V27"},
	{label = "Hat III V28",   value = "action28",  desc = "Hat III V28"},
	{label = "Hat III V29",   value = "action29",  desc = "Hat III V29"},
	{label = "Hat III V30",   value = "action30",  desc = "Hat III V30"},
	{label = "Hat III V31",   value = "action31",  desc = "Hat III V31"},
	{label = "Hat III V32",   value = "action32",  desc = "Hat III V32"},
	{label = "Hat III V33",   value = "action33",  desc = "Hat III V33"},
	{label = "Hat III V34",   value = "action34",  desc = "Hat III V34"},
	{label = "Hat III V35",   value = "action35",  desc = "Hat III V35"},
	{label = "Hat III V36",   value = "action36",  desc = "Hat III V36"},
	{label = "Hat III V37",   value = "action37",  desc = "Hat III V37"},
	{label = "Hat III V38",   value = "action38",  desc = "Hat III V38"},
	{label = "Hat III V39",   value = "action39",  desc = "Hat III V39"},
	{label = "Hat III V40",   value = "action40",  desc = "Hat III V40"},
	{label = "Hat III V41",   value = "action41",  desc = "Hat III V41"},
	{label = "Hat III V42",   value = "action42",  desc = "Hat III V42"},
	{label = "Hat III V43",   value = "action43",  desc = "Hat III V43"},
	{label = "Hat III V44",   value = "action44",  desc = "Hat III V44"},
	{label = "Hat III V45",   value = "action45",  desc = "Hat III V45"},
	{label = "Hat III V46",   value = "action46",  desc = "Hat III V46"},
	{label = "Hat III V47",   value = "action47",  desc = "Hat III V47"},
	{label = "Hat III V48",   value = "action48",  desc = "Hat III V48"},
	{label = "Hat III V49",   value = "action49",  desc = "Hat III V49"},
	{label = "Hat III V50",   value = "action50",  desc = "Hat III V50"},
	{label = "Hat III V51",   value = "action51",  desc = "Hat III V51"},
	{label = "Hat III V52",   value = "action52",  desc = "Hat III V52"},
	{label = "Hat III V53",   value = "action53",  desc = "Hat III V53"},
	{label = "Hat III V54",   value = "action54",  desc = "Hat III V54"},
	{label = "Hat III V55",   value = "action55",  desc = "Hat III V55"},
	{label = "Hat III V56",   value = "action56",  desc = "Hat III V56"},
	{label = "Hat III V57",   value = "action57",  desc = "Hat III V57"},
	{label = "Hat III V58",   value = "action58",  desc = "Hat III V58"},
	{label = "Hat III V59",   value = "action59",  desc = "Hat III V59"},
	{label = "Hat III V60",   value = "action60",  desc = "Hat III V60"},
	{label = "Hat III V61",   value = "action61",  desc = "Hat III V61"},
	{label = "Hat III V62",   value = "action62",  desc = "Hat III V62"},
	{label = "Hat III V63",   value = "action63",  desc = "Hat III V63"},
	{label = "Hat III V64",   value = "action64",  desc = "Hat III V64"},
	{label = "Hat III V65",   value = "action65",  desc = "Hat III V65"},
	{label = "Hat III V66",   value = "action66",  desc = "Hat III V66"},
	{label = "Hat III V67",   value = "action67",  desc = "Hat III V67"},
	{label = "Hat III V68",   value = "action68",  desc = "Hat III V68"},
	{label = "Hat III V69",   value = "action69",  desc = "Hat III V69"},
	{label = "Hat III V70",   value = "action70",  desc = "Hat III V70"},
}
 
--SHAWLS
Config.ShawlsOptionsTitle = "Shawls"
Config.ShawlsOptionsMain = {
	{label = "Shawl I",     value = "action01", desc = "Shawl I"  },
 
} 
 
Config.ShawlsOptionsV1Title = "Variants"
Config.ShawlsOptionsV1Main = {
	{label = "Shawl I V01", value = "action01", desc = "Shawl I V1"},
	{label = "Shawl I V02", value = "action02", desc = "Shawl I V2"},
	{label = "Shawl I V03", value = "action03", desc = "Shawl I V3"},
	{label = "Shawl I V04", value = "action04", desc = "Shawl I V4"},
	{label = "Shawl I V05", value = "action05", desc = "Shawl I V5"},
	{label = "Shawl I V06", value = "action06", desc = "Shawl I V6"},
}   
 
--BRACELETS
Config.BraceletsOptionsTitle = "Bracelets"
Config.BraceletsOptionsMain = {
	{label = "Bracelet I",     value = "action01", desc = "Bracelet I"  },
	{label = "Bracelet II",    value = "action02", desc = "Bracelet II" },
 
} 
 
Config.BraceletsOptionsV1Title = "Variants"
Config.BraceletsOptionsV1Main = {
	{label = "Bracelet I V01", value = "action01", desc = "Bracelet I V1"},
	{label = "Bracelet I V02", value = "action02", desc = "Bracelet I V2"},
	{label = "Bracelet I V03", value = "action03", desc = "Bracelet I V3"},
	{label = "Bracelet I V04", value = "action04", desc = "Bracelet I V4"},
	{label = "Bracelet I V05", value = "action05", desc = "Bracelet I V5"},
	{label = "Bracelet I V06", value = "action06", desc = "Bracelet I V6"},
}  

Config.BraceletsOptionsV2Title = "Variants"
Config.BraceletsOptionsV2Main = {
	{label = "Bracelet II V01", value = "action01", desc = "Bracelet II V1"},
	{label = "Bracelet II V02", value = "action02", desc = "Bracelet II V2"},
	{label = "Bracelet II V03", value = "action03", desc = "Bracelet II V3"},
	{label = "Bracelet II V04", value = "action04", desc = "Bracelet II V4"},
	{label = "Bracelet II V05", value = "action05", desc = "Bracelet II V5"},
	{label = "Bracelet II V06", value = "action06", desc = "Bracelet II V6"},
}  
 
 
--NECKLACES
Config.NecklacesOptionsTitle = "Necklaces"
Config.NecklacesOptionsMain = {
	{label = "Necklace I",   value = "action01", desc = "Necklace I" },
	{label = "Necklace II",  value = "action02", desc = "Necklace II"},
	{label = "Necklace III", value = "action03", desc = "Necklace II"},
	{label = "Necklace IV",  value = "action04", desc = "Necklace IV"},
	{label = "Necklace V",   value = "action05", desc = "Necklace V" },
} 
 
Config.NecklacesOptionsV1Title = "Variants"
Config.NecklacesOptionsV1Main = {
	{label = "Necklace I V01", value = "action01", desc = "Necklace I V1"},
	{label = "Necklace I V02", value = "action02", desc = "Necklace I V2"},
	{label = "Necklace I V03", value = "action03", desc = "Necklace I V3"},
	{label = "Necklace I V04", value = "action04", desc = "Necklace I V4"},
	{label = "Necklace I V05", value = "action05", desc = "Necklace I V5"},
	{label = "Necklace I V06", value = "action06", desc = "Necklace I V6"},
}  
 
Config.NecklacesOptionsV2Title = "Variants"
Config.NecklacesOptionsV2Main = {
	{label = "Necklace II V01", value = "action01", desc = "Necklace II V1"},
	{label = "Necklace II V02", value = "action02", desc = "Necklace II V2"},
	{label = "Necklace II V03", value = "action03", desc = "Necklace II V3"},
	{label = "Necklace II V04", value = "action04", desc = "Necklace II V4"},
	{label = "Necklace II V05", value = "action05", desc = "Necklace II V5"},
	{label = "Necklace II V06", value = "action06", desc = "Necklace II V6"},
} 
 
Config.NecklacesOptionsV3Title = "Variants"
Config.NecklacesOptionsV3Main = {
	{label = "Necklace III V01", value = "action01", desc = "Necklace III V1"},
	{label = "Necklace III V02", value = "action02", desc = "Necklace III V2"},
	{label = "Necklace III V03", value = "action03", desc = "Necklace III V3"},
	{label = "Necklace III V04", value = "action04", desc = "Necklace III V4"},
	{label = "Necklace III V05", value = "action05", desc = "Necklace III V5"},
	{label = "Necklace III V06", value = "action06", desc = "Necklace III V6"},
} 


Config.NecklacesOptionsV4Title = "Variants"
Config.NecklacesOptionsV4Main = {
	{label = "Necklace IV V01", value = "action01", desc = "Necklace IV V1"},
	{label = "Necklace IV V02", value = "action02", desc = "Necklace IV V2"},
	{label = "Necklace IV V03", value = "action03", desc = "Necklace IV V3"},
	{label = "Necklace IV V04", value = "action04", desc = "Necklace IV V4"},
	{label = "Necklace IV V05", value = "action05", desc = "Necklace IV V5"},
	{label = "Necklace IV V06", value = "action06", desc = "Necklace IV V6"},
} 


Config.NecklacesOptionsV5Title = "Variants"
Config.NecklacesOptionsV5Main = {
	{label = "Necklace V V01", value = "action01", desc = "Necklace V V1"},
} 
 
 
Config.GlovesOptionsTitle = "Gloves"
Config.GlovesOptionsMain = {
	{label = "Gloves I",  				 value = "action01", desc = "Gloves I" },
	{label = "Gloves II", 				 value = "action02", desc = "Gloves II"},
	{label = "Gloves III Long Sleeves",  value = "action03", desc = "Gloves III"},
	{label = "Gloves III Short Sleeves", value = "action04", desc = "Gloves III"},
} 
 
Config.GlovesOptionsV1Title = "Variants"
Config.GlovesOptionsV1Main = {
	{label = "Gloves I V01", value = "action01", desc = "Gloves I V1"},
	{label = "Gloves I V02", value = "action02", desc = "Gloves I V2"},
	{label = "Gloves I V03", value = "action03", desc = "Gloves I V3"},
	{label = "Gloves I V04", value = "action04", desc = "Gloves I V4"},
	{label = "Gloves I V05", value = "action05", desc = "Gloves I V5"},
	{label = "Gloves I V06", value = "action06", desc = "Gloves I V6"},
 
} 
 
Config.GlovesOptionsV2Title = "Variants"
Config.GlovesOptionsV2Main = {
	{label = "Gloves II V01", value = "action01", desc = "Gloves II V1"},
	{label = "Gloves II V02", value = "action02", desc = "Gloves II V2"},
	{label = "Gloves II V03", value = "action03", desc = "Gloves II V3"},
	{label = "Gloves II V04", value = "action04", desc = "Gloves II V4"},
	{label = "Gloves II V05", value = "action05", desc = "Gloves II V5"},
	{label = "Gloves II V06", value = "action06", desc = "Gloves II V6"},
 
}  

Config.GlovesOptionsV3Title = "Variants"
Config.GlovesOptionsV3Main = {
	{label = "Gloves III V01", value = "action01", desc = "Gloves III V1"},
	{label = "Gloves III V02", value = "action02", desc = "Gloves III V2"},
	{label = "Gloves III V03", value = "action03", desc = "Gloves III V3"},
	{label = "Gloves III V04", value = "action04", desc = "Gloves III V4"},
	{label = "Gloves III V05", value = "action05", desc = "Gloves III V5"},
	{label = "Gloves III V06", value = "action06", desc = "Gloves III V6"},
 
}  

Config.GlovesOptionsV4Title = "Variants"
Config.GlovesOptionsV4Main = {
	{label = "Gloves III V01", value = "action01", desc = "Gloves III V1"},
	{label = "Gloves III V02", value = "action02", desc = "Gloves III V2"},
	{label = "Gloves III V03", value = "action03", desc = "Gloves III V3"},
	{label = "Gloves III V04", value = "action04", desc = "Gloves III V4"},
	{label = "Gloves III V05", value = "action05", desc = "Gloves III V5"},
	{label = "Gloves III V06", value = "action06", desc = "Gloves III V6"},
}  
 
 
Config.NecklacesTitle = "Necklaces"
Config.NecklacesMain = {
	{label = "Necklaces#01 V1",  value = "action01", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action02", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action03", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action04", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action05", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action06", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action07", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action08", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action09", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action10", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action11", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action12", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action13", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action14", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action15", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action16", desc = "Hats"},
	{label = "Necklaces#01 V1",  value = "action17", desc = "Hats"},
} 
 
Config.DressesOutfitsTitle = "Dresses"
Config.DressesOutfitsMain = {
		{label = "Part1",    value = "action01",     desc = "Check All available dresses in this part"},
		{label = "Part2",    value = "action02",     desc = "Check All available dresses in this part"},
        {label = "Part3",    value = "action03",     desc = "Check All available dresses in this part"},
        {label = "Part4",    value = "action04",     desc = "Check All available dresses in this part"},
        {label = "Part5",    value = "action05",     desc = "Check All available dresses in this part"}, 
        {label = "Part6",    value = "action06",     desc = "Check All available dresses in this part"}, 
        {label = "Part7",    value = "action07",     desc = "Check All available dresses in this part"}, 
        {label = "Part8",    value = "action08",     desc = "Check All available dresses in this part"}, 
        {label = "Part9",    value = "action09",     desc = "Check All available dresses in this part"}, 		
        {label = "Part10",   value = "action10",     desc = "Check All available dresses in this part"}, 		
} 

Config.DressesOutfitsTitle1 = "Part1"
Config.DressesOutfitsPart1  = {
		{label = "Dress#01"          , value = "action01" , desc = "Dress#01"},
		{label = "Dress#02"          , value = "action02" , desc = "Dress#02"},
        {label = "Dress#03"          , value = "action03" , desc = "Dress#03"},		
		{label = "Dress#04"          , value = "action04" , desc = "Dress#04"},
		{label = "Dress#05"          , value = "action05" , desc = "Dress#05"},
        {label = "Dress#06"          , value = "action06" , desc = "Dress#06"},
        {label = "Dress#07"          , value = "action07" , desc = "Dress#07"},
        {label = "Dress#08"          , value = "action08" , desc = "Dress#08"},
        {label = "Dress#09"          , value = "action09" , desc = "Dress#09"},
        {label = "Dress#10"          , value = "action10" , desc = "Dress#10"},
        {label = "Dress#11"          , value = "action11" , desc = "Dress#11"},
        {label = "Dress#12"          , value = "action12" , desc = "Dress#12"},
}  
 
Config.DressesOutfitsTitle2 = "Part2"
Config.DressesOutfitsPart2  = {
		{label = "Dress#01",    value = "action01" ,     desc = "Dress#01"},
		{label = "Dress#02",    value = "action02" ,     desc = "Dress#02"},
        {label = "Dress#03",    value = "action03" ,     desc = "Dress#03"},
        {label = "Dress#04",    value = "action04" ,     desc = "Dress#04"},
        {label = "Dress#05",    value = "action05" ,     desc = "Dress#05"},
        {label = "Dress#06",    value = "action06" ,     desc = "Dress#06"},
        {label = "Dress#07",    value = "action07" ,     desc = "Dress#07"},
        {label = "Dress#08",    value = "action08" ,     desc = "Dress#08"},
        {label = "Dress#09",    value = "action09" ,     desc = "Dress#09"},
        {label = "Dress#10",    value = "action10" ,     desc = "Dress#10"},
        {label = "Dress#11",    value = "action11" ,     desc = "Dress#11"},
        {label = "Dress#12",    value = "action12" ,     desc = "Dress#12"},
        {label = "Dress#13",    value = "action13" ,     desc = "Dress#13"},
        {label = "Dress#14",    value = "action14" ,     desc = "Dress#14"},
        {label = "Dress#15",    value = "action15" ,     desc = "Dress#15"},
        {label = "Dress#16",    value = "action16" ,     desc = "Dress#16"},
        {label = "Dress#17",    value = "action17" ,     desc = "Dress#17"},
		{label = "Dress#18",    value = "action18" ,     desc = "Dress#18"},
		{label = "Dress#19",    value = "action19" ,     desc = "Dress#19"},
		{label = "Dress#20",    value = "action20" ,     desc = "Dress#20"},		
}  

 
Config.DressesOutfitsTitle3 = "Part3"
Config.DressesOutfitsPart3  = {
		{label = "Dress#01", value = "action01",  desc = "Dress#01"},
		{label = "Dress#02", value = "action02",  desc = "Dress#02"},
        {label = "Dress#03", value = "action03",  desc = "Dress#03"},
        {label = "Dress#04", value = "action04",  desc = "Dress#04"},
        {label = "Dress#05", value = "action05",  desc = "Dress#05"},
        {label = "Dress#06", value = "action06",  desc = "Dress#06"},
        {label = "Dress#07", value = "action07",  desc = "Dress#07"},
        {label = "Dress#08", value = "action08",  desc = "Dress#08"},
		{label = "Dress#09", value = "action09",  desc = "Dress#09"},	
        {label = "Dress#10", value = "action10",  desc = "Dress#10"},		
        {label = "Dress#11", value = "action11",  desc = "Dress#11"},						
}  


Config.DressesOutfitsTitle4 = "Part4"
Config.DressesOutfitsPart4  = {
		{label = "Dress#01",  value = "action01", desc =  "Dress#01"},
		{label = "Dress#02",  value = "action02", desc =  "Dress#02"},
        {label = "Dress#03",  value = "action03", desc =  "Dress#03"},
        {label = "Dress#04",  value = "action04", desc =  "Dress#04"},
        {label = "Dress#05",  value = "action05", desc =  "Dress#05"},		
        {label = "Dress#06",  value = "action06", desc =  "Dress#06"},		
        {label = "Dress#07",  value = "action07", desc =  "Dress#07"},		
        {label = "Dress#08",  value = "action08", desc =  "Dress#08"},		
        {label = "Dress#09",  value = "action09", desc =  "Dress#09"},		
        {label = "Dress#10",  value = "action10", desc =  "Dress#10"},		
        {label = "Dress#11",  value = "action11", desc =  "Dress#11"},		
        {label = "Dress#12",  value = "action12", desc =  "Dress#12"},		
        {label = "Dress#13",  value = "action13", desc =  "Dress#13"},		
        {label = "Dress#14",  value = "action14", desc =  "Dress#14"},		
        {label = "Dress#15",  value = "action15", desc =  "Dress#15"},		
        {label = "Dress#16",  value = "action16", desc =  "Dress#16"},		
        {label = "Dress#17",  value = "action17", desc =  "Dress#17"},		
        {label = "Dress#18",  value = "action18", desc =  "Dress#18"},		
        {label = "Dress#19",  value = "action19", desc =  "Dress#19"},		
        {label = "Dress#20",  value = "action20", desc =  "Dress#20"},		
        {label = "Dress#21",  value = "action21", desc =  "Dress#21"},		
        {label = "Dress#22",  value = "action22", desc =  "Dress#22"},	
        {label = "Dress#23",  value = "action23", desc =  "Dress#23"},
        {label = "Dress#24",  value = "action24", desc =  "Dress#24"},		
        {label = "Dress#25",  value = "action25", desc =  "Dress#25"},		
        {label = "Dress#26",  value = "action26", desc =  "Dress#26"},		
        {label = "Dress#27",  value = "action27", desc =  "Dress#27"},		
        {label = "Dress#28",  value = "action28", desc =  "Dress#28"},		
        {label = "Dress#29",  value = "action29", desc =  "Dress#29"},		
        {label = "Dress#30",  value = "action30", desc =  "Dress#30"},		
        {label = "Dress#31",  value = "action31", desc =  "Dress#31"},		
        {label = "Dress#32",  value = "action32", desc =  "Dress#32"},		
        {label = "Dress#33",  value = "action33", desc =  "Dress#33"},		
        {label = "Dress#34",  value = "action34", desc =  "Dress#34"},		
        {label = "Dress#35",  value = "action35", desc =  "Dress#35"},		
        {label = "Dress#36",  value = "action36", desc =  "Dress#36"},		
        {label = "Dress#37",  value = "action37", desc =  "Dress#37"},		
        {label = "Dress#38",  value = "action38", desc =  "Dress#38"},		
        {label = "Dress#39",  value = "action39", desc =  "Dress#39"},		
        {label = "Dress#40",  value = "action40", desc =  "Dress#40"},		
        {label = "Dress#41",  value = "action41", desc =  "Dress#41"},		
        {label = "Dress#42",  value = "action42", desc =  "Dress#42"},		
        {label = "Dress#43",  value = "action43", desc =  "Dress#43"},		
        {label = "Dress#44",  value = "action44", desc =  "Dress#44"},		
        {label = "Dress#45",  value = "action45", desc =  "Dress#45"},		
        {label = "Dress#46",  value = "action46", desc =  "Dress#46"},		
        {label = "Dress#47",  value = "action47", desc =  "Dress#47"},		
        {label = "Dress#48",  value = "action48", desc =  "Dress#48"},		
        {label = "Dress#49",  value = "action49", desc =  "Dress#49"},		
        {label = "Dress#50",  value = "action50", desc =  "Dress#50"},		
}  
 
Config.DressesOutfitsTitle5 = "Part5"
Config.DressesOutfitsPart5  = {
        {label = "Dress#01",  value = "action01", desc = "Dress#01"},
        {label = "Dress#02",  value = "action02", desc = "Dress#02"},			
        {label = "Dress#03",  value = "action03", desc = "Dress#03"},        
        {label = "Dress#04",  value = "action04", desc = "Dress#04"},
        {label = "Dress#05",  value = "action05", desc = "Dress#05"},		
        {label = "Dress#06",  value = "action06", desc = "Dress#06"},			
        {label = "Dress#07",  value = "action07", desc = "Dress#07"},	
        {label = "Dress#08",  value = "action08", desc = "Dress#08"},
        {label = "Dress#09",  value = "action09", desc = "Dress#09"},
        {label = "Dress#10",  value = "action10", desc = "Dress#10"},		
        {label = "Dress#11",  value = "action11", desc = "Dress#11"},		
	
}  

Config.DressesOutfitsTitle6 = "Part6"
Config.DressesOutfitsPart6  = {
        {label = "Dress#01",         value = "action01",     desc = "Dress#01"},
        {label = "Dress#02",         value = "action02",     desc = "Dress#02"},			
        {label = "Dress#03",         value = "action03",     desc = "Dress#03"}, 	
}  
 
 
Config.DressesOutfitsTitle7 = "Part7"
Config.DressesOutfitsPart7  = {
		{label = "Dress#01", value = "action01" , desc = "Dress#01"},
		{label = "Dress#02", value = "action02" , desc = "Dress#02"},
        {label = "Dress#03", value = "action03" , desc = "Dress#03"},		
		{label = "Dress#04", value = "action04" , desc = "Dress#04"},
		{label = "Dress#05", value = "action05" , desc = "Dress#05"},
        {label = "Dress#06", value = "action06" , desc = "Dress#06"},
        {label = "Dress#07", value = "action07" , desc = "Dress#07"},
        {label = "Dress#08", value = "action08" , desc = "Dress#08"},
        {label = "Dress#09", value = "action09" , desc = "Dress#09"},
        {label = "Dress#10", value = "action10" , desc = "Dress#10"},
        {label = "Dress#11", value = "action11" , desc = "Dress#11"},
        {label = "Dress#12", value = "action12" , desc = "Dress#12"},
        {label = "Dress#13", value = "action13" , desc = "Dress#13"},
        {label = "Dress#14", value = "action14" , desc = "Dress#14"},
        {label = "Dress#15", value = "action15",  desc = "Dress#15"},
        {label = "Dress#16", value = "action16",  desc = "Dress#16"},
        {label = "Dress#17", value = "action17",  desc = "Dress#17"},
        {label = "Dress#18", value = "action18",  desc = "Dress#18"},
        {label = "Dress#19", value = "action19",  desc = "Dress#19"},
        {label = "Dress#20", value = "action20",  desc = "Dress#20"},
        {label = "Dress#21", value = "action21",  desc = "Dress#21"},
        {label = "Dress#22", value = "action22",  desc = "Dress#22"},
        {label = "Dress#23", value = "action23",  desc = "Dress#23"},
        {label = "Dress#24", value = "action24",  desc = "Dress#24"},
        {label = "Dress#25", value = "action25",  desc = "Dress#25"},
        {label = "Dress#26", value = "action26",  desc = "Dress#26"},
        {label = "Dress#27", value = "action27",  desc = "Dress#27"},
        {label = "Dress#28", value = "action28",  desc = "Dress#28"},
        {label = "Dress#29", value = "action29",  desc = "Dress#29"},
        {label = "Dress#30", value = "action30",  desc = "Dress#30"},
        {label = "Dress#31", value = "action31",  desc = "Dress#31"},
        {label = "Dress#32", value = "action32",  desc = "Dress#32"},
        {label = "Dress#33", value = "action33",  desc = "Dress#33"},
        {label = "Dress#34", value = "action34",  desc = "Dress#34"},
        {label = "Dress#35", value = "action35",  desc = "Dress#35"},
        {label = "Dress#36", value = "action36",  desc = "Dress#36"},
        {label = "Dress#37", value = "action37",  desc = "Dress#37"},
        {label = "Dress#38", value = "action38",  desc = "Dress#38"},
        {label = "Dress#39", value = "action39",  desc = "Dress#39"},
        {label = "Dress#40", value = "action40",  desc = "Dress#40"},
        {label = "Dress#41", value = "action41",  desc = "Dress#41"},
        {label = "Dress#42", value = "action42",  desc = "Dress#42"},
        {label = "Dress#43", value = "action43",  desc = "Dress#43"},
        {label = "Dress#44", value = "action44",  desc = "Dress#44"},
        {label = "Dress#45", value = "action45",  desc = "Dress#45"},
        {label = "Dress#46", value = "action46",  desc = "Dress#46"},
        {label = "Dress#47", value = "action47",  desc = "Dress#47"},
        {label = "Dress#48", value = "action48",  desc = "Dress#48"},
        {label = "Dress#49", value = "action49",  desc = "Dress#49"},
        {label = "Dress#50", value = "action50",  desc = "Dress#50"},
        {label = "Dress#51", value = "action51",  desc = "Dress#51"},
        {label = "Dress#52", value = "action52",  desc = "Dress#52"},
        {label = "Dress#53", value = "action53",  desc = "Dress#53"},
        {label = "Dress#54", value = "action54",  desc = "Dress#54"},
        {label = "Dress#55", value = "action55",  desc = "Dress#55"},
        {label = "Dress#56", value = "action56",  desc = "Dress#56"},
        {label = "Dress#57", value = "action57",  desc = "Dress#57"},
        {label = "Dress#58", value = "action58",  desc = "Dress#58"},
        {label = "Dress#59", value = "action59",  desc = "Dress#59"},
        {label = "Dress#60", value = "action60",  desc = "Dress#60"},
        {label = "Dress#61", value = "action61",  desc = "Dress#61"},
        {label = "Dress#62", value = "action62",  desc = "Dress#62"},
        {label = "Dress#63", value = "action63",  desc = "Dress#63"},
        {label = "Dress#64", value = "action64",  desc = "Dress#64"},
        {label = "Dress#65", value = "action65",  desc = "Dress#65"},
        {label = "Dress#66", value = "action66",  desc = "Dress#66"},
        {label = "Dress#67", value = "action67",  desc = "Dress#67"},
        {label = "Dress#68", value = "action68",  desc = "Dress#68"},
        {label = "Dress#69", value = "action69",  desc = "Dress#69"},
        {label = "Dress#70", value = "action70",  desc = "Dress#70"},
        {label = "Dress#71", value = "action71",  desc = "Dress#71"},
        {label = "Dress#72", value = "action72",  desc = "Dress#72"},
        {label = "Dress#73", value = "action73",  desc = "Dress#73"},
        {label = "Dress#74", value = "action74",  desc = "Dress#74"},
        {label = "Dress#75", value = "action75",  desc = "Dress#75"},
        {label = "Dress#76", value = "action76",  desc = "Dress#76"},
        {label = "Dress#77", value = "action77",  desc = "Dress#77"},
        {label = "Dress#78", value = "action78",  desc = "Dress#78"},
        {label = "Dress#79", value = "action79",  desc = "Dress#79"},
        {label = "Dress#80", value = "action80",  desc = "Dress#80"},
        {label = "Dress#81", value = "action81",  desc = "Dress#81"},
        {label = "Dress#82", value = "action82",  desc = "Dress#82"},
        {label = "Dress#83", value = "action83",  desc = "Dress#83"},
        {label = "Dress#84", value = "action84",  desc = "Dress#84"},
        {label = "Dress#85", value = "action85",  desc = "Dress#85"},
}   
 
 
Config.DressesOutfitsTitle8 = "Part8"
Config.DressesOutfitsPart8  = {
	   {label = "Dress#01"    , value = "action01" , desc = "Dress#01"},
	   {label = "Dress#02"    , value = "action02" , desc = "Dress#02"},
       {label = "Dress#03"    , value = "action03" , desc = "Dress#03"},		
	   {label = "Dress#04"    , value = "action04" , desc = "Dress#04"},
	   {label = "Dress#05"    , value = "action05" , desc = "Dress#05"},
       {label = "Dress#06"    , value = "action06" , desc = "Dress#06"},
       {label = "Dress#07"    , value = "action07" , desc = "Dress#07"},
}   
 
 
Config.DressesOutfitsTitle9 = "Part9"
Config.DressesOutfitsPart9  = {
		{label = "Dress#01"  , value = "action01" , desc = "Dress#01"},
		{label = "Dress#02"  , value = "action02" , desc = "Dress#02"},
        {label = "Dress#03"  , value = "action03" , desc = "Dress#03"},		
		{label = "Dress#04"  , value = "action04" , desc = "Dress#04"},
		{label = "Dress#05"  , value = "action05" , desc = "Dress#05"},
		{label = "Dress#06"  , value = "action06" , desc = "Dress#06"},
		{label = "Dress#07"  , value = "action07" , desc = "Dress#07"},
		{label = "Dress#08"  , value = "action08" , desc = "Dress#08"},
		{label = "Dress#09"  , value = "action09" , desc = "Dress#09"},
		{label = "Dress#010" , value = "action10" , desc = "Dress#10"},
		{label = "Dress#011" , value = "action11" , desc = "Dress#11"},
		{label = "Dress#012" , value = "action12" , desc = "Dress#12"},
		{label = "Dress#013" , value = "action13" , desc = "Dress#13"},
		{label = "Dress#014" , value = "action14" , desc = "Dress#14"},
		{label = "Dress#015" , value = "action15" , desc = "Dress#15"},
		{label = "Dress#016" , value = "action16" , desc = "Dress#16"},
		{label = "Dress#017" , value = "action17" , desc = "Dress#17"},
		{label = "Dress#018" , value = "action18" , desc = "Dress#18"},
		{label = "Dress#019" , value = "action19" , desc = "Dress#19"},
} 
 
 
Config.DressesOutfitsTitle10 = "Part10"
Config.DressesOutfitsPart10  = {
		{label = "Wedding Dress#01",   value = "action01",  desc = "Wedding Dress#01"},
		{label = "Wedding Dress#02",   value = "action02",  desc = "Wedding Dress#02"},
        {label = "Wedding Dress#03",   value = "action03",  desc = "Wedding Dress#03"},		
		{label = "Wedding Dress#04",   value = "action04",  desc = "Wedding Dress#04"},
}  

 
-----------------------------------------------------------------------------------------------
									--KEYBINDS LIST--
-----------------------------------------------------------------------------------------------

--   -- Letters
--   ["A"] = 0x7065027D,
--   ["B"] = 0x4CC0E2FE,
--   ["C"] = 0x9959A6F0,
--   ["D"] = 0xB4E465B4,
--   ["E"] = 0xCEFD9220,
--   ["F"] = 0xB2F377E8,
--   ["G"] = 0x760A9C6F,
--   ["H"] = 0x24978A28,
--   ["I"] = 0xC1989F95,
--   ["J"] = 0xF3830D8E,
--   -- Missing K
--   ["L"] = 0x80F28E95,
--   ["M"] = 0xE31C6A41,
--   ["N"] = 0x4BC9DABB,
--   ["O"] = 0xF1301666,
--   ["P"] = 0xD82E0BD2,
--   ["Q"] = 0xDE794E3E,
--   ["R"] = 0xE30CD707,
--   ["S"] = 0xD27782E3,
--   -- Missing T
--   ["U"] = 0xD8F73058,
--   ["V"] = 0x7F8D09B8,
--   ["W"] = 0x8FD015D8,
--   ["X"] = 0x8CC9CD42,
--   -- Missing Y
--   ["Z"] = 0x26E9DC00,
--   -- Symbol Keys
--   ["RIGHTBRACKET"] = 0xA5BDCD3C,
--   ["LEFTBRACKET"] = 0x430593AA,
--   -- Mouse buttons
--   ["MOUSE1"] = 0x07CE1E61,
--   ["MOUSE2"] = 0xF84FA74F,
--   ["MOUSE3"] = 0xCEE12B50,
--   ["MWUP"] = 0x3076E97C,
--   -- Modifier Keys
--   ["CTRL"] = 0xDB096B85,
--   ["TAB"] = 0xB238FE0B,
--   ["SHIFT"] = 0x8FFC75D6,
--   ["SPACEBAR"] = 0xD9D0E1C0,
--   ["ENTER"] = 0xC7B5340A,
--   ["BACKSPACE"] = 0x156F7119,
--   ["LALT"] = 0x8AAA0AD4,
--   ["DEL"] = 0x4AF4D473,
--   ["PGUP"] = 0x446258B6,
--   ["PGDN"] = 0x3C3DD371,
--   -- Function Keys
--   ["F1"] = 0xA8E3F467,
--   ["F4"] = 0x1F6D95E5,
--   ["F6"] = 0x3C0A40F2,
--   -- Number Keys
--   ["1"] = 0xE6F612E4,
--   ["2"] = 0x1CE6D9EB,
--   ["3"] = 0x4F49CC4C,
--   ["4"] = 0x8F9F9E58,
--   ["5"] = 0xAB62E997,
--   ["6"] = 0xA1FDE2A6,
--   ["7"] = 0xB03A913B,
--   ["8"] = 0x42385422,
--   -- Arrow Keys
--   ["DOWN"] = 0x05CA7C52,
--   ["UP"] = 0x6319DB71,
--   ["LEFT"] = 0xA65EBAB4,
--   ["RIGHT"] = 0xDEB34313
