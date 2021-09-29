extends Area2D

signal finish

# Called when the node enters the scene tree for the first time.
func _ready():
	$CollisionShape2D.polygon = $Polygon2D.polygon

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_End_body_entered(body):
	if !body.is_in_group("player"): return
	emit_signal("finish")

