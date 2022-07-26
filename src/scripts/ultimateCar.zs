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
var engine_3_cylinder = <item:car:engine_3_cylinder> as IIngredient;
var engine_6_cylinder = <item:car:engine_6_cylinder> as IIngredient;

var steel_ingot = <tag:items:forge:ingots/steel> as IIngredient;
var steel_rods = <tag:items:forge:rods/steel> as IIngredient;
var spark = <item:botania:spark> as IIngredient;
var iron_block = <item:minecraft:iron_block> as IIngredient;
var steel_block = <item:immersiveengineering:storage_steel> as IIngredient;
var nossel = <item:immersiveengineering:toolupgrade_chemthrower_focus> as IIngredient;
var cogwheel = <item:create:cogwheel> as IIngredient;
var bracket = <item:create:metal_bracket> as IIngredient;
var propeller = <item:create:propeller> as IIngredient;
var belt = <item:create:belt_connector> as IIngredient;

var air = <item:minecraft:air> as IItemStack;

var itemRecipiesForRemoving = [
    asphalt,
    engine_piston,
    engine_3_cylinder,
    engine_6_cylinder
] as IIngredient[];

for item in itemRecipiesForRemoving{
    deleteCraftingRecipeByOutput(item);
}

<recipetype:create:mixing>.addRecipe("asphalt", <constant:create:heat_condition:superheated>, [<item:car:asphalt> * 2,(<item:car:asphalt>) % 50], [<tag:items:forge:slag>, <tag:items:forge:gravel>, <tag:items:forge:sand>], null, 200);

createMechanicalCraftingRecipe("engine_piston", engine_piston, [[air, air, steel_ingot], [air, steel_rods, air], [steel_rods, air, air]]);
createMechanicalCraftingRecipe("engine_3_cylinder", engine_3_cylinder, [[steel_block, nossel, nossel, nossel, steel_block], [iron_block, spark, spark, spark, iron_block], [iron_block, engine_piston, engine_piston, engine_piston, iron_block], [iron_block, steel_block, steel_block, steel_block, iron_block]]);
createMechanicalCraftingRecipe("engine_6_cylinder", engine_6_cylinder, [[steel_block, cogwheel, cogwheel, cogwheel, steel_block], [iron_block, engine_3_cylinder, belt, engine_3_cylinder, iron_block], [iron_block, bracket, propeller, bracket, iron_block], [iron_block, steel_block, steel_block, steel_block, iron_block]]);