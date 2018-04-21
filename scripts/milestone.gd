extends TextureButton

export var id = 0
export(Texture) var comp_texture
export(Texture) var opp_texture

func _ready():
    connect("pressed", get_node("../.."), "check_for_bingo", [id])
