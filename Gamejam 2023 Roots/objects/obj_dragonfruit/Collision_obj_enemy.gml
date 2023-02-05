/// @description 

if(thrown) {
	with(instance_create_layer(x,y,"Instances",obj_explosion)) {
		image_xscale = other.explosionSize;
		image_yscale = other.explosionSize;
		damage = other.explosionDamage;
	}
	alarm[0] = 1;
}