extends Node2D
@export var correct_color : String
var question

func _ready():
	question = get_node("Question")

# Potentially change this by: 
# 1) Moving Question and answer to own scenes, 
# 2) making Quiz attach a new child (Question) on _ready()
# 3) On displaySuccess/Failure unload the question scene and load answer scene 
# (either split the success and failure answers into own scenes)
func _on_button_pressed(color):
	get_node("Answer").visible = true
	if(color == correct_color):
		displaySuccess()
	else:
		displayFailure()
		
		
func displaySuccess():
	question.visible = false
	get_node("Answer/Success").visible = true
	get_node("Answer/Success/Particles").emitting = true

func displayFailure():
	question.visible = false
	get_node("Answer/Failure").visible = true
	
	

