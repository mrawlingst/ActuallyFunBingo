extends TextureButton

export var row_num = 0

func _ready():
    get_node("Label").text = "ROW " + str(row_num)
