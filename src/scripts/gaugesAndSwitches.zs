import crafttweaker.api.ingredient.IIngredient;

# items for recipes removing
var industrial_estop = <item:rsgauges:industrial_estop_switch> as IIngredient;
var industrial_small_lever = <item:rsgauges:industrial_small_lever> as IIngredient;
var industrial_machine_switch = <item:rsgauges:industrial_machine_switch> as IIngredient;
var industrial_lever = <item:rsgauges:industrial_lever> as IIngredient;
var industrial_hopper_switch = <item:rsgauges:industrial_hopper_switch> as IIngredient;
var industrial_rotary_machine_switch = <item:rsgauges:industrial_rotary_machine_switch> as IIngredient;
var industrial_rotary_lever = <item:rsgauges:industrial_rotary_lever> as IIngredient;

var industrial_fenced_button = <item:rsgauges:industrial_fenced_button> as IIngredient;
var industrial_pull_handle = <item:rsgauges:industrial_pull_handle> as IIngredient;
var industrial_foot_button = <item:rsgauges:industrial_foot_button> as IIngredient;
var industrial_button = <item:rsgauges:industrial_button> as IIngredient;
var industrial_double_pole_button = <item:rsgauges:industrial_double_pole_button> as IIngredient;

var industrial_tube_gauge = <item:rsgauges:industrial_tube_gauge> as IIngredient;
var industrial_analog_horizontal_gauge = <item:rsgauges:industrial_analog_horizontal_gauge> as IIngredient;
var industrial_analog_angular_gauge = <item:rsgauges:industrial_analog_angular_gauge> as IIngredient;
var industrial_vertical_bar_gauge = <item:rsgauges:industrial_vertical_bar_gauge> as IIngredient;
var industrial_small_digital_gauge = <item:rsgauges:industrial_small_digital_gauge> as IIngredient;

# items for creating new recipe
var red_concrete = <item:minecraft:red_concrete> as IIngredient;
var iron_nugget = <item:minecraft:iron_nugget> as IIngredient;
var redstone = <item:minecraft:redstone> as IIngredient;
var iron_plate = <tag:items:forge:plates/iron> as IIngredient;
var glowstone = <tag:items:forge:dusts/glowstone> as IIngredient;
var lever = <item:minecraft:lever> as IIngredient;
var redstone_torch = <item:minecraft:redstone_torch> as IIngredient;
var button = <tag:items:minecraft:buttons> as IIngredient;

var green_dye = <tag:items:forge:dyes/green> as IIngredient;
var red_dye = <item:minecraft:red_dye> as IIngredient;

var glas = <tag:items:forge:glass_panes/colorless> as IIngredient;
var redstone_acid_bucket = <item:immersiveengineering:redstone_acid_bucket> as IIngredient;
var comparator = <item:minecraft:comparator> as IIngredient;
var industrial_comparator_switch = <item:rsgauges:industrial_comparator_switch> as IIngredient;

# recipe deleting array
var recipeToDelete = [
    industrial_estop,
    industrial_small_lever,
    industrial_machine_switch,
    industrial_lever,
    industrial_hopper_switch,
    industrial_rotary_machine_switch,
    industrial_rotary_lever,

    industrial_foot_button,
    industrial_fenced_button,
    industrial_pull_handle,
    industrial_double_pole_button,

    industrial_tube_gauge,
    industrial_analog_horizontal_gauge,
    industrial_vertical_bar_gauge,
    industrial_small_digital_gauge
] as IIngredient[];

var recipeToDeleteByInput = [
    industrial_pull_handle,
    industrial_analog_horizontal_gauge
] as IIngredient[];

for item in recipeToDelete{
    deleteCraftingRecipeByOutput(item);
}

for items in recipeToDeleteByInput{
    deleteCraftingRecipeByItem(items);
}

# new recipes
createCraftingRecipeShaped("industrial_estop", industrial_estop, [[iron_nugget, redstone], [redstone, red_concrete]]);
createCraftingRecipeShaped("industrial_machine_switch", industrial_machine_switch, [[iron_plate, glowstone], [redstone, glowstone]]);
createCraftingRecipeShaped("industrial_rotary_machine_switch", industrial_rotary_machine_switch, [[iron_plate, redstone], [redstone_torch, lever]]);
createCraftingRecipeShaped("industrial_rotary_lever", industrial_rotary_lever, [[redstone, lever], [iron_plate, redstone]]);
createCraftingRecipeShaped("industrial_hopper_switch", industrial_hopper_switch, [[iron_plate, iron_plate], [redstone, button]]);
createCraftingRecipeShaped("industrial_lever", industrial_lever, [[iron_nugget, iron_nugget], [redstone, lever]]);
createCraftingRecipeShaped("industrial_small_lever", industrial_small_lever, [[iron_nugget, redstone], [lever, lever]]);

createCraftingRecipeShaped("industrial_fenced_button", industrial_fenced_button, [[redstone, red_dye], [iron_plate, green_dye]]);
createCraftingRecipeShaped("industrial_pull_handle", industrial_pull_handle, [[button, iron_nugget], [redstone, iron_plate]]);
createCraftingRecipeShaped("industrial_foot_button", industrial_foot_button, [[redstone, button], [iron_plate, lever]]);
createCraftingRecipeShaped("industrial_double_pole_button", industrial_double_pole_button, [[redstone, button], [iron_plate, redstone]]);

createCraftingRecipeShaped("industrial_tube_gauge", industrial_tube_gauge, [[iron_plate, glas], [redstone_acid_bucket, glas]]);
createCraftingRecipeShaped("industrial_analog_horizontal_gauge", industrial_analog_horizontal_gauge, [[redstone, comparator]]);
createCraftingRecipeShaped("industrial_vertical_bar_gauge", industrial_vertical_bar_gauge, [[comparator, glas], [redstone, glas]]);
createCraftingRecipeShaped("industrial_small_digital_gauge", industrial_small_digital_gauge, [[redstone, iron_nugget], [industrial_comparator_switch, glas]]);

# Missing: LED redstone endicators, lever types, trapdoor types, fancy Button and lever