/// @description destroy spell once the spell lifespan ends
timealive--;
if(timealive < 0){
	instance_destroy();
}