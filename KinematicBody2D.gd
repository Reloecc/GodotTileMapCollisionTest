extends KinematicBody2D

var velocity = Vector2.ZERO

func _physics_process(_delta):
	velocity.x = 0
	velocity.y = 100

	if Input.is_action_pressed("ui_left"):
		velocity.x = -60

	if Input.is_action_pressed("ui_right"):
		velocity.x = 60

	velocity = move_and_slide(velocity, Vector2.UP)

	for i in range(get_slide_count()):
		var collision = get_slide_collision(i)

		if collision.collider is TileMap:
			var cell = collision.collider.world_to_map(collision.position - collision.normal)
			var tileId = collision.collider.get_cellv(cell)
			print("tileId ", tileId)
