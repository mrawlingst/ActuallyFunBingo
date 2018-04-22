extends Node

var version = "1.0.0"

var milestones = {
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
}

# WoW Race/Class available combos
var race_class = [
    "Draenei Hunter",
    "Draenei Mage",
    "Draenei Paladin",
    "Draenei Priest",
    "Draenei Shaman",
    "Draenei Warrior",
    "Dwarf Hunter",
    "Dwarf Mage",
    "Dwarf Paladin",
    "Dwarf Priest",
    "Dwarf Rogue",
    "Dwarf Shaman",
    "Dwarf Warlock",
    "Dwarf Warrior",
    "Gnome Hunter",
    "Gnome Mage",
    "Gnome Priest",
    "Gnome Rogue",
    "Gnome Warlock",
    "Gnome Warrior",
    "Human Hunter",
    "Human Mage",
    "Human Paladin",
    "Human Priest",
    "Human Rogue",
    "Human Warlock",
    "Human Warrior",
    "Night Elf Druid",
    "Night Elf Hunter",
    "Night Elf Mage",
    "Night Elf Priest",
    "Night Elf Rogue",
    "Night Elf Warrior",
    "Blood Elf Hunter",
    "Blood Elf Mage",
    "Blood Elf Paladin",
    "Blood Elf Priest",
    "Blood Elf Rogue",
    "Blood Elf Warlock",
    "Blood Elf Warrior",
    "Orc Hunter",
    "Orc Mage",
    "Orc Rogue",
    "Orc Shaman",
    "Orc Warlock",
    "Orc Warrior",
    "Tauren Druid",
    "Tauren Hunter",
    "Tauren Paladin",
    "Tauren Priest",
    "Tauren Shaman",
    "Tauren Warrior",
    "Troll Druid",
    "Troll Hunter",
    "Troll Mage",
    "Troll Priest",
    "Troll Rogue",
    "Troll Shaman",
    "Troll Warlock",
    "Troll Warrior",
    "Undead Hunter",
    "Undead Mage",
    "Undead Priest",
    "Undead Rogue",
    "Undead Warlock",
    "Undead Warrior"
]

func info():
    randomize()
    var current_combo = race_class[randi() % race_class.size()]
    var combo = current_combo.split(" ")
    var txt = ""
    if combo.size() == 3:
        txt = "Race: [b]" + combo[0] + " " + combo[1] + "[/b]\t" + "Class: [b]" + combo[2] + "[/b]"
    else:
        txt = "Race: [b]" + combo[0] + "[/b]\t" + "Class: [b]" + combo[1] + "[/b]"
    
    return txt
