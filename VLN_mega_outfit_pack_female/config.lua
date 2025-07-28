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
				-- MENU --
-------------------------------------------

Config.Debug		     = false
Config.GeneralMenuIsUsed = false      -- Only turn to true if you are using this general menu script from tebex : https://sire-vlc-scripts.tebex.io/package/5765603
Config.MenuActive 		 = false       -- If the menu is active when pressing the key or not
Config.OpenMenuKey 		 = 0xA1FDE2A6 -- [6] by default  
Config.Code 			 = ""		  -- Leave it as it is :) 		

--------------------------------------------
               -- EVENT CALLS -- 
--------------------------------------------

--To add an outfit as inventory item, simply create an item as you would for any other item and on it's use event (here's an example with the vorp server RegisterUsableItem):

-- VORP.RegisterUsableItem("outfit1", function(data)
--  TriggerClientEvent('sirevlc_mega_pack_female', data.source, 'womenoutfit01')
-- end)
 
-- Need more informations ? check our guide in the guides discord channel 
-- https://drive.google.com/drive/folders/1GFckFoOfBEBb6zuU_XazpREz6g3ZgJvx
 
--Here's the classic event call with all options listed below:	

		   
--TriggerEvent("sirevlc_mega_pack_female",InsertOptionHere)
--List of Options :
-- # MAIN MENU : 
--"mainmenu"
 
-- # MENU PART1 : 
-- "womenoutfit1"
-- "womenoutfit2"
-- "womenoutfit3"
-- "womenoutfit4"
-- "womenoutfit5"
-- "womenoutfit6"
-- "womenoutfit7"
-- "womenoutfit8"
-- "womenoutfit9"
-- "womenoutfit10"
-- "womenoutfit11"
-- "womenoutfit12"
-- "womenoutfit13"
-- "womenoutfit14"
-- "womenoutfit15"
-- "womenoutfit16"
-- "womenoutfit17"
-- "womenoutfit18"
-- "womenoutfit19"
-- "womenoutfit20"
-- "womenoutfit21"
-- "womenoutfit22"
-- "womenoutfit23"
-- "womenoutfit24"
-- "womenoutfit25"
-- "womenoutfit26"
-- "womenoutfit27"
-- "womenoutfit28"
-- "womenoutfit29"
-- "womenoutfit30"
-- "womenoutfit31"
-- "womenoutfit32"
-- "womenoutfit33"
-- "womenoutfit34"
-- "womenoutfit35"
-- "womenoutfit36"
-- "womenoutfit37"
-- "womenoutfit38"
-- "womenoutfit39"
-- "womenoutfit40"
-- "womenoutfit41"
-- "womenoutfit42"
-- "womenoutfit43"
-- "womenoutfit44"
-- "womenoutfit45"
-- "womenoutfit46"
-- "womenoutfit47"
-- "womenoutfit48"
-- "womenoutfit49"
-- "womenoutfit50"
-- "womenoutfit51"
-- "womenoutfit52"
-- "womenoutfit53"
-- "womenoutfit54"
-- "womenoutfit55"
-- "womenoutfit56"
-- "womenoutfit57"

 
-- # MENU PART2 : 
-- "womenoutfit58"
-- "womenoutfit59"
-- "womenoutfit60"
-- "womenoutfit61"
-- "womenoutfit62"
-- "womenoutfit63"
-- "womenoutfit64"
-- "womenoutfit65"
-- "womenoutfit66"
-- "womenoutfit67"
-- "womenoutfit68"
-- "womenoutfit69"
-- "womenoutfit70"
-- "womenoutfit71"
-- "womenoutfit72"
-- "womenoutfit73"
-- "womenoutfit74"
-- "womenoutfit75"
-- "womenoutfit76"
-- "womenoutfit77"
-- "womenoutfit78"
-- "womenoutfit79"
-- "womenoutfit80"
-- "womenoutfit81"
-- "womenoutfit82"
-- "womenoutfit83"
-- "womenoutfit84"
-- "womenoutfit85"
-- "womenoutfit86"
-- "womenoutfit87"
-- "womenoutfit88"
-- "womenoutfit89"
-- "womenoutfit90"
-- "womenoutfit91"
-- "womenoutfit92"
-- "womenoutfit93"
 
-- # MENU PART3 : 
-- "womenoutfit94"
-- "womenoutfit95"
-- "womenoutfit96"
-- "womenoutfit97"
-- "womenoutfit98"
-- "womenoutfit99"
-- "womenoutfit100"
-- "womenoutfit101"
-- "womenoutfit102"
-- "womenoutfit103"
-- "womenoutfit104"
-- "womenoutfit105"
-- "womenoutfit106"
-- "womenoutfit107"
-- "womenoutfit108"
-- "womenoutfit109"
-- "womenoutfit110"
-- "womenoutfit111"
-- "womenoutfit112"
-- "womenoutfit113"
-- "womenoutfit114"
-- "womenoutfit115"
-- "womenoutfit116"
-- "womenoutfit117"
-- "womenoutfit118"
-- "womenoutfit119"
-- "womenoutfit120"
-- "womenoutfit121"
-- "womenoutfit122"
-- "womenoutfit123"
-- "womenoutfit124"
-- "womenoutfit125"
-- "womenoutfit126"
-- "womenoutfit127"
-- "womenoutfit128"
-- "womenoutfit129"
-- "womenoutfit130"
-- "womenoutfit131"
-- "womenoutfit132"
-- "womenoutfit133"
-- "womenoutfit134"
-- "womenoutfit135"
-- "womenoutfit136"
-- "womenoutfit137"
-- "womenoutfit138"
-- "womenoutfit139"
-- "womenoutfit140"
-- "womenoutfit141"
-- "womenoutfit142"
-- "womenoutfit143"
-- "womenoutfit144"
-- "womenoutfit145"
-- "womenoutfit146"
-- "womenoutfit147"
-- "womenoutfit148"
-- "womenoutfit149"
-- "womenoutfit150"
-- "womenoutfit151"
-- "womenoutfit152"
-- "womenoutfit153"
-- "womenoutfit154"
-- "womenoutfit155"
-- "womenoutfit156"
-- "womenoutfit157"
-- "womenoutfit158"
-- "womenoutfit159"
-- "womenoutfit160"
-- "womenoutfit161"
-- "womenoutfit162"
-- "womenoutfit163"
-- "womenoutfit164"
-- "womenoutfit165"
-- "womenoutfit166"
-- "womenoutfit167"
-- "womenoutfit168"
-- "womenoutfit169"
-- "womenoutfit170"
-- "womenoutfit171"
-- "womenoutfit172"
-- "womenoutfit173"
 
-- # MENU PART4 :
-- "womenoutfit174"
-- "womenoutfit175"
-- "womenoutfit176"
-- "womenoutfit177"
-- "womenoutfit178"
-- "womenoutfit179"
-- "womenoutfit180"
-- "womenoutfit181"
-- "womenoutfit182"
-- "womenoutfit183"
-- "womenoutfit184"
-- "womenoutfit185"
-- "womenoutfit186"
-- "womenoutfit187"
-- "womenoutfit188"
-- "womenoutfit189"
-- "womenoutfit190"
 
-- # MENU PART5 :
-- "womenoutfit191"
-- "womenoutfit192"
-- "womenoutfit193"
-- "womenoutfit194"
-- "womenoutfit195"
-- "womenoutfit196"
-- "womenoutfit197"
-- "womenoutfit198"
-- "womenoutfit199"
-- "womenoutfit200"
-- "womenoutfit201"
-- "womenoutfit202"
-- "womenoutfit203"
-- "womenoutfit204"
-- "womenoutfit205"
-- "womenoutfit206"
-- "womenoutfit207"
-- "womenoutfit208"
-- "womenoutfit209"
-- "womenoutfit210"
-- "womenoutfit211"
-- "womenoutfit212"
-- "womenoutfit213"
-- "womenoutfit214"
-- "womenoutfit215"
-- "womenoutfit216"
-- "womenoutfit217"
-- "womenoutfit218"
-- "womenoutfit219"
-- "womenoutfit220"
-- "womenoutfit221"
-- "womenoutfit222"
-- "womenoutfit223"
-- "womenoutfit224"
-- "womenoutfit225"
-- "womenoutfit226"
-- "womenoutfit227"
-- "womenoutfit228"
-- "womenoutfit229"
-- "womenoutfit230"
 
-- # MENU PART6 :
--"womenoutfit231"
--"womenoutfit232"
--"womenoutfit233"
--"womenoutfit234"
--"womenoutfit235"
--"womenoutfit236"
--"womenoutfit237"
--"womenoutfit238"
--"womenoutfit239"
--"womenoutfit240"
--"womenoutfit241"
--"womenoutfit242"
--"womenoutfit243"
--"womenoutfit244"
--"womenoutfit245"
--"womenoutfit246"
--"womenoutfit247"
--"womenoutfit248"
--"womenoutfit249"
--"womenoutfit250"
--"womenoutfit251"
--"womenoutfit252"
--"womenoutfit253"
--"womenoutfit254"
--"womenoutfit255"
 
-- # MENU PART7 :
-- "womenoutfit256"
-- "womenoutfit257"
-- "womenoutfit258"
-- "womenoutfit259"
-- "womenoutfit260"
-- "womenoutfit261"
-- "womenoutfit262"
-- "womenoutfit263"
-- "womenoutfit264"
-- "womenoutfit265"
-- "womenoutfit266"
-- "womenoutfit267"
 
-- # MENU PART8 :
-- "womenoutfit268"
-- "womenoutfit269"
-- "womenoutfit270"
-- "womenoutfit271"
-- "womenoutfit272"
-- "womenoutfit273"
-- "womenoutfit274"
-- "womenoutfit275"
-- "womenoutfit276"
-- "womenoutfit277"
-- "womenoutfit278"
-- "womenoutfit279"
-- "womenoutfit280"
-- "womenoutfit281"
-- "womenoutfit282"
-- "womenoutfit283"
-- "womenoutfit284"
-- "womenoutfit285"
-- "womenoutfit286"
-- "womenoutfit287"
-- "womenoutfit288"
-- "womenoutfit289"
-- "womenoutfit290"
-- "womenoutfit291"
-- "womenoutfit292"
-- "womenoutfit293"
-- "womenoutfit294"
-- "womenoutfit295"
-- "womenoutfit296"
-- "womenoutfit297"
-- "womenoutfit298"
-- "womenoutfit299"
-- "womenoutfit300"
-- "womenoutfit301"
-- "womenoutfit302"
-- "womenoutfit303"
-- "womenoutfit304"
-- "womenoutfit305"
-- "womenoutfit306"
-- "womenoutfit307"
-- "womenoutfit308"
-- "womenoutfit309"
 
-- # MENU PART9 :
-- "womenoutfit310"
-- "womenoutfit311"
-- "womenoutfit312"
-- "womenoutfit313"
-- "womenoutfit314"
-- "womenoutfit315"
-- "womenoutfit316"
-- "womenoutfit317"
-- "womenoutfit318"
-- "womenoutfit319"
-- "womenoutfit320"
-- "womenoutfit321"
-- "womenoutfit322"
-- "womenoutfit323"
-- "womenoutfit324"
-- "womenoutfit325"
-- "womenoutfit326"
-- "womenoutfit327"
-- "womenoutfit328"
-- "womenoutfit329"
-- "womenoutfit330"
-- "womenoutfit331"
-- "womenoutfit332"
-- "womenoutfit333"
-- "womenoutfit334"
-- "womenoutfit335"
-- "womenoutfit336"
-- "womenoutfit337"
-- "womenoutfit338"
-- "womenoutfit339"
-- "womenoutfit340"
-- "womenoutfit341"
-- "womenoutfit342"
-- "womenoutfit343"
-- "womenoutfit344"
-- "womenoutfit345"
-- "womenoutfit346"
-- "womenoutfit347"
-- "womenoutfit348"
-- "womenoutfit349"
 
-- # MENU PART10 :
-- "womenoutfit350"
-- "womenoutfit351"
-- "womenoutfit352"
-- "womenoutfit353"
-- "womenoutfit354"
-- "womenoutfit355"
-- "womenoutfit356"
-- "womenoutfit357"
-- "womenoutfit358"
-- "womenoutfit359"
-- "womenoutfit360"
-- "womenoutfit361"
-- "womenoutfit362"
-- "womenoutfit363"
-- "womenoutfit364"
-- "womenoutfit365"
-- "womenoutfit366"
-- "womenoutfit367"
-- "womenoutfit368"
-- "womenoutfit369"
-- "womenoutfit370"
-- "womenoutfit371"
-- "womenoutfit372"
-- "womenoutfit373"
-- "womenoutfit374"
-- "womenoutfit375"
-- "womenoutfit376"
-- "womenoutfit377"
-- "womenoutfit378"
-- "womenoutfit379"
-- "womenoutfit380"
-- "womenoutfit381"
-- "womenoutfit382"
-- "womenoutfit383"
-- "womenoutfit384"
-- "womenoutfit385"
-- "womenoutfit386"
-- "womenoutfit387"
-- "womenoutfit388"
-- "womenoutfit389"
-- "womenoutfit390"
-- "womenoutfit391"
 
-- # MENU PART11 :
-- "womenoutfit448"
-- "womenoutfit449"
-- "womenoutfit450"
-- "womenoutfit451"
-- "womenoutfit452"
-- "womenoutfit453"
-- "womenoutfit454"
-- "womenoutfit455"
-- "womenoutfit456"
-- "womenoutfit457"
-- "womenoutfit458"
-- "womenoutfit459"
-- "womenoutfit460"
-- "womenoutfit461"
-- "womenoutfit462"
-- "womenoutfit463"
-- "womenoutfit464"
-- "womenoutfit465"
-- "womenoutfit466"
-- "womenoutfit467"
-- "womenoutfit468"
 
-- # MENU PART12 :
-- "womenoutfit469"
-- "womenoutfit470"
-- "womenoutfit471"
-- "womenoutfit472"
-- "womenoutfit473"
-- "womenoutfit474"
-- "womenoutfit475"
-- "womenoutfit476"
-- "womenoutfit477"
-- "womenoutfit478"
-- "womenoutfit479"
-- "womenoutfit480"
-- "womenoutfit481"
-- "womenoutfit482"
-- "womenoutfit483"
-- "womenoutfit484"
 
-- # MENU PART13 :
-- "womenoutfit495"
-- "womenoutfit496"
-- "womenoutfit497"
-- "womenoutfit498"
-- "womenoutfit499"
-- "womenoutfit500"
-- "womenoutfit501"
-- "womenoutfit502"
-- "womenoutfit503"
-- "womenoutfit504"
-- "womenoutfit505"
-- "womenoutfit506"
-- "womenoutfit507"
-- "womenoutfit508"
-- "womenoutfit509"
-- "womenoutfit510"
-- "womenoutfit511"
-- "womenoutfit512"
-- "womenoutfit513"
-- "womenoutfit514"
-- "womenoutfit515"
-- "womenoutfit516"
-- "womenoutfit517"
-- "womenoutfit518"
-- "womenoutfit519"
-- "womenoutfit520"
-- "womenoutfit521"
-- "womenoutfit522"
-- "womenoutfit523"
-- "womenoutfit524"
-- "womenoutfit525"
-- "womenoutfit526"
-- "womenoutfit527"
-- "womenoutfit528"
-- "womenoutfit529"
-- "womenoutfit530"
-- "womenoutfit531"
-- "womenoutfit532"
-- "womenoutfit533"
-- "womenoutfit534"
-- "womenoutfit535"
-- "womenoutfit536"
-- "womenoutfit537"
-- "womenoutfit538"
-- "womenoutfit539"
-- "womenoutfit540"
-- "womenoutfit541"
-- "womenoutfit542"
-- "womenoutfit543"
-- "womenoutfit544"
-- "womenoutfit545"
-- "womenoutfit546"
-- "womenoutfit547"
-- "womenoutfit548"
-- "womenoutfit549"
-- "womenoutfit550"
-- "womenoutfit551"
-- "womenoutfit552"
-- "womenoutfit553"
-- "womenoutfit554"
-- "womenoutfit555"
-- "womenoutfit556"
-- "womenoutfit557"
-- "womenoutfit558"
-- "womenoutfit559"
-- "womenoutfit560"
-- "womenoutfit561"
 
-- # MENU PART14 :
-- "womenoutfit562"
-- "womenoutfit563"
-- "womenoutfit564"
-- "womenoutfit565"
-- "womenoutfit566"
-- "womenoutfit567"
-- "womenoutfit568"
-- "womenoutfit569"
-- "womenoutfit570"
-- "womenoutfit571"
-- "womenoutfit572"
-- "womenoutfit573"
-- "womenoutfit574"
-- "womenoutfit575"
-- "womenoutfit576"
-- "womenoutfit577"
-- "womenoutfit578"
-- "womenoutfit579"
-- "womenoutfit580"
-- "womenoutfit581"
-- "womenoutfit582"
-- "womenoutfit583"
-- "womenoutfit584"
-- "womenoutfit585"
-- "womenoutfit586"
-- "womenoutfit587"
-- "womenoutfit588"
-- "womenoutfit589"
-- "womenoutfit590"
-- "womenoutfit591"
-- "womenoutfit592"
-- "womenoutfit593"
-- "womenoutfit594"
-- "womenoutfit595"
-- "womenoutfit596"
-- "womenoutfit597"
-- "womenoutfit598"
 
-- # MENU PART15 :
-- "womenoutfit599"
-- "womenoutfit600"
-- "womenoutfit601"
-- "womenoutfit602"
-- "womenoutfit603"
-- "womenoutfit604"
-- "womenoutfit605"
-- "womenoutfit606"
-- "womenoutfit607"
-- "womenoutfit608"
-- "womenoutfit609"
-- "womenoutfit392"
-- "womenoutfit393"
-- "womenoutfit394"
-- "womenoutfit395"
-- "womenoutfit396"
-- "womenoutfit397"
-- "womenoutfit398"
-- "womenoutfit399"
-- "womenoutfit400"
-- "womenoutfit401"
-- "womenoutfit402"
-- "womenoutfit403"
-- "womenoutfit404"
-- "womenoutfit405"
-- "womenoutfit406"
-- "womenoutfit407"
-- "womenoutfit408"
-- "womenoutfit409"
-- "womenoutfit410"
-- "womenoutfit411"
-- "womenoutfit485"
-- "womenoutfit486"
-- "womenoutfit487"
-- "womenoutfit488"
-- "womenoutfit489"
-- "womenoutfit490"
-- "womenoutfit491"
-- "womenoutfit492"
-- "womenoutfit493"
-- "womenoutfit494"
 
-- # MENU PART16 :
-- "womenoutfit610"
-- "womenoutfit611"
-- "womenoutfit612"
-- "womenoutfit613"
-- "womenoutfit614"
-- "womenoutfit615"
-- "womenoutfit616"
-- "womenoutfit617"
-- "womenoutfit618"
-- "womenoutfit619"
-- "womenoutfit620"
-- "womenoutfit621"
-- "womenoutfit622"
-- "womenoutfit623"
-- "womenoutfit624"
-- "womenoutfit625"
-- "womenoutfit626"
-- "womenoutfit627"
-- "womenoutfit628"
-- "womenoutfit629"
-- "womenoutfit630"
-- "womenoutfit631"
-- "womenoutfit632"
-- "womenoutfit633"
-- "womenoutfit634"
-- "womenoutfit635"
-- "womenoutfit636"
-- "womenoutfit637"
-- "womenoutfit638"
-- "womenoutfit639"
-- "womenoutfit640"
-- "womenoutfit641"
-- "womenoutfit642"
-- "womenoutfit643"
-- "womenoutfit644"
-- "womenoutfit645"
-- "womenoutfit646"
-- "womenoutfit647"
-- "womenoutfit648"
-- "womenoutfit649"
-- "womenoutfit650"
-- "womenoutfit651"
-- "womenoutfit652"
-- "womenoutfit653"
-- "womenoutfit654"
-- "womenoutfit655"
-- "womenoutfit656"
-- "womenoutfit657"
-- "womenoutfit658"
-- "womenoutfit659"
-- "womenoutfit660"
-- "womenoutfit661"
-- "womenoutfit662"
-- "womenoutfit663"
-- "womenoutfit664"
-- "womenoutfit665"
-- "womenoutfit666"
-- "womenoutfit667"
-- "womenoutfit668"
-- "womenoutfit669"
-- "womenoutfit670"
-- "womenoutfit671"
-- "womenoutfit672"
-- "womenoutfit673"
-- "womenoutfit674"
-- "womenoutfit675"
-- "womenoutfit676"
-- "womenoutfit677"
-- "womenoutfit678"
-- "womenoutfit679"
-- "womenoutfit680"
-- "womenoutfit681"
-- "womenoutfit682"
-- "womenoutfit683"
-- "womenoutfit684"
-- "womenoutfit685"
-- "womenoutfit686"
-- "womenoutfit687"
-- "womenoutfit688"
-- "womenoutfit689"
-- "womenoutfit690"
-- "womenoutfit691"
-- "womenoutfit692"
-- "womenoutfit693"
-- "womenoutfit694"
-- "womenoutfit695"
-- "womenoutfit696"
-- "womenoutfit697"
-- "womenoutfit698"
-- "womenoutfit699"
-- "womenoutfit700"
-- "womenoutfit701"
-- "womenoutfit702"
-- "womenoutfit703"
-- "womenoutfit704"
-- "womenoutfit705"
-- "womenoutfit706"
-- "womenoutfit707"
-- "womenoutfit708"
-- "womenoutfit709"
-- "womenoutfit710"
-- "womenoutfit711"


-- # MENU PART17 :
-- "womenoutfit754"
-- "womenoutfit755"
-- "womenoutfit756"
-- "womenoutfit757"
-- "womenoutfit758"
-- "womenoutfit759"
-- "womenoutfit760"
-- "womenoutfit761"
-- "womenoutfit762"
-- "womenoutfit763"
-- "womenoutfit764"
-- "womenoutfit765"
-- "womenoutfit766"
-- "womenoutfit767"
-- "womenoutfit768"
-- "womenoutfit769"
-- "womenoutfit770"
-- "womenoutfit771"
-- "womenoutfit772"
-- "womenoutfit773"


-- # MENU PART18 :
-- "womenoutfit774"
-- "womenoutfit775"
-- "womenoutfit776"
-- "womenoutfit777"
-- "womenoutfit778"
-- "womenoutfit779"
-- "womenoutfit780"
-- "womenoutfit781"
-- "womenoutfit782"
-- "womenoutfit783"
-- "womenoutfit784"
-- "womenoutfit785"
-- "womenoutfit786"
-- "womenoutfit787"
-- "womenoutfit788"
-- "womenoutfit789"
-- "womenoutfit790"
-- "womenoutfit791"
-- "womenoutfit792"
-- "womenoutfit793"
-- "womenoutfit794"
-- "womenoutfit795"
-- "womenoutfit796"
-- "womenoutfit797"
-- "womenoutfit798"
-- "womenoutfit799"
-- "womenoutfit800"
-- "womenoutfit801"
-- "womenoutfit802"
-- "womenoutfit803"
-- "womenoutfit804"
-- "womenoutfit805"
-- "womenoutfit806"
-- "womenoutfit807"
-- "womenoutfit808"
-- "womenoutfit809"
-- "womenoutfit810"
-- "womenoutfit811"
-- "womenoutfit812"
-- "womenoutfit813"


-- # MENU PART19 :
-- "womenoutfit814"
-- "womenoutfit815"
-- "womenoutfit816"
-- "womenoutfit817"
-- "womenoutfit818"
-- "womenoutfit819"
-- "womenoutfit820"
-- "womenoutfit821"
-- "womenoutfit822"
-- "womenoutfit823"
-- "womenoutfit824"
-- "womenoutfit825"
-- "womenoutfit826"
-- "womenoutfit827"
-- "womenoutfit828"
-- "womenoutfit829"
-- "womenoutfit830"
-- "womenoutfit831"
-- "womenoutfit832"
-- "womenoutfit833"
-- "womenoutfit834"
-- "womenoutfit835"
-- "womenoutfit836"


-- # MENU PART20 :
-- "womenoutfit837"
-- "womenoutfit838"
-- "womenoutfit839"
-- "womenoutfit840"
-- "womenoutfit841"
-- "womenoutfit842"
-- "womenoutfit843"
-- "womenoutfit844"
-- "womenoutfit845"
-- "womenoutfit846"
-- "womenoutfit847"
-- "womenoutfit848"
-- "womenoutfit849"
-- "womenoutfit850"
-- "womenoutfit851"
-- "womenoutfit852"
-- "womenoutfit853"
-- "womenoutfit854"
-- "womenoutfit855"
-- "womenoutfit856"


 
-------------------------------------------
           -- OUTFITS MENU --
-------------------------------------------
--if you want to remove an outfit in a menu comment it out by adding -- in front of the line

-- MAIN MENU -- 

	Config.OutfitMainMenuTitle = "Outfits"
Config.OutfitMainMenu = {
  {label = "Outfits",      value = "action01",  desc = "Outfits",       image='items/clothing_generic_outfit.png'},
 }
 
 
Config.OutfitCategoriesTitle = "Categories"
Config.OutfitCategoriesMenu = {
		{label = "Armadillo",           value = "action01",  desc = "Check all available outfits in this category"},
		{label = "Annesburg",           value = "action02",  desc = "Check all available outfits in this category"},
        {label = "Blackwater",          value = "action03",  desc = "Check all available outfits in this category"},
        {label = "Hillbilly",           value = "action04",  desc = "Check all available outfits in this category"},
        {label = "Traveler",            value = "action05",  desc = "Check all available outfits in this category"}, 
        {label = "Guarma",              value = "action06",  desc = "Check all available outfits in this category"}, 
        {label = "Lagras",              value = "action07",  desc = "Check all available outfits in this category"}, 
        {label = "Saint Denis pt1",     value = "action08",  desc = "Check all available outfits in this category"}, 
        {label = "Saint Denis pt2",     value = "action09",  desc = "Check all available outfits in this category"}, 
        {label = "Saint Denis pt3",     value = "action10",  desc = "Check all available outfits in this category"}, 
        {label = "Saint Denis pt4",     value = "action11",  desc = "Check all available outfits in this category"}, 		
        {label = "Saint Denis pt5", 	value = "action12",  desc = "Check all available outfits in this category"}, 		
        {label = "Saint Denis pt6", 	value = "action13",  desc = "Check all available outfits in this category"}, 		
        {label = "Rancher",       	    value = "action14",  desc = "Check all available outfits in this category"}, 		
        {label = "Train Passengers", 	value = "action15",  desc = "Check all available outfits in this category"}, 		
        {label = "Saloons", 		    value = "action16",  desc = "Check all available outfits in this category"}, 		
        {label = "Card Game Players", 	value = "action17",  desc = "Check all available outfits in this category"}, 		
        {label = "Chinatown", 			value = "action18",  desc = "Check all available outfits in this category"}, 		
        {label = "Tumbleweed", 			value = "action19",  desc = "Check all available outfits in this category"}, 		
        {label = "Strawberry", 			value = "action20",  desc = "Check all available outfits in this category"}, 		
} 


Config.OutfitsMenuTitle1 = "Armadillo"
 Config.OutfitsMenuPart1  = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
		{label = "Outfit#41"  , value = "action41" , desc = "Display this outfit"},
		{label = "Outfit#42"  , value = "action42" , desc = "Display this outfit"},
		{label = "Outfit#43"  , value = "action43" , desc = "Display this outfit"},
		{label = "Outfit#44"  , value = "action44" , desc = "Display this outfit"},
		{label = "Outfit#45"  , value = "action45" , desc = "Display this outfit"},
		{label = "Outfit#46"  , value = "action46" , desc = "Display this outfit"},
		{label = "Outfit#47"  , value = "action47" , desc = "Display this outfit"},
		{label = "Outfit#48"  , value = "action48" , desc = "Display this outfit"},
		{label = "Outfit#49"  , value = "action49" , desc = "Display this outfit"},
		{label = "Outfit#50"  , value = "action50" , desc = "Display this outfit"},
		{label = "Outfit#51"  , value = "action51" , desc = "Display this outfit"},
		{label = "Outfit#52"  , value = "action52" , desc = "Display this outfit"},
		{label = "Outfit#53"  , value = "action53" , desc = "Display this outfit"},
		{label = "Outfit#54"  , value = "action54" , desc = "Display this outfit"},
		{label = "Outfit#55"  , value = "action55" , desc = "Display this outfit"},
		{label = "Outfit#56"  , value = "action56" , desc = "Display this outfit"},
		{label = "Outfit#57"  , value = "action57" , desc = "Display this outfit"},
 
 
}  


Config.OutfitsMenuTitle2 = "Annesburg"
 Config.OutfitsMenuPart2  = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
 
} 

Config.OutfitsMenuTitle3 = "Blackwater"
 Config.OutfitsMenuPart3  = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
		{label = "Outfit#41"  , value = "action41" , desc = "Display this outfit"},
		{label = "Outfit#42"  , value = "action42" , desc = "Display this outfit"},
		{label = "Outfit#43"  , value = "action43" , desc = "Display this outfit"},
		{label = "Outfit#44"  , value = "action44" , desc = "Display this outfit"},
		{label = "Outfit#45"  , value = "action45" , desc = "Display this outfit"},
		{label = "Outfit#46"  , value = "action46" , desc = "Display this outfit"},
		{label = "Outfit#47"  , value = "action47" , desc = "Display this outfit"},
		{label = "Outfit#48"  , value = "action48" , desc = "Display this outfit"},
		{label = "Outfit#49"  , value = "action49" , desc = "Display this outfit"},
		{label = "Outfit#50"  , value = "action50" , desc = "Display this outfit"},
		{label = "Outfit#51"  , value = "action51" , desc = "Display this outfit"},
		{label = "Outfit#52"  , value = "action52" , desc = "Display this outfit"},
		{label = "Outfit#53"  , value = "action53" , desc = "Display this outfit"},
		{label = "Outfit#54"  , value = "action54" , desc = "Display this outfit"},
		{label = "Outfit#55"  , value = "action55" , desc = "Display this outfit"},
		{label = "Outfit#56"  , value = "action56" , desc = "Display this outfit"},
		{label = "Outfit#57"  , value = "action57" , desc = "Display this outfit"},
		{label = "Outfit#58"  , value = "action58" , desc = "Display this outfit"},
		{label = "Outfit#59"  , value = "action59" , desc = "Display this outfit"},
		{label = "Outfit#60"  , value = "action60" , desc = "Display this outfit"},
		{label = "Outfit#61"  , value = "action61" , desc = "Display this outfit"},
		{label = "Outfit#62"  , value = "action62" , desc = "Display this outfit"},
		{label = "Outfit#63"  , value = "action63" , desc = "Display this outfit"},
		{label = "Outfit#64"  , value = "action64" , desc = "Display this outfit"},
		{label = "Outfit#65"  , value = "action65" , desc = "Display this outfit"},
		{label = "Outfit#66"  , value = "action66" , desc = "Display this outfit"},
		{label = "Outfit#67"  , value = "action67" , desc = "Display this outfit"},
		{label = "Outfit#68"  , value = "action68" , desc = "Display this outfit"},
		{label = "Outfit#69"  , value = "action69" , desc = "Display this outfit"},
		{label = "Outfit#70"  , value = "action70" , desc = "Display this outfit"},
		{label = "Outfit#71"  , value = "action71" , desc = "Display this outfit"},
		{label = "Outfit#72"  , value = "action72" , desc = "Display this outfit"},
		{label = "Outfit#73"  , value = "action73" , desc = "Display this outfit"},
		{label = "Outfit#74"  , value = "action74" , desc = "Display this outfit"},
		{label = "Outfit#75"  , value = "action75" , desc = "Display this outfit"},
		{label = "Outfit#76"  , value = "action76" , desc = "Display this outfit"},
		{label = "Outfit#77"  , value = "action77" , desc = "Display this outfit"},
		{label = "Outfit#78"  , value = "action78" , desc = "Display this outfit"},
		{label = "Outfit#79"  , value = "action79" , desc = "Display this outfit"},
		{label = "Outfit#80"  , value = "action80" , desc = "Display this outfit"},
 
}


Config.OutfitsMenuTitle4 = "Hillbilly"
 Config.OutfitsMenuPart4 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
 
}

Config.OutfitsMenuTitle5 = "Traveler"
 Config.OutfitsMenuPart5 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
}


Config.OutfitsMenuTitle6 = "Guarma"
 Config.OutfitsMenuPart6 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
 
}

Config.OutfitsMenuTitle7 = "Lagras"
 Config.OutfitsMenuPart7 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
}


Config.OutfitsMenuTitle8 = "Saint Denis pt1"
 Config.OutfitsMenuPart8 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
		{label = "Outfit#41"  , value = "action41" , desc = "Display this outfit"},
		{label = "Outfit#42"  , value = "action42" , desc = "Display this outfit"},
 
}

Config.OutfitsMenuTitle9 = "Saint Denis pt2"
 Config.OutfitsMenuPart9 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
 
 
}

Config.OutfitsMenuTitle10 = "Saint Denis pt3"
 Config.OutfitsMenuPart10 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
		{label = "Outfit#41"  , value = "action41" , desc = "Display this outfit"},
		{label = "Outfit#42"  , value = "action42" , desc = "Display this outfit"},
 
}

Config.OutfitsMenuTitle11 = "Saint Denis pt4"
 Config.OutfitsMenuPart11 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
 
 
}


Config.OutfitsMenuTitle12 = "Saint Denis pt5"
 Config.OutfitsMenuPart12 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
 
}

Config.OutfitsMenuTitle13 = "Saint Denis pt6"
 Config.OutfitsMenuPart13 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
		{label = "Outfit#41"  , value = "action41" , desc = "Display this outfit"},
		{label = "Outfit#42"  , value = "action42" , desc = "Display this outfit"},
		{label = "Outfit#43"  , value = "action43" , desc = "Display this outfit"},
		{label = "Outfit#44"  , value = "action44" , desc = "Display this outfit"},
		{label = "Outfit#45"  , value = "action45" , desc = "Display this outfit"},
		{label = "Outfit#46"  , value = "action46" , desc = "Display this outfit"},
		{label = "Outfit#47"  , value = "action47" , desc = "Display this outfit"},
		{label = "Outfit#48"  , value = "action48" , desc = "Display this outfit"},
		{label = "Outfit#49"  , value = "action49" , desc = "Display this outfit"},
		{label = "Outfit#50"  , value = "action50" , desc = "Display this outfit"},
		{label = "Outfit#51"  , value = "action51" , desc = "Display this outfit"},
		{label = "Outfit#52"  , value = "action52" , desc = "Display this outfit"},
		{label = "Outfit#53"  , value = "action53" , desc = "Display this outfit"},
		{label = "Outfit#54"  , value = "action54" , desc = "Display this outfit"},
		{label = "Outfit#55"  , value = "action55" , desc = "Display this outfit"},
		{label = "Outfit#56"  , value = "action56" , desc = "Display this outfit"},
		{label = "Outfit#57"  , value = "action57" , desc = "Display this outfit"},
		{label = "Outfit#58"  , value = "action58" , desc = "Display this outfit"},
		{label = "Outfit#59"  , value = "action59" , desc = "Display this outfit"},
		{label = "Outfit#60"  , value = "action60" , desc = "Display this outfit"},
		{label = "Outfit#61"  , value = "action61" , desc = "Display this outfit"},
		{label = "Outfit#62"  , value = "action62" , desc = "Display this outfit"},
		{label = "Outfit#63"  , value = "action63" , desc = "Display this outfit"},
		{label = "Outfit#64"  , value = "action64" , desc = "Display this outfit"},
		{label = "Outfit#65"  , value = "action65" , desc = "Display this outfit"},
		{label = "Outfit#66"  , value = "action66" , desc = "Display this outfit"},
		{label = "Outfit#67"  , value = "action67" , desc = "Display this outfit"},
 
}
 
 
 Config.OutfitsMenuTitle14 = "Rancher"
 Config.OutfitsMenuPart14 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
 
}
 
 
 Config.OutfitsMenuTitle15 = "Train Passenger"
 Config.OutfitsMenuPart15 = {
		{label = "Outfit#01"  , value = "action01" , desc = "Display this outfit"},
		{label = "Outfit#02"  , value = "action02" , desc = "Display this outfit"},
		{label = "Outfit#03"  , value = "action03" , desc = "Display this outfit"},
		{label = "Outfit#04"  , value = "action04" , desc = "Display this outfit"},
		{label = "Outfit#05"  , value = "action05" , desc = "Display this outfit"},
		{label = "Outfit#06"  , value = "action06" , desc = "Display this outfit"},
		{label = "Outfit#07"  , value = "action07" , desc = "Display this outfit"},
		{label = "Outfit#08"  , value = "action08" , desc = "Display this outfit"},
		{label = "Outfit#09"  , value = "action09" , desc = "Display this outfit"},
		{label = "Outfit#10"  , value = "action10" , desc = "Display this outfit"},
		{label = "Outfit#11"  , value = "action11" , desc = "Display this outfit"},
		{label = "Outfit#12"  , value = "action12" , desc = "Display this outfit"},
		{label = "Outfit#13"  , value = "action13" , desc = "Display this outfit"},
		{label = "Outfit#14"  , value = "action14" , desc = "Display this outfit"},
		{label = "Outfit#15"  , value = "action15" , desc = "Display this outfit"},
		{label = "Outfit#16"  , value = "action16" , desc = "Display this outfit"},
		{label = "Outfit#17"  , value = "action17" , desc = "Display this outfit"},
		{label = "Outfit#18"  , value = "action18" , desc = "Display this outfit"},
		{label = "Outfit#19"  , value = "action19" , desc = "Display this outfit"},
		{label = "Outfit#20"  , value = "action20" , desc = "Display this outfit"},
		{label = "Outfit#21"  , value = "action21" , desc = "Display this outfit"},
		{label = "Outfit#22"  , value = "action22" , desc = "Display this outfit"},
		{label = "Outfit#23"  , value = "action23" , desc = "Display this outfit"},
		{label = "Outfit#24"  , value = "action24" , desc = "Display this outfit"},
		{label = "Outfit#25"  , value = "action25" , desc = "Display this outfit"},
		{label = "Outfit#26"  , value = "action26" , desc = "Display this outfit"},
		{label = "Outfit#27"  , value = "action27" , desc = "Display this outfit"},
		{label = "Outfit#28"  , value = "action28" , desc = "Display this outfit"},
		{label = "Outfit#29"  , value = "action29" , desc = "Display this outfit"},
		{label = "Outfit#30"  , value = "action30" , desc = "Display this outfit"},
		{label = "Outfit#31"  , value = "action31" , desc = "Display this outfit"},
		{label = "Outfit#32"  , value = "action32" , desc = "Display this outfit"},
		{label = "Outfit#33"  , value = "action33" , desc = "Display this outfit"},
		{label = "Outfit#34"  , value = "action34" , desc = "Display this outfit"},
		{label = "Outfit#35"  , value = "action35" , desc = "Display this outfit"},
		{label = "Outfit#36"  , value = "action36" , desc = "Display this outfit"},
		{label = "Outfit#37"  , value = "action37" , desc = "Display this outfit"},
		{label = "Outfit#38"  , value = "action38" , desc = "Display this outfit"},
		{label = "Outfit#39"  , value = "action39" , desc = "Display this outfit"},
		{label = "Outfit#40"  , value = "action40" , desc = "Display this outfit"},
		{label = "Outfit#41"  , value = "action41" , desc = "Display this outfit"},
 
} 



 Config.OutfitsMenuTitle16 = "Saloon"
 Config.OutfitsMenuPart16 = {
		{label = "Outfit#01"   , value = "action01" ,  desc = "Display this outfit"},
		{label = "Outfit#02"   , value = "action02" ,  desc = "Display this outfit"},
		{label = "Outfit#03"   , value = "action03" ,  desc = "Display this outfit"},
		{label = "Outfit#04"   , value = "action04" ,  desc = "Display this outfit"},
		{label = "Outfit#05"   , value = "action05" ,  desc = "Display this outfit"},
		{label = "Outfit#06"   , value = "action06" ,  desc = "Display this outfit"},
		{label = "Outfit#07"   , value = "action07" ,  desc = "Display this outfit"},
		{label = "Outfit#08"   , value = "action08" ,  desc = "Display this outfit"},
		{label = "Outfit#09"   , value = "action09" ,  desc = "Display this outfit"},
		{label = "Outfit#10"   , value = "action10" ,  desc = "Display this outfit"},
		{label = "Outfit#11"   , value = "action11" ,  desc = "Display this outfit"},
		{label = "Outfit#12"   , value = "action12" ,  desc = "Display this outfit"},
		{label = "Outfit#13"   , value = "action13" ,  desc = "Display this outfit"},
		{label = "Outfit#14"   , value = "action14" ,  desc = "Display this outfit"},
		{label = "Outfit#15"   , value = "action15" ,  desc = "Display this outfit"},
		{label = "Outfit#16"   , value = "action16" ,  desc = "Display this outfit"},
		{label = "Outfit#17"   , value = "action17" ,  desc = "Display this outfit"},
		{label = "Outfit#18"   , value = "action18" ,  desc = "Display this outfit"},
		{label = "Outfit#19"   , value = "action19" ,  desc = "Display this outfit"},
		{label = "Outfit#20"   , value = "action20" ,  desc = "Display this outfit"},
		{label = "Outfit#21"   , value = "action21" ,  desc = "Display this outfit"},
		{label = "Outfit#22"   , value = "action22" ,  desc = "Display this outfit"},
		{label = "Outfit#23"   , value = "action23" ,  desc = "Display this outfit"},
		{label = "Outfit#24"   , value = "action24" ,  desc = "Display this outfit"},
		{label = "Outfit#25"   , value = "action25" ,  desc = "Display this outfit"},
		{label = "Outfit#26"   , value = "action26" ,  desc = "Display this outfit"},
		{label = "Outfit#27"   , value = "action27" ,  desc = "Display this outfit"},
		{label = "Outfit#28"   , value = "action28" ,  desc = "Display this outfit"},
		{label = "Outfit#29"   , value = "action29" ,  desc = "Display this outfit"},
		{label = "Outfit#30"   , value = "action30" ,  desc = "Display this outfit"},
		{label = "Outfit#31"   , value = "action31" ,  desc = "Display this outfit"},
		{label = "Outfit#32"   , value = "action32" ,  desc = "Display this outfit"},
		{label = "Outfit#33"   , value = "action33" ,  desc = "Display this outfit"},
		{label = "Outfit#34"   , value = "action34" ,  desc = "Display this outfit"},
		{label = "Outfit#35"   , value = "action35" ,  desc = "Display this outfit"},
		{label = "Outfit#36"   , value = "action36" ,  desc = "Display this outfit"},
		{label = "Outfit#37"   , value = "action37" ,  desc = "Display this outfit"},
		{label = "Outfit#38"   , value = "action38" ,  desc = "Display this outfit"},
		{label = "Outfit#39"   , value = "action39" ,  desc = "Display this outfit"},
		{label = "Outfit#40"   , value = "action40" ,  desc = "Display this outfit"},
		{label = "Outfit#41"   , value = "action41" ,  desc = "Display this outfit"},
		{label = "Outfit#42"   , value = "action42" ,  desc = "Display this outfit"},
		{label = "Outfit#43"   , value = "action43" ,  desc = "Display this outfit"},
		{label = "Outfit#44"   , value = "action44" ,  desc = "Display this outfit"},
		{label = "Outfit#45"   , value = "action45" ,  desc = "Display this outfit"},
		{label = "Outfit#46"   , value = "action46" ,  desc = "Display this outfit"},
		{label = "Outfit#47"   , value = "action47" ,  desc = "Display this outfit"},
		{label = "Outfit#48"   , value = "action48" ,  desc = "Display this outfit"},
		{label = "Outfit#49"   , value = "action49" ,  desc = "Display this outfit"},
		{label = "Outfit#50"   , value = "action50" ,  desc = "Display this outfit"},
		{label = "Outfit#51"   , value = "action51" ,  desc = "Display this outfit"},
		{label = "Outfit#52"   , value = "action52" ,  desc = "Display this outfit"},
		{label = "Outfit#53"   , value = "action53" ,  desc = "Display this outfit"},
		{label = "Outfit#54"   , value = "action54" ,  desc = "Display this outfit"},
		{label = "Outfit#55"   , value = "action55" ,  desc = "Display this outfit"},
		{label = "Outfit#56"   , value = "action56" ,  desc = "Display this outfit"},
		{label = "Outfit#57"   , value = "action57" ,  desc = "Display this outfit"},
		{label = "Outfit#58"   , value = "action58" ,  desc = "Display this outfit"},
		{label = "Outfit#59"   , value = "action59" ,  desc = "Display this outfit"},
		{label = "Outfit#60"   , value = "action60" ,  desc = "Display this outfit"},
		{label = "Outfit#61"   , value = "action61" ,  desc = "Display this outfit"},
		{label = "Outfit#62"   , value = "action62" ,  desc = "Display this outfit"},
		{label = "Outfit#63"   , value = "action63" ,  desc = "Display this outfit"},
		{label = "Outfit#64"   , value = "action64" ,  desc = "Display this outfit"},
		{label = "Outfit#65"   , value = "action65" ,  desc = "Display this outfit"},
		{label = "Outfit#66"   , value = "action66" ,  desc = "Display this outfit"},
		{label = "Outfit#67"   , value = "action67" ,  desc = "Display this outfit"},
		{label = "Outfit#68"   , value = "action68" ,  desc = "Display this outfit"},
		{label = "Outfit#69"   , value = "action69" ,  desc = "Display this outfit"},
		{label = "Outfit#70"   , value = "action70" ,  desc = "Display this outfit"},
		{label = "Outfit#71"   , value = "action71" ,  desc = "Display this outfit"},
		{label = "Outfit#72"   , value = "action72" ,  desc = "Display this outfit"},
		{label = "Outfit#73"   , value = "action73" ,  desc = "Display this outfit"},
		{label = "Outfit#74"   , value = "action74" ,  desc = "Display this outfit"},
		{label = "Outfit#75"   , value = "action75" ,  desc = "Display this outfit"},
		{label = "Outfit#76"   , value = "action76" ,  desc = "Display this outfit"},
		{label = "Outfit#77"   , value = "action77" ,  desc = "Display this outfit"},
		{label = "Outfit#78"   , value = "action78" ,  desc = "Display this outfit"},
		{label = "Outfit#79"   , value = "action79" ,  desc = "Display this outfit"},
		{label = "Outfit#80"   , value = "action80" ,  desc = "Display this outfit"},
		{label = "Outfit#81"   , value = "action81" ,  desc = "Display this outfit"},
		{label = "Outfit#82"   , value = "action82" ,  desc = "Display this outfit"},
		{label = "Outfit#83"   , value = "action83" ,  desc = "Display this outfit"},
		{label = "Outfit#84"   , value = "action84" ,  desc = "Display this outfit"},
		{label = "Outfit#85"   , value = "action85" ,  desc = "Display this outfit"},
		{label = "Outfit#86"   , value = "action86" ,  desc = "Display this outfit"},
		{label = "Outfit#87"   , value = "action87" ,  desc = "Display this outfit"},
		{label = "Outfit#88"   , value = "action88" ,  desc = "Display this outfit"},
		{label = "Outfit#89"   , value = "action89" ,  desc = "Display this outfit"},
		{label = "Outfit#90"   , value = "action90" ,  desc = "Display this outfit"},
		{label = "Outfit#91"   , value = "action91" ,  desc = "Display this outfit"},
		{label = "Outfit#92"   , value = "action92" ,  desc = "Display this outfit"},
		{label = "Outfit#93"   , value = "action93" ,  desc = "Display this outfit"},
		{label = "Outfit#94"   , value = "action94" ,  desc = "Display this outfit"},
		{label = "Outfit#95"   , value = "action95" ,  desc = "Display this outfit"},
		{label = "Outfit#96"   , value = "action96" ,  desc = "Display this outfit"},
		{label = "Outfit#97"   , value = "action97" ,  desc = "Display this outfit"},
		{label = "Outfit#98"   , value = "action98" ,  desc = "Display this outfit"},
		{label = "Outfit#99"   , value = "action99" ,  desc = "Display this outfit"},
		{label = "Outfit#100"  , value = "action100" , desc = "Display this outfit"},
		{label = "Outfit#101"  , value = "action101" , desc = "Display this outfit"},
		{label = "Outfit#102"  , value = "action102" , desc = "Display this outfit"},
 
} 
 
 
  Config.OutfitsMenuTitle17 = "Card Game Players"
 Config.OutfitsMenuPart17 = {
		{label = "Outfit#01"   , value = "action01" ,  desc = "Display this outfit"},
		{label = "Outfit#02"   , value = "action02" ,  desc = "Display this outfit"},
		{label = "Outfit#03"   , value = "action03" ,  desc = "Display this outfit"},
		{label = "Outfit#04"   , value = "action04" ,  desc = "Display this outfit"},
		{label = "Outfit#05"   , value = "action05" ,  desc = "Display this outfit"},
		{label = "Outfit#06"   , value = "action06" ,  desc = "Display this outfit"},
		{label = "Outfit#07"   , value = "action07" ,  desc = "Display this outfit"},
		{label = "Outfit#08"   , value = "action08" ,  desc = "Display this outfit"},
		{label = "Outfit#09"   , value = "action09" ,  desc = "Display this outfit"},
		{label = "Outfit#10"   , value = "action10" ,  desc = "Display this outfit"},
		{label = "Outfit#11"   , value = "action11" ,  desc = "Display this outfit"},
		{label = "Outfit#12"   , value = "action12" ,  desc = "Display this outfit"},
		{label = "Outfit#13"   , value = "action13" ,  desc = "Display this outfit"},
		{label = "Outfit#14"   , value = "action14" ,  desc = "Display this outfit"},
		{label = "Outfit#15"   , value = "action15" ,  desc = "Display this outfit"},
		{label = "Outfit#16"   , value = "action16" ,  desc = "Display this outfit"},
		{label = "Outfit#17"   , value = "action17" ,  desc = "Display this outfit"},
		{label = "Outfit#18"   , value = "action18" ,  desc = "Display this outfit"},
		{label = "Outfit#19"   , value = "action19" ,  desc = "Display this outfit"},
		{label = "Outfit#20"   , value = "action20" ,  desc = "Display this outfit"},
 
} 

 


 Config.OutfitsMenuTitle18 = "Chinatown"
 Config.OutfitsMenuPart18 = {
		{label = "Outfit#01"   , value = "action01" ,  desc = "Display this outfit"},
		{label = "Outfit#02"   , value = "action02" ,  desc = "Display this outfit"},
		{label = "Outfit#03"   , value = "action03" ,  desc = "Display this outfit"},
		{label = "Outfit#04"   , value = "action04" ,  desc = "Display this outfit"},
		{label = "Outfit#05"   , value = "action05" ,  desc = "Display this outfit"},
		{label = "Outfit#06"   , value = "action06" ,  desc = "Display this outfit"},
		{label = "Outfit#07"   , value = "action07" ,  desc = "Display this outfit"},
		{label = "Outfit#08"   , value = "action08" ,  desc = "Display this outfit"},
		{label = "Outfit#09"   , value = "action09" ,  desc = "Display this outfit"},
		{label = "Outfit#10"   , value = "action10" ,  desc = "Display this outfit"},
		{label = "Outfit#11"   , value = "action11" ,  desc = "Display this outfit"},
		{label = "Outfit#12"   , value = "action12" ,  desc = "Display this outfit"},
		{label = "Outfit#13"   , value = "action13" ,  desc = "Display this outfit"},
		{label = "Outfit#14"   , value = "action14" ,  desc = "Display this outfit"},
		{label = "Outfit#15"   , value = "action15" ,  desc = "Display this outfit"},
		{label = "Outfit#16"   , value = "action16" ,  desc = "Display this outfit"},
		{label = "Outfit#17"   , value = "action17" ,  desc = "Display this outfit"},
		{label = "Outfit#18"   , value = "action18" ,  desc = "Display this outfit"},
		{label = "Outfit#19"   , value = "action19" ,  desc = "Display this outfit"},
		{label = "Outfit#20"   , value = "action20" ,  desc = "Display this outfit"},
		{label = "Outfit#21"   , value = "action21" ,  desc = "Display this outfit"},
		{label = "Outfit#22"   , value = "action22" ,  desc = "Display this outfit"},
		{label = "Outfit#23"   , value = "action23" ,  desc = "Display this outfit"},
		{label = "Outfit#24"   , value = "action24" ,  desc = "Display this outfit"},
		{label = "Outfit#25"   , value = "action25" ,  desc = "Display this outfit"},
		{label = "Outfit#26"   , value = "action26" ,  desc = "Display this outfit"},
		{label = "Outfit#27"   , value = "action27" ,  desc = "Display this outfit"},
		{label = "Outfit#28"   , value = "action28" ,  desc = "Display this outfit"},
		{label = "Outfit#29"   , value = "action29" ,  desc = "Display this outfit"},
		{label = "Outfit#30"   , value = "action30" ,  desc = "Display this outfit"},
		{label = "Outfit#31"   , value = "action31" ,  desc = "Display this outfit"},
		{label = "Outfit#32"   , value = "action32" ,  desc = "Display this outfit"},
		{label = "Outfit#33"   , value = "action33" ,  desc = "Display this outfit"},
		{label = "Outfit#34"   , value = "action34" ,  desc = "Display this outfit"},
		{label = "Outfit#35"   , value = "action35" ,  desc = "Display this outfit"},
		{label = "Outfit#36"   , value = "action36" ,  desc = "Display this outfit"},
		{label = "Outfit#37"   , value = "action37" ,  desc = "Display this outfit"},
		{label = "Outfit#38"   , value = "action38" ,  desc = "Display this outfit"},
		{label = "Outfit#39"   , value = "action39" ,  desc = "Display this outfit"},
		{label = "Outfit#40"   , value = "action40" ,  desc = "Display this outfit"},
 
}


 Config.OutfitsMenuTitle19 = "Tumbleweed"
 Config.OutfitsMenuPart19 = {
		{label = "Outfit#01"   , value = "action01" ,  desc = "Display this outfit"},
		{label = "Outfit#02"   , value = "action02" ,  desc = "Display this outfit"},
		{label = "Outfit#03"   , value = "action03" ,  desc = "Display this outfit"},
		{label = "Outfit#04"   , value = "action04" ,  desc = "Display this outfit"},
		{label = "Outfit#05"   , value = "action05" ,  desc = "Display this outfit"},
		{label = "Outfit#06"   , value = "action06" ,  desc = "Display this outfit"},
		{label = "Outfit#07"   , value = "action07" ,  desc = "Display this outfit"},
		{label = "Outfit#08"   , value = "action08" ,  desc = "Display this outfit"},
		{label = "Outfit#09"   , value = "action09" ,  desc = "Display this outfit"},
		{label = "Outfit#10"   , value = "action10" ,  desc = "Display this outfit"},
		{label = "Outfit#11"   , value = "action11" ,  desc = "Display this outfit"},
		{label = "Outfit#12"   , value = "action12" ,  desc = "Display this outfit"},
		{label = "Outfit#13"   , value = "action13" ,  desc = "Display this outfit"},
		{label = "Outfit#14"   , value = "action14" ,  desc = "Display this outfit"},
		{label = "Outfit#15"   , value = "action15" ,  desc = "Display this outfit"},
		{label = "Outfit#16"   , value = "action16" ,  desc = "Display this outfit"},
		{label = "Outfit#17"   , value = "action17" ,  desc = "Display this outfit"},
		{label = "Outfit#18"   , value = "action18" ,  desc = "Display this outfit"},
		{label = "Outfit#19"   , value = "action19" ,  desc = "Display this outfit"},
		{label = "Outfit#20"   , value = "action20" ,  desc = "Display this outfit"},
		{label = "Outfit#21"   , value = "action21" ,  desc = "Display this outfit"},
		{label = "Outfit#22"   , value = "action22" ,  desc = "Display this outfit"},
		{label = "Outfit#23"   , value = "action23" ,  desc = "Display this outfit"},
}


 Config.OutfitsMenuTitle20 = "Strawberry"
 Config.OutfitsMenuPart20 = {
		{label = "Outfit#01"   , value = "action01" ,  desc = "Display this outfit"},
		{label = "Outfit#02"   , value = "action02" ,  desc = "Display this outfit"},
		{label = "Outfit#03"   , value = "action03" ,  desc = "Display this outfit"},
		{label = "Outfit#04"   , value = "action04" ,  desc = "Display this outfit"},
		{label = "Outfit#05"   , value = "action05" ,  desc = "Display this outfit"},
		{label = "Outfit#06"   , value = "action06" ,  desc = "Display this outfit"},
		{label = "Outfit#07"   , value = "action07" ,  desc = "Display this outfit"},
		{label = "Outfit#08"   , value = "action08" ,  desc = "Display this outfit"},
		{label = "Outfit#09"   , value = "action09" ,  desc = "Display this outfit"},
		{label = "Outfit#10"   , value = "action10" ,  desc = "Display this outfit"},
		{label = "Outfit#11"   , value = "action11" ,  desc = "Display this outfit"},
		{label = "Outfit#12"   , value = "action12" ,  desc = "Display this outfit"},
		{label = "Outfit#13"   , value = "action13" ,  desc = "Display this outfit"},
		{label = "Outfit#14"   , value = "action14" ,  desc = "Display this outfit"},
		{label = "Outfit#15"   , value = "action15" ,  desc = "Display this outfit"},
		{label = "Outfit#16"   , value = "action16" ,  desc = "Display this outfit"},
		{label = "Outfit#17"   , value = "action17" ,  desc = "Display this outfit"},
		{label = "Outfit#18"   , value = "action18" ,  desc = "Display this outfit"},
		{label = "Outfit#19"   , value = "action19" ,  desc = "Display this outfit"},
		{label = "Outfit#20"   , value = "action20" ,  desc = "Display this outfit"},
 
}
 
-----------------------------------------------------------------------------------------------
									--KEYBINDS LIST--
-----------------------------------------------------------------------------------------------

 
--   -- Number Keys
--   ["1"] = 0xE6F612E4,
--   ["2"] = 0x1CE6D9EB,
--   ["3"] = 0x4F49CC4C,
--   ["4"] = 0x8F9F9E58,
--   ["5"] = 0xAB62E997,
--   ["6"] = 0xA1FDE2A6,
--   ["7"] = 0xB03A913B,
--   ["8"] = 0x42385422,
 
