extends Node

# Version of game data
var version = "1.0.0"

var milestones = {
    # Non-exclusive
    "Milestone 1": 0,
    "Milestone 2": 0,
    "Milestone 3": 0,
    "Milestone 4": 0,
    "Milestone 5": 0,
    "Milestone 6": 0,
    "Milestone 7": 0,
    "Milestone 8": 0,
    "Milestone 9": 0,
    "Milestone 10": 0,
    "Milestone 11": 0,
    "Milestone 12": 0,
    "Milestone 13": 0,
    "Milestone 14": 0,
    "Milestone 15": 0,
    "Milestone 16": 0,
    "Milestone 17": 0,
    "Milestone 18": 0,
    "Milestone 19": 0,
    "Milestone 20": 0,
    "Milestone 21": 0,
    "Milestone 22": 0,
    "Milestone 23": 0,
    "Milestone 24": 0,
    "Milestone 25": 0,

    # Joining a side of the war
    "Join the Imperials": 1,
    "Join the Stormcloaks": 1,

    # Exclusive Group 2
    "Milestone 28": 2,
    "Milestone 29": 2,
}

var races = [
    "Altmer",
    "Argonian",
    "Bosmer",
    "Breton",
    "Dunmer",
    "Imperial",
    "Khajiit",
    "Nord",
    "Orsimer",
    "Redguard",
]

var difficulty = [
    "Novice",
    "Apprentice",
    "Adept",
    "Expert",
    "Master",
]

# Return game specfic info for info label
func info():
    randomize()
    var current_race = races[randi() % races.size()]
    var current_diffculty = difficulty[randi() % difficulty.size()]
    return "Race: [b]" + current_race + "[/b]\t" + "Difficulty: [b]" + current_diffculty + "[/b]"
