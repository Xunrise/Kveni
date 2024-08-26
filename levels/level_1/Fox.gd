extends Sprite2D

func found():
	print("ive been found")
	$AnimationPlayer.play("hide_fox")
