extends Node

var version = "2.0"
var helpLink = "http://www.wowhead.com/"

const EXCLUSIVE_DROP_BAGS := 1000
const EXCLUSIVE_CLOTH_CRAFT := 1001
const EXCLUSIVE_DUNGEONS := 1002
const EXCLUSIVE_RAIDS := 1002
const EXCLUSIVE_COVENANTS := 103

var milestones = {
    #-------------------------------------------------------------------------------
    # Shared
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Explore 1 zone": 0,
    "Explore 2 zones": 0,

    "50 Gold": 0,
    "75 Gold": 0,
    "100 Gold": 0,
    "125 Gold": 0,

    "Level 5": 0,
    "Level 10": 0,
    "Level 15": 0,
    "Level 20": 0,

    "Kill a rare": 0,
    "Complete a bonus objective": 0,

    "Complete chapters (5)": 0,
    "Complete chapters (7)": 0,
    "Complete a chapter in a zone": 0,

    "Complete quests (50)": 0,
    "Complete quests (75)": 0,
    "Complete quests (100)": 0,

    "Two honored reputations": 0,

    "Learn Journeyman riding": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    "Hearthstones (3)": 0, # Regular, Garrison, Dalaran

    "6 slots bag (1)": 0,
    "8 slots bag (1)": 0,
    "10 slots bag (1)": 0,
    "12 slots bag (1)": 0,
    "14 slots bag (1)": 0,
    "16 slots bag (1)": 0,

    "A stack of meats (20)": 0,
    "A stack of drinks (20)": 0,
    "A stack of food (20)": 0,

    "Uncommon weapon (1)": 0,
    "Uncommon armor (1)": 0,
    "Uncommon jewelry (1)": 0,
    "Uncommon cloak (1)": 0,

    "Rare Item (1)": 0,

    "Tabard (1)": 0,
    "Rep Tabard (1)": 0,
    "Shirt (1)": 0,

    "Purchase racial mount": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Archaeology (5)": 0,
    "Cooking (25)": 0,
    "Fishing (25)": 0,
    "Craft unique Tailoring items (5)": 0,
    "Craft unique Engineering items (5)": 0,
    "Craft unique Blacksmith items (5)": 0,
    "Craft unique Leatherworking items (5)": 0,
    "Craft unique Alchemy items (5)": 0,
    "Craft unique Inscription items (5)": 0,
    "Craft a Runed Copper Rod": 0,
    "Enchant a piece of armor": 0,

    #---------------------------------------
    # Achievements
    #---------------------------------------
    "Going Down? Achievement": 0,

    #-------------------------------------------------------------------------------
    # Vanilla
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # Hearthstone
    #---------------------------------------
    "Hearthstone Orgrimmar / Stormwind": 0,
    "Hearthstone Ironforge / Undercity": 0,
    "Hearthstone Darnassus / Thunderbluff": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    "Malachite (1)": 0,
    "Tigerseye (1)": 0,
    "Shadowgem (1)": 0,

    # Crafted
    "Linen Bag (1)": 0,
    "Red Linen Bag (1)": 0,

    # Purchasable
    "Small Brown Pouch (1)": 0,
    "Brown Leather Satchel (1)": 0,
    "Heavy Brown Bag (1)": 0,
    "Huge Brown Sack (1)": 0,
    "Thick Hide Pack (1)": 0,
    "Explorer's Pack (1)": 0,

    # Rare drop
    "Small Black Pouch (1)": EXCLUSIVE_DROP_BAGS,
    "Small Blue Pouch (1)": EXCLUSIVE_DROP_BAGS,
    "Small Green Pouch (1)": EXCLUSIVE_DROP_BAGS,
    "Small Red Pouch (1)": EXCLUSIVE_DROP_BAGS,
    "Blue Leather Bag (1)": EXCLUSIVE_DROP_BAGS,
    "Green Leather Bag (1)": EXCLUSIVE_DROP_BAGS,
    "Red Leather Bag (1)": EXCLUSIVE_DROP_BAGS,
    "White Leather Bag (1)": EXCLUSIVE_DROP_BAGS,

    # Rep Tabards
    "Stormwind City / Orgrimmar Tabard (1)": 0,
    "Ironforge / Undercity Tabard (1)": 0,
    "Darnassus / Thunderbluff Tabard (1)": 0,
    "Exodar / Silvermoon City Tabard (1)": 0,
    "Gnomeregan / Darkspear Tabard (1)": 0,

    #-------------------
    # Herbalism
    #-------------------
    "Silverleaf (20)": 0,
    "Peacebloom (20)": 0,
    "Earthroot (20)": 0,
    "Mageroyal (20)": 0,
    "Briarthorn (20)": 0,
    "Stranglekelp (20)": 0,
    "Bruiseweed (20)": 0,
    "Grave Moss (20)": 0,
    "Wild Steelbloom (20)": 0,
    "Kingsblood (20)": 0,
    "Liferoot (20)": 0,
    "Fadeleaf (20)": 0,
    "Goldthorn (20)": 0,
    "Khadgar's Whisker (20)": 0,
    "Firebloom (20)": 0,
    "Purple Lotus (20)": 0,
    "Sungrass (20)": 0,
    "Blindweed (20)": 0,
    "Ghost Mushroom (20)": 0,
    "Gromsblood (20)": 0,
    "Golden Sansam (20)": 0,
    "Dreamfoil (20)": 0,
    "Mountain Silversage (20)": 0,
    "Black Lotus (1)": 0,

    #-------------------
    # Skinning
    #-------------------
    "Ruined Leather Scraps (20)": 0,
    "Light Leather (20)": 0,
    "Medium Leather (20)": 0,
    "Heavy Leather (20)": 0,
    "Light Hide (3)": 0,
    "Medium Hide (3)": 0,
    "Heavy Hide (3)": 0,

    #-------------------
    # Mining
    #-------------------
    "Copper Ores (20)": 0,
    "Copper Bars (20)": 0,
    "Rough Stones (20)": 0,
    "Tin Ore (20)": 0,

    #-------------------
    # Tailoring
    #-------------------
    "Linen Cloth (20)": 0,
    "Bolt of Linen Cloth (20)": 0,

    #-------------------
    # Engineering
    #-------------------
    "Rough Blasting Powders (20)": 0,
    "Delicate Copper Wires (10)": 0,

    #-------------------
    # Leatherworking
    #-------------------
    "Light Armor Kits (20)": 0,

    #-------------------
    # Inscription
    #-------------------
    "Moonglow Ink (20)": 0,

    #-------------------
    # Enchanting
    #-------------------
    "Strange Dust (20)": 0,
    "Lesser Magic Essence (3)": 0,
    "Greater Magic Essence (1)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Mining (50)": 0,
    "Tailoring (5)": 0,
    "Blacksmithing (5)": 0,
    "Engineering (5)": 0,
    "Alchemy (5)": 0,
    "Skinning (50)": 0,
    "Enchanting (1)": 0,
    "Herbalism (50)": 0,
    "Inscription (5)": 0,
    "Jewelcrafting (5)": 0,
    "Leatherworking (5)": 0,

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Stormwind Stockades / Ragefire Chasm": EXCLUSIVE_DUNGEONS,
    "Discover The Deadmines": EXCLUSIVE_DUNGEONS,
    "Discover Shadowfang Keep": EXCLUSIVE_DUNGEONS,
    "Discover Gnomeregan": EXCLUSIVE_DUNGEONS,
    "Discover Scarlet Halls": EXCLUSIVE_DUNGEONS,
    "Discover Scarlet Monastery": EXCLUSIVE_DUNGEONS,
    "Discover Uldaman": EXCLUSIVE_DUNGEONS,
    "Discover Scholomance": EXCLUSIVE_DUNGEONS,
    "Discover Stratholme Main Gate": EXCLUSIVE_DUNGEONS,
    "Discover Stratholme Service Entrance": EXCLUSIVE_DUNGEONS,
    "Discover Blackrock Depths": EXCLUSIVE_DUNGEONS,
    "Discover Sunken Temple": EXCLUSIVE_DUNGEONS,
    "Discover Lower Blackrock Spire": EXCLUSIVE_DUNGEONS,
    "Discover Wailing Caverns": EXCLUSIVE_DUNGEONS,
    "Discover Blackfathom Deeps": EXCLUSIVE_DUNGEONS,
    "Discover Razorfen Kraul": EXCLUSIVE_DUNGEONS,
    "Discover Maraudon": EXCLUSIVE_DUNGEONS,
    "Discover Warpwood Quarter": EXCLUSIVE_DUNGEONS,
    "Discover Captial Gardens": EXCLUSIVE_DUNGEONS,
    "Discover Gordok Commons": EXCLUSIVE_DUNGEONS,
    "Discover Razorfen Downs": EXCLUSIVE_DUNGEONS,
    "Discover Zul'Farrak": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Molten Core": EXCLUSIVE_RAIDS,
    "Discover Blackwing Lair": EXCLUSIVE_RAIDS,
    "Discover Ruins of Ahn'Qiraj": EXCLUSIVE_RAIDS,
    "Discover Temple of Ahn'Qiraj": EXCLUSIVE_RAIDS,
    "Discover Onyxia's Lair": EXCLUSIVE_RAIDS,

    #---------------------------------------
    # Chapters
    #---------------------------------------

    # Kalimdor
    "Complete a chapter (Ashenvale)": 0,
    "Complete a chapter (Desolace)": 0,
    "Complete a chapter (Dustwallow Marsh)": 0,
    "Complete a chapter (Felwood)": 0,
    "Complete a chapter (Feralas)": 0,
    "Complete a chapter (Silithus)": 0,
    "Complete a chapter (Stonetalon Mountains)": 0,
    "Complete a chapter (Southern Barrens)": 0,
    "Complete a chapter (Tanaris)": 0,
    "Complete a chapter (Thousand Needles)": 0,
    "Complete a chapter (Un'Goro Crater)": 0,
    "Complete a chapter (Winterspring)": 0,

    # Eastern Kingdom
    "Complete a chapter (Arathi Highlands)": 0,
    "Complete a chapter (Badlands)": 0,
    "Complete a chapter (Blasted Lands)": 0,
    "Complete a chapter (Burning Steppes)": 0,
    "Complete a chapter (Cape of Stranglethorn)": 0,
    "Complete a chapter (Eastern Plaguelands)": 0,
    "Complete a chapter (Hinterlands)": 0,
    "Complete a chapter (Northern Stranglethorn)": 0,
    "Complete a chapter (Searing Gorge)": 0,
    "Complete a chapter (Swamp of Sorrows)": 0,
    "Complete a chapter (Western Plaguelands)": 0,

    # Faction-specific only
    "Complete a chapter (Westfall / Northern Barrens)": 0,
    "Complete a chapter (Loch Modan / Silverpine Forest)": 0,
    "Complete a chapter (Darkshore / Azshara)": 0,
    "Complete a chapter (Bloodmyst Isle / Ghostlands)": 0,
    "Complete a chapter (Redridge Mountains / Hillsbrad Foothills)": 0,

    #-------------------------------------------------------------------------------
    # Burning Crusade - 200
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Exodar / Silvermoon": 0,
    "Hearthstone Shattrath City": 0,
    "Allegiance to Aldor / Scryers": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------

    "Glowcap (5)": 0,
    "Clam Bar (1)": 0,
    "Marsh Lichen (20)": 0,
    "Mote of Water (1)": 0,
    "Mote of Air (1)": 0,
    "Mote of Earth (1)": 0,
    "Mote of Fire (1)": 0,
    "Mote of Life (1)": 0,
    "Mote of Mana (1)": 0,
    "Mote of Shadow (1)": 0,

    # Craftable
    "Netherweave Bag": 0,

    #-------------------
    # Herbalism
    #-------------------
    "Dreaming Glory (20)": 0,
    "Felweed (20)": 0,
    "Rageveil (20)": 0,
    "Flame Cap (1)": 0,
    "Terocone (20)": 0,
    "Ancient Lichen (20)": 0,
    "Netherbloom (20)": 0,
    "Nightmare Vine (5)": 0,
    "Mana Thistle (5)": 0,
    "Fel Lotus (1)": 0,

    #-------------------
    # Skinning
    #-------------------
    "Knothide Leather Scraps (20)": 0,
    "Knothide Leather (20)": 0,
    "Heavy Knothide Leather (20)": 0, #?: can starter account obtain this?
    "Thick Clefthoof Leather (20)": 0,
    "Crystal Infused Leather (20)": 0,
    "Fel Scales (20)": 0,

    #-------------------
    # Mining
    #-------------------
    "Fel Iron Ore (20)": 0,
    "Adamantite Ore (20)": 0,
    "Khorium Ore (1)": 0,
    "Eternium Ore (1)": 0,

    #-------------------
    # Tailoring
    #-------------------
    "Netherweave Cloth (20)": 0,
    "Netherweb Spider Silk (1)": 0,
    "Primal Mooncloth (1)": EXCLUSIVE_CLOTH_CRAFT, #?: might be too difficult to obtain in a timely manner
    "Shadowcloth (1)": EXCLUSIVE_CLOTH_CRAFT, #?: might be too difficult to obtain in a timely manner
    "Spellweave (1)": EXCLUSIVE_CLOTH_CRAFT, #?: might be too difficult to obtain in a timely manner

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Outland Mining (50)": 0,
    "Outland Tailoring (5)": 0,
    "Outland Blacksmithing (5)": 0,
    "Outland Engineering (5)": 0,
    "Outland Alchemy (5)": 0,
    "Outland Skinning (50)": 0,
    "Outland Enchanting (1)": 0,
    "Outland Herbalism (50)": 0,
    "Outland Inscription (5)": 0,
    "Outland Jewelcrafting (5)": 0,
    "Outland Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Hellfire Peninsula)": 0,
    "Complete a chapter (Zangarmarsh)": 0,
    "Complete a chapter (Terokkar Forest)": 0,
    "Complete a chapter (Nagrand)": 0,
    "Complete a chapter (Blade's Edge Mountains)": 0,
    # "Complete a chapter (Shadowmoon Valley)": 0, #?: requires level 25+ for quests
    # "Complete a chapter (Netherstorm)": 0, #?: requires level 25+ for quests

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Hellfire Ramparts": EXCLUSIVE_DUNGEONS,
    "Discover Blood Furance": EXCLUSIVE_DUNGEONS,
    "Discover The Slave Pens": EXCLUSIVE_DUNGEONS,
    "Discover The Underbog": EXCLUSIVE_DUNGEONS,
    "Discover Mana-Tombs": EXCLUSIVE_DUNGEONS,
    "Discover Auchenai Crypts": EXCLUSIVE_DUNGEONS,
    "Discover Sethekk Halls": EXCLUSIVE_DUNGEONS,
    "Discover The Steamvault": EXCLUSIVE_DUNGEONS,
    "Discover Shaodw Labyrinth": EXCLUSIVE_DUNGEONS,
    "Discover The Mechanar": EXCLUSIVE_DUNGEONS, #?: Can this be reachable without flying?
    "Discover The Botanica": EXCLUSIVE_DUNGEONS, #?: Can this be reachable without flying?
    "Discover Shattered Halls": EXCLUSIVE_DUNGEONS,
    "Discover The Arcatraz": EXCLUSIVE_DUNGEONS, #?: Can this be reachable without flying?
    "Discover Magisters' Terrace": EXCLUSIVE_DUNGEONS,
    "Discover Escape from Durnholde Keep": EXCLUSIVE_DUNGEONS,
    "Discover Black Morass": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Gruul's Lair": EXCLUSIVE_RAIDS,
    "Discover Magtheridon's Lair": EXCLUSIVE_RAIDS,
    "Discover Serpentshrine Cavern": EXCLUSIVE_RAIDS,
    "Discover The Eye": EXCLUSIVE_RAIDS, #?: Can this be reachable without flying?
    "Discover The Black Temple": EXCLUSIVE_RAIDS,
    "Discover Karazhan": EXCLUSIVE_RAIDS,
    "Discover Sunwell Plateau": EXCLUSIVE_RAIDS,
    "Discover Battle for Mount Hyjal": EXCLUSIVE_RAIDS,

    #-------------------------------------------------------------------------------
    # Wrath of the Lich King - 300
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Dalaran (WOTLK)": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    "Crystallized Air (1)": 0,
    "Crystallized Earth (1)": 0,
    "Crystallized Fire (1)": 0,
    "Crystallized Life (1)": 0,
    "Crystallized Shadow (1)": 0,
    "Crystallized Water (1)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Northren Mining (50)": 0,
    "Northren Tailoring (5)": 0,
    "Northren Blacksmithing (5)": 0,
    "Northren Engineering (5)": 0,
    "Northren Alchemy (5)": 0,
    "Northren Skinning (50)": 0,
    "Northren Enchanting (1)": 0,
    "Northren Herbalism (50)": 0,
    "Northren Inscription (5)": 0,
    "Northren Jewelcrafting (5)": 0,
    "Northren Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Borean Tundra)": 0,
    "Complete a chapter (Howling Fjord)": 0,
    "Complete a chapter (Dragonblight)": 0,
    "Complete a chapter (Grizzly Hills)": 0,
    "Complete a chapter (Zul'Drak)": 0,
    "Complete a chapter (Sholazar Basin)": 0,
    # "Complete a chapter (Icecrown)": 0, #?: quests req level 25+
    # "Complete a chapter (Storm Peaks)": 0, #?: quests req level 25+

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Utgarde Keep": EXCLUSIVE_DUNGEONS,
    "Discover The Nexus": EXCLUSIVE_DUNGEONS,
    "Discover Azjol-Nerub": EXCLUSIVE_DUNGEONS,
    "Discover Ahn'Kahet: The Old Kingdom": EXCLUSIVE_DUNGEONS,
    "Discover Drak'Tharon Keep": EXCLUSIVE_DUNGEONS,
    "Discover The Violet Hold": EXCLUSIVE_DUNGEONS,
    "Discover Gundrak": EXCLUSIVE_DUNGEONS,
    "Discover Halls of Stone": EXCLUSIVE_DUNGEONS,
    "Discover Utgarde Pinnacle": EXCLUSIVE_DUNGEONS,
    "Discover The Oculus": EXCLUSIVE_DUNGEONS, #?: Does this require flying to reach?
    "Discover Halls of Lightning": EXCLUSIVE_DUNGEONS,
    "Discover Trial of the Champion": EXCLUSIVE_DUNGEONS,
    "Discover The Forge of Souls": EXCLUSIVE_DUNGEONS,
    "Discover Pit of Saron": EXCLUSIVE_DUNGEONS,
    "Discover Halls of Reflection": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Naxxramas": EXCLUSIVE_RAIDS, #?: is this reachable without flying?
    "Discover The Obsidian Sanctum": EXCLUSIVE_RAIDS,
    "Discover The Eye of Eternity": EXCLUSIVE_RAIDS,
    "Discover Vault of Archavon": EXCLUSIVE_RAIDS,
    "Discover Ulduar": EXCLUSIVE_RAIDS,
    "Discover Trial of the Crusader": EXCLUSIVE_RAIDS,
    "Discover Trial of the Grand Crusader": EXCLUSIVE_RAIDS,
    "Discover Ruby Sanctum": EXCLUSIVE_RAIDS,
    "Discover Icecrown Citadel": EXCLUSIVE_RAIDS,

    #-------------------------------------------------------------------------------
    # Cataclysm - 400
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    "Volatile Air (1)": 0,
    "Volatile Earth (1)": 0,
    "Volatile Fire (1)": 0,
    "Volatile Water (1)": 0,
    "Volatile Life (1)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Cataclysm Mining (50)": 0,
    "Cataclysm Tailoring (5)": 0,
    "Cataclysm Blacksmithing (5)": 0,
    "Cataclysm Engineering (5)": 0,
    "Cataclysm Alchemy (5)": 0,
    "Cataclysm Skinning (50)": 0,
    "Cataclysm Enchanting (1)": 0,
    "Cataclysm Herbalism (50)": 0,
    "Cataclysm Inscription (5)": 0,
    "Cataclysm Jewelcrafting (5)": 0,
    "Cataclysm Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    #!: Cata zones requires level 30+
    # "Complete a chapter (Vashj'ir)": 0,
    # "Complete a chapter (Mount Hyjal)": 0,
    # "Complete a chapter (Deepholm)": 0,
    # "Complete a chapter (Uldum)": 0,
    # "Complete a chapter (Twilight Highlands)": 0,

    #---------------------------------------
    # Instances
    #---------------------------------------

    #?: Are any of cata dungeons accesible at level 20?

    #-------------------------------------------------------------------------------
    # Mists of Pandaria - 500
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Shrine of Seven Stars / Shrine of Two Moons": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    "Mote of Harmony (5)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Pandaria Mining (50)": 0,
    "Pandaria Tailoring (5)": 0,
    "Pandaria Blacksmithing (5)": 0,
    "Pandaria Engineering (5)": 0,
    "Pandaria Alchemy (5)": 0,
    "Pandaria Skinning (50)": 0,
    "Pandaria Enchanting (1)": 0,
    "Pandaria Herbalism (50)": 0,
    "Pandaria Inscription (5)": 0,
    "Pandaria Jewelcrafting (5)": 0,
    "Pandaria Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Jade Forest)": 0,
    "Complete a chapter (Valley of the Four Winds)": 0,
    "Complete a chapter (Krasarang Wilds)": 0,
    "Complete a chapter (Kun-Lai Summit)": 0,
    # "Complete a chapter (Townlong Steppes)": 0, #!: requires level 30+
    # "Complete a chapter (Dread Wastes)": 0, #!: requires level 30+

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Template of the Jade Serpent": EXCLUSIVE_DUNGEONS,
    "Discover Stormstout Brewery": EXCLUSIVE_DUNGEONS,
    "Discover Shado-Pan Monastery": EXCLUSIVE_DUNGEONS,
    "Discover Mogu'shan Palace": EXCLUSIVE_DUNGEONS,
    "Discover Gate of the Setting Sun": EXCLUSIVE_DUNGEONS,
    "Discover Siege of Niuzao Temple": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Mogu'shan Vaults": EXCLUSIVE_RAIDS,
    "Discover Heart of Fear": EXCLUSIVE_RAIDS,
    "Discover Terrace of Endless Spring": EXCLUSIVE_RAIDS,
    "Discover Throne of Thunder": EXCLUSIVE_RAIDS, #?: is this accessible at level 20?
    "Discover Siege of Orgrimmar": EXCLUSIVE_RAIDS,

    #-------------------------------------------------------------------------------
    # Warlords of Draenor - 600
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Garrison": 0,
    "Garrison Hearthstone (item)": 0,
    "Collect 500 garrison resources": 0,
    "Kill 5 rares (WoD)": 0,
    "Collect 5 vignettes (WoD)": 0,
    "Complete a bonus objective (WoD)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Draenor Mining (50)": 0,
    "Draenor Tailoring (5)": 0,
    "Draenor Blacksmithing (5)": 0,
    "Draenor Engineering (5)": 0,
    "Draenor Alchemy (5)": 0,
    "Draenor Skinning (50)": 0,
    "Draenor Enchanting (1)": 0,
    "Draenor Herbalism (50)": 0,
    "Draenor Inscription (5)": 0,
    "Draenor Jewelcrafting (5)": 0,
    "Draenor Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Shadowmoon Valley / Frostfire Ridge)": 0,
    # "Complete a chapter (Gorgrond)": 0,
    # "Complete a chapter (Talador)": 0,
    # "Complete a chapter (Spires of Arak)": 0,
    # "Complete a chapter (Nagrand WoD)": 0,

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Upper Blackrock Spire": EXCLUSIVE_DUNGEONS,
    "Discover Iron Docks": EXCLUSIVE_DUNGEONS,
    "Discover Skyreach": EXCLUSIVE_DUNGEONS,
    "Discover Auchindoun": EXCLUSIVE_DUNGEONS,
    "Discover Grimrail Depot": EXCLUSIVE_DUNGEONS,
    "Discover Shadowmoon Burial Grounds": EXCLUSIVE_DUNGEONS,
    "Discover The Everbloom": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Highmaul": EXCLUSIVE_RAIDS,
    "Discover Blackrock Foundry": EXCLUSIVE_RAIDS,
    "Discover Hellfire Citadel": EXCLUSIVE_RAIDS,

    #-------------------------------------------------------------------------------
    # Legion - 700
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Dalaran (Legion)": 0,
    "Dalaran Hearthstone (item)": 0,
    "Complete a bonus objective (Legion)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Broken Isles Mining (50)": 0,
    "Broken Isles Tailoring (5)": 0,
    "Broken Isles Blacksmithing (5)": 0,
    "Broken Isles Engineering (5)": 0,
    "Broken Isles Alchemy (5)": 0,
    "Broken Isles Skinning (50)": 0,
    "Broken Isles Enchanting (1)": 0,
    "Broken Isles Herbalism (50)": 0,
    "Broken Isles Inscription (5)": 0,
    "Broken Isles Jewelcrafting (5)": 0,
    "Broken Isles Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Azsuna)": 0,
    "Complete a chapter (Highmountain)": 0,
    "Complete a chapter (Stormhiem)": 0,
    "Complete a chapter (Val'sharah)": 0,

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Darkheart Thicket": EXCLUSIVE_DUNGEONS,
    "Discover Eye of Azshara": EXCLUSIVE_DUNGEONS,
    "Discover Halls of Valor": EXCLUSIVE_DUNGEONS,
    "Discover Neltharion's Lair": EXCLUSIVE_DUNGEONS,
    "Discover Assault on Violet Hold": EXCLUSIVE_DUNGEONS,
    "Discover Black Rook Hold": EXCLUSIVE_DUNGEONS,
    "Discover Maw of Souls": EXCLUSIVE_DUNGEONS,
    "Discover Vault of the Wardens": EXCLUSIVE_DUNGEONS,
    "Discover The Arcway": EXCLUSIVE_DUNGEONS,
    "Discover Court of Stars": EXCLUSIVE_DUNGEONS,
    "Discover Cathedral of Eternal Night": EXCLUSIVE_DUNGEONS,
    "Discover Return to Karazhan": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover The Emerald Nightmare": EXCLUSIVE_RAIDS,
    "Discover Trial of Valor": EXCLUSIVE_RAIDS,
    "Discover The Nighthold": EXCLUSIVE_RAIDS,
    "Discover Tomb of Sargeras": EXCLUSIVE_RAIDS,

    #-------------------------------------------------------------------------------
    # Battle for Azeroth - 800
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Boralus / Dazar'alor": 0,
    "Complete a bonus objective (BFA)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Kul Tiran Mining (50)": 0,
    "Kul Tiran Tailoring (5)": 0,
    "Kul Tiran Blacksmithing (5)": 0,
    "Kul Tiran Engineering (5)": 0,
    "Kul Tiran Alchemy (5)": 0,
    "Kul Tiran Skinning (50)": 0,
    "Kul Tiran Enchanting (1)": 0,
    "Kul Tiran Herbalism (50)": 0,
    "Kul Tiran Inscription (5)": 0,
    "Kul Tiran Jewelcrafting (5)": 0,
    "Kul Tiran Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Tiragarde Sound / Zuldazar)": 0,
    "Complete a chapter (Drustvar / Nazmir)": 0,
    "Complete a chapter (Stormsong Valley / Vol'dun)": 0,

    #---------------------------------------
    # Instances
    #---------------------------------------

    # Dungeons
    "Discover Freehold": EXCLUSIVE_DUNGEONS,
    "Discover Siege of Boralus": EXCLUSIVE_DUNGEONS,
    "Discover Tol Dagor": EXCLUSIVE_DUNGEONS,
    "Discover Waycrest Manor": EXCLUSIVE_DUNGEONS,
    "Discover Shrine of the Storm": EXCLUSIVE_DUNGEONS,
    "Discover Operation: Mechagon": EXCLUSIVE_DUNGEONS,
    "Discover Atal'Dazar": EXCLUSIVE_DUNGEONS,
    "Discover Kings' Rest": EXCLUSIVE_DUNGEONS,
    "Discover Temple of Selthraliss": EXCLUSIVE_DUNGEONS,
    "Discover The Underrot": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Crucible of Storms": EXCLUSIVE_RAIDS,
    "Discover Uldir": EXCLUSIVE_RAIDS,
    "Discover Battle of Dazar'alor": EXCLUSIVE_RAIDS,

    #-------------------------------------------------------------------------------
    # Shadowlands
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Oribos": 0,
    "Join a covenant": 0,
    "Complete a bonus objective (Shadowlands)": 0,

    #---------------------------------------
    # Covenants
    #---------------------------------------
    "Join Kyrian": EXCLUSIVE_COVENANTS,
    "Join Necrolords": EXCLUSIVE_COVENANTS,
    "Join Night Fae": EXCLUSIVE_COVENANTS,
    "Join Venthyr": EXCLUSIVE_COVENANTS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Shadowlands Mining (50)": 0,
    "Shadowlands Tailoring (5)": 0,
    "Shadowlands Blacksmithing (5)": 0,
    "Shadowlands Engineering (5)": 0,
    "Shadowlands Alchemy (5)": 0,
    "Shadowlands Skinning (50)": 0,
    "Shadowlands Enchanting (1)": 0,
    "Shadowlands Herbalism (50)": 0,
    "Shadowlands Inscription (5)": 0,
    "Shadowlands Jewelcrafting (5)": 0,
    "Shadowlands Leatherworking (5)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Bastion)": 0,
    "Complete a chapter (Maldraxxus)": 0,
    "Complete a chapter (Ardenweald)": 0,
    "Complete a chapter (Revendreth)": 0,

    #---------------------------------------
    # Chapters
    #---------------------------------------

    # Dungeons
    "Discover The Necrotic Wake": EXCLUSIVE_DUNGEONS,
    "Discover Plaguefall": EXCLUSIVE_DUNGEONS,
    "Discover Mists of Tirna Scithe": EXCLUSIVE_DUNGEONS,
    "Discover Halls of Atonement": EXCLUSIVE_DUNGEONS,
    "Discover Spires of Ascension": EXCLUSIVE_DUNGEONS,
    "Discover Theater of Pain": EXCLUSIVE_DUNGEONS,
    "Discover De Other Side": EXCLUSIVE_DUNGEONS,
    "Discover Sanguine Depths": EXCLUSIVE_DUNGEONS,
    "Discover Tazavesh, the Veiled Market": EXCLUSIVE_DUNGEONS,

    # Raids
    "Discover Castle Nathria": EXCLUSIVE_RAIDS,
    "Discover Sanctum of Domination": EXCLUSIVE_RAIDS,
}

var RaceClassTable: Dictionary = {
    # Alliance
    "Human"                 = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin",                                  ],
    "Dwarf"                 = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin",          "Shaman",               ],
    "Night Elf"             = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                               "Demon Hunter"],
    "Gnome"                 = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                                             ],
    "Draenei"               = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin",          "Shaman",               ],
    "Worgen"                = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",            "Druid",                         ],
    "Void Elf"              = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                                             ],
    "Lightforged Draenei"   = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin",                                  ],
    "Dark Iron Dwarf"       = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin",          "Shaman",               ],
    "Kul Tiran"             = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",            "Druid", "Shaman",               ],
    "Mechagnome"            = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                                             ],

    # Horde
    "Orc"                   = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                     "Shaman",               ],
    "Undead"                = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                                             ],
    "Tauren"                = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin", "Druid", "Shaman"                ],
    "Troll"                 = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",            "Druid", "Shaman",               ],
    "Blood Elf"             = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin",                    "Demon Hunter"],
    "Goblin"                = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                     "Shaman",               ],
    "Nightborne"            = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                                             ],
    "Highmountain Tauren"   = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",            "Druid", "Shaman",               ],
    "Mag'har Orc"           = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                     "Shaman",               ],
    "Zandalari Troll"       = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk", "Paladin", "Druid", "Shaman",               ],
    "Vulpera"               = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                     "Shaman",               ],

    "Pandaren"              = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",            "Druid",                         ],
}

var ClassSpecsTable: Dictionary = {
    "Death Knight": ["Blood", "Unholy", "Frost"],
    "Demon Hunter": ["Havoc", "Vengeance"],
    "Druid": ["Balance", "Feral", "Guardian", "Restoration"],
    "Hunter": ["Beast Mastery", "Marksmanship", "Survival"],
    "Mage": ["Fire", "Frost", "Arcane"],
    "Monk": ["Brewmaster", "Misweaver", "Windwalker"],
    "Paladin": ["Holy", "Protection", "Retribution"],
    "Priest": ["Discipline", "Holy", "Shadow"],
    "Rogue": ["Assassination", "Outlaw", "Subtlety"],
    "Shaman": ["Elemental", "Enhancement", "Restoration"],
    "Warlock": ["Affliction", "Demonology", "Destruction"],
    "Warrior": ["Arms", "Fury", "Protection"],
}

var ClassColorsTable: Dictionary = {
    "Death Knight": "#C41E3A",
    "Demon Hunter": "#A330C9",
    "Druid": "#FF7C0A",
    "Hunter": "#AAD372",
    "Mage": "#3FC7EB",
    "Monk": "#00FF98",
    "Paladin": "#F48CBA",
    "Priest": "#FFFFFF",
    "Rogue": "#FFF468",
    "Shaman": "#0070DD",
    "Warlock": "#8788EE",
    "Warrior": "#C69B6D",
}

var picked_milestones: Array[String] = []

# If true, add milestone
func _curate(milestone: String, pos: int) -> bool:
    if !milestones.has(milestone) || picked_milestones.has(milestone):
        return false

    if milestones[milestone] == 0:
        return true

    # If it's 1000 or above - means exclusive to the board
    if milestones[milestone] >= 1000:
        for i in picked_milestones:
            if milestones[i] == milestones[milestone]:
                return false

    # Vertical check
    for i in range(pos, 0, -5):
        if i == pos:
            continue
        if milestones[picked_milestones[i]] == milestones[milestone]:
            return false

    # Horizontal check
    for i in range(pos, pos - (pos % 5), -1):
        if i == pos:
            continue
        if milestones[picked_milestones[i]] == milestones[milestone]:
            return false

    # TLBR check - brute check lol
    if pos == 6 || pos == 12 || pos == 18 || pos == 24:
        for i in range(pos, 0, -6):
            if i == pos:
                continue
            if milestones[picked_milestones[i]] == milestones[milestone]:
                return false

    # BLTR check - brute check lol
    if pos == 8 || pos == 12 || pos == 16 || pos == 20:
        for i in range(pos, 4, -4):
            if i == pos:
                continue
            if milestones[picked_milestones[i]] == milestones[milestone]:
                return false

    return true;

func generate_milestones() -> Array[String]:
    picked_milestones.clear()
    while picked_milestones.size() < 25:
        var pick: String = milestones.keys().pick_random()
        if !picked_milestones.has(pick) && _curate(pick, picked_milestones.size()):
            picked_milestones.append(pick)

    return picked_milestones

func info() -> String:
    randomize()

    var race: String = RaceClassTable.keys().pick_random()
    var cls: String = RaceClassTable[race].pick_random()
    var spec: String = ClassSpecsTable[cls].pick_random()

    var txt: String = "Race: [b]%s[/b]  Class: [color=%s][b]%s[/b][/color]  Spec: [b]%s[/b]" % [race, ClassColorsTable[cls], cls, spec]
    return txt

func get_rules() -> String:
    var rules: String = """
    The rules are optional. The milestones are up to your interpretation.

    [color=yellow]Do be aware that the bingo is curated to allow starter accounts (lapsed sub) to fully participate.[/color]

    Here are some suggested rules that you may or may not adopt:
    -If a milestone has two options (i.e. Stormwind City / Orgrimmar), this usually means faction-specific which you can only do one of either (if you're human, Stormwind City)
    -Milestones requiring items must be present in inventory/bank at completion of bingo
    -Instance milestones requires you to travel to the entrance before you can mark it completed
    -Hearthstone milestones requires you to bind to that location at least once but you may change afterward
    -Heirlooms are allowed but not really encouraged as it may diminish the fun factor
    -Allied races are allowed but maybe only encouraged if you wish to skip the first half of leveling

    It is encouraged to come up with your own house rules especially if you are racing with another player.
    """
    return rules
