extends Node

var milestones = []

func _ready():
    get_node("Title").text = bingo_info.game + " Bingo"
    get_node("Seed Generator").new_seed()
    
    populate_card()

func populate_card():
    var bingo_seed = get_node("Seed Generator").get_seed()
    
    print(bingo_seed)
    seed(bingo_seed)
    
    milestones = []
    
    while milestones.size() < 25:
        var milestone = ""
        var index = 0
        while curate(milestone):
            index = randi() % bingo_info.milestones.size()
            milestone = bingo_info.milestones.keys()[index]
        
        milestones.append(milestone)
    
    for i in range(25):
        get_node("Card/Milestone_" + str(i + 1) + "/Label").text = milestones[i]
    
    get_node("Info").set_bbcode("[right]" + bingo_info.gameInfo + "\tSeed: [b]" + str(bingo_seed) + "[/b]\tGame Version: [b]v" + bingo_info.gameVersion + "[/b][/right]")

# True if need new milestone
# False if dont need new milestone
func curate(milestone):
    if milestone == "" or milestones.has(milestone):
        return true
    
    var pos = milestones.size() + 1
    
    # Check col
    for row in range(getRowCol(pos)[0]):
        var n = (row * 5) + getRowCol(pos)[1]
        if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
            if bingo_info.milestones[milestone] == 0:
                continue
            print("col(" + str(getRowCol(pos)[1] + 1) + "): " + milestones[n] + " vs " + milestone)
            return true
    
    # Check row
    for col in range(getRowCol(pos)[1]):
        var n = (getRowCol(pos)[0] * 5) + col
        if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
            if bingo_info.milestones[milestone] == 0:
                continue
            print("row(" + str(getRowCol(pos)[0] + 1) + "): " + milestones[n] + " vs " + milestone)
            return true
    
    # Check tl-br
    if inTL_BR(pos)[0]:
        for i in range(inTL_BR(pos)[1]):
            var n = (5 * i) + i
            if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
                if bingo_info.milestones[milestone] == 0:
                    continue
                print("tl-br(" + str(inTL_BR(pos)[1]) + "):" + milestones[n] + " vs " + milestone)
                return true
    
    # Check bl-tr
    if inBL_TR(pos)[0]:
        for i in range(inBL_TR(pos)[1]):
            var n = (5 * i) -  i
            if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
                if bingo_info.milestones[milestone] == 0:
                    continue
                print("tl-br(" + str(inBL_TR(pos)[1]) + "):" + milestones[n] + " vs " + milestone)
                return true
    
    return false

func getRowCol(p):
    for col in range(5):
        for row in range(5):
            if (row * 5) + col + 1 == p:
                return [row, col]

func inTL_BR(p):
    for i in range(5):
        if p == (i * 5) + i + 1:
            return [true, i]
    
    return [false, 0]

func inBL_TR(p):
    for i in range(5):
        if p == (i * 5) - i + 5:
            return [true, i]
    
    return [false, 0]

func check_for_bingo():
    # Col
    for col in range(5):
        for row in range(5):
            if not get_node("Card/Milestone_" + str((row * 5) + col + 1)).is_pressed():
                break
            
            if row == 4:
                get_node("Timer").pause_timer()
                return
    
    # Row
    for row in range(5):
        for col in range(5):
            if not get_node("Card/Milestone_" + str((row * 5) + col + 1)).is_pressed():
                break;
            
            if col == 4:
                get_node("Timer").pause_timer()
                return
    
    # TL-BR
    for i in range(5):
        if not get_node("Card/Milestone_" + str((i * 5) + i + 1)).is_pressed():
            break
        
        if i == 4:
            get_node("Timer").pause_timer()
            return
    
    # BL-TR
    for i in range(5):
        if not get_node("Card/Milestone_" + str((i * 5) - i + 5)).is_pressed():
            break
        
        if i == 4:
            get_node("Timer").pause_timer()
            return
    
    get_node("Timer").start_timer()

func _on_back_pressed():
    get_tree().change_scene("res://scenes/scene_menu.tscn")
