extends CharacterBody2D

var projectile_original = preload("res://scenes/arrow.tscn")
var in_range = false
var chasing = false
var attacking = false
@onready var player: CharacterBody2D = %Player

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	if in_range:
		print("in range")
	if chasing:
		print("chasing")
	if attacking:
		print("attacking")
	pass


func _on_melee_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		attacking = true
		pass # Replace with function body.


func _on_melee_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		attacking = false
		
		pass # Replace with function body.




func _on_chase_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		chasing = true
		in_range = false
		pass # Replace with function body.


func _on_chase_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		chasing = false
		in_range = true
		
		pass # Replace with function body.




func _on_range_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		in_range = true
		pass # Replace with function body.


func _on_range_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		in_range = false
		pass # Replace with function body.
