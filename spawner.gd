extends Node2D

@onready var spawn_timer = $SpawnTimer
@onready var spawn_point = $Marker2D

var marker_scene = [
	preload("res://marker_cap.tscn"),
	preload("res://marker_ink.tscn"),
	preload("res://marker_body.tscn")
]

func _ready() -> void:
	randomize()
	spawn_timer.timeout.connect(spawn_marker)
	start_spawn_timer()
	
func spawn_marker():
	var random_marker = marker_scene.pick_random()
	var marker = random_marker.instantiate()
	marker.position = spawn_point.position
	add_child(marker)
	start_spawn_timer()
	
func start_spawn_timer():
	spawn_timer.wait_time = randf_range(1.0, 2.0)
	spawn_timer.start()
