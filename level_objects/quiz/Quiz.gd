extends Node3D
@export var correct_answer : String
var question

func _ready():
	question = get_node("Question")

func player_input(answer):
	get_node("Feedback").visible = true
	if(answer == correct_answer):
		displaySuccess()
	else:
		displayFailure()
		
		
func displaySuccess():
	question.visible = false
	get_node("Feedback/Success").visible = true
	get_node("Feedback/Success/Particles").emitting = true
	print("Success")

func displayFailure():
	question.visible = false
	get_node("Feedback/Failure").visible = true
	print("Failure")
	
	
