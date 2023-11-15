#priority 2

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import modtweaker.tconstruct.ITICMaterial;
import mods.tconstruct.Melting;
import mods.tconstruct.Casting;

val stone = <ticmat:stone> as ITICMaterial;

// Casts
val nuggetCast = <tconstruct:cast_custom:1> as IIngredient;
val gemCast = <tconstruct:cast_custom:2> as IIngredient;

// Liquids
val enderLiquid = <liquid:ender> as ILiquidStack;
val redstoneLiquid = <liquid:redstone> as ILiquidStack;
val glowstoneLiquid = <liquid:glowstone> as ILiquidStack;
val cryoLiquid = <liquid:cryotheum> as ILiquidStack;

// Default Melting Temp
val defaultMeltingTemp = 350; // 500 = 200C, 400 = 100C, 300 = 0C

// Items
val enderPearl = <minecraft:ender_pearl> as IItemStack;
val redstoneDust = <minecraft:redstone> as IItemStack;
val redstoneBlock = <minecraft:redstone_block> as IItemStack;
val glowstoneDust = <minecraft:glowstone_dust> as IItemStack;
val glowstoneBlock = <minecraft:glowstone> as IItemStack;
val cryoDust = <thermalfoundation:material:1025> as IItemStack;

// Attempting to make stone useless as a head piece for Tinkers Tools
// Workaround for Tinkers Extras allowing two part tools to include stone in main part
stone.durabilityHead = 0;
stone.miningSpeedHead = 0;
stone.attackHead = 0;
stone.harvestLevelHead = 0;
stone.arrowBonusAmmo = 0;

// If the tag has "fluid_" do not include that part, just use the name
// mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
// mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
// mods.tconstruct.Casting.addTableRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);

// Adding Melting and Casting recipes since we dont have Thermal Expansion machines

// Adding Resonant Ender melting recipe and casting recipe for Ender Pearl
Melting.addRecipe(enderLiquid * 250, enderPearl, defaultMeltingTemp);
Melting.addRecipe(enderLiquid * 1000, <thermalfoundation:ore_fluid:4>, defaultMeltingTemp); // Resonant End Ore
Casting.addTableRecipe(enderPearl, gemCast, enderLiquid, 250);

// Adding Destablized Redstone melting recipes and casting recipes for Redstone dust/block
Melting.addRecipe(redstoneLiquid * 100, redstoneDust, defaultMeltingTemp);
Melting.addRecipe(redstoneLiquid * 900, redstoneBlock, defaultMeltingTemp);
Casting.addTableRecipe(redstoneDust, nuggetCast, redstoneLiquid, 100);
Casting.addBasinRecipe(redstoneBlock, null, redstoneLiquid, 900, false, 200);

// Adding Energized Glowstone melting recipes and casting recipes for Glowstone dust/block
Melting.addRecipe(glowstoneLiquid * 250, glowstoneDust, defaultMeltingTemp);
Melting.addRecipe(glowstoneLiquid * 1000, glowstoneBlock, defaultMeltingTemp);
Casting.addTableRecipe(glowstoneDust, nuggetCast, glowstoneLiquid, 250);
Casting.addBasinRecipe(glowstoneBlock, null, glowstoneLiquid, 1000, false, 200);

// Adding casting recipe for Blizz Powder (Consume cast)
Casting.addTableRecipe(<thermalfoundation:material:2049>, <minecraft:snowball>, redstoneLiquid, 200, true);

// Adding melting and casting recipes for Cryotheum dust
Melting.addRecipe(cryoLiquid * 250, cryoDust, defaultMeltingTemp);
Casting.addTableRecipe(cryoDust, nuggetCast, cryoLiquid, 250);