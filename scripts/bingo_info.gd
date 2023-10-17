extends Node

var bingoVersion = "v2.0-alpha-wip"
var game = "World of Warcraft"
var gameInfo
var gameVersion = "1.0.0"
var bingoMode = "Standard"
var milestones = {}
var helpLink = ""

func currentGame(game):
    self.game = game

    if game == "Dark Souls":
        milestones = ds_data.milestones
        gameInfo = ds_data.info()
        gameVersion = ds_data.version
        helpLink = ds_data.helpLink

    elif game == "Dark Souls II":
        milestones = ds2_data.milestones
        gameInfo = ds2_data.info()
        gameVersion = ds2_data.version
        helpLink = ds2_data.helpLink

    elif game == "Dark Souls III":
        milestones = ds3_data.milestones
        gameInfo = ds3_data.info()
        gameVersion = ds3_data.version
        helpLink = ds3_data.helpLink

    elif game == "Path of Exile":
        milestones = poe_data.milestones
        gameInfo = poe_data.info()
        gameVersion = poe_data.version
        helpLink = poe_data.helpLink

    elif game == "TES V: Skyrim":
        milestones = skyrim_data.milestones
        gameInfo = skyrim_data.info()
        gameVersion = skyrim_data.version
        helpLink = skyrim_data.helpLink

    elif game == "TLoZ: Breath of the Wild":
        milestones = botw_data.milestones
        gameInfo = botw_data.info()
        gameVersion = botw_data.version
        helpLink = botw_data.helpLink

    elif game == "World of Warcraft":
        milestones = wow_data.milestones
        gameInfo = wow_data.info()
        gameVersion = wow_data.version
        helpLink = wow_data.helpLink

func getInfo():
    gameInfo = ""

    if game == "Dark Souls":
        gameInfo = ds_data.info()

    elif game == "Dark Souls II":
        gameInfo = ds2_data.info()

    elif game == "Dark Souls III":
        gameInfo = ds3_data.info()

    elif game == "Path of Exile":
        gameInfo = poe_data.info()

    elif game == "TES V: Skyrim":
        gameInfo = skyrim_data.info()

    elif game == "TLoZ: Breath of the Wild":
        gameInfo = botw_data.info()

    elif game == "World of Warcraft":
        gameInfo = wow_data.info()

    return gameInfo
