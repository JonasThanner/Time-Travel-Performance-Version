import crafttweaker.api.ingredient.IIngredient;

var enchantedGoldApple = <item:minecraft:enchanted_golden_apple> as IIngredient;

var goldApple = <item:minecraft:golden_apple> as IIngredient;
var precisionMechanism = <item:create:precision_mechanism> as IIngredient;
var roseGoldBlock = <item:tconstruct:rose_gold_block> as IIngredient;
var goldBlock = <item:minecraft:gold_block> as IIngredient;
var beacon = <item:minecraft:beacon> as IIngredient;
var entchantmenttable = <item:minecraft:enchanting_table> as IIngredient;
var enderdragonHead = <item:minecraft:dragon_head> as IIngredient;

createMechanicalCraftingRecipe("mechanical_crafting_enchanted_goldapple", enchantedGoldApple, [
    [roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock], 
    [roseGoldBlock, enderdragonHead, goldBlock, entchantmenttable, goldBlock, enderdragonHead, roseGoldBlock], 
    [roseGoldBlock, goldBlock, beacon, precisionMechanism, beacon, goldBlock, roseGoldBlock], 
    [roseGoldBlock, entchantmenttable, precisionMechanism, goldApple, precisionMechanism, entchantmenttable, roseGoldBlock], 
    [roseGoldBlock, goldBlock, beacon, precisionMechanism, beacon, goldBlock, roseGoldBlock],
    [roseGoldBlock, enderdragonHead, goldBlock, entchantmenttable, goldBlock, enderdragonHead, roseGoldBlock], 
    [roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock, roseGoldBlock]] ); 