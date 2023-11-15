#priority 2

import mods.jei.JEI.removeAndHide; //For removing recipe then hiding from JEI
import crafttweaker.item.IIngredient;

val ThermalFoundationDust = [
	// Removing Thermal Foundation Dust
	<thermalfoundation:material:64>, // Copper
	<thermalfoundation:material:65>, // Tin
	<thermalfoundation:material:66>, // Silver
	<thermalfoundation:material:67>, // Lead
	<thermalfoundation:material:68>, // Aluminum
	<thermalfoundation:material:69>, // Nickel
	<thermalfoundation:material:70>, // Platinum
	<thermalfoundation:material:71>, // Iridium
	<thermalfoundation:material:72>, // Mana Infused
	
	// Removing Thermal Foundation Alloy Dust
	<thermalfoundation:material:96>,  // Steel
	<thermalfoundation:material:97>,  // Electrum
	<thermalfoundation:material:98>,  // Invar
	<thermalfoundation:material:99>,  // Bronze
	<thermalfoundation:material:100>, // Constantan
	<thermalfoundation:material:101>, // Signalum
	<thermalfoundation:material:102>, // Lumium
	<thermalfoundation:material:103>  // Enderium
] as IIngredient[];

val ThermalFoundationPlate = [
	// Removing Thermal Foundation Plates
	<thermalfoundation:material:320>, // Copper
	<thermalfoundation:material:321>, // Tin
	<thermalfoundation:material:322>, // Silver
	<thermalfoundation:material:323>, // Lead
	<thermalfoundation:material:324>, // Aluminum
	<thermalfoundation:material:325>, // Nickel
	<thermalfoundation:material:326>, // Platinum
	<thermalfoundation:material:327>, // Iridium
	<thermalfoundation:material:328>, // Mana Infused
	
	// Removing Thermal Foundation Alloy Plates
	<thermalfoundation:material:352>, // Steel
	<thermalfoundation:material:353>, // Electrum
	<thermalfoundation:material:354>, // Invar
	<thermalfoundation:material:355>, // Bronze
	<thermalfoundation:material:356>, // Constantan
	<thermalfoundation:material:357>, // Signalum
	<thermalfoundation:material:358>, // Lumium
	<thermalfoundation:material:359>  // Enderium
] as IIngredient[];

// Removing Thermal Foundation stuff (Hardened Glass, Coins, Upgrade Kits)
removeAndHide(<thermalfoundation:glass:*>, false);
removeAndHide(<thermalfoundation:glass_alloy:*>, false);
removeAndHide(<thermalfoundation:coin:*>, false);
removeAndHide(<thermalfoundation:upgrade:*>, false);

// Removing Dust and Plates
for item in ThermalFoundationDust{
	removeAndHide(item, false);
}
for item in ThermalFoundationPlate{
	removeAndHide(item, false);
}