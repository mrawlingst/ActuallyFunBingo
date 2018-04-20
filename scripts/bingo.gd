extends Node

var milestones = []

# 0 - unclaimed
# 1 - host
# 2 - client
var lockoutMilestones = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

## NETWORKING
const DEFAULT_PORT = 40601

func _ready():
    get_node("Title").text = bingo_info.game + " Bingo"
    get_node("Seed Generator").new_seed()
    
    get_node("Modes").add_item("Standard")
    get_node("Modes").add_item("Blackout")
    get_node("Modes").add_item("Lockout")
    
    get_tree().connect("network_peer_connected", self, "_player_connected")
    get_tree().connect("network_peer_disconnected",self,"_player_disconnected")
    get_tree().connect("connected_to_server",self,"_connected_ok")
    get_tree().connect("connection_failed",self,"_connected_fail")
    get_tree().connect("server_disconnected",self,"_server_disconnected")
    
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
    if bingo_info.bingoMode == "Standard":
        check_standard_bingo()
    elif bingo_info.bingoMode == "Blackout":
        check_blackout_bingo()
    elif bingo_info.bingoMode == "Lockout":
        check_lockout_bingo()

func check_standard_bingo():
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

func check_blackout_bingo():
    for i in range(25):
        if not get_node("Card/Milestone_" + str(i + 1)).is_pressed():
            break;
            
        if i == 24:
            get_node("Timer").pause_timer()
            return
    
    get_node("Timer").start_timer()

func check_lockout_bingo():
    var host = 0
    var client = 0
    for i in range(25):
        if lockoutMilestones[i] == 1:
            host += 1
        elif lockoutMilestones[i] == 2:
            client += 0
        
        if host == 13 or client == 13:
            get_node("Timer").pause_timer()
            return
    
    get_node("Timer").start_timer()

func _on_back_pressed():
    get_tree().change_scene("res://scenes/scene_menu.tscn")

func _on_Modes_item_selected(ID):
    bingo_info.bingoMode = get_node("Modes").get_item_text(ID)
    if bingo_info.bingoMode == "Lockout":
        get_node("Lockout").show()
        for i in range(25):
            lockoutMilestones[i] = 0
    else:
        get_node("Lockout").hide()
    get_node("Seed Generator")._on_reset_pressed()
    get_node("Timer")._on_reset_pressed()

func _on_CheckBox_toggled(button_pressed):
    get_node("Lockout/IP Editbox").secret = button_pressed

func _on_Host_pressed():
    var host = NetworkedMultiplayerENet.new()
    host.set_compression_mode(NetworkedMultiplayerENet.COMPRESS_RANGE_CODER)
    var err = host.create_server(DEFAULT_PORT, 1)
    if err != OK:
        get_node("Lockout/Info").text = "Could not host"
        return
    
    get_tree().set_network_peer(host)
    get_node("Lockout/Join").set_disabled(true)
    get_node("Lockout/Host").set_disabled(true)
    get_node("Lockout/Info").text = "Hosting"

func _on_Join_pressed():
    var ip = get_node("Lockout/IP Editbox").text
    
    if not ip.is_valid_ip_address():
        get_node("Lockout/Info").text = "Invalid address"
        return
    
    var host = NetworkedMultiplayerENet.new()
    host.set_compression_mode(NetworkedMultiplayerENet.COMPRESS_RANGE_CODER)
    host.create_client(ip, DEFAULT_PORT)
    get_tree().set_network_peer(host)
    get_node("Lockout/Join").set_disabled(true)
    get_node("Lockout/Host").set_disabled(true)
    get_node("Lockout/Info").text = "Connecting..."

func _player_connected(id):
    get_node("Lockout/Info").text = "Someone connected!"

func _player_disconnected(id):
    if get_tree().is_network_server():
        get_node("Lockout/Info").text = "Client disconnected"
        get_tree().set_network_peer(null)
        
        get_node("Lockout/Host").set_disabled(false)
        get_node("Lockout/Join").set_disabled(false)
    else:
        get_node("Lockout/Info").text = "Server disconnected"
        get_tree().set_network_peer(null)
        
        get_node("Lockout/Host").set_disabled(false)
        get_node("Lockout/Join").set_disabled(false)

# for client
func _connected_ok():
    get_node("Lockout/Info").text = "Connected!"

# for client
func _connected_fail():
    get_node("Lockout/Info").text = "Couldn't connect"
    
    get_tree().set_network_peer(null)
    
    get_node("Lockout/Host").set_disabled(false)
    get_node("Lockout/Join").set_disabled(false)

func _server_disconnected():
    get_node("Lockout/Info").text = "Server disconnected"
    get_tree().set_network_peer(null)
    
    get_node("Lockout/Host").set_disabled(false)
    get_node("Lockout/Join").set_disabled(false)
