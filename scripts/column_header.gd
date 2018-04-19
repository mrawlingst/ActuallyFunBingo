extends TextureButton

export var col_num = 0

func _ready():
    get_node("Label").text = "COL " + str(col_num)
