extends Node

# Version of game data
var version = "1.0.0"
var helpLink = "http://darksouls3.wiki.fextralife.com/Dark+Souls+3+Wiki"

var milestones = {
    # Non-exclusive
	
	# Bonfires
	"Light bonfire (Firelink Shrine)": 0,
	"Light bonfire (Cemetary of Ash)": 0,
	"Light bonfire (Iudex of Gundyr)": 0,
	"Light bonfire (Untended Graves)": 0,
    "Light bonfire (Champion Gundyr)": 0,
    
    
	
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
