extends Node

var game = "World of Warcraft"
var gameInfo
var gameVersion = "1.0.0"
var bingoMode = "Standard"
var milestones = {}

func currentGame(game):
    self.game = game
    
    if game == "Dark Souls":
        milestones = ds_data.milestones
        gameInfo = ds_data.info()
        gameVersion = ds_data.version
    
    elif game == "Dark Souls II":
        milestones = ds2_data.milestones
        gameInfo = ds2_data.info()
        gameVersion = ds_data.version
        
    elif game == "TLoZ: Breath of the Wild":
        milestones = botw_data.milestones
        gameInfo = botw_data.info()
        gameVersion = botw_data.version
    
    elif game == "World of Warcraft":
        milestones = wow_data.milestones
        gameInfo = wow_data.info()
        gameVersion = wow_data.version