image_index++;
if(facing < 0){
	if(image_index >= 33){
		image_xscale -= 1.5;
		image_yscale = 2;
	}
}
else{
	if(image_index >= 33){
		image_xscale += 1.5;
		image_yscale = 2;
	}
}
	
if(image_index >= 56){
	instance_destroy(self, false);
}

ScreenShake(shake, shake);

