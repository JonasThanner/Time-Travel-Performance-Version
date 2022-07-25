import crafttweaker.api.recipe.FurnaceRecipeManager;
import crafttweaker.api.recipe.BlastFurnaceRecipeManager;
import crafttweaker.api.item.IItemStack;
import crafttweaker.api.item.Ingredient;

function deleteFurnaceSmelting(inputItem as IItemStack) as void{
    furnace.removeByInput(inputItem);
    blastFurnace.removeByInput(inputItem);
}

val itemToRemoveFromFurnance = [
    <item:immersiveengineering:ore_uranium>,
    <item:immersiveengineering:deepslate_ore_uranium>,
    <item:immersiveengineering:ore_nickel>,
    <item:immersiveengineering:deepslate_ore_nickel>,
    <item:immersiveengineering:ore_lead>,
    <item:immersiveengineering:deepslate_ore_lead>,
    <item:immersiveengineering:ore_aluminum>,
    <item:immersiveengineering:deepslate_ore_aluminum>,
    <item:immersiveengineering:ore_silver>,
    <item:immersiveengineering:deepslate_ore_silver>,
    <item:minecraft:copper_ore>,
    <item:minecraft:deepslate_copper_ore>,
    <item:minecraft:iron_ore>,
    <item:minecraft:deepslate_iron_ore>,
    <item:minecraft:gold_ore>,
    <item:minecraft:nether_gold_ore>,
    <item:minecraft:deepslate_gold_ore>,
    <item:minecraft:emerald_ore>,
    <item:minecraft:deepslate_emerald_ore>,
    <item:minecraft:deepslate_diamond_ore>,
    <item:create:zinc_ore>,
    <item:create:deepslate_zinc_ore>,
    <item:minecraft:raw_iron>,
    <item:minecraft:raw_copper>,
    <item:minecraft:raw_gold>,
    <item:create:raw_zinc>,
    <item:immersiveengineering:raw_lead>,
    <item:immersiveengineering:raw_silver>,
    <item:immersiveengineering:raw_nickel>,
    <item:immersiveengineering:raw_uranium>,
    <item:immersiveengineering:raw_aluminum>,
    <item:immersiveengineering:dust_copper>,
    <item:immersiveengineering:dust_aluminum>,
    <item:immersiveengineering:dust_lead>,
    <item:immersiveengineering:dust_silver>,
    <item:immersiveengineering:dust_nickel>,
    <item:immersiveengineering:dust_uranium>,
    <item:immersiveengineering:dust_constantan>,
    <item:immersiveengineering:dust_iron>,
    <item:immersiveengineering:dust_gold>,
    <item:immersiveengineering:dust_steel>,
    <item:immersiveengineering:dust_electrum>
] as IItemStack[];

for item in itemToRemoveFromFurnance{
    deleteFurnaceSmelting(item);
}