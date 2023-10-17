extends Control

var bingo_seed = 0
var bingo_text = ""

@onready var n_editbox: LineEdit = $"Seed Editbox"

func new_seed():
    randomize()
    bingo_seed = randi() % 999999 + 1
    bingo_text = ""

func get_seed():
    return bingo_seed if bingo_text == "" else bingo_text

func _on_generate_pressed():
    if n_editbox.text.is_empty():
        new_seed()
    else:
        var input =  n_editbox.text
        if input.is_valid_integer():
            bingo_seed = int(input)
            bingo_text = ""
        else:
            bingo_seed = hash(input)
            bingo_text = input

    _on_reset_pressed()
    get_node("../../.").populate_card()

func _on_reset_pressed():
    for i in range(25):
        var milestone: TextureButton = get_node("../Card/Milestone_%d" % (i + 1))
        (milestone as TextureButton).button_pressed = false
        (milestone as TextureButton).disabled = false
