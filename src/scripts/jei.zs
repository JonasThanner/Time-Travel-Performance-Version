import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

val itemtohide = [
    <item:car:bio_diesel_bucket>,
    <fluid:car:bio_diesel_flowing>,
    <fluid:car:bio_diesel>
] as JeiIngredient[];

for item in itemtohide{
    JEI.hideIngredient(item);
}