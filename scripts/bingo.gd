extends Node

func _ready():
    pass

func _on_back_pressed():
    get_tree().change_scene("res://scenes/scene_menu.tscn")
