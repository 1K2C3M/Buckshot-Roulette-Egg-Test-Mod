extends Node

var menu_active: bool = false

func _ready() -> void:
    set_process(true)
    await get_tree().to_signal("idle_frame")
    check_and_change_text()

func _process(_delta: float) -> void:
    check_and_change_text()

func check_and_change_text() -> void:
    if is_menu_scene() and not menu_active:
        change_button_text()
        menu_active = true
    elif not is_menu_scene() and menu_active:
        menu_active = false

func is_menu_scene() -> bool:
    return get_tree().get_root().has_node("menu")

func change_button_text() -> void:
    var button_start = get_tree().get_root().get_node_or_null("menu/Camera/dialogue UI/menu ui/main screen/button_start")
    if button_start and button_start.text != "EGG":
        button_start.text = "EGG"