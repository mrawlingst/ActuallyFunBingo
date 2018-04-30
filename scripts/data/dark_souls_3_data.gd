extends Node

# Version of game data
var version = "1.0.0"
var helpLink = "http://darksouls3.wiki.fextralife.com/Dark+Souls+3+Wiki"

var milestones = {
    # Non-exclusive
    
    # Bonfires
    "Light bonfire (Firelink Shrine)": 0,
    "Light bonfire (Cemetery of Ash)": 0,
    "Light bonfire (Iudex Gundyr)": 0,
    "Light bonfire (Untended Graves)": 0,
    "Light bonfire (Champion Gundyr)": 0,
    "Light bonfire (High Wall of Lothric)": 0,
    "Light bonfire (Tower on the Wall)": 0,
    "Light bonfire (Vordt of the Boreal Valley Bonfire)": 0,
    "Light bonfire (Dancer of the Boreal Valley Bonfire)": 0,
    "Light bonfire (Oceiros, the Consumed King)": 0,
    "Light bonfire (Foot of the High Wall)": 0,
    "Light bonfire (Undead Settlement Bonfire)": 0,
    "Light bonfire (Cliff Underside Bonfire)": 0,
    "Light bonfire (Dilapidated Bridge)": 0,
    "Light bonfire (Pit of Hollows Bonfire)": 0,
    "Light bonfire (Road of Sacrifices)": 0,
    "Light bonfire (Halfway Fortress)": 0,
    "Light bonfire (Crucifixion Woods)": 0,
    "Light bonfire (Crystal Sage)": 0,
    "Light bonfire (Farron Keep)": 0,
    "Light bonfire (Keep Ruins)": 0,
    "Light bonfire (Farron Keep Perimeter)": 0,
    "Light bonfire (Old Wolf of Farron)": 0,
    "Light bonfire (Abyss Watchers)": 0,
    "Light bonfire (Cathedral of the Deep)": 0,
    "Light bonfire (Cleansing Chapel)": 0,
    "Light bonfire (Deacons of the Deep)": 0,
    "Light bonfire (Rosaria's Bed Chamber)": 0,
    "Light bonfire (Catacombs of Carthus)": 0,
    "Light bonfire (High Lord Wolnir)": 0,
    "Light bonfire (Abandoned Tomb)": 0,
    "Light bonfire (Old King's Antechamber)": 0,
    "Light bonfire (Demon Ruins)": 0,
    "Light bonfire (Old Demon King)": 0,
    "Light bonfire (Irithyll of the Boreal Valley)": 0,
    "Light bonfire (Central Irithyll)": 0,
    "Light bonfire (Churhc of Yorshka)": 0,
    "Light bonfire (Distant Manor)": 0,
    "Light bonfire (Pontiff Sulyvahn)": 0,
    "Light bonfire (Water Reserve)": 0,
    "Light bonfire (Anor Londo)": 0,
    "Light bonfire (Prison Tower)": 0,
    "Light bonfire (Aldrich, Devourer of Gods)": 0,
    "Light bonfire (Irithyll Dungeon)": 0,
    "Light bonfire (Profaned Captial)": 0,
    "Light bonfire (Yhorm the Giant)": 0,
    "Light bonfire (Lothric Castle)": 0,
    "Light bonfire (Dragon Barracks)": 0,
    "Light bonfire (Dragonslayer Armour)": 0,
    "Light bonfire (Grand Archives)": 0,
    "Light bonfire (Twin Princes)": 0,
    "Light bonfire (Archdragon Peak)": 0,
    "Light bonfire Dragon-Kin Mausoleum)": 0,
    "Light bonfire (Great Belfry)": 0,
    "Light bonfire (Nameless King)": 0,
    "Light bonfire (Flameless Shrine)": 0,
    "Light bonfire (Kiln of the First Flame)": 0,
    "Light bonfire (The First Flame)": 0,
    
    # Bosses
    "Kill Vordt of the Boreal Valley": 0,
    "Kill Curse-rotted Greatwood": 0,
    "Kill Crystal Sage": 0,
    "Kill Deacons of the Deep": 0,
    "Kill Abyss Watchers": 0,
    "Kill High Lord Wolnir": 0,
    "Kill Old Demon King": 0,
    "Kill Pontiff Sulyvahn": 0,
    "Kill Alchrich, Devourer of Gods": 0,
    "Kill Yhorm the Giant": 0,
    "Kill Dancer of the Boreal Valley": 0,
    "Kill Oceiros, the Consumed King": 0,
    "Kill Champion Gundyr": 0,
    "Kill Dragonslayer Armour": 0,
    "Kill Ancient Wyvern": 0,
    "Kill The Nameless King": 0,
    "Kill The Twin Princes": 0,
    "Kill Soul of Cinder": 0,
    
    # Minibosses
    "Kill Boreal Outrider Knight (Undead Settlement)": 0,
    "Kill Boreal Outrider Knight (Lothric Castle)": 0,
    "Kill Boreal Outrider Knight (Grand Archives)": 0,
    "Kill Carthus Sandworm": 0,
    "Kill Demon (Undead Settlement)": 0,
    "Kill Demon (Catacombs of Carthus)": 0,
    "Kill Stray Demon": 0,
    
    # Vordt of the Boreal Valley - 1
    "Soul of Boreal Valley Vordt": 1,
    "Vordt's Great Hammer": 1,
    "Pontiff's Left Eye": 1,
    
    # Curse-rotted Greatwood - 2
    "Soul of the Rotted Greatwood": 2,
    "Hollowslayer Greatsword": 2,
    "Arstor's Spear": 2,
    
    # Crystal Sage - 3
    "Soul of a Crystal Sage": 3,
    "Crystal Sage's Rapier": 3,
    "Crystal Hail (S)": 3,
    
    # Deacons of the Deep - 4
    "Soul of the Deacons of the Deep": 4,
    "Cleric's Candlestick": 4,
    "Deep Soul (S)": 4,
    
    # Abyss Watchers - 5
    "Soul of the Blood of the Wolf": 5,
    "Farron Greatsword": 5,
    "Wolf Knight's Greatsword": 5,
    
    # High Lord Wolnir - 6
    "Soul of High Lord Wolnir": 6,
    "Wolnir's Holy Sword": 6,
    "Black Serpent (P)": 6,
    
    # Old Demon King - 7
    "Soul of the Old Demon King": 7,
    "Old King's Great Hammer": 7,
    "Chaos Bed Vestiges (P)": 7,
    
    # Pontiff Sulyvahn - 8
    "Soul of Pontiff Sulyvahn": 8,
    "Greatsword of Judgment": 8,
    "Profaned Greatsword": 8,
    
    # Aldrich, Devourer of Gods - 9
    "Soul of Aldrich": 9,
    "Darkmoon Longbow": 9,
    "Lifehunt Scythe (M)": 9,
    
    # Yhorm the Giant - 10
    "Soul of Yhorm the Giant": 10,
    "Yhorm's Great Machete": 10,
    "Yhorm's Greatshield": 10,
    
    # Dancer of the Boreal Valley - 11
    "Soul of the Dancer": 11,
    "Dancer's Enchanted Swords": 11,
    "Soothing Sunlight (M)": 11,
    
    # Oceiros, The Consumed King - 12
    "Soul of the Consumed Oceiros": 12,
    "Moonlight Greatsword": 12,
    "White Dragon Breath (S)": 12,
    
    # Champion Gundyr - 13
    "Soul of Champion Gundyr": 13,
    "Gundyr's Halberd": 13,
    "Prisoner's Chain": 13,
    
    # Dragonslayer Armour - 14
    "Soul of Dragonslayer Armour": 14,
    "Dragonslayer Greataxe": 14,
    "Dragonslayer Greatshield": 14,
    
    # The Nameless King - 15
    "Soul of the Nameless King": 15,
    "Storm Curved Sword": 15,
    "Dragonslayer Swordspear": 15,
    "Lightning Storm (M)": 15,
    
    # The Twin Princes - 16
    "Soul of the Twin Princes": 16,
    "Lorian's Greatsword": 16,
    "Lothric's Holy Sword": 16,
    
    # Soul of Cinder - 17
    "Soul of the Lords": 17,
    "Firelink Greatsword": 17,
    "Sunlight Spear (M)": 17,
}

var ds3_classes = [
    "Knight",
    "Mercenary",
    "Warrior",
    "Herald",
    "Thief",
    "Assassin",
    "Sorcerer",
    "Pyromancer",
    "Cleric",
    "Deprived"
]

var ds3_gifts = [
    "Life Ring",
    "Divine Blessing",
    "Hidding Blessing",
    "Black Firebomb x5",
    "Fire Gem",
    "Sovereignless Soul",
    "Rusted Gold Coin x7",
    "Cracked Red Eye Orb x4",
    "Young White Branch"
]

# Return game specfic info for info label
func info():
    randomize()

    var current_class = ds3_classes[randi() % ds3_classes.size()]
    var current_gift = ds3_gifts[randi() % ds3_gifts.size()]

    var txt = "Class: [b]" + current_class + "[/b]\tGift: [b]" + current_gift + "[/b]"

    return txt
