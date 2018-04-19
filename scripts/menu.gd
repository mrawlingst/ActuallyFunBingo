extends Node

func _ready():
    pass

# About
func _on_about_pressed():
    get_tree().change_scene("res://scenes/scene_about.tscn")

# Quit
func _on_quit_pressed():
    get_tree().quit()

func game_picked(game):
    print(game)
