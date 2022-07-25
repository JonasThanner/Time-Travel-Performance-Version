import crafttweaker.api.recipe.IRecipeManager;
import mods.create.MechanicalCrafterManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.ingredient.IIngredient;

function createCraftingRecipe() as void{
    
}

function createMechanicalCraftingRecipe(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    // MechanicalCrafterManager.addRecipe(name as string, output as IItemStack, ingredients as IIngredient[][]) as void
    <recipetype:create:mechanical_crafting>.addRecipe(name, output, recipe);
}

function deleteCraftingRecipeByItem(inputItem as IItemStack) as void{
    craftingTable.removeByInput(inputItem);
}