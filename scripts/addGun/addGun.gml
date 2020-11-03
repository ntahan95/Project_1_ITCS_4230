//adds whatever gun is picked up to the player's inventory, gun is stored as a name ONLY currently
function addGun(gunName){
	ds_list_add(obj_player.gunInventory, gunName)
}