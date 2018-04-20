extends Control

var bingo_seed = 0

func new_seed():
    randomize()
    bingo_seed = randi() % 999999 + 1

func get_seed():
    return bingo_seed

func _on_generate_pressed():
    if get_node("Seed Editbox").text.empty():
        new_seed()
    else:
        bingo_seed = int(get_node("Seed Editbox").text)
    
    _on_reset_pressed()
    get_node("../.").populate_card()

func _on_reset_pressed():
    for i in range(25):
        get_node(str("../Card/Milestone_", i + 1)).set_pressed(false)
