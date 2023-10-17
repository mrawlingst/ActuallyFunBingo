@tool
extends TextureButton

@export var row_num = 0:
    get:
        return row_num
    set(value):
        row_num = value
        if !is_node_ready():
            await ready
        n_label.text = "ROW %d" % row_num

@onready var n_label: Label = $Label

func _ready():
    get_node("Label").text = "ROW " + str(row_num)

func _on_Row_mouse_entered():
    for i in range(5):
        get_node("../Milestone_" + str((i + 1) + 5 * (row_num - 1))).set_modulate(Color(.8, .8, .8))

func _on_Row_mouse_exited():
    for i in range(5):
        get_node("../Milestone_" + str((i + 1) + 5 * (row_num - 1))).set_modulate(Color(1, 1, 1))
