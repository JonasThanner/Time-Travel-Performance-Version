import mods.jei.component.JeiIngredient;
import mods.jei.JEI;

// Try to hide items
val itemtohide = [
    <item:car:bio_diesel_bucket>,
    <fluid:car:bio_diesel_flowing>,
    <fluid:car:bio_diesel>
] as JeiIngredient[];

for item in itemtohide{
    JEI.hideIngredient(item);
}

// remove ultimate car mod diesel 
var carmodBioDiesel = <fluid:car:bio_diesel> as JeiIngredient;
var carmodBioDieselFlowing = <fluid:car:bio_diesel_flowing> as JeiIngredient;

JEI.hideIngredient(carmodBioDiesel) as void;
JEI.hideIngredient(carmodBioDieselFlowing) as void;