extends Sprite2D

var has_been_found = false

func found():
	if has_been_found == false:
		print("ive been found")
		$AnimationPlayer.play("hide_fox")
		has_been_found = true

func _unhandled_input(event):
	if event is InputEventScreenTouch or InputEventMouseButton:
		if event.is_pressed():
			if get_rect().has_point(to_local(event.position)):
				found()
