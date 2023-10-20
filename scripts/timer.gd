extends Control

var timer_active = false

var elapsed_fmt: String = "%02d:%02d:%02d.%03d"
@onready var n_time_label: Label = $"Current Time"
signal TimerClicked

var time_elapsed: float = 0

func _process(delta):
    if !timer_active:
        return

    time_elapsed += delta

    n_time_label.text = get_formatted_elapsed_time()

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

func get_formatted_elapsed_time(f_hours = "%02d:", f_minutes = "%02d:", f_seconds = "%02d.", f_millis = "%03d", millis_precision = 3) -> String:
    # Get the current elapsed time.
    var time = float(time_elapsed)

    # Break the elapsed time into seconds and milliseconds.
    var part_seconds = 0
    var part_milliseconds = 0
    var time_split = str(time).split(".")
    if time_split.size() == 2:
        part_seconds = int(time_split[0])
        part_milliseconds = int(time_split[1].substr(0, millis_precision))
    else:
        part_seconds = int(time)

    # Break the total seconds into their respective time parts.
    var hours = floor(part_seconds / 3600)
    var minutes = fmod(floor(part_seconds / 60), 60)
    var seconds = fmod(part_seconds, 60)
    var millis = part_milliseconds

    # Prepare output formatting.
    var format_string = ""
    var format_values = Array()
    if f_hours != null and f_hours != "":
        format_string += f_hours
        format_values.append(hours)
    if f_minutes != null and f_minutes != "":
        format_string += f_minutes
        format_values.append(minutes)
    if f_seconds != null and f_seconds != "":
        format_string += f_seconds
        format_values.append(seconds)
    if f_millis != null and f_millis != "":
        format_string += f_millis
        format_values.append(millis)

    # Return the formatted output.
    return format_string % format_values

func set_time_elapsed(value: float) -> void:
    if value < 0:
        return

    time_elapsed = value
    n_time_label.text = get_formatted_elapsed_time()

func _on_current_time_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton && event.pressed && event.button_index == MOUSE_BUTTON_RIGHT:
        TimerClicked.emit()
