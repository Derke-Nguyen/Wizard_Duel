if (alive_time == alive_time_max) {
	instance_destroy(self);
} else {
	alive_time++;
}