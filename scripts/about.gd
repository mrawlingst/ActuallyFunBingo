extends Node

func _on_Contents_meta_clicked(meta):
    OS.shell_open(meta)

func _on_Back_pressed():
    get_tree().change_scene("res://scenes/scene_menu.tscn")
