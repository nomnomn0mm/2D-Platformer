extends Area2D

@onready var start_pos : Vector2 = global_position
@onready var sprite : Sprite2D = $Sprite

func _on_body_entered(body: Node2D) -> void:
	if not body.is_in_group("Player"):
		return
		
	body.increase_score(1)
	queue_free()
