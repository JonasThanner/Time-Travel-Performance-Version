import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.IRecipeManager;
import mods.create.MechanicalCrafterManager;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

// function to delete recipe by its input
function deleteCraftingRecipeByItem(inputItem as IItemStack) as void{
    craftingTable.removeByInput(inputItem);
}

// function to delete recipe by its output
function deleteCraftingRecipeByOutput(item as IIngredient) as void{
    craftingTable.remove(item);
}

// function to create mechanical crafting recipe
function createMechanicalCraftingRecipe(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_" + name, output, recipe);
}

// function to create shaped recipe
function createCraftingRecipeShaped(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.addShaped("crafting_table_shaped_"+ name, output, recipe, null);
}

// function for remove item from crafting table and hide it in JEI
function removeItem(items as IIngredient) as void{
    for item in items as JeiIngredient[]{
        JEI.hideIngredient(item);
    }
    craftingTable.remove(items);
}

// funktion to delete and create new recipe
function deleteRecipeAndCreateShaped(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.remove(output);
    craftingTable.addShaped("crafting_table_shaped_"+ name, output, recipe, null);
}

// function to delete and create new mechanical recipe
function deleteRecipeAndCreateMechanicalCrafting(name as string, output as IItemStack, recipe as IIngredient[][]) as void{
    craftingTable.remove(output);
    <recipetype:create:mechanical_crafting>.addRecipe("mechanical_crafting_" + name, output, recipe);
}