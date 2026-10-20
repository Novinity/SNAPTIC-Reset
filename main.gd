extends Node

func _ready() -> void:
	var action_name = "reset_game"
	if not InputMap.has_action("reset_game"):
		InputMap.add_action(action_name)
		
		var event = InputEventKey.new()
		event.physical_keycode = KEY_U
		InputMap.action_add_event(action_name, event)
		
		event = InputEventJoypadButton.new()
		event.button_index = JOY_BUTTON_DPAD_DOWN
		InputMap.action_add_event(action_name, event)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("reset_game"):
		LevelLoader.load_level(Global.get_game().starting_level)
