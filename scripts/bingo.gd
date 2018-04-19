extends Node

func _ready():
    get_node("Title").text = bingo_info.game + " Bingo"

func _on_back_pressed():
    get_tree().change_scene("res://scenes/scene_menu.tscn")
