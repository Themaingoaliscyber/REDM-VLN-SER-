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
Config.GeneralMenuIsUsed = false 
Config.MenuActive = false  
Config.OpenMenuKey = 0xA1FDE2A6 -- [6] by default 
Config.CommandsEnabled = false 
Config.Debug = false
--------------------------------------------
               --EVENT CALLS-- 	
--------------------------------------------	
--COMMANDS - F8 CONSOLE:
--"removeupperbody" --reload character/skin is required after this
--"removelowerbody"	--reload character/skin is required after this
--"mobfixoutfit1" --Fix the size of your character if needed
--"mobfixoutfit2" --Fix the size of your character if needed
--"mobfixoutfit3" --Fix the size of your character if needed
--"mobfixoutfit4" --Fix the size of your character if needed
--"mobfixoutfit5" --Fix the size of your character if needed
 
--To use outfits as inventory items :	   
--Create an item like you would for any other item and on the 
--the item server register event if you want to use outfits as items use the triggerevent below with the outfit that you want



--TriggerEvent("sirevlc_mob_outfits",insertoptionhere)
--List of Options :
--"mainmenu"
--"OutfitMen001"
--"OutfitMen002"
--"OutfitMen003"
--"OutfitMen004"
--"OutfitMen005"
--"OutfitMen006"
--"OutfitMen007"
--"OutfitMen008"
--"OutfitMen009"
--"OutfitMen010"
--"OutfitMen011"
--"OutfitMen012"
--"OutfitMen013"
--"OutfitMen014"
--"OutfitMen015"
--"OutfitMen016"
--"OutfitMen017"
--"OutfitMen018"
--"OutfitMen019"
--"OutfitMen020"
--"OutfitMen021"
--"OutfitMen022"
--"OutfitMen023"
--"OutfitMen024"
--"OutfitMen025"
--"OutfitMen026"
--"OutfitMen027"
--"OutfitMen028"
--"OutfitMen029"
--"OutfitMen030"
--"OutfitMen031"
--"OutfitMen032"
--"OutfitMen033"
--"OutfitMen034"
--"OutfitMen035"
--"OutfitMen036"
--"OutfitMen037"
--"OutfitMen038"
--"OutfitMen039"
--"OutfitMen040"
--"OutfitMen041"
--"OutfitMen042"
--"OutfitMen043"
--"OutfitMen044"
--"OutfitMen045"
--"OutfitMen046"
--"OutfitMen047"
--"OutfitMen048"
--"OutfitMen049"
--"OutfitMen050"
--"OutfitMen051"
--"OutfitMen052"
--"OutfitMen053"
--"OutfitMen054"
--"OutfitMen055"
 
 
 
 
-------------------------------------------
          --TEXTS TRANSLATIONS--
-------------------------------------------
 
--MAIN MENU
Config.MainMenuTitle = "mob Outfits"
Config.MainMenu = {
		{label = "Outfits",      value = "action01",  desc = "Outfits", image='items/clothing_hl_player_hat_006_1.png'},	
}
 
 
Config.OutfitsSelectionTitle = "Parts"
Config.OutfitsSelection = {
		{label = "Part#1",      value = "action001",  desc = "Part#1", image=''},
		{label = "Part#2",      value = "action002",  desc = "Part#2", image=''},
		

}

Config.OutfitsPart1Title = "Part 1"
Config.OutfitsPart1 = {
		{label = "Outfits#001",      value = "action001",  desc = "Outfits#001", image=''},
		{label = "Outfits#002",      value = "action002",  desc = "Outfits#002", image=''},
		{label = "Outfits#003",      value = "action003",  desc = "Outfits#003", image=''},
		{label = "Outfits#004",      value = "action004",  desc = "Outfits#004", image=''},
		{label = "Outfits#005",      value = "action005",  desc = "Outfits#005", image=''},
		{label = "Outfits#006",      value = "action006",  desc = "Outfits#006", image=''},
		{label = "Outfits#007",      value = "action007",  desc = "Outfits#007", image=''},
		{label = "Outfits#008",      value = "action008",  desc = "Outfits#008", image=''},
		{label = "Outfits#009",      value = "action009",  desc = "Outfits#009", image=''},
		{label = "Outfits#010",      value = "action010",  desc = "Outfits#010", image=''},
		{label = "Outfits#011",      value = "action011",  desc = "Outfits#011", image=''},
		{label = "Outfits#012",      value = "action012",  desc = "Outfits#012", image=''},
		{label = "Outfits#013",      value = "action013",  desc = "Outfits#013", image=''},
		{label = "Outfits#014",      value = "action014",  desc = "Outfits#014", image=''},
		{label = "Outfits#015",      value = "action015",  desc = "Outfits#015", image=''},
		{label = "Outfits#016",      value = "action016",  desc = "Outfits#016", image=''},
		{label = "Outfits#017",      value = "action017",  desc = "Outfits#017", image=''},
		{label = "Outfits#018",      value = "action018",  desc = "Outfits#018", image=''},
		{label = "Outfits#019",      value = "action019",  desc = "Outfits#019", image=''},
		{label = "Outfits#020",      value = "action020",  desc = "Outfits#020", image=''},
		{label = "Outfits#021",      value = "action021",  desc = "Outfits#021", image=''},
		{label = "Outfits#022",      value = "action022",  desc = "Outfits#022", image=''},
		{label = "Outfits#023",      value = "action023",  desc = "Outfits#023", image=''},
		{label = "Outfits#024",      value = "action024",  desc = "Outfits#024", image=''},
		{label = "Outfits#025",      value = "action025",  desc = "Outfits#025", image=''},
		{label = "Outfits#026",      value = "action026",  desc = "Outfits#026", image=''},
		{label = "Outfits#027",      value = "action027",  desc = "Outfits#027", image=''},
		{label = "Outfits#028",      value = "action028",  desc = "Outfits#028", image=''},
		{label = "Outfits#029",      value = "action029",  desc = "Outfits#029", image=''},
		{label = "Outfits#030",      value = "action030",  desc = "Outfits#030", image=''},

}

Config.OutfitsPart2Title = "Part 2"
Config.OutfitsPart2 = {
		{label = "Outfits#031",      value = "action001",  desc ="Outfits#031", image=''},
		{label = "Outfits#032",      value = "action002",  desc ="Outfits#032", image=''},
		{label = "Outfits#033",      value = "action003",  desc ="Outfits#033", image=''},
		{label = "Outfits#034",      value = "action004",  desc ="Outfits#034", image=''},
		{label = "Outfits#035",      value = "action005",  desc ="Outfits#035", image=''},
		{label = "Outfits#036",      value = "action006",  desc ="Outfits#036", image=''},
		{label = "Outfits#037",      value = "action007",  desc ="Outfits#037", image=''},
		{label = "Outfits#038",      value = "action008",  desc ="Outfits#038", image=''},
		{label = "Outfits#039",      value = "action009",  desc ="Outfits#039", image=''},
		{label = "Outfits#040",      value = "action010",  desc ="Outfits#040", image=''},
		{label = "Outfits#041",      value = "action011",  desc ="Outfits#041", image=''},
		{label = "Outfits#042",      value = "action012",  desc ="Outfits#042", image=''},
		{label = "Outfits#043",      value = "action013",  desc ="Outfits#043", image=''},
		{label = "Outfits#044",      value = "action014",  desc ="Outfits#044", image=''},
		{label = "Outfits#045",      value = "action015",  desc ="Outfits#045", image=''},
		{label = "Outfits#046",      value = "action016",  desc ="Outfits#046", image=''},
		{label = "Outfits#047",      value = "action017",  desc ="Outfits#047", image=''},
		{label = "Outfits#048",      value = "action018",  desc ="Outfits#048", image=''},
		{label = "Outfits#049",      value = "action019",  desc ="Outfits#049", image=''},
		{label = "Outfits#050",      value = "action020",  desc ="Outfits#050", image=''},
		{label = "Outfits#051",      value = "action021",  desc ="Outfits#051", image=''},
		{label = "Outfits#052",      value = "action022",  desc ="Outfits#052", image=''},
		{label = "Outfits#053",      value = "action023",  desc ="Outfits#053", image=''},
		{label = "Outfits#054",      value = "action024",  desc ="Outfits#054", image=''},
		{label = "Outfits#055",      value = "action025",  desc ="Outfits#055", image=''},
 

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
