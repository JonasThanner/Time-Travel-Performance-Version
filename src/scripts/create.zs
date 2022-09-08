import crafttweaker.api.ingredient.IIngredient;
import mods.create.MechanicalCrafterManager;
import mods.create.CrushingManager;

// items which are needed for changings or items to change recipe
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

val sail = <item:create:white_sail> as IIngredient;
val frame = <item:create:sail_frame> as IIngredient;

val stick = <item:minecraft:stick> as IIngredient;
val andesiteAlloy = <item:create:andesite_alloy> as IIngredient;
val toughFabric = <item:immersiveengineering:hemp_fabric> as IIngredient;

// arrays for deleting recipes
val itemsToChangeCreate = [
    spout,
    frame,
    sail
] as IIngredient[];

for item in itemsToChangeCreate {
    deleteCraftingRecipeByOutput(item);
    <recipetype:create:mechanical_crafting>.remove(item);
}

// changing recipe for spout
<recipetype:create:mechanical_crafting>.addRecipe("mechanicalcrafting_spout", spout, [[copperCasing], [driedKelp], [focusedNozzle]]);
craftingTable.addShaped("craftingtable_spout", spout, [[air, copperCasing, air], [air, driedKelp, air], [air, focusedNozzle, air]]);

// changing recipe for sandstone and red sandstone in create crusher
<recipetype:create:crushing>.addRecipe("crushed_sandstone", [<item:minecraft:sand>, (<item:immersiveengineering:dust_saltpeter>) % 50], sandstone, 100);
<recipetype:create:crushing>.addRecipe("crushed_red_sandstone", [<item:minecraft:red_sand>, (<item:immersiveengineering:dust_saltpeter>) % 50], redSandstone, 100);

// changing recipe for frames
createCraftingRecipeShaped("craftingtable_sailframe", frame, [[stick, stick, stick], [stick, andesiteAlloy, stick], [stick, stick, stick]]);

// changing recipe for sail
// will remove the possibility to get it from fetcher and blacksmith
createCraftingRecipeShaped("craftingtable_sail", sail, [[air, air, air], [frame, toughFabric, air], [air, air, air]]);

// adding deepslate to crushing wheel
var cobbledDeepslate = <item:minecraft:cobbled_deepslate> as IIngredient;
var gravel = <item:minecraft:gravel> as IIngredient;

<recipetype:create:crushing>.addRecipe("crushed_deepslate", [<item:minecraft:gravel>], cobbledDeepslate, 300);