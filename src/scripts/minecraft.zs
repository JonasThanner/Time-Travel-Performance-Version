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