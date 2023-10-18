class_name Milestone extends TextureButton

@export var id = 0

@onready var n_star: Label = $Star

func _ready():
    var bingo: Bingo = get_node("../../..")
    pressed.connect(bingo.check_for_bingo.bind(id))


func set_star(state: bool) -> void:
    n_star.visible = state

func toggle_star() -> void:
    n_star.visible = !n_star.visible

func _on_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        event = event as InputEventMouseButton
        if event.pressed && event.button_index == MOUSE_BUTTON_RIGHT:
            toggle_star()
