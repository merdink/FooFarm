#priority 2

import mods.jei.JEI.removeAndHide; //For removing recipe then hiding from JEI
import crafttweaker.item.IIngredient;

val WatercansToRemove = [
	<watercan:watercan_wood>,
	<watercan:watercan_iron>,
	<watercan:watercan_gold>,
	<watercan:watercan_diamond>
] as IIngredient[];

// Removing all Watering Can Recipes (except Stone) from Watercan mod
for item in WatercansToRemove{
	// Using JEI function to remove recipe AND hide from JEI
	removeAndHide(item);
}