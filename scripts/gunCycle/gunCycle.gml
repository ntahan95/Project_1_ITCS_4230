// Script assets have changed
// for v2.3.0 see 
// https://help.yoyogames.com/hc/en-us/articles/360005277377 
// for more information
function gunCycle() {
	//if they have a gun
	if (hasGun){
		//add to check var
		check++
		//if check is larger than size of inventory set to 0
		if (check > ds_list_size(gunInventory)-1){
			check = 0
		}
		
		gunHeld = ds_list_find_value(gunInventory, check);
		obj_player.image_index = check+1;
	}
}