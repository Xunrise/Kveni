extends TextureButton
@export_file("*.tscn") var next_scene

func _on_pressed():
	get_tree().change_scene_to_file(next_scene)
