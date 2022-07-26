import crafttweaker.api.recipe.IRecipeManager;
import mods.create.MechanicalCrafterManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.recipe.CraftingTableRecipeManager;

function deleteCraftingRecipeByItem(inputItem as IItemStack) as void{
    craftingTable.removeByInput(inputItem);
}

function deleteCraftingRecipeByOutput(item as IIngredient) as void{
    craftingTable.remove(item);
}

function createMechanicalCraftingRecipe(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_" + name, output, recipe);
}

function createCraftingRecipeShaped(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.addShaped("crafting_table_shaped_"+ name, output, recipe, null);
    createMechanicalCraftingRecipe(name, output, recipe);
}