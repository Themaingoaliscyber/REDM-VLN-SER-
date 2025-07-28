Config = {}

 
-- Version 2.0.1 - 03.06.24

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
               -- GENERAL OPTIONS --
-------------------------------------------

Config.GeneralMenuIsUsed = false -- ONLY TURN TRUE IF YOU HAVE DOWNLOADED THE GENERAL MENU FROM MY TEBEX: https://sire-vlc-scripts.tebex.io/package/5765603
Config.MenuActive        = false  
Config.OpenMenuKey       = false -- [7] by default 
Config.Debug             = false

 
 
-------------------------------------------
               -- MENUS --
-------------------------------------------
Config.MainMenuTitle = "Native Menu"
Config.MainMenu = {
	{label = 'Women Outfits'    , value = "action01",  desc = 'Women Outfits'    , image='items/native_women.png'},
	{label = 'Men Outfits'      , value = "action02",  desc = 'Men Outfits'      , image='items/native_men.png'},
	{label = 'Women Hairstyles' , value = "action03",  desc = 'Women Hairstyles' , image='items/native_women_hair.png'},
	{label = 'Men Hairstyles'   , value = "action04",  desc = 'Men Accessories'  , image='items/native_men_hair.png'},
	{label = 'Women Accessories', value = "action05",  desc = 'Women Accessories', image='items/clothing_generic_ring.png'},
	{label = 'Men Accessories'  , value = "action06",  desc = 'Men Accessories', image='items/clothing_generic_belt_accs.png'},
} 
 

Config.TextMenuWomenTitle   = "Natives Outfits"  
Config.MenuWomen = {
		{label = "Outfit#01", value = "action02",  desc = "Wear this outfit"},
		{label = "Outfit#02", value = "action02",  desc = "Wear this outfit"},
        {label = "Outfit#03", value = "action03",  desc = "Wear this outfit"},
        {label = "Outfit#04", value = "action04",  desc = "Wear this outfit"},
        {label = "Outfit#05", value = "action05",  desc = "Wear this outfit"},
        {label = "Outfit#06", value = "action06",  desc = "Wear this outfit"},
        {label = "Outfit#07", value = "action07",  desc = "Wear this outfit"},
        {label = "Outfit#08", value = "action08",  desc = "Wear this outfit"},
        {label = "Outfit#09", value = "action09",  desc = "Wear this outfit"},
        {label = "Outfit#10", value = "action10",  desc = "Wear this outfit"},
        {label = "Outfit#11", value = "action11",  desc = "Wear this outfit"},
        {label = "Outfit#12", value = "action12",  desc = "Wear this outfit"},
        {label = "Outfit#13", value = "action13",  desc = "Wear this outfit"},
        {label = "Outfit#14", value = "action14",  desc = "Wear this outfit"},
        {label = "Outfit#15", value = "action15",  desc = "Wear this outfit"},
        {label = "Outfit#16", value = "action16",  desc = "Wear this outfit"},
        {label = "Outfit#17", value = "action17",  desc = "Wear this outfit"},
        {label = "Outfit#18", value = "action18",  desc = "Wear this outfit"},
        {label = "Outfit#19", value = "action19",  desc = "Wear this outfit"},
        {label = "Outfit#20", value = "action20",  desc = "Wear this outfit"},
        {label = "Outfit#21", value = "action21",  desc = "Wear this outfit"},
        {label = "Outfit#22", value = "action22",  desc = "Wear this outfit"},
        {label = "Outfit#23", value = "action23",  desc = "Wear this outfit"},
        {label = "Outfit#24", value = "action24",  desc = "Wear this outfit"},
        {label = "Outfit#25", value = "action25",  desc = "Wear this outfit"},
        {label = "Outfit#26", value = "action26",  desc = "Wear this outfit"},
        {label = "Outfit#27", value = "action27",  desc = "Wear this outfit"},
        {label = "Outfit#28", value = "action28",  desc = "Wear this outfit"},
        {label = "Outfit#29", value = "action29",  desc = "Wear this outfit"},
        {label = "Outfit#30", value = "action30",  desc = "Wear this outfit"},
        {label = "Outfit#31", value = "action31",  desc = "Wear this outfit"},
        {label = "Outfit#32", value = "action32",  desc = "Wear this outfit"},
        {label = "Outfit#33", value = "action33",  desc = "Wear this outfit"},
        {label = "Outfit#34", value = "action34",  desc = "Wear this outfit"},
        {label = "Outfit#35", value = "action35",  desc = "Wear this outfit"},
        {label = "Outfit#36", value = "action36",  desc = "Wear this outfit"},
        {label = "Outfit#37", value = "action37",  desc = "Wear this outfit"},
        {label = "Outfit#38", value = "action38",  desc = "Wear this outfit"},
        {label = "Outfit#39", value = "action39",  desc = "Wear this outfit"},
        {label = "Outfit#40", value = "action40",  desc = "Wear this outfit"},
        {label = "Outfit#41", value = "action41",  desc = "Wear this outfit"},
        {label = "Outfit#42", value = "action42",  desc = "Wear this outfit"},
        {label = "Outfit#43", value = "action43",  desc = "Wear this outfit"},
        {label = "Outfit#44", value = "action44",  desc = "Wear this outfit"},
        {label = "Outfit#45", value = "action45",  desc = "Wear this outfit"},
        {label = "Outfit#46", value = "action46",  desc = "Wear this outfit"},
        {label = "Outfit#47", value = "action47",  desc = "Wear this outfit"},
        {label = "Outfit#48", value = "action48",  desc = "Wear this outfit"},	
        {label = "Outfit#49", value = "action49",  desc = "Wear this outfit"},	
}

 
Config.TextMenuMenTitle   = "Natives Outfits" 
Config.TextMenuMen = {
		{label = "Outfit#01", value = "action01",  desc = "Wear this outfit"},
        {label = "Outfit#02", value = "action02",  desc = "Wear this outfit"},
        {label = "Outfit#03", value = "action03",  desc = "Wear this outfit"},
        {label = "Outfit#04", value = "action04",  desc = "Wear this outfit"},
        {label = "Outfit#05", value = "action05",  desc = "Wear this outfit"},
        {label = "Outfit#06", value = "action06",  desc = "Wear this outfit"},
        {label = "Outfit#07", value = "action07",  desc = "Wear this outfit"},
        {label = "Outfit#08", value = "action08",  desc = "Wear this outfit"},
        {label = "Outfit#09", value = "action09",  desc = "Wear this outfit"},
        {label = "Outfit#10", value = "action10",  desc = "Wear this outfit"},
        {label = "Outfit#11", value = "action11",  desc = "Wear this outfit"},
        {label = "Outfit#12", value = "action12",  desc = "Wear this outfit"},
        {label = "Outfit#13", value = "action13",  desc = "Wear this outfit"},
        {label = "Outfit#14", value = "action14",  desc = "Wear this outfit"},
        {label = "Outfit#15", value = "action15",  desc = "Wear this outfit"},
        {label = "Outfit#16", value = "action16",  desc = "Wear this outfit"},
        {label = "Outfit#17", value = "action17",  desc = "Wear this outfit"},
        {label = "Outfit#18", value = "action18",  desc = "Wear this outfit"},
        {label = "Outfit#19", value = "action19",  desc = "Wear this outfit"},
        {label = "Outfit#20", value = "action20",  desc = "Wear this outfit"},
        {label = "Outfit#21", value = "action21",  desc = "Wear this outfit"},
        {label = "Outfit#22", value = "action22",  desc = "Wear this outfit"},
        {label = "Outfit#23", value = "action23",  desc = "Wear this outfit"},
        {label = "Outfit#24", value = "action24",  desc = "Wear this outfit"},
        {label = "Outfit#25", value = "action25",  desc = "Wear this outfit"},
        {label = "Outfit#26", value = "action26",  desc = "Wear this outfit"},
        {label = "Outfit#27", value = "action27",  desc = "Wear this outfit"},
        {label = "Outfit#28", value = "action28",  desc = "Wear this outfit"},
        {label = "Outfit#29", value = "action29",  desc = "Wear this outfit"},
        {label = "Outfit#30", value = "action30",  desc = "Wear this outfit"},
        {label = "Outfit#31", value = "action31",  desc = "Wear this outfit"},
        {label = "Outfit#32", value = "action32",  desc = "Wear this outfit"},
        {label = "Outfit#33", value = "action33",  desc = "Wear this outfit"},
        {label = "Outfit#34", value = "action34",  desc = "Wear this outfit"},
        {label = "Outfit#35", value = "action35",  desc = "Wear this outfit"},
        {label = "Outfit#36", value = "action36",  desc = "Wear this outfit"},
        {label = "Outfit#37", value = "action37",  desc = "Wear this outfit"},
        {label = "Outfit#38", value = "action38",  desc = "Wear this outfit"},
        {label = "Outfit#39", value = "action39",  desc = "Wear this outfit"},
        {label = "Outfit#40", value = "action40",  desc = "Wear this outfit"},
        {label = "Outfit#41", value = "action41",  desc = "Wear this outfit"},
        {label = "Outfit#42", value = "action42",  desc = "Wear this outfit"},
        {label = "Outfit#43", value = "action43",  desc = "Wear this outfit"},
        {label = "Outfit#44", value = "action44",  desc = "Wear this outfit"},
        {label = "Outfit#45", value = "action45",  desc = "Wear this outfit"},
        {label = "Outfit#46", value = "action46",  desc = "Wear this outfit"},
        {label = "Outfit#47", value = "action47",  desc = "Wear this outfit"},
        {label = "Outfit#48", value = "action48",  desc = "Wear this outfit"},
        {label = "Outfit#49", value = "action49",  desc = "Wear this outfit"},
        {label = "Outfit#50", value = "action50",  desc = "Wear this outfit"},
        {label = "Outfit#51", value = "action51",  desc = "Wear this outfit"},
        {label = "Outfit#52", value = "action52",  desc = "Wear this outfit"},
        {label = "Outfit#53", value = "action53",  desc = "Wear this outfit"},
        {label = "Outfit#54", value = "action54",  desc = "Wear this outfit"},
        {label = "Outfit#55", value = "action55",  desc = "Wear this outfit"},
        {label = "Outfit#56", value = "action56",  desc = "Wear this outfit"},
        {label = "Outfit#57", value = "action57",  desc = "Wear this outfit"},
        {label = "Outfit#58", value = "action58",  desc = "Wear this outfit"},
        {label = "Outfit#59", value = "action59",  desc = "Wear this outfit"},
        {label = "Outfit#60", value = "action60",  desc = "Wear this outfit"},
        {label = "Outfit#61", value = "action61",  desc = "Wear this outfit"},
        {label = "Outfit#62", value = "action62",  desc = "Wear this outfit"},
        {label = "Outfit#63", value = "action63",  desc = "Wear this outfit"},
        {label = "Outfit#64", value = "action64",  desc = "Wear this outfit"},
        {label = "Outfit#65", value = "action65",  desc = "Wear this outfit"},
        {label = "Outfit#66", value = "action66",  desc = "Wear this outfit"},
        {label = "Outfit#67", value = "action67",  desc = "Wear this outfit"},
        {label = "Outfit#68", value = "action68",  desc = "Wear this outfit"},
        {label = "Outfit#69", value = "action69",  desc = "Wear this outfit"},
        {label = "Outfit#70", value = "action70",  desc = "Wear this outfit"},
        {label = "Outfit#71", value = "action71",  desc = "Wear this outfit"},
        {label = "Outfit#72", value = "action72",  desc = "Wear this outfit"},
        {label = "Outfit#73", value = "action73",  desc = "Wear this outfit"},
        {label = "Outfit#74", value = "action74",  desc = "Wear this outfit"},
        {label = "Outfit#75", value = "action75",  desc = "Wear this outfit"},
        {label = "Outfit#76", value = "action76",  desc = "Wear this outfit"},
        {label = "Outfit#77", value = "action77",  desc = "Wear this outfit"},
        {label = "Outfit#78", value = "action78",  desc = "Wear this outfit"},
        {label = "Outfit#79", value = "action79",  desc = "Wear this outfit"},
        {label = "Outfit#80", value = "action80",  desc = "Wear this outfit"},
        {label = "Outfit#81", value = "action81",  desc = "Wear this outfit"},
        {label = "Outfit#82", value = "action82",  desc = "Wear this outfit"},
        {label = "Outfit#83", value = "action83",  desc = "Wear this outfit"},
        {label = "Outfit#84", value = "action84",  desc = "Wear this outfit"},
        {label = "Outfit#85", value = "action85",  desc = "Wear this outfit"},
        {label = "Outfit#86", value = "action86",  desc = "Wear this outfit"},
        {label = "Outfit#87", value = "action87",  desc = "Wear this outfit"},
        {label = "Outfit#88", value = "action88",  desc = "Wear this outfit"},
        {label = "Outfit#89", value = "action89",  desc = "Wear this outfit"},
        {label = "Outfit#90", value = "action90",  desc = "Wear this outfit"},
        {label = "Outfit#91", value = "action91",  desc = "Wear this outfit"},
        {label = "Outfit#92", value = "action92",  desc = "Wear this outfit"},
        {label = "Outfit#93", value = "action93",  desc = "Wear this outfit"},
        {label = "Outfit#94", value = "action94",  desc = "Wear this outfit"},
        {label = "Outfit#95", value = "action95",  desc = "Wear this outfit"},
        {label = "Outfit#96", value = "action96",  desc = "Wear this outfit"},
        {label = "Outfit#97", value = "action97",  desc = "Wear this outfit"},
}
 
 
Config.TextMenuMenDescriptionLabel097 = "Outfit#097"

--Menus Hairstyles

Config.TextMenuMenHairstyleTitle   = "Hairstyle"
Config.TextMenuMenHairstyle = {
		{label = "Hairstyle#01", value = "action01",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#02", value = "action02",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#03", value = "action03",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#04", value = "action04",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#05", value = "action05",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#06", value = "action06",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#07", value = "action07",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#08", value = "action08",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#09", value = "action09",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#10", value = "action10",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#11", value = "action11",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#12", value = "action12",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#13", value = "action13",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#14", value = "action14",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#15", value = "action15",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#16", value = "action16",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#17", value = "action17",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#18", value = "action18",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#19", value = "action19",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#20", value = "action20",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#21", value = "action21",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#22", value = "action22",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#23", value = "action23",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#24", value = "action24",  desc = "Apply this hairstyle"},
		{label = "Hairstyle#25", value = "action25",  desc = "Apply this hairstyle"},
}
 

Config.TextMenuWomenHairstyleTitle   = "Hairstyle"
Config.TextMenuWomenHairstyle = {
		{label = "Hairstyle#01", value = "action01", desc = "Apply this hairstyle"},
		{label = "Hairstyle#02", value = "action02", desc = "Apply this hairstyle"},
		{label = "Hairstyle#03", value = "action03", desc = "Apply this hairstyle"},
		{label = "Hairstyle#04", value = "action04", desc = "Apply this hairstyle"},
		{label = "Hairstyle#05", value = "action05", desc = "Apply this hairstyle"},
		{label = "Hairstyle#06", value = "action06", desc = "Apply this hairstyle"},
		{label = "Hairstyle#07", value = "action07", desc = "Apply this hairstyle"},
		{label = "Hairstyle#08", value = "action08", desc = "Apply this hairstyle"},
		{label = "Hairstyle#09", value = "action09", desc = "Apply this hairstyle"},
		{label = "Hairstyle#10", value = "action10", desc = "Apply this hairstyle"},
		{label = "Hairstyle#11", value = "action11", desc = "Apply this hairstyle"},
		{label = "Hairstyle#12", value = "action12", desc = "Apply this hairstyle"},
		{label = "Hairstyle#13", value = "action13", desc = "Apply this hairstyle"},
		{label = "Hairstyle#14", value = "action14", desc = "Apply this hairstyle"},
		{label = "Hairstyle#15", value = "action15", desc = "Apply this hairstyle"},
		{label = "Hairstyle#16", value = "action16", desc = "Apply this hairstyle"},
		{label = "Hairstyle#17", value = "action17", desc = "Apply this hairstyle"},
		{label = "Hairstyle#18", value = "action18", desc = "Apply this hairstyle"},
		{label = "Hairstyle#19", value = "action19", desc = "Apply this hairstyle"},
		{label = "Hairstyle#20", value = "action20", desc = "Apply this hairstyle"},
		{label = "Hairstyle#21", value = "action21", desc = "Apply this hairstyle"},
}


 
Config.TextMenuWomenAccessoriesTitle = "Accessories"
Config.TextMenuWomenAccessories = {
		{label = "Accessory#01",       value = "action01", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#02",       value = "action02", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#03",       value = "action03", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#04",       value = "action04", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#05",       value = "action05", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#06",       value = "action06", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#07",       value = "action07", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#08",       value = "action08", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#09",       value = "action09", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#10",       value = "action10", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#11",       value = "action11", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#12",       value = "action12", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#13",       value = "action13", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#14",       value = "action14", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#15",       value = "action15", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#16",       value = "action16", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#17",       value = "action17", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#18",       value = "action18", desc = "Apply this accessory / Reload your character to undo changes"},
 
 
}

 
Config.TextMenuMenAccessoriesTitle = "Accessories"
Config.TextMenuMenAccessories = {
		{label = "Accessory#01", value = "action01", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#02", value = "action02", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#03", value = "action03", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#04", value = "action04", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#05", value = "action05", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#06", value = "action06", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#07", value = "action07", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#08", value = "action08", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#09", value = "action09", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#10", value = "action10", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#11", value = "action11", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#12", value = "action12", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#13", value = "action13", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#14", value = "action14", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#15", value = "action15", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#16", value = "action16", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#17", value = "action17", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#18", value = "action18", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#19", value = "action19", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#20", value = "action20", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#21", value = "action21", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#22", value = "action22", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#23", value = "action23", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#24", value = "action24", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#25", value = "action25", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#26", value = "action26", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#27", value = "action27", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#28", value = "action28", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#29", value = "action29", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#30", value = "action30", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#31", value = "action31", desc = "Apply this accessory / Reload your character to undo changes"},
		{label = "Accessory#32", value = "action32", desc = "Apply this accessory / Reload your character to undo changes"},
 
}





 
-------------------------------------------
               --EVENTS LINES --
-------------------------------------------

-- FOR MORE INFORMATIONS ON HOW OUTFITS EVENTS WORK CHECK THE OUTFIT GUIDES : (WORK THE SAME WAY FOR ALL OUTFITS PACKS) : 

--TriggerEvent("sirevlc_eagle_flies", "mainmenu") -- Open Main Menu
 
--Rest of Events Lines :
 
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen01")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen02")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen03")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen04")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen05")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen06")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen07")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen08")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen09")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen10")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen11")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen12")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen13")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen14")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen15")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen16")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen17")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryWomen18")
 
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen01")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen02")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen03")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen04")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen05")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen06")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen07")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen08")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen09")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen10")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen11")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen12")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen13")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen14")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen15")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen16")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen17")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen18")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen19")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen20")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen21")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen22")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen23")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen24")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen25")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen26")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen27")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen28")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen29")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen30")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen31")
--TriggerEvent("sirevlc_eagle_flies", "AccessoryMen32")
 
  
--TriggerEvent("sirevlc_eagle_flies", "HairWomen01")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen02")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen03")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen04")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen05")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen06")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen07")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen08")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen09")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen10")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen11")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen12")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen13")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen14")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen15")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen16")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen17")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen18")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen19")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen20")
--TriggerEvent("sirevlc_eagle_flies", "HairWomen21")
 
--TriggerEvent("sirevlc_eagle_flies", "HairMen01")
--TriggerEvent("sirevlc_eagle_flies", "HairMen02")
--TriggerEvent("sirevlc_eagle_flies", "HairMen03")
--TriggerEvent("sirevlc_eagle_flies", "HairMen04")
--TriggerEvent("sirevlc_eagle_flies", "HairMen05")
--TriggerEvent("sirevlc_eagle_flies", "HairMen06")
--TriggerEvent("sirevlc_eagle_flies", "HairMen07")
--TriggerEvent("sirevlc_eagle_flies", "HairMen08")
--TriggerEvent("sirevlc_eagle_flies", "HairMen09")
--TriggerEvent("sirevlc_eagle_flies", "HairMen10")
--TriggerEvent("sirevlc_eagle_flies", "HairMen11")
--TriggerEvent("sirevlc_eagle_flies", "HairMen12")
--TriggerEvent("sirevlc_eagle_flies", "HairMen13")
--TriggerEvent("sirevlc_eagle_flies", "HairMen14")
--TriggerEvent("sirevlc_eagle_flies", "HairMen15")
--TriggerEvent("sirevlc_eagle_flies", "HairMen16")
--TriggerEvent("sirevlc_eagle_flies", "HairMen17")
--TriggerEvent("sirevlc_eagle_flies", "HairMen18")
--TriggerEvent("sirevlc_eagle_flies", "HairMen19")
--TriggerEvent("sirevlc_eagle_flies", "HairMen20")
--TriggerEvent("sirevlc_eagle_flies", "HairMen21")
--TriggerEvent("sirevlc_eagle_flies", "HairMen22")
--TriggerEvent("sirevlc_eagle_flies", "HairMen23")
--TriggerEvent("sirevlc_eagle_flies", "HairMen24")
--TriggerEvent("sirevlc_eagle_flies", "HairMen25")

--TriggerEvent("sirevlc_eagle_flies","WomenOutfit001")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit002")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit003")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit004")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit005")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit006")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit007")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit008")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit009")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit010")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit011")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit012")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit013")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit014")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit015")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit016")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit017")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit018")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit019")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit020")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit021")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit022")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit023")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit024")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit025")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit026")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit027")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit028")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit029")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit030")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit031")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit032")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit033")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit034")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit035")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit036")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit037")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit038")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit039")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit040")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit041")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit042")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit043")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit044")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit045")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit046")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit047")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit048")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit049")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit050")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit051")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit052")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit053")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit054")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit055")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit056")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit057")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit058")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit059")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit060")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit061")
--TriggerEvent("sirevlc_eagle_flies","WomenOutfit062")


--TriggerEvent("sirevlc_eagle_flies","MenOutfit001")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit002")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit003")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit004")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit005")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit006")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit007")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit008")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit009")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit010")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit011")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit012")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit013")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit014")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit015")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit016")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit017")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit018")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit019")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit020")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit021")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit022")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit023")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit024")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit025")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit026")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit027")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit028")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit029")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit030")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit031")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit032")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit033")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit034")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit035")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit036")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit037")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit038")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit039")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit040")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit041")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit042")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit043")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit044")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit045")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit046")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit047")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit048")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit049")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit050")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit051")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit052")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit053")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit054")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit055")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit056")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit057")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit058")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit059")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit060")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit061")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit062")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit063")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit064")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit065")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit066")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit067")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit068")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit069")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit070")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit071")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit072")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit073")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit074")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit075")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit076")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit077")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit078")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit079")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit080")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit081")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit082")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit083")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit084")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit085")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit086")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit087")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit088")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit089")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit090")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit091")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit092")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit093")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit094")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit095")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit096")
--TriggerEvent("sirevlc_eagle_flies","MenOutfit097") 

-----------------------------------------------------------------------------------------------
									--KEYBINDS LIST--
-----------------------------------------------------------------------------------------------

 
--    Number Keys
--   ["1"] = 0xE6F612E4,
--   ["2"] = 0x1CE6D9EB,
--   ["3"] = 0x4F49CC4C,
--   ["4"] = 0x8F9F9E58,
--   ["5"] = 0xAB62E997,
--   ["6"] = 0xA1FDE2A6,
--   ["7"] = 0xB03A913B,
--   ["8"] = 0x42385422,
 