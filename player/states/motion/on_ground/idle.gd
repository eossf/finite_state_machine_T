extends "../motion.gd"

func handle_input(event):
	if event.is_action_pressed("jump"):
		emit_signal("finished", "jump")
	return super.handle_input(event)

func enter():
	owner.get_node(^"AnimationPlayer").play("idle")

func update(_delta):
	var input_direction = get_input_direction()
	if input_direction:
		emit_signal("finished", "move")
