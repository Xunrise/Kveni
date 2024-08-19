extends Node2D
@export var correct_color : String

func _on_button_pressed(color):
	if(color == correct_color):
		print("Success")
	else:
		print("Failure")

