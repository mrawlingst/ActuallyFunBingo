extends Node

func _ready():
    get_node("Version").text = bingo_info.bingoVersion

func _on_Contents_meta_clicked(meta):
    OS.shell_open(meta)

func _on_Back_pressed():
    get_tree().change_scene("res://scenes/scene_menu.tscn")
