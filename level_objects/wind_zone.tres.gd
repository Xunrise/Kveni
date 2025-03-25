extends Area3D
@export var wind = Vector3()

var player_character : CharacterBody3D = null

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if player_character: 
		var addedForce = wind * delta
		player_character.velocity += addedForce
	


func _on_body_entered(body: Node3D) -> void:
	if body is CharacterBody3D:
		print("Entered")
		player_character = body


func _on_body_exited(body: Node3D) -> void:
	if body == player_character:
		print("Exited")
		player_character = null
