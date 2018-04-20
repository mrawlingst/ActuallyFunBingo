extends TextureButton

func _ready():
    connect("pressed", get_node("../.."), "check_for_bingo")
