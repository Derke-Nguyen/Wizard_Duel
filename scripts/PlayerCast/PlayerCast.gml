switch(color_current){
	case COLOR.red:
	RedCast();
	break;
	case COLOR.blue:
	BlueCast();
	break;
	case COLOR.orange:
	OrangeCast();
	break;
	case COLOR.purple:
	PurpleCast();
	break;
	default:
	break;
};

if(spell1_key){
	weak_projectile_state_timer = 0;
	strong_projectile_state_timer = 0;
	StateSwitch(PLAYER_STATES.weakprojectile);
}

if(spell2_key){
	//spell 2
}

if(spell3_key){
	//spell3
}