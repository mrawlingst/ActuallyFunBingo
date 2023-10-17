extends Node

var version = "2.0"
var helpLink = "http://www.wowhead.com/"

var milestones = {
    #--------------------------------------
    # Shared
    #--------------------------------------

    # Non-exclusive
    "6 slots bag (1)": 0,
    "8 slots bag (1)": 0,
    "Explore 1 zone": 0,
    "Explore 2 zones": 0,
    "50 Silver": 0,
    "75 Silver": 0,
    "1 Gold": 0,
    "Level 5": 0,
    "Level 10": 0,
    "Level 15": 0,
    "Level 20": 0,
    "Kill a rare": 0,
    "Complete quests (25)": 0,
    "Complete quests (50)": 0,
    "A stack of meats (20)": 0,
    "A stack of drinks (20)": 0,
    "A stack of food (20)": 0,
    "Uncommon weapon (1)": 0,
    "Uncommon armor (1)": 0,
    "Uncommon jewelry (1)": 0,
    "Uncommon cloak (1)": 0,
    "Tabard (1)": 0,
    "Learn the apprentice riding skill": 0,
    "Light leather (20)": 0,
    "Linen cloth (20)": 0,
    "Silverleaf (20)": 0,
    "Peacebloom (20)": 0,
    "Bolt of linen cloth (20)": 0,
    "Copper ores (20)": 0,
    "Copper bars (20)": 0,
    "Malachite (1)": 0,
    "Tigerseye (1)": 0,
    "Archaeology (1)": 0,
    "Cooking (25)": 0,
    "First Aid (25)": 0,
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
    "Rough Stones (20)": 0,
    "Rough Blasting Powders (20)": 0,
    "Light Armor Kits (20)": 0,
    "Delicate Copper Wires (10)": 0,
    "Moonglow Ink (20)": 0,
    "Earthroot (20)": 0,

    # HEARTHSTONE
    "Set hearthstone at Orgrimmar / Stormwind": 1,
    "Set hearthstone at Exodar / Silvermoon": 1,
    "Set hearthstone at Ironforge / Undercity": 1,
    "Set hearthstone at Darnassus / Thunderbluff": 1,

    # PROFESSIONS
    "Mining (50)": 2,
    "Tailoring (5)": 2,
    "Blacksmithing (5)": 2,
    "Engineering (5)": 2,
    "Alchemy (5)": 2,
    "Skinning (50)": 2,
    "Enchanting (1)": 2,
    "Herbalism (50)": 2,
    "Inscription (5)": 2,
    "Jewelcrafting (5)": 2,
    "Leatherworking (5)": 2,

    #--------------------------------------
    # Vanilla - 100
    #--------------------------------------
    #--------------------------------------
    # Burning Crusade - 200
    #--------------------------------------
    #--------------------------------------
    # Wrath of the Lich King - 300
    #--------------------------------------
    #--------------------------------------
    # Cataclysm - 400
    #--------------------------------------
    #--------------------------------------
    # Mists of Pandaria - 500
    #--------------------------------------
    #--------------------------------------
    # Legion - 600
    #--------------------------------------
    #--------------------------------------
    # Battle for Azeroth - 700
    #--------------------------------------
    #--------------------------------------
    # Shadowlands - 800
    #--------------------------------------
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
