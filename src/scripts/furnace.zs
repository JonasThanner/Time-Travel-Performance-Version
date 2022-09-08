import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import crafttweaker.api.ingredient.IIngredient;

// deleting function
function deleteFurnaceSmelting(inputItem as IIngredient) as void{
    furnace.remove(inputItem);
    blastFurnace.remove(inputItem);
}

// array for items to remove from furnance
val tagToRemoveFromFurnance = [
    <tag:items:forge:ingots/gold>,
    <tag:items:forge:ingots/copper>,
    <tag:items:forge:ingots/iron>,
    <tag:items:forge:ingots/aluminum>,
    <tag:items:forge:ingots/cobalt>,
    <tag:items:forge:ingots/nickel>,
    <tag:items:forge:ingots/silver>,
    <tag:items:forge:ingots/lead>,
    <tag:items:forge:ingots/steel>,
    <tag:items:forge:ingots/zinc>,
    <tag:items:forge:ingots/uranium>,
    <tag:items:forge:ingots/constantan>,
    <tag:items:forge:ingots/electrum>,
    <item:mna:purified_vinteum_ingot>
] as IIngredient[];

// for loop for removing recipes
for tag in tagToRemoveFromFurnance{
    deleteFurnaceSmelting(tag);
}

// creating new recipes for items which can't be smelted in smeltery of Tinkers Construct
blastFurnace.addRecipe("crushed_gold_to_ingot", <item:create:crushed_gold_ore>, <item:minecraft:gold_ingot>, 0.1, 5);
blastFurnace.addRecipe("crushed_iron_to_ingot", <item:create:crushed_iron_ore>, <item:minecraft:iron_ingot>, 0.1, 5);
blastFurnace.addRecipe("crushed_copper_to_ingot", <item:create:crushed_copper_ore>, <item:minecraft:copper_ingot>, 0.1, 5);
blastFurnace.addRecipe("crushed_zinc_to_ingot", <item:create:crushed_zinc_ore>, <item:create:zinc_ingot>, 0.1, 5);