extends TextureButton

@export var id = 0

@export_color_no_alpha var normal_color: Color = Color("#42464D")
@export_color_no_alpha var hover_color: Color = Color("#6D7178")
@export_color_no_alpha var pressed_color: Color = Color("#1D6836")
@export_color_no_alpha var disabled_color: Color = Color("#FF0000")

func _ready():
    var bingo: Bingo = get_node("../../..")
    pressed.connect(bingo.check_for_bingo.bind(id))
#    connect("pressed", get_node("../.."), "check_for_bingo", [id])
#    pressed.connect(get_node("../..").)
