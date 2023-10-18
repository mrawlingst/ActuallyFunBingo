extends Control

func _ready() -> void:
    get_node("Version").text = bingo_info.bingoVersion

func _on_back_pressed() -> void:
    get_tree().change_scene_to_file("res://scenes/scene_menu.tscn")
