// Description: state_execute() - executes player's current state

if(object_index == obj_Player){
	
	switch(state_current){
		case PLAYER_STATES.idle:
			PlayerStateIdle();
			break;
		
		case PLAYER_STATES.run:
			PlayerStateRun();
			break;
		
		case PLAYER_STATES.air:
			PlayerStateAir();
			break;
		
		case PLAYER_STATES.weakprojectile:
			WeakProjectileCast();
			break;
		
		case PLAYER_STATES.strongprojectile:
			StrongProjectileCast();
			break;
		
		case PLAYER_STATES.selfcast:
			SelfCast();
			break;
		
		case PLAYER_STATES.hitlag:
			PlayerStateHitLag();
			break;
		
		case PLAYER_STATES.hurtlag:
			PlayerStateHurtLag();
			break;
		
		default:
			show_error("Error: Non existent state executed", true);
		
	}
}

state_timer++;