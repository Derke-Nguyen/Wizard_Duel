/// @description Insert description here
// You can write your code in this editor
if (other.player_id != player_id && other.iframe == 0) {
    other.playerHealth -= 1;
	other.iframe = 30;
}

if(other.player_id == player_id){
	x= other.x;
	y= other.y;
}