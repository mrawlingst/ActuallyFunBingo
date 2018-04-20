extends TextureButton

export var col_num = 0

func _ready():
    get_node("Label").text = "COL " + str(col_num)

func _on_Column_mouse_entered():
    for i in range(5):
        get_node("../Milestone_" + str(i * 5 + col_num)).set_modulate(Color(.8, .8, .8))

func _on_Column_mouse_exited():
    for i in range(5):
        get_node("../Milestone_" + str(i * 5 + col_num)).set_modulate(Color(1, 1, 1))
