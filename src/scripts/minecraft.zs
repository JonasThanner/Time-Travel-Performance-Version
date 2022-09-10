import crafttweaker.api.ingredient.IIngredient;

// creating recipe for entchanted gold apple
var enchantedGoldApple = <item:minecraft:enchanted_golden_apple> as IIngredient;

// items needed for new recipe
var goldApple = <item:minecraft:golden_apple> as IIngredient;
var precisionMechanism = <item:create:precision_mechanism> as IIngredient;
var roseGoldBlock = <item:tconstruct:rose_gold_block> as IIngredient;
var goldBlock = <item:minecraft:gold_block> as IIngredient;
var beacon = <item:minecraft:beacon> as IIngredient;
var entchantmenttable = <item:minecraft:enchanting_table> as IIngredient;
var enderdragonHead = <item:minecraft:dragon_head> as IIngredient;

var furnaceMinecart = <item:minecraft:furnace_minecart> as IIngredient;
var minecart = <item:minecraft:minecart> as IIngredient;
var deepslateFurnace = <item:quark:deepslate_furnace> as IIngredient;
var air = <item:minecraft:air> as IIngredient;
var ironIngot = <item:minecraft:iron_ingot> as IIngredient;

// recipe only possible with mechanical crafting
createMechanicalCraftingRecipe("mechanical_crafting_enchanted_goldapple", enchantedGoldApple, [
    [roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock], 
    [roseGoldBlock, enderdragonHead, goldBlock, entchantmenttable, goldBlock, enderdragonHead, roseGoldBlock], 
    [roseGoldBlock, goldBlock, beacon, precisionMechanism, beacon, goldBlock, roseGoldBlock], 
    [roseGoldBlock, entchantmenttable, precisionMechanism, goldApple, precisionMechanism, entchantmenttable, roseGoldBlock], 
    [roseGoldBlock, goldBlock, beacon, precisionMechanism, beacon, goldBlock, roseGoldBlock],
    [roseGoldBlock, enderdragonHead, goldBlock, entchantmenttable, goldBlock, enderdragonHead, roseGoldBlock], 
    [roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock]] );

// recipe adding for minecarts with deepslate furnace
createCraftingRecipeShaped("furnace_minecart_with_iron", furnaceMinecart, [[air, air, air], [ironIngot, deepslateFurnace, ironIngot], [ironIngot, ironIngot, ironIngot]]);
createCraftingRecipeShaped("furnace_minecart", furnaceMinecart, [[air, deepslateFurnace, air], [air, minecart, air], [air, air, air]]);

// fixing campfire recipe
var logs = <tag:items:minecraft:logs> as IIngredient;
var sticks = <tag:items:balm:wooden_rods> as IIngredient;
var coals = <tag:items:minecraft:coals> as IIngredient;
var soot = <item:immersive_weathering:soot> as IIngredient;

var campfire = <item:minecraft:campfire> as IIngredient;

deleteCraftingRecipeByOutput(campfire);
createCraftingRecipeShaped("campfire", campfire, [[air, sticks, air], [sticks, coals, sticks], [logs, logs, logs]]);
createCraftingRecipeShaped("campfire_soot", campfire, [[air, sticks, air], [sticks, soot, sticks], [logs, logs, logs]]);

// adding recipe for skulk
var stone = <item:minecraft:stone> as IIngredient;
var kelp = <item:minecraft:kelp> as IIngredient;
var heardOfTheSea = <item:minecraft:heart_of_the_sea> as IIngredient;
var enderWatcher = <item:quark:ender_watcher> as IIngredient;
var sculk = <item:minecraft:sculk_sensor> as IIngredient;

createMechanicalCraftingRecipe("skulk", sculk, [[kelp, kelp, kelp], [heardOfTheSea, enderWatcher, heardOfTheSea], [stone, stone, stone]]);

// change recipe chain armor
var chainHelmet = <item:minecraft:chainmail_helmet> as IIngredient;
var chainPlate = <item:minecraft:chainmail_chestplate> as IIngredient;
var chainLeggins = <item:minecraft:chainmail_leggings> as IIngredient;
var chainBoots = <item:minecraft:chainmail_boots> as IIngredient;

var chain = <item:minecraft:chain> as IIngredient;
var ironNugget = <item:minecraft:iron_nugget> as IIngredient;

var itemsToRemove = [
    chainHelmet,
    chainPlate,
    chainLeggins,
    chainBoots
] as IIngredient[];

for items in itemsToRemove{
    deleteCraftingRecipeByOutput(items);
}

createCraftingRecipeShaped("chain_helmet", chainHelmet, [[air, air, air], [chain, ironIngot, chain], [chain, air, chain]]);
createCraftingRecipeShaped("chain_plate", chainPlate, [[chain, air, chain], [chain, ironIngot, chain], [chain, ironIngot, chain]]);
createCraftingRecipeShaped("chain_leggins", chainLeggins, [[chain, ironIngot, chain], [chain, air, chain], [chain, air, chain]]);
createCraftingRecipeShaped("chain_boots", chainBoots, [[air, air, air], [chain, air, chain], [ironIngot, air, ironIngot]]);