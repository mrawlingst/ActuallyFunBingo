extends Control

var timer_active = false
var timer_start = 0
var time_now = 0
var elapsed = 0
var paused_elapsed = 0

func _process(delta):
    if !timer_active:
        return
    
    time_now = OS.get_unix_time()
    elapsed = time_now - timer_start + paused_elapsed
    var hours = elapsed / 3600
    var minutes = elapsed / 60
    while minutes >= 60:
        minutes = minutes % 60
    var seconds = elapsed % 60
    var milliseconds = OS.get_ticks_msec() % 1000
    var str_elapsed = "%02d:%02d:%02d.%03d" % [hours, minutes, seconds, milliseconds]
    get_node("Current Time").text = str_elapsed

func _on_start_pause_pressed():
    if timer_active:
        pause_timer()
    else:
        start_timer()

func _on_reset_pressed():
    set_process(false)
    timer_active = false
    paused_elapsed = 0
    get_node("Current Time").text = "00:00:00.000"
    get_node("Start Pause").text = "Start"

func start_timer():
    if timer_active:
        return
    
    get_node("Start Pause").text = "Pause"
    timer_start = OS.get_unix_time()
    set_process(true)
    timer_active = true

func pause_timer():
    if !timer_active:
        return
    
    get_node("Start Pause").text = "Resume"
    paused_elapsed = elapsed
    set_process(false)
    timer_active = false
