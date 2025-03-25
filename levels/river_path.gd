extends Path3D

var is_player_attached = false
var player: CharacterBody3D = null 

func _process(delta: float) -> void:
	if is_player_attached == true:
		$PathFollow3D.progress += 50 * delta
		if $PathFollow3D.progress_ratio == 1.0:
			return_player_to_world()

func attach_player_to_follow(player_node : CharacterBody3D):
	if is_player_attached == false:
		is_player_attached = true
		player = player_node
		player.set_physics_process(false)
		player.reparent($PathFollow3D, true)
	
func return_player_to_world():
	if player != null:
		player.reparent(get_tree().get_root(), true)
		player.set_physics_process(true)
		queue_free()

func _on_area_3d_body_entered(body: Node3D) -> void:
	if is_player_attached == false and body is CharacterBody3D:
		attach_player_to_follow(body)
