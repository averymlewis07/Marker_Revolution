extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	%YouWin.hide()
	%GameOver.hide()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_move_up(choice: int) -> void:
	print(choice)


func _on_restart_pressed() -> void:
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	get_tree().quit()
