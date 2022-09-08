import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.ingredient.IIngredientWithAmount;
import crafttweaker.api.item.IItemStack;

// items which are needed for changings
var ironInsetLight = <item:engineersdecor:iron_inset_light> as IIngredient;
var ironFloorEdgeLight = <item:engineersdecor:iron_floor_edge_light> as IIngredient;
var ironBulbLight = <item:engineersdecor:iron_bulb_light> as IIngredient;
var ironCeilingEdgeLight = <item:engineersdecor:iron_ceiling_edge_light> as IIngredient;

var metalBar = <item:engineersdecor:metal_bar> as IIngredient;
var glassPane = <item:minecraft:glass_pane> as IIngredient;
var glowstone = <item:minecraft:glowstone> as IIngredient;

var air = <item:minecraft:air> as IIngredient;

// array to remove recipes
var itemsToRemove = [
    ironInsetLight,
    ironFloorEdgeLight,
    ironBulbLight,
    ironCeilingEdgeLight
] as IIngredient[];

for item in itemsToRemove {
    deleteCraftingRecipeByOutput(item);
}

// change recipe for lamps
createCraftingRecipeShaped("iron_inset_light", ironInsetLight, [[glassPane, glassPane, glassPane], [metalBar, glowstone, metalBar]]);
createCraftingRecipeShaped("iron_floor_edge_light", ironFloorEdgeLight, [[glassPane, glowstone, glassPane], [metalBar, metalBar, metalBar]]);
createCraftingRecipeShaped("iron_bulb_light", ironBulbLight, [[glassPane, glassPane, glassPane], [glassPane, glowstone, glassPane], [metalBar, metalBar, metalBar]]);
createCraftingRecipeShaped("iron_ceiling_edge_light", ironCeilingEdgeLight, [[metalBar, glowstone, metalBar], [glassPane, glassPane, glassPane]]);