extends Node

var version = "2.0"
var helpLink = "http://www.wowhead.com/"

var milestones = {
    #-------------------------------------------------------------------------------
    # Shared
    #-------------------------------------------------------------------------------

    # Non-exclusive
    "6 slots bag (1)": 0,
    "8 slots bag (1)": 0,
    "Explore 1 zone": 0,
    "Explore 2 zones": 0,
    "Complete a chapter in a zone": 0,
    "5 Gold": 0,
    "10 Gold": 0,
    "Level 5": 0,
    "Level 10": 0,
    "Level 15": 0,
    "Level 20": 0,
    "Kill a rare": 0,
    "Complete chapters (5)": 0,
    "Complete chapters (10)": 0,
    "A stack of meats (20)": 0,
    "A stack of drinks (20)": 0,
    "A stack of food (20)": 0,
    "Uncommon weapon (1)": 0,
    "Uncommon armor (1)": 0,
    "Uncommon jewelry (1)": 0,
    "Uncommon cloak (1)": 0,
    "Tabard (1)": 0,
    "Archaeology (1)": 0,
    "Cooking (25)": 0,
    "Fishing (25)": 0,
    "Craft unique tailoring items (5)": 0,
    "Craft unique engineering items (5)": 0,
    "Craft unique blacksmith items (5)": 0,
    "Craft unique leatherworking items (5)": 0,
    "Craft unique alchemy items (5)": 0,
    "Craft unique inscription items (5)": 0,
    "Craft a Runed Copper Rod": 0,
    "Enchant a piece of armor": 0,
    "Get a honorable kill": 0,
    "Shirt (1)": 0,
    "Two honored reputations": 0,
    "Purchase racial mount": 0,
    "Learn journeyman riding": 0,

    "Complete a bonus objective": 0,

    # Professions
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

    #-------------------------------------------------------------------------------
    # Vanilla - 100
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

    "Light leather (20)": 0,
    "Linen cloth (20)": 0,
    "Silverleaf (20)": 0,
    "Peacebloom (20)": 0,
    "Bolt of linen cloth (20)": 0,
    "Copper ores (20)": 0,
    "Copper bars (20)": 0,
    "Malachite (1)": 0,
    "Tigerseye (1)": 0,
    "Rough Stones (20)": 0,
    "Rough Blasting Powders (20)": 0,
    "Light Armor Kits (20)": 0,
    "Delicate Copper Wires (10)": 0,
    "Moonglow Ink (20)": 0,
    "Earthroot (20)": 0,

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
    # Herbalism
    #-------------------
    "Dreaming Glory (20)": 0,
    "Felweed (20)": 0,
    "Dreamfoil (20)": 0,
    "Rageveil (20)": 0,
    "Flame Cap (1)": 0,
    "Terocone (20)": 0,
    "Ancient Lichen (20)": 0,
    "Netherbloom (20)": 0,
    "Nightmare (5)": 0,
    "Mana Thistle (5)": 0,
    "Fel Lotus (1)": 0,

    #-------------------
    # Skinning
    #-------------------
    "Crystal Infused Leather (20)": 0,
    "Fel Scales (20)": 0,
    "Knothide Leather (20)": 0,
    "Knothide Leather Scraps (20)": 0,

    #-------------------
    # Mining
    #-------------------
    "Fel Iron Ore (20)": 0,
    "Adamantite Ore (20)": 0,
    "Khorium Ore (5)": 0,
    "Eternium Ore (1)": 0,

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

    #---------------------------------------
    # Chapters
    #---------------------------------------
    "Complete a chapter (Hellfire Peninsula)": 0,
    "Complete a chapter (Zangarmarsh)": 0,
    # "Complete a chapter (Terokkar Forest)": 0,
    # "Complete a chapter (Nagrand)": 0,
    # "Complete a chapter (Blade's Edge Mountains)": 0,
    # "Complete a chapter (Shadowmoon Valley)": 0,
    # "Complete a chapter (Netherstorm)": 0,

    #-------------------------------------------------------------------------------
    # Wrath of the Lich King - 300
    #-------------------------------------------------------------------------------

    "Hearthstone Dalaran (WOTLK)": 0,

    # Items
    "Crystallized Air (1)": 0,
    "Crystallized Earth (1)": 0,
    "Crystallized Fire (1)": 0,
    "Crystallized Life (1)": 0,
    "Crystallized Shadow (1)": 0,
    "Crystallized Water (1)": 0,

    # Chapters
    "Complete a chapter (Borean Tundra)": 0,
    "Complete a chapter (Howling Fjord)": 0,
    # "Complete a chapter (Dragonblight)": 0,
    # "Complete a chapter (Grizzly Hills)": 0,
    # "Complete a chapter (Zul'Drak)": 0,
    # "Complete a chapter (Sholazar Basin)": 0,
    # "Complete a chapter (Icecrown)": 0,
    # "Complete a chapter (Storm Peaks)": 0,

    #-------------------------------------------------------------------------------
    # Cataclysm - 400
    #-------------------------------------------------------------------------------

    # Items
    "Volatile Air (1)": 0,
    "Volatile Earth (1)": 0,
    "Volatile Fire (1)": 0,
    "Volatile Water (1)": 0,
    "Volatile Life (1)": 0,

    # Chapters
    "Complete a chapter (Vashj'ir)": 0,
    "Complete a chapter (Mount Hyjal)": 0,
    # "Complete a chapter (Deepholm)": 0,
    # "Complete a chapter (Uldum)": 0,
    # "Complete a chapter (Twilight Highlands)": 0,

    #-------------------------------------------------------------------------------
    # Mists of Pandaria - 500
    #-------------------------------------------------------------------------------

    "Hearthstone Shrine of Seven Stars / Shrine of Two Moons": 0,

    # Items
    "Mote of Harmony (5)": 0,

    # Chapters
    "Complete a chapter (Jade Forest)": 0,
    # "Complete a chapter (Valley of the Four Winds)": 0,
    # "Complete a chapter (Krasarang Wilds)": 0,
    # "Complete a chapter (Kun-Lai Summit)": 0,
    # "Complete a chapter (Townlong Steppes)": 0,
    # "Complete a chapter (Dread Wastes)": 0,

    #-------------------------------------------------------------------------------
    # Warlords of Draenor - 600
    #-------------------------------------------------------------------------------

    "Hearthstone Garrison": 0,
    "Garrison Hearthstone (item)": 0,
    "Collect 500 garrison resources": 0,
    "Kill 5 rares (WoD)": 0,
    "Collect 5 vignettes (WoD)": 0,
    "Complete a bonus objective (WoD)": 0,

    # Chapters
    "Complete a chapter (Shadowmoon Valley / Frostfire Ridge)": 0,
    # "Complete a chapter (Gorgrond)": 0,
    # "Complete a chapter (Talador)": 0,
    # "Complete a chapter (Spires of Arak)": 0,
    # "Complete a chapter (Nagrand WoD)": 0,

    #-------------------------------------------------------------------------------
    # Legion - 700
    #-------------------------------------------------------------------------------

    "Hearthstone Dalaran (Legion)": 0,
    "Dalaran Hearthstone (item)": 0,
    "Complete a bonus objective (Legion)": 0,

    # Chapters
    "Complete a chapter (Azsuna)": 0,
    "Complete a chapter (Highmountain)": 0,
    "Complete a chapter (Stormhiem)": 0,
    "Complete a chapter (Val'sharah)": 0,

    #-------------------------------------------------------------------------------
    # Battle for Azeroth - 800
    #-------------------------------------------------------------------------------

    "Hearthstone Boralus / Dazar'alor": 0,
    "Complete a bonus objective (BFA)": 0,

    # Chapters
    "Complete a chapter (Tiragarde Sound / Zuldazar)": 0,
    "Complete a chapter (Drustvar / Nazmir)": 0,
    "Complete a chapter (Stormsong Valley / Vol'dun)": 0,

    #-------------------------------------------------------------------------------
    # Shadowlands - 900
    #-------------------------------------------------------------------------------

    "Hearthstone Oribos": 0,
    "Join a covenant": 0,
    "Complete a bonus objective (Shadowlands)": 0,

    # Chapters
    "Complete a chapter (Bastion)": 0,
    "Complete a chapter (Maldraxxus)": 0,
    "Complete a chapter (Ardenweald)": 0,
    "Complete a chapter (Revendreth)": 0,

    "Join Kyrian": 900,
    "Join Necrolords": 900,
    "Join Night Fae": 900,
    "Join Venthyr": 900,
}

var RaceClassTable: Dictionary = {
    "Human"     = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Paladin",                    "Monk"],
    "Dwarf"     = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Paladin",          "Shaman", "Monk"],
    "Night Elf" = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Paladin",                    "Monk"],
    "Gnome"     = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",                               "Monk"],
    "Draenei"   = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Paladin",          "Shaman", "Monk"],
    "Worgen"    = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",            "Druid",           "Monk"],

    "Orc"       = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",                     "Shaman", "Monk"],
    "Undead"    = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",                               "Monk"],
    "Tauren"    = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Paladin", "Druid", "Shaman", "Monk"],
    "Troll"     = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",            "Druid", "Shaman", "Monk"],
    "Blood Elf" = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock", "Paladin",                    "Monk"],
    "Goblin"    = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",                     "Shaman", "Monk"],

    "Pandaren"  = ["Warrior", "Hunter", "Mage", "Rogue", "Priest", "Warlock",            "Druid",           "Monk"],
}

var picked_milestones: Array[String] = []

# If true, add milestone
func _curate(milestone: String, pos: int) -> bool:
    if !milestones.has(milestone) || picked_milestones.has(milestone):
        return false

    if milestones[milestone] == 0:
        return true

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

    var txt: String = "Race: [b]%s[/b]  Class: [b]%s[/b]" % [race, cls]
    return txt
