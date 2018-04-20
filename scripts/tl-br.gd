extends TextureButton

func _on_TLBR_mouse_entered():
    for i in range(5):
        get_node("../Milestone_" + str((i+1) + (i * 5))).set_modulate(Color(.8, .8, .8))

func _on_TLBR_mouse_exited():
    for i in range(5):
        get_node("../Milestone_" + str((i+1) + (i * 5))).set_modulate(Color(1, 1, 1))
