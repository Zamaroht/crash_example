extends RigidBody2D

func _ready():
	pass

func _integrate_forces(s):
	var lv = s.get_linear_velocity()
	lv.y += 3
	s.set_linear_velocity(lv)

	var ccount = s.get_contact_count()
	for i in range(ccount):
		if s.get_contact_collider_object(i).get_type() == "TileMap":
			var metadata = s.get_contact_collider_shape_metadata(i)
