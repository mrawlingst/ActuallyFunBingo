extends Control

var timer_active = false

var elapsed_fmt: String = "%02d:%02d:%02d.%03d"
@onready var n_time_label: Label = $"Current Time"

var time_elapsed: float = 0

func _process(delta):
    if !timer_active:
        return

    time_elapsed += delta

    var hours := time_elapsed / 360
    var minutes := time_elapsed / 60
    var seconds := fmod(time_elapsed, 60)
    var milliseconds := fmod(time_elapsed, 1) * 100

    n_time_label.text = elapsed_fmt % [hours, minutes, seconds, milliseconds]

func _on_start_pause_pressed():
    if timer_active:
        pause_timer()
    else:
        start_timer()

func _on_reset_pressed():
    set_process(false)
    timer_active = false
    time_elapsed = 0
    n_time_label.text = elapsed_fmt % [0, 0, 0, 0]
    get_node("Start Pause").text = "Start"
    get_node("../Seed Generator/HBoxContainer/Generate").set_disabled(false)
    get_node("../Seed Generator/HBoxContainer/Reset").set_disabled(false)

func start_timer():
    if timer_active:
        return

    get_node("Start Pause").text = "Pause"
#    time_elapsed = 0
    set_process(true)
    timer_active = true
    get_node("../Seed Generator/HBoxContainer/Generate").set_disabled(true)
    get_node("../Seed Generator/HBoxContainer/Reset").set_disabled(true)

func pause_timer():
    if !timer_active:
        return

    get_node("Start Pause").text = "Resume"
    set_process(false)
    timer_active = false
    get_node("../Seed Generator/HBoxContainer/Generate").set_disabled(false)
    get_node("../Seed Generator/HBoxContainer/Reset").set_disabled(false)
