import crafttweaker.api.ingredient.IIngredient;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.recipe.CraftingTableRecipeManager;
import crafttweaker.api.recipe.IRecipeManager;
import mods.create.MechanicalCrafterManager;
import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

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

function removeItem(items as IIngredient) as void{
    for item in items as JeiIngredient[]{
        JEI.hideIngredient(item);
    }
    craftingTable.remove(items);
}