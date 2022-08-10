import crafttweaker.api.ingredient.IIngredient;
import mods.create.CrushingManager;
import mods.create.MixingManager;
import mods.create.PressingManager;

# deleting function
function deleteFurnaceSmelting(inputItem as IIngredient) as void{
    furnace.remove(inputItem);
    blastFurnace.remove(inputItem);
}

val vinteumOre = <item:mna:vinteum_ore> as IIngredient;
val vinteumCoatedIron = <item:mna:vinteum_coated_iron> as IIngredient;
val vinteumIngot = <item:mna:vinteum_ingot> as IIngredient;
val vinteumDust = <item:mna:vinteum_dust> as IIngredient;

val ironIngot = <tag:items:forge:ingots/iron> as IIngredient;

# change recipe Mana and Artifice Furnance
val itemsOfManaAndArtificeFurnance = [
    vinteumDust,
    vinteumIngot
] as IIngredient[];

for item in itemsOfManaAndArtificeFurnance{
    deleteFurnaceSmelting(item);
}

# change recipe Mana and Artifice Crafting Table
val itemsOfManaAndArtificeCrafting = [
    vinteumCoatedIron
] as IIngredient[];

for item in itemsOfManaAndArtificeCrafting{
    deleteCraftingRecipeByOutput(item);
}

# adding recipe for mixing
<recipetype:create:mixing>.addRecipe("mixed_vinteum_ceated_iron", <constant:create:heat_condition:heated>, [<item:mna:vinteum_coated_iron>], [vinteumDust * 2, ironIngot], null, 200);

# adding recipe for crushing
<recipetype:create:crushing>.addRecipe("crushed_vinteumore_dust", [<item:mna:vinteum_dust>], <item:mna:vinteum_ore>, 200);

# adding recipe for pressing
<recipetype:create:pressing>.addRecipe("pressed_vinteum_ceated_ingot", [<item:mna:vinteum_ingot>], <item:mna:vinteum_coated_iron>, 200);