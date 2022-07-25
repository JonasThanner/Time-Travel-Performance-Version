import crafttweaker.api.recipe.type.SmeltingRecipe;
import crafttweaker.api.item.IItemstack;
import crafttweaker.api.item.IIngredient;
import crafttweaker.api.item.MCTag;

println("DEBUGING!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");

function deleteFurnaceSmelting(imputItem as IIngredient) as void{
    <recipetype:minecraft:smelting>.removeByInput(inputItem);
}

var ore_uranium = <immersiveengineering:ore_uranium> as IItemstack;

val itemToRemoveFromSmelting = [
    ore_uranium,
] as IItemstack[];

for item in itemToRemoveFromSmelting{
    deleteFurnaceSmelting(item);
}