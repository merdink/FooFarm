#priority 2

import crafttweaker.item.IItemStack;

val VanillaTools = [
	<minecraft:wooden_pickaxe>,
	<minecraft:wooden_axe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_hoe>,
	
	<minecraft:stone_pickaxe>,
	<minecraft:stone_axe>,
	<minecraft:stone_shovel>,
	<minecraft:stone_hoe>,
	
	<minecraft:iron_pickaxe>,
	<minecraft:iron_axe>,
	<minecraft:iron_shovel>,
	<minecraft:iron_hoe>,
	
	<minecraft:golden_pickaxe>,
	<minecraft:golden_axe>,
	<minecraft:golden_shovel>,
	<minecraft:golden_hoe>,
	
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_axe>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_hoe>
] as IItemStack[];

// Setting Vanilla Tools to 1 durability to encourage Tinkers
for item in VanillaTools{
	item.maxDamage = 1;
}