extends Node

var version = "2.0"
var helpLink = "http://www.wowhead.com/"

const EXCLUSIVE_ONE_START := 1000
const EXCLUSIVE_ONE_END := 1999

const EXCLUSIVE_TWO_START := 2000
const EXCLUSIVE_TWO_END := 2999

const EXCLUSIVE_THREE_START := 3000
const EXCLUSIVE_THREE_END := 3999

const EXCLUSIVE_FOUR_START := 4000
const EXCLUSIVE_FOUR_END := 4999

const EXCLUSIVE_FIVE_START := 5000
const EXCLUSIVE_FIVE_END := 5999

# No exclusives - just cannot intersect in board (row/col/dia)
const EXCLUSIVE_COVENANTS := 103

# 1 exclusive
const EXCLUSIVE_DROP_BAGS := 1000
const EXCLUSIVE_CLOTH_CRAFT := 1001

const EXCLUSIVE_CLASSIC_CHAPTERS := 1002
const EXCLUSIVE_OUTLANDS_CHAPTERS := 1002
const EXCLUSIVE_NORTHREND_CHAPTERS := 1002
const EXCLUSIVE_CATACLYSM_CHAPTERS := 1002
const EXCLUSIVE_PANDARIA_CHAPTERS := 1002
const EXCLUSIVE_DRANEOR_CHAPTERS := 1002
const EXCLUSIVE_LEGION_CHAPTERS := 1002
const EXCLUSIVE_BFA_CHAPTERS := 1002
const EXCLUSIVE_SHADOWLANDS_CHAPTERS := 1002

const EXCLUSIVE_GENERAL_CHAPTERS := 1003

# 2 exclusives
const EXCLUSIVE_HEARTHSTONE := 2000
const EXCLUSIVE_DUNGEONS := 2001
const EXCLUSIVE_RAIDS := 2002
const EXCLUSIVE_VANILLA_ITEMS := 4050
const EXCLUSIVE_OUTLANDS_ITEMS := 4050
const EXCLUSIVE_NORTHREND_ITEMS := 4050
const EXCLUSIVE_CATACLYSM_ITEMS := 4050
const EXCLUSIVE_PANDARIA_ITEMS := 4050
const EXCLUSIVE_DRANEOR_ITEMS := 4050
const EXCLUSIVE_LEGION_ITEMS := 4050
const EXCLUSIVE_BFA_ITEMS := 4050
const EXCLUSIVE_SHADOWLANDS_ITEMS := 4050

# 3 exclusives
const EXCLUSIVE_CRAFT_UNIQUE_ITEMS := 3000
const EXCLUSIVE_PROFESSIONS := 3002

# 5 exclusives
const EXCLUSIVE_CLASSIC_QUESTS := 5000
const EXCLUSIVE_OUTLANDS_QUESTS := 5000
const EXCLUSIVE_NORTHREND_QUESTS := 5000
const EXCLUSIVE_CATACLYSM_QUESTS := 5000
const EXCLUSIVE_PANDARIA_QUESTS := 5000
const EXCLUSIVE_DRANEOR_QUESTS := 5000
const EXCLUSIVE_LEGION_QUESTS := 5000
const EXCLUSIVE_BFA_QUESTS := 5000
const EXCLUSIVE_SHADOWLANDS_QUESTS := 5000

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

    "Complete chapters (2)": EXCLUSIVE_GENERAL_CHAPTERS,
    "Complete chapters (3)": EXCLUSIVE_GENERAL_CHAPTERS,
    "Complete a chapter in a zone": EXCLUSIVE_GENERAL_CHAPTERS,

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

    "Purchase rare ground mount (1)": 0,
    "Purchase epic ground mount (1)": 0,
    "Purchase rare flying mount (1)": 0,
    "Purchase epic flying mount (1)": 0,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Archaeology (5)": 0,

    "Craft unique Tailoring items (5)": EXCLUSIVE_CRAFT_UNIQUE_ITEMS,
    "Craft unique Engineering items (5)": EXCLUSIVE_CRAFT_UNIQUE_ITEMS,
    "Craft unique Blacksmith items (5)": EXCLUSIVE_CRAFT_UNIQUE_ITEMS,
    "Craft unique Leatherworking items (5)": EXCLUSIVE_CRAFT_UNIQUE_ITEMS,
    "Craft unique Alchemy items (5)": EXCLUSIVE_CRAFT_UNIQUE_ITEMS,
    "Craft unique Inscription items (5)": EXCLUSIVE_CRAFT_UNIQUE_ITEMS,

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
    "Hearthstone Orgrimmar / Stormwind": EXCLUSIVE_HEARTHSTONE,
    "Hearthstone Ironforge / Undercity": EXCLUSIVE_HEARTHSTONE,
    "Hearthstone Darnassus / Thunderbluff": EXCLUSIVE_HEARTHSTONE,

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
    "Silverleaf (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Peacebloom (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Earthroot (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Mageroyal (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Briarthorn (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Stranglekelp (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Bruiseweed (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Grave Moss (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Wild Steelbloom (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Kingsblood (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Liferoot (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Fadeleaf (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Goldthorn (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Khadgar's Whisker (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Firebloom (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Purple Lotus (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Sungrass (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Blindweed (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Ghost Mushroom (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Gromsblood (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Golden Sansam (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Dreamfoil (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Mountain Silversage (5)": EXCLUSIVE_VANILLA_ITEMS,
    "Black Lotus (1)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Skinning
    #-------------------
    "Ruined Leather Scraps (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Light Leather (20)": EXCLUSIVE_VANILLA_ITEMS,
    # "Medium Leather (20)": EXCLUSIVE_VANILLA_ITEMS,
    # "Heavy Leather (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Light Hide (3)": EXCLUSIVE_VANILLA_ITEMS,
    # "Medium Hide (3)": EXCLUSIVE_VANILLA_ITEMS,
    # "Heavy Hide (3)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Copper Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Tin Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Iron Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Mithril Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Thorium Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Silver Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Gold Ore (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Truesilver Stones (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Coal (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Rough Stone (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Coarse Stone (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Heavy Stone (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Solid Stone (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Dense Stone (20)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Tailoring
    #-------------------
    "Linen Cloth (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Wool Cloth (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Silk Cloth (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Mageweave Cloth (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Runecloth (20)": EXCLUSIVE_VANILLA_ITEMS,

    "Bolt of Linen Cloth (20)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Engineering
    #-------------------
    "Rough Blasting Powders (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Delicate Copper Wires (10)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Leatherworking
    #-------------------
    "Light Armor Kits (20)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Inscription
    #-------------------
    "Moonglow Ink (20)": EXCLUSIVE_VANILLA_ITEMS,

    #-------------------
    # Enchanting
    #-------------------
    "Strange Dust (20)": EXCLUSIVE_VANILLA_ITEMS,
    "Lesser Magic Essence (3)": EXCLUSIVE_VANILLA_ITEMS,
    "Greater Magic Essence (1)": EXCLUSIVE_VANILLA_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Fishing (25)": EXCLUSIVE_PROFESSIONS,

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
    # Chapters / Quests
    #---------------------------------------

    # Kalimdor
    "Complete a chapter (Ashenvale)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Desolace)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Dustwallow Marsh)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Felwood)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Feralas)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Silithus)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Stonetalon Mountains)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Southern Barrens)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Tanaris)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Thousand Needles)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Un'Goro Crater)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Winterspring)": EXCLUSIVE_CLASSIC_CHAPTERS,

    "Complete 30 quests (Ashenvale)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Desolace)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Dustwallow Marsh)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Felwood)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Feralas)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Silithus)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Stonetalon Mountains)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Southern Barrens)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Tanaris)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Thousand Needles)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Un'Goro Crater)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Winterspring)": EXCLUSIVE_CLASSIC_QUESTS,

    # Eastern Kingdom
    "Complete a chapter (Arathi Highlands)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Badlands)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Blasted Lands)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Burning Steppes)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Cape of Stranglethorn)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Eastern Plaguelands)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Hinterlands)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Northern Stranglethorn)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Searing Gorge)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Swamp of Sorrows)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Western Plaguelands)": EXCLUSIVE_CLASSIC_CHAPTERS,

    "Complete 30 quests (Arathi Highlands)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Badlands)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Blasted Lands)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Burning Steppes)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Cape of Stranglethorn)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Eastern Plaguelands)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Hinterlands)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Northern Stranglethorn)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Searing Gorge)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Swamp of Sorrows)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Western Plaguelands)": EXCLUSIVE_CLASSIC_QUESTS,

    # Faction-specific only
    "Complete a chapter (Westfall / Northern Barrens)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Loch Modan / Silverpine Forest)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Darkshore / Azshara)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Bloodmyst Isle / Ghostlands)": EXCLUSIVE_CLASSIC_CHAPTERS,
    "Complete a chapter (Redridge Mountains / Hillsbrad Foothills)": EXCLUSIVE_CLASSIC_CHAPTERS,

    "Complete 30 quests (Westfall / Northern Barrens)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Loch Modan / Silverpine Forest)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Darkshore / Azshara)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Bloodmyst Isle / Ghostlands)": EXCLUSIVE_CLASSIC_QUESTS,
    "Complete 30 quests (Redridge Mountains / Hillsbrad Foothills)": EXCLUSIVE_CLASSIC_QUESTS,

    #-------------------------------------------------------------------------------
    # Burning Crusade - 200
    #-------------------------------------------------------------------------------

    #---------------------------------------
    # General
    #---------------------------------------
    "Hearthstone Exodar / Silvermoon": EXCLUSIVE_HEARTHSTONE,
    "Hearthstone Shattrath City": EXCLUSIVE_HEARTHSTONE,
    "Allegiance to Aldor / Scryers": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------

    "Glowcap (5)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Clam Bar (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Marsh Lichen (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Water (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Air (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Earth (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Fire (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Life (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Mana (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mote of Shadow (1)": EXCLUSIVE_OUTLANDS_ITEMS,

    # Craftable
    "Netherweave Bag": EXCLUSIVE_OUTLANDS_ITEMS,

    #-------------------
    # Herbalism
    #-------------------
    "Dreaming Glory (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Felweed (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Rageveil (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Flame Cap (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Terocone (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Ancient Lichen (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Netherbloom (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Nightmare Vine (5)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Mana Thistle (5)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Fel Lotus (1)": EXCLUSIVE_OUTLANDS_ITEMS,

    #-------------------
    # Skinning
    #-------------------
    "Knothide Leather Scraps (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Knothide Leather (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Heavy Knothide Leather (20)": EXCLUSIVE_OUTLANDS_ITEMS, #?: can starter account obtain this?
    "Thick Clefthoof Leather (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Crystal Infused Leather (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Fel Scales (20)": EXCLUSIVE_OUTLANDS_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Fel Iron Ore (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Adamantite Ore (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Khorium Ore (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Eternium Ore (1)": EXCLUSIVE_OUTLANDS_ITEMS,

    #-------------------
    # Tailoring
    #-------------------
    "Netherweave Cloth (20)": EXCLUSIVE_OUTLANDS_ITEMS,
    "Netherweb Spider Silk (1)": EXCLUSIVE_OUTLANDS_ITEMS,
    # "Primal Mooncloth (1)": EXCLUSIVE_CLOTH_CRAFT, #?: might be too difficult to obtain in a timely manner
    # "Shadowcloth (1)": EXCLUSIVE_CLOTH_CRAFT, #?: might be too difficult to obtain in a timely manner
    # "Spellweave (1)": EXCLUSIVE_CLOTH_CRAFT, #?: might be too difficult to obtain in a timely manner

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Outland Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Outland Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Outland Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Outland Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Outland Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Outland Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    "Complete a chapter (Hellfire Peninsula)": EXCLUSIVE_OUTLANDS_CHAPTERS,
    "Complete a chapter (Zangarmarsh)": EXCLUSIVE_OUTLANDS_CHAPTERS,
    "Complete a chapter (Terokkar Forest)": EXCLUSIVE_OUTLANDS_CHAPTERS,
    "Complete a chapter (Nagrand)": EXCLUSIVE_OUTLANDS_CHAPTERS,
    "Complete a chapter (Blade's Edge Mountains)": EXCLUSIVE_OUTLANDS_CHAPTERS,
    # "Complete a chapter (Shadowmoon Valley)": EXCLUSIVE_OUTLANDS_CHAPTERS, #?: requires level 25+ for quests
    # "Complete a chapter (Netherstorm)": EXCLUSIVE_OUTLANDS_CHAPTERS, #?: requires level 25+ for quests

    "Complete 30 quests (Hellfire Peninsula)": EXCLUSIVE_OUTLANDS_QUESTS,
    "Complete 30 quests (Zangarmarsh)": EXCLUSIVE_OUTLANDS_QUESTS,
    "Complete 30 quests (Terokkar Forest)": EXCLUSIVE_OUTLANDS_QUESTS,
    "Complete 30 quests (Nagrand)": EXCLUSIVE_OUTLANDS_QUESTS,
    "Complete 30 quests (Blade's Edge Mountains)": EXCLUSIVE_OUTLANDS_QUESTS,
    # "Complete 30 quests (Shadowmoon Valley)": EXCLUSIVE_OUTLANDS_QUESTS, #?: requires level 25+ for quests
    # "Complete 30 quests (Netherstorm)": EXCLUSIVE_OUTLANDS_QUESTS, #?: requires level 25+ for quests

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
    "Hearthstone Dalaran (WOTLK)": EXCLUSIVE_HEARTHSTONE,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    "Crystallized Air (1)": EXCLUSIVE_NORTHREND_ITEMS,
    "Crystallized Earth (1)": EXCLUSIVE_NORTHREND_ITEMS,
    "Crystallized Fire (1)": EXCLUSIVE_NORTHREND_ITEMS,
    "Crystallized Life (1)": EXCLUSIVE_NORTHREND_ITEMS,
    "Crystallized Shadow (1)": EXCLUSIVE_NORTHREND_ITEMS,
    "Crystallized Water (1)": EXCLUSIVE_NORTHREND_ITEMS,

    #-------------------
    # Herbalism
    #-------------------
    "Goldclover (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Fire Leaf (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Tiger Lily (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Talandra's Rose (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Adder's Tongue (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Deadnettle (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Lichbloom (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Icethorn (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Frost Lotus (1)": EXCLUSIVE_NORTHREND_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Cobalt Ore (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Saronite Ore (20)": EXCLUSIVE_NORTHREND_ITEMS,
    "Titanium Ore (1)": EXCLUSIVE_NORTHREND_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Northren Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Northren Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Northren Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Northren Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Northren Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Northren Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    "Complete a chapter (Borean Tundra)": EXCLUSIVE_NORTHREND_CHAPTERS,
    "Complete a chapter (Howling Fjord)": EXCLUSIVE_NORTHREND_CHAPTERS,
    "Complete a chapter (Dragonblight)": EXCLUSIVE_NORTHREND_CHAPTERS,
    "Complete a chapter (Grizzly Hills)": EXCLUSIVE_NORTHREND_CHAPTERS,
    "Complete a chapter (Zul'Drak)": EXCLUSIVE_NORTHREND_CHAPTERS,
    "Complete a chapter (Sholazar Basin)": EXCLUSIVE_NORTHREND_CHAPTERS,
    # "Complete a chapter (Icecrown)": EXCLUSIVE_NORTHREND_CHAPTERS, #?: quests req level 25+
    # "Complete a chapter (Storm Peaks)": EXCLUSIVE_NORTHREND_CHAPTERS, #?: quests req level 25+

    "Complete 30 quests (Borean Tundra)": EXCLUSIVE_NORTHREND_QUESTS,
    "Complete 30 quests (Howling Fjord)": EXCLUSIVE_NORTHREND_QUESTS,
    "Complete 30 quests (Dragonblight)": EXCLUSIVE_NORTHREND_QUESTS,
    "Complete 30 quests (Grizzly Hills)": EXCLUSIVE_NORTHREND_QUESTS,
    "Complete 30 quests (Zul'Drak)": EXCLUSIVE_NORTHREND_QUESTS,
    "Complete 30 quests (Sholazar Basin)": EXCLUSIVE_NORTHREND_QUESTS,
    # "Complete 30 quests (Icecrown)": EXCLUSIVE_NORTHREND_QUESTS, #?: quests req level 25+
    # "Complete 30 quests (Storm Peaks)": EXCLUSIVE_NORTHREND_QUESTS, #?: quests req level 25+

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
    #!: it appears that cata content is not really accessible until level 30 which locks
    #!: starter accounts out

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    # "Volatile Air (1)": EXCLUSIVE_CATACLYSM_ITEMS,
    # "Volatile Earth (1)": EXCLUSIVE_CATACLYSM_ITEMS,
    # "Volatile Fire (1)": EXCLUSIVE_CATACLYSM_ITEMS,
    # "Volatile Water (1)": EXCLUSIVE_CATACLYSM_ITEMS,
    # "Volatile Life (1)": EXCLUSIVE_CATACLYSM_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    # "Cataclysm Mining (50)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Engineering (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Skinning (50)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Inscription (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Cooking (25)": EXCLUSIVE_PROFESSIONS,
    # "Cataclysm Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    #!: Cata zones requires level 30+
    # "Complete a chapter (Vashj'ir)": EXCLUSIVE_CATACLYSM_CHAPTERS,
    # "Complete a chapter (Mount Hyjal)": EXCLUSIVE_CATACLYSM_CHAPTERS,
    # "Complete a chapter (Deepholm)": EXCLUSIVE_CATACLYSM_CHAPTERS,
    # "Complete a chapter (Uldum)": EXCLUSIVE_CATACLYSM_CHAPTERS,
    # "Complete a chapter (Twilight Highlands)": EXCLUSIVE_CATACLYSM_CHAPTERS,

    # "Complete 30 quests (Vashj'ir)": EXCLUSIVE_CATACLYSM_QUESTS,
    # "Complete 30 quests (Mount Hyjal)": EXCLUSIVE_CATACLYSM_QUESTS,
    # "Complete 30 quests (Deepholm)": EXCLUSIVE_CATACLYSM_QUESTS,
    # "Complete 30 quests (Uldum)": EXCLUSIVE_CATACLYSM_QUESTS,
    # "Complete 30 quests (Twilight Highlands)": EXCLUSIVE_CATACLYSM_QUESTS,

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
    "Hearthstone Shrine of Seven Stars / Shrine of Two Moons": EXCLUSIVE_HEARTHSTONE,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # General
    #-------------------
    "Mote of Harmony (5)": EXCLUSIVE_PANDARIA_ITEMS,

    #-------------------
    # Herbalism
    #-------------------
    "Green Tea Leaf (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Rain Poppy (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Silkweed (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Snow Lily (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Fool's Cap (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Golden Lotus (1)": EXCLUSIVE_PANDARIA_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Ghost Iron Ore (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Kyparite (20)": EXCLUSIVE_PANDARIA_ITEMS,
    "Black Trillium Ore (1)": EXCLUSIVE_PANDARIA_ITEMS,
    "White Trillium Ore (1)": EXCLUSIVE_PANDARIA_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Pandaria Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Pandaria Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    "Complete a chapter (Jade Forest)": EXCLUSIVE_PANDARIA_CHAPTERS,
    "Complete a chapter (Valley of the Four Winds)": EXCLUSIVE_PANDARIA_CHAPTERS,
    "Complete a chapter (Krasarang Wilds)": EXCLUSIVE_PANDARIA_CHAPTERS,
    "Complete a chapter (Kun-Lai Summit)": EXCLUSIVE_PANDARIA_CHAPTERS,
    # "Complete a chapter (Townlong Steppes)": EXCLUSIVE_PANDARIA_CHAPTERS, #!: requires level 30+
    # "Complete a chapter (Dread Wastes)": EXCLUSIVE_PANDARIA_CHAPTERS, #!: requires level 30+

    "Complete 30 quests (Jade Forest)": EXCLUSIVE_PANDARIA_QUESTS,
    "Complete 30 quests (Valley of the Four Winds)": EXCLUSIVE_PANDARIA_QUESTS,
    "Complete 30 quests (Krasarang Wilds)": EXCLUSIVE_PANDARIA_QUESTS,
    "Complete 30 quests (Kun-Lai Summit)": EXCLUSIVE_PANDARIA_QUESTS,
    # "Complete 30 quests (Townlong Steppes)": EXCLUSIVE_PANDARIA_QUESTS, #!: requires level 30+
    # "Complete 30 quests (Dread Wastes)": EXCLUSIVE_PANDARIA_QUESTS, #!: requires level 30+

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
    "Garrison Hearthstone (item)": 0,
    "Collect 500 garrison resources": 0,
    "Kill 5 rares (WoD)": 0,
    "Collect 5 vignettes (WoD)": 0,
    "Complete a bonus objective (WoD)": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # Herbalism
    #-------------------
    "Frostweed (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "Starflow (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "Fireweed (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "Gorgrond Flytrap (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "Talador Orchid (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "Nagrand Arrowbloom (20)": EXCLUSIVE_DRANEOR_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Blackrock Ore (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "True Iron Ore (20)": EXCLUSIVE_DRANEOR_ITEMS,
    "Draenic Stone (20)": EXCLUSIVE_DRANEOR_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Draenor Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Draenor Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Draenor Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Draenor Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Draenor Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Draenor Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    #!: dont think you can just quest next zone without completing the previous zone?
    "Complete a chapter (Shadowmoon Valley / Frostfire Ridge)": EXCLUSIVE_DRANEOR_CHAPTERS,
    "Complete a chapter (Gorgrond)": EXCLUSIVE_DRANEOR_CHAPTERS,
    "Complete a chapter (Talador)": EXCLUSIVE_DRANEOR_CHAPTERS,
    # "Complete a chapter (Spires of Arak)": EXCLUSIVE_DRANEOR_CHAPTERS,
    # "Complete a chapter (Nagrand WoD)": EXCLUSIVE_DRANEOR_CHAPTERS,

    "Complete 30 quests (Shadowmoon Valley / Frostfire Ridge)": EXCLUSIVE_DRANEOR_QUESTS,
    "Complete 30 quests (Gorgrond)": EXCLUSIVE_DRANEOR_QUESTS,
    "Complete 30 quests (Talador)": EXCLUSIVE_DRANEOR_QUESTS,
    # "Complete 30 quests (Spires of Arak)": EXCLUSIVE_DRANEOR_QUESTS,
    # "Complete 30 quests (Nagrand WoD)": EXCLUSIVE_DRANEOR_QUESTS,

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
    "Hearthstone Dalaran (Legion)": EXCLUSIVE_HEARTHSTONE,
    "Dalaran Hearthstone (item)": 0,
    "Complete a bonus objective (Legion)": 0,

    #---------------------------------------
    # Items
    #---------------------------------------

    #-------------------
    # Herbalism
    #-------------------
    "Aethril (20)": EXCLUSIVE_LEGION_ITEMS,
    "Astral Glory (20)": EXCLUSIVE_LEGION_ITEMS,
    "Dreamleaf (20)": EXCLUSIVE_LEGION_ITEMS,
    "Fjarnskaggl (20)": EXCLUSIVE_LEGION_ITEMS,
    "Foxflower (20)": EXCLUSIVE_LEGION_ITEMS,
    "Starlight Rose (20)": EXCLUSIVE_LEGION_ITEMS,
    "Felwort (1)": EXCLUSIVE_LEGION_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Felslate Ore (20)": EXCLUSIVE_LEGION_ITEMS,
    "Leystone Ore (20)": EXCLUSIVE_LEGION_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Broken Isles Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Broken Isles Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    "Complete a chapter (Azsuna)": EXCLUSIVE_LEGION_CHAPTERS,
    "Complete a chapter (Highmountain)": EXCLUSIVE_LEGION_CHAPTERS,
    "Complete a chapter (Stormhiem)": EXCLUSIVE_LEGION_CHAPTERS,
    "Complete a chapter (Val'sharah)": EXCLUSIVE_LEGION_CHAPTERS,

    "Complete 30 quests (Azsuna)": EXCLUSIVE_LEGION_QUESTS,
    "Complete 30 quests (Highmountain)": EXCLUSIVE_LEGION_QUESTS,
    "Complete 30 quests (Stormhiem)": EXCLUSIVE_LEGION_QUESTS,
    "Complete 30 quests (Val'sharah)": EXCLUSIVE_LEGION_QUESTS,

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
    "Hearthstone Boralus / Dazar'alor": EXCLUSIVE_HEARTHSTONE,
    "Complete a bonus objective (BFA)": 0,

    #---------------------------------------
    # General
    #---------------------------------------

    #-------------------
    # Herbalism
    #-------------------
    "Akunda's Bite (20)": EXCLUSIVE_BFA_ITEMS,
    "Riverbud (20)": EXCLUSIVE_BFA_ITEMS,
    "Sea Stalk (20)": EXCLUSIVE_BFA_ITEMS,
    "Siren's Pollen (20)": EXCLUSIVE_BFA_ITEMS,
    "Star Moss (20)": EXCLUSIVE_BFA_ITEMS,
    "Winter's Kiss (20)": EXCLUSIVE_BFA_ITEMS,
    "Anchor Weed (20)": EXCLUSIVE_BFA_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Monelite Ore (20)": EXCLUSIVE_BFA_ITEMS,
    "Storm Silver Ore (20)": EXCLUSIVE_BFA_ITEMS,
    "Platinum Ore (1)": EXCLUSIVE_BFA_ITEMS,

    #---------------------------------------
    # Professions
    #---------------------------------------
    "Kul Tiran Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Kul Tiran Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    "Complete a chapter (Tiragarde Sound / Zuldazar)": EXCLUSIVE_BFA_CHAPTERS,
    "Complete a chapter (Drustvar / Nazmir)": EXCLUSIVE_BFA_CHAPTERS,
    # "Complete a chapter (Stormsong Valley / Vol'dun)": EXCLUSIVE_BFA_CHAPTERS, #!: requires level 30

    "Complete 30 quests (Tiragarde Sound / Zuldazar)": EXCLUSIVE_BFA_QUESTS,
    "Complete 30 quests (Drustvar / Nazmir)": EXCLUSIVE_BFA_QUESTS,

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
    "Hearthstone Oribos": EXCLUSIVE_HEARTHSTONE,
    "Join a covenant": 0,
    "Complete a bonus objective (Shadowlands)": 0,

    #---------------------------------------
    # General
    #---------------------------------------

    #-------------------
    # Herbalism
    #-------------------
    "Death Blossom (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Marrowroot (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Rising Glory (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Vigil's Torch (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Widowbloom (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Nightshade (1)": EXCLUSIVE_SHADOWLANDS_ITEMS,

    #-------------------
    # Mining
    #-------------------
    "Laestrite Ore (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Oxxein Ore (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Phaedrum Ore (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Sinvyr Ore (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Solenium Ore (20)": EXCLUSIVE_SHADOWLANDS_ITEMS,
    "Elethium Ore (1)": EXCLUSIVE_SHADOWLANDS_ITEMS,

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
    "Shadowlands Mining (50)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Tailoring (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Blacksmithing (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Engineering (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Alchemy (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Skinning (50)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Enchanting (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Herbalism (50)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Inscription (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Jewelcrafting (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Leatherworking (5)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Cooking (25)": EXCLUSIVE_PROFESSIONS,
    "Shadowlands Fishing (25)": EXCLUSIVE_PROFESSIONS,

    #---------------------------------------
    # Chapters / Quests
    #---------------------------------------
    "Complete a chapter (Bastion)": EXCLUSIVE_SHADOWLANDS_CHAPTERS,
    "Complete a chapter (Maldraxxus)": EXCLUSIVE_SHADOWLANDS_CHAPTERS,
    "Complete a chapter (Ardenweald)": EXCLUSIVE_SHADOWLANDS_CHAPTERS,
    "Complete a chapter (Revendreth)": EXCLUSIVE_SHADOWLANDS_CHAPTERS,

    "Complete 30 quests (Bastion)": EXCLUSIVE_SHADOWLANDS_QUESTS,
    "Complete 30 quests (Maldraxxus)": EXCLUSIVE_SHADOWLANDS_QUESTS,
    "Complete 30 quests (Ardenweald)": EXCLUSIVE_SHADOWLANDS_QUESTS,
    "Complete 30 quests (Revendreth)": EXCLUSIVE_SHADOWLANDS_QUESTS,

    #---------------------------------------
    # Instances
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

    "Pandaren"              = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Death Knight", "Monk",                     "Shaman",               ],
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

    # Allow 1 exclusive milestone per board
    if milestones[milestone] >= EXCLUSIVE_ONE_START && milestones[milestone] <= EXCLUSIVE_ONE_END:
        for i in picked_milestones:
            if milestones[i] == milestones[milestone]:
                return false

    # Allow 2 exclusive milestones per board
    if milestones[milestone] >= EXCLUSIVE_TWO_START && milestones[milestone] <= EXCLUSIVE_TWO_END:
        var count := 0
        for i in picked_milestones:
            if milestones[i] == milestones[milestone]:
                count += 1
        if count >= 2:
            return false

    # Allow 3 exclusive milestones per board
    if milestones[milestone] >= EXCLUSIVE_THREE_START && milestones[milestone] <= EXCLUSIVE_THREE_END:
        var count := 0
        for i in picked_milestones:
            if milestones[i] == milestones[milestone]:
                count += 1
        if count >= 3:
            return false

    # Allow 4 exclusive milestones per board
    if milestones[milestone] >= EXCLUSIVE_FOUR_START && milestones[milestone] <= EXCLUSIVE_FOUR_END:
        var count := 0
        for i in picked_milestones:
            if milestones[i] == milestones[milestone]:
                count += 1
        if count >= 4:
            return false

    # Allow 5 exclusive milestones per board
    if milestones[milestone] >= EXCLUSIVE_FIVE_START && milestones[milestone] <= EXCLUSIVE_FIVE_END:
        var count := 0
        for i in picked_milestones:
            if milestones[i] == milestones[milestone]:
                count += 1
        if count >= 5:
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
