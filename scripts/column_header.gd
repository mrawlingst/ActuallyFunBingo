@tool
extends TextureButton

@export var col_num = 0:
    get:
        return col_num
    set(value):
        col_num = value
        if !is_node_ready():
            await ready
        n_label.text = "COL %d" % col_num

@onready var n_label: Label = $Label

func _ready():
    get_node("Label").text = "COL " + str(col_num)

func _on_Column_mouse_entered():
    for i in range(5):
        get_node("../Milestone_" + str(i * 5 + col_num)).set_modulate(Color(.8, .8, .8))

func _on_Column_mouse_exited():
    for i in range(5):
        get_node("../Milestone_" + str(i * 5 + col_num)).set_modulate(Color(1, 1, 1))
