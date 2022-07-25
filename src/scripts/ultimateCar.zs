import crafttweaker.api.item.IItemStack;
import crafttweaker.api.util.random.Percentaged;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.fluid.IFluidStack;
import mods.create.HeatCondition;
import mods.create.MixingManager;

import crafttweaker.api.tag.TagManager;

<tag:fluids:car:gas_station>.add(<fluid:immersiveengineering:biodiesel>);

var asphalt = <item:car:asphalt> as IIngredient;
var engine_piston = <item:car:engine_piston> as IIngredient;

var steel_ingot = <tag:items:forge:ingots/steel> as IIngredient;
var steel_rods = <tag:items:forge:rods/steel> as IIngredient;

var air = <item:minecraft:air> as IItemStack;

var itemRecipiesForRemoving = [
    asphalt,
    engine_piston
] as IIngredient[];

for item in itemRecipiesForRemoving{
    deleteCraftingRecipeByOutput(item);
}

<recipetype:create:mixing>.addRecipe("asphalt", <constant:create:heat_condition:superheated>, [<item:car:asphalt> * 2,(<item:car:asphalt>) % 50], [<tag:items:forge:slag>, <tag:items:forge:gravel>, <tag:items:forge:sand>], null, 200);

createMechanicalCraftingRecipe("engine_piston", engine_piston, [[air, air, steel_ingot], [air, steel_rods, air], [steel_rods, air, air]]);