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
    
    print(bingo_seed)

func _on_reset_pressed():
    pass
