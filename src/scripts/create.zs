import crafttweaker.api.ingredient.IIngredient;
import mods.create.MechanicalCrafterManager;
import mods.create.CrushingManager;

val air = <item:minecraft:air> as IIngredient;
val spout = <item:create:spout> as IIngredient;

val driedKelp = <item:minecraft:dried_kelp> as IIngredient;
val copperCasing = <item:create:copper_casing> as IIngredient;
val focusedNozzle = <item:immersiveengineering:toolupgrade_chemthrower_focus> as IIngredient;

val dustSalpeter = <item:immersiveengineering:dust_saltpeter> as IIngredient;

val sandstone = <tag:items:forge:sandstone/colorless> as IIngredient;
val redSandstone = <tag:items:forge:sandstone/red> as IIngredient;

val sand = <item:minecraft:sand> as IIngredient; //<tag:items:forge:sand/colorless> as IIngredient;
val redSand = <item:minecraft:red_sand> as IIngredient; //<tag:items:forge:sand/red> as IIngredient;

val itemsToChangeCreate = [
    <item:create:spout>
] as IIngredient[];

for item in itemsToChangeCreate {
    deleteCraftingRecipeByOutput(item);
    <recipetype:create:mechanical_crafting>.remove(item);
}

createCraftingRecipeShaped("craftingtable_spout", spout, [[air, copperCasing, air], [air, driedKelp, air], [air, focusedNozzle, air]]);
<recipetype:create:crushing>.addRecipe("crushed_sandstone", [<item:minecraft:sand>, (<item:immersiveengineering:dust_saltpeter>) % 50], sandstone, 100);
<recipetype:create:crushing>.addRecipe("crushed_red_sandstone", [<item:minecraft:red_sand>, (<item:immersiveengineering:dust_saltpeter>) % 50], redSandstone, 100);