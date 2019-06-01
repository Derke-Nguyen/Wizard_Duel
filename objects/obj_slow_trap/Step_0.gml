time += 0.000005;
image_yscale -= time;
if(image_yscale < 0){
	instance_destroy(id, false);
}
