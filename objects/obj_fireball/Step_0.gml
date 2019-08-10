--distance;

if(directionOf < 0){ //if initially left facing
	if(distance > 150){
		speed += 2;
	}
	if(distance <= 150 && !returned){
		speed *= -1;
		returned = true;
	}
	if(distance <= 150 && returned){
		speed -= 2;
	}
}
else{ //if initially right facing
	if(distance > 150){
		speed -= 2;
	}
	if(distance <= 150 && !returned){
		speed *= -1;
		returned = true;
	}
	if(distance <= 150 && returned){
		speed += 2;
	}
}

if((x < 0 || x > room_width) && returned){
    instance_destroy();
}