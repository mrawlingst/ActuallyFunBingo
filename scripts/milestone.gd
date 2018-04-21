extends TextureButton

export var id = 0

func _ready():
    connect("pressed", get_node("../.."), "check_for_bingo", [id])
