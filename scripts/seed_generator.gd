extends Control

var bingo_seed = 0
var bingo_text = ""

func new_seed():
    randomize()
    bingo_seed = randi() % 999999 + 1
    bingo_text = ""

func get_seed():
    return bingo_seed if bingo_text == "" else bingo_text

func _on_generate_pressed():
    if get_node("Seed Editbox").text.empty():
        new_seed()
    else:
        var input =  get_node("Seed Editbox").text
        if input.is_valid_integer():
            bingo_seed = int(input)
            bingo_text = ""
        else:
            bingo_seed = hash(input)
            bingo_text = input
    
    _on_reset_pressed()
    get_node("../.").populate_card()
    
    if get_tree().network_peer != null:
        get_node("../.").rpc("send_seed", bingo_seed, get_node("../Info").bbcode_text)

func _on_reset_pressed():
    #if get_tree().is_network_server() and 
    if get_tree().network_peer != null and get_tree().is_network_server():
        get_node("../.").rpc("reset_card")
    for i in range(25):
        get_node(str("../Card/Milestone_", i + 1)).pressed = false
        get_node(str("../Card/Milestone_", i + 1)).disabled = false
