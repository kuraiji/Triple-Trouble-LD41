extends StaticBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func death():
	pass


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		if body.keyGot == true:
			MusicPlayer.playEffect(2)
			hide()
			queue_free()
			body.keyGot = false
		pass