extends "res://state_machine/state.gd"
# Collection of important methods to handle direction and animation.

func handle_input(event):
	if event.is_action_pressed("stagger"):
		emit_signal("finished", "stagger")
	if event.is_action_pressed("jump"):
		emit_signal("finished", "jump")
	return super.handle_input(event)

func get_input_direction():
	var input_direction = Vector2(
			Input.get_axis(&"move_left", &"move_right"),
			Input.get_axis(&"move_up", &"move_down")
	)
	return input_direction

func update_look_direction(direction):
	if direction and owner.look_direction != direction:
		owner.look_direction = direction
