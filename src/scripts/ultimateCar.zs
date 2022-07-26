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
var engine_truck = <item:car:engine_truck> as IIngredient;

var carWheel = <item:car:wheel> as IIngredient;
var bigCarWheel = <item:car:big_wheel> as IIngredient;

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
    engine_6_cylinder,
    engine_truck,
    carWheel,
    bigCarWheel
] as IIngredient[];

for item in itemRecipiesForRemoving{
    deleteCraftingRecipeByOutput(item);
}

<recipetype:create:mixing>.addRecipe("asphalt", <constant:create:heat_condition:superheated>, [<item:car:asphalt> * 2,(<item:car:asphalt>) % 50], [<tag:items:forge:slag>, <tag:items:forge:gravel>, <tag:items:forge:sand>], null, 200);

createMechanicalCraftingRecipe("mechanical_crafting_engine_piston", engine_piston, [[air, air, steel_ingot], [air, steel_rods, air], [steel_rods, air, air]]);
createMechanicalCraftingRecipe("mechanical_crafting_engine_3_cylinder", engine_3_cylinder, [[steel_block, nossel, nossel, nossel, steel_block], [iron_block, spark, spark, spark, iron_block], [iron_block, engine_piston, engine_piston, engine_piston, iron_block], [iron_block, steel_block, steel_block, steel_block, iron_block]]);
createMechanicalCraftingRecipe("mechanical_crafting_engine_6_cylinder", engine_6_cylinder, [[steel_block, cogwheel, cogwheel, cogwheel, steel_block], [iron_block, engine_3_cylinder, belt, engine_3_cylinder, iron_block], [iron_block, bracket, propeller, bracket, iron_block], [iron_block, steel_block, steel_block, steel_block, iron_block]]);
createMechanicalCraftingRecipe("mechanical_crafting_truck_engine", engine_truck, [[steel_block, iron_block, nossel, nossel, nossel, nossel, iron_block, steel_block], [steel_block, belt, spark, spark, spark, spark, belt, steel_block], [steel_block, engine_6_cylinder, engine_piston, engine_piston, engine_piston, engine_piston, engine_6_cylinder, steel_block], [steel_block, belt, bracket, cogwheel, cogwheel, bracket, belt, steel_block], [steel_block, iron_block, iron_block, propeller, propeller, iron_block, iron_block, steel_block]]);

var iron_rods = <tag:items:forge:rods/iron> as IIngredient;
var iron_plade = <tag:items:forge:plates/iron> as IIngredient;
var iron_light_bulb = <item:engineersdecor:iron_bulb_light> as IIngredient;
var glas = <tag:items:forge:glass> as IIngredient;

var bodiesToChange = [
    <item:car:oak_body>,
    <item:car:warped_body>,
    <item:car:crimson_body>,
    <item:car:acacia_body>,
    <item:car:birch_body>,
    <item:car:dark_oak_body>,
    <item:car:jungle_body>,
    <item:car:spruce_body> 
] as IIngredient[];

var bigBodiesToChange = [
    <item:car:big_oak_body>,
    <item:car:big_acacia_body>,
    <item:car:big_dark_oak_body>,
    <item:car:big_birch_body>,
    <item:car:big_jungle_body>,
    <item:car:big_spruce_body>,
    <item:car:big_crimson_body>,
    <item:car:big_warped_body>
] as IIngredient[];

var typesOfWood = [
    <item:minecraft:oak_planks>,
    <item:minecraft:warped_planks>,
    <item:minecraft:crimson_planks>,
    <item:minecraft:acacia_planks>,
    <item:minecraft:birch_planks>,
    <item:minecraft:dark_oak_planks>,
    <item:minecraft:jungle_planks>,
    <item:minecraft:spruce_planks>
] as IIngredient[];

var nameOfBody = [
    "oak",
    "warped",
    "crimpson",
    "acacia",
    "birch",
    "dark_oak",
    "jungle",
    "spruce"
] as string[];

for i in 0 .. 8 {
    deleteCraftingRecipeByOutput(bodiesToChange[i]);
    deleteCraftingRecipeByOutput(bigBodiesToChange[i]);
    createMechanicalCraftingRecipe("mechanical_crafting_body_" + nameOfBody[i] + "_body", bodiesToChange[i], [[air, air, typesOfWood[i], typesOfWood[i], typesOfWood[i]], [typesOfWood[i], typesOfWood[i], iron_rods, iron_rods, iron_rods], [iron_light_bulb, typesOfWood[i], iron_plade, iron_plade, iron_plade]]);
    createMechanicalCraftingRecipe("mechanical_crafting_big_bodies_" + nameOfBody[i] + "body", bigBodiesToChange[i], [[air, air, typesOfWood[i], typesOfWood[i], typesOfWood[i]], [air, air, glas, iron_rods, iron_rods], [typesOfWood[i], typesOfWood[i], iron_rods, iron_plade, iron_plade], [iron_light_bulb, typesOfWood[i], iron_plade, iron_plade, iron_plade]]);
}

var limeBodiesToChange = [
    <item:car:cyan_transporter_body>,
    <item:car:gray_transporter_body>,
    <item:car:brown_transporter_body>,
    <item:car:blue_transporter_body>,
    <item:car:black_transporter_body>,
    <item:car:yellow_transporter_body>,
    <item:car:white_transporter_body>,
    <item:car:light_gray_transporter_body>,
    <item:car:purple_transporter_body>,
    <item:car:pink_transporter_body>,
    <item:car:orange_transporter_body>,
    <item:car:magenta_transporter_body>,
    <item:car:lime_transporter_body>,
    <item:car:light_blue_transporter_body>,
    <item:car:green_transporter_body>,
    <item:car:red_transporter_body>
] as IIngredient[];

var limeSuvBodiesToChange = [
    <item:car:cyan_suv_body>,
    <item:car:gray_suv_body>,
    <item:car:brown_suv_body>,
    <item:car:blue_suv_body>,
    <item:car:black_suv_body>,
    <item:car:yellow_suv_body>,
    <item:car:white_suv_body>,
    <item:car:light_gray_suv_body>,
    <item:car:purple_suv_body>,
    <item:car:pink_suv_body>,
    <item:car:orange_suv_body>,
    <item:car:magenta_suv_body>,
    <item:car:lime_suv_body>,
    <item:car:light_blue_suv_body>,
    <item:car:green_suv_body>,
    <item:car:red_suv_body>
] as IIngredient[];

var limeSportBodiesToChange = [
    <item:car:cyan_sport_body>,
    <item:car:gray_sport_body>,
    <item:car:brown_sport_body>,
    <item:car:blue_sport_body>,
    <item:car:black_sport_body>,
    <item:car:yellow_sport_body>,
    <item:car:white_sport_body>,
    <item:car:light_gray_sport_body>,
    <item:car:purple_sport_body>,
    <item:car:pink_sport_body>,
    <item:car:orange_sport_body>,
    <item:car:magenta_sport_body>,
    <item:car:lime_sport_body>,
    <item:car:light_blue_sport_body>,
    <item:car:green_sport_body>,
    <item:car:red_sport_body>
] as IIngredient[];

var concreteTypes = [
    <item:minecraft:cyan_concrete>,
    <item:minecraft:gray_concrete>,
    <item:minecraft:brown_concrete>,
    <item:minecraft:blue_concrete>,
    <item:minecraft:black_concrete>,
    <item:minecraft:yellow_concrete>,
    <item:minecraft:white_concrete>,
    <item:minecraft:light_gray_concrete>,
    <item:minecraft:purple_concrete>,
    <item:minecraft:pink_concrete>,
    <item:minecraft:orange_concrete>,
    <item:minecraft:magenta_concrete>,
    <item:minecraft:lime_concrete>,
    <item:minecraft:light_blue_concrete>,
    <item:minecraft:green_concrete>,
    <item:minecraft:red_concrete>
] as IIngredient[];

var concreteCollor = [
    "cyan",
    "gray",
    "brown",
    "blue",
    "black",
    "yellow",
    "white",
    "light_grey",
    "purple",
    "pink",
    "orange",
    "magenta",
    "lime",
    "light_blue",
    "green",
    "red"
] as string[];

for y in 0 .. 16 {
    deleteCraftingRecipeByOutput(limeBodiesToChange[y]);
    deleteCraftingRecipeByOutput(limeSuvBodiesToChange[y]);
    deleteCraftingRecipeByOutput(limeSportBodiesToChange[y]);
    createMechanicalCraftingRecipe("mechanical_crafting_transport_" + concreteCollor[y] + "body", limeBodiesToChange[y], [[air, air, concreteTypes[y], concreteTypes[y], concreteTypes[y]], [air, air, iron_rods, iron_rods, glas], [concreteTypes[y], concreteTypes[y], iron_rods, iron_plade, iron_plade], [iron_light_bulb, concreteTypes[y], iron_plade, iron_plade, iron_plade]]);
    createMechanicalCraftingRecipe("mechanical_crafting_suv_" + concreteCollor[y] + "_body", limeSuvBodiesToChange[y], [[air, concreteTypes[y], concreteTypes[y], concreteTypes[y], concreteTypes[y]], [air, glas, iron_rods, iron_rods, iron_rods], [concreteTypes[y], concreteTypes[y], iron_plade, iron_plade, iron_plade], [iron_light_bulb, concreteTypes[y], iron_plade, iron_plade, iron_plade]]);
    createMechanicalCraftingRecipe("mechanical_crafting_sportcar_" + concreteCollor[y] + "_body", limeSportBodiesToChange[y], [[air, glas, iron_rods, air, air], [concreteTypes[y], concreteTypes[y], concreteTypes[y], concreteTypes[y], concreteTypes[y]], [iron_light_bulb, concreteTypes[y], iron_plade, iron_plade, iron_plade]]);
}

var aluminium = <tag:items:forge:ingots/aluminum> as IIngredient;
var steel = <tag:items:forge:ingots/steel> as IIngredient;

createCraftingRecipeShaped("car_wheel", carWheel, [[air, belt, air], [belt, aluminium, belt], [air, belt, air]]);
createMechanicalCraftingRecipe("big_car_wheel", bigCarWheel, [[air, belt, air], [belt, steel, belt], [air, belt, air]]);