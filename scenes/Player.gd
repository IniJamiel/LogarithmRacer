extends RigidBody2D

var dir: float = 0.0
var thrust: float =  0.0
var tq_force: float = 4400.0
var tr_force: float = 6000.0

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/Polygon2D/CollisionPolygon2D.polygon = $CanvasLayer/Polygon2D.polygon
	pass # Replace with function body.

func _process(delta):
	dir = Input.get_action_strength("right") - Input.get_action_strength("left")
	thrust = Input.get_action_strength("thrust")
	
		
	print(dir)
	print(thrust)
	
func _physics_process(delta):
	applied_force = (-global_transform.y * thrust * tq_force)
	applied_torque = (dir * tr_force)
