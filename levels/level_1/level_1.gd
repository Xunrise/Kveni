extends Node2D

const texts = [
	"Hello welcome to the forest",
	"Try finding the fox!"
]
var textAt = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	$Text.text = texts[0]
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func show_next_line():
	textAt += 1
	if textAt == texts.size():
		textAt = 0
	$Text.text = texts[textAt]

func find_fox(clickedNode):
	if clickedNode == "Fox":
		$Text.text = "Thats the fox!"
		$Fox.found()


func _on_fox_clicked():
	pass # Replace with function body.
