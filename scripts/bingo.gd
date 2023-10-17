class_name Bingo extends Node

var milestones = []

# 0 - unclaimed
# 1 - host
# 2 - client
var lockoutMilestones = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]

## NETWORKING
const DEFAULT_PORT = 40601

@onready var n_version: Label = $Version
@onready var n_title: Label = $VBoxContainer/Title
@onready var n_seed_generator = $"VBoxContainer/Seed Generator"
@onready var n_gamehelp = $GameHelp
@onready var n_timer = $VBoxContainer/Timer
@onready var n_info: RichTextLabel = $Info

func _ready():
    n_version.text = bingo_info.bingoVersion
    n_title.text = bingo_info.game # + " Bingo"
    n_seed_generator.new_seed()
    n_gamehelp.bbcode_text = "[color=aqua][url=" + bingo_info.helpLink + "]Game Help[/url][/color]"
    print(bingo_info.game + ": " + str(bingo_info.milestones.size()))

    populate_card()

func populate_card():
    var bingo_seed = n_seed_generator.get_seed()

    if str(bingo_seed).is_valid_int():
        seed(bingo_seed)
    else:
        seed(hash(bingo_seed))

    milestones = []

    while milestones.size() < 25:
        var milestone = ""
        var index = randi() % bingo_info.milestones.size()
        while curate(milestone):
            index = randi() % bingo_info.milestones.size()
            milestone = bingo_info.milestones.keys()[index]

        milestones.append(milestone)

    for i in range(25):
        get_node("VBoxContainer/Card/Milestone_" + str(i + 1) + "/Label").text = milestones[i]

    n_info.text = "[right]" + bingo_info.getInfo() + "  Seed: [b]" + str(bingo_seed) + "[/b]  Game Version: [b]v" + bingo_info.gameVersion + "[/b][/right]"

# True if need new milestone
# False if dont need new milestone
func curate(milestone):
    if milestone == "" or milestones.has(milestone):
        return true

    var pos = milestones.size() + 1

    # Check col
    for row in range(getRowCol(pos)[0]):
        var n = (row * 5) + getRowCol(pos)[1]
        if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
            if bingo_info.milestones[milestone] == 0:
                continue
            return true

    # Check row
    for col in range(getRowCol(pos)[1]):
        var n = (getRowCol(pos)[0] * 5) + col
        if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
            if bingo_info.milestones[milestone] == 0:
                continue
            return true

    # Check tl-br
    if inTL_BR(pos)[0]:
        for i in range(inTL_BR(pos)[1]):
            var n = (5 * i) + i
            if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
                if bingo_info.milestones[milestone] == 0:
                    continue
                return true

    # Check bl-tr
    if inBL_TR(pos)[0]:
        for i in range(inBL_TR(pos)[1]):
            var n = (5 * i) -  i
            if bingo_info.milestones[milestones[n]] == bingo_info.milestones[milestone]:
                if bingo_info.milestones[milestone] == 0:
                    continue
                return true

    return false

func getRowCol(p):
    for col in range(5):
        for row in range(5):
            if (row * 5) + col + 1 == p:
                return [row, col]

func inTL_BR(p):
    for i in range(5):
        if p == (i * 5) + i + 1:
            return [true, i]

    return [false, 0]

func inBL_TR(p):
    for i in range(5):
        if p == (i * 5) - i + 5:
            return [true, i]

    return [false, 0]

func check_for_bingo(id):
    if bingo_info.bingoMode == "Standard":
        check_standard_bingo()
    elif bingo_info.bingoMode == "Blackout":
        check_blackout_bingo()

func check_standard_bingo():
    # Col
    for col in range(5):
        for row in range(5):
            if not get_node("VBoxContainer/Card/Milestone_" + str((row * 5) + col + 1)).is_pressed():
                break

            if row == 4:
                n_timer.pause_timer()
                return

    # Row
    for row in range(5):
        for col in range(5):
            if not get_node("VBoxContainer/Card/Milestone_" + str((row * 5) + col + 1)).is_pressed():
                break;

            if col == 4:
                n_timer.pause_timer()
                return

    # TL-BR
    for i in range(5):
        if not get_node("VBoxContainer/Card/Milestone_" + str((i * 5) + i + 1)).is_pressed():
            break

        if i == 4:
            n_timer.pause_timer()
            return

    # BL-TR
    for i in range(5):
        if not get_node("VBoxContainer/Card/Milestone_" + str((i * 5) - i + 5)).is_pressed():
            break

        if i == 4:
            n_timer.pause_timer()
            return

    n_timer.start_timer()

func check_blackout_bingo():
    for i in range(25):
        if not get_node("VBoxContainer/Card/Milestone_" + str(i + 1)).is_pressed():
            break;

        if i == 24:
            n_timer.pause_timer()
            return

    n_timer.start_timer()

func _on_back_pressed():
    get_tree().change_scene_to_file("res://scenes/scene_menu.tscn")

func _on_Modes_item_selected(ID):
    bingo_info.bingoMode = get_node("Modes").get_item_text(ID)

    n_seed_generator._on_reset_pressed()
    n_timer._on_reset_pressed()

func _on_GameHelp_meta_clicked(meta):
    OS.shell_open(meta)

func _on_BackgroundButton_pressed():
    n_seed_generator.release_focus()
