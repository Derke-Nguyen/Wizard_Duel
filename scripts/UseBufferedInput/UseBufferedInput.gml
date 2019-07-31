//Description: UseBufferedInput - use the buffered input and use
switch (buffered_input) {
	case noone:
		break;
		
	case INPUTS.jump:
		jump_key = true;
		break;
		
	case INPUTS.spell1:
		spell1_key = true;
		break;
		
	case INPUTS.spell2:
		spell2_key = true;
		break;
		
	case INPUTS.spell3:
		spell3_key = true;
		break;
		
	default:
		show_error("Error: invalid input buffered", true);
}

buffered_input = noone;