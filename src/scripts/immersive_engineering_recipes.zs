import crafttweaker.api.ingredient.IIngredient;

// items to edit recipe
var removelist = [
    <item:immersiveengineering:coil_hv>,
    <item:immersiveengineering:coil_mv>,
    <item:immersiveengineering:coil_lv>,
    <item:immersiveengineering:dynamo>,
    <item:immersiveengineering:cokebrick>,
    <item:immersiveengineering:blastbrick>,
    <item:immersiveengineering:watermill>,
    <item:immersiveengineering:windmill>,
    <item:immersiveengineering:generator>,
    <item:immersiveengineering:radiator>,
    <item:immersiveengineering:heavy_engineering>,
    <item:immersiveengineering:transformer>,
    <item:immersiveengineering:transformer_hv>
    ] as IIngredient[];

for item in removelist{
    craftingTable.remove(item);
}


// High-Voltage Coil Block
<recipetype:create:mechanical_crafting>.addRecipe("crafting/coil_hv", <item:immersiveengineering:coil_hv>, [
    [<item:immersiveengineering:wirecoil_steel>,	<item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:wirecoil_steel>],
    [<item:immersiveengineering:wirecoil_steel>,	<item:create:shaft>,	                    <item:immersiveengineering:wirecoil_steel>],
    [<item:immersiveengineering:wirecoil_steel>,	<item:immersiveengineering:wirecoil_steel>, <item:immersiveengineering:wirecoil_steel>]
]);

// Electrum Coil Block
<recipetype:create:mechanical_crafting>.addRecipe("crafting/coil_mv", <item:immersiveengineering:coil_mv>, [
    [<item:immersiveengineering:wirecoil_electrum_ins>,	<item:immersiveengineering:wirecoil_electrum_ins>,  <item:immersiveengineering:wirecoil_electrum_ins>],
    [<item:immersiveengineering:wirecoil_electrum_ins>,	<item:create:shaft>,	                            <item:immersiveengineering:wirecoil_electrum_ins>],
    [<item:immersiveengineering:wirecoil_electrum_ins>, <item:immersiveengineering:wirecoil_electrum_ins>,  <item:immersiveengineering:wirecoil_electrum_ins>]
]);

// Copper Coil Block
<recipetype:create:mechanical_crafting>.addRecipe("crafting/coil_lv", <item:immersiveengineering:coil_lv>, [
    [<item:immersiveengineering:wirecoil_copper_ins>,	<item:immersiveengineering:wirecoil_copper_ins>,    <item:immersiveengineering:wirecoil_copper_ins>],
    [<item:immersiveengineering:wirecoil_copper_ins>,	<item:create:shaft>,	                            <item:immersiveengineering:wirecoil_copper_ins>],
    [<item:immersiveengineering:wirecoil_copper_ins>,   <item:immersiveengineering:wirecoil_copper_ins>,    <item:immersiveengineering:wirecoil_copper_ins>]
]);

// Kinetic Dynamo
<recipetype:create:mechanical_crafting>.addRecipe("crafting/dynamo", <item:immersiveengineering:dynamo>, [
    [<tag:items:forge:plates/iron>,         <tag:items:forge:wires/copper>,     <tag:items:forge:plates/iron>],
    [<item:immersiveengineering:coil_lv>,   <item:createaddition:alternator>,   <item:immersiveengineering:coil_lv>],
    [<tag:items:forge:plates/iron>,         <tag:items:forge:wires/copper>,     <tag:items:forge:plates/iron>]
]);

// Coke Brick
<recipetype:create:mechanical_crafting>.addRecipe("crafting/cokebrick", <item:immersiveengineering:cokebrick>, [
    [<item:immersive_weathering:deepslate_brick>,   <item:immersive_weathering:deepslate_brick>,    <item:immersive_weathering:deepslate_brick>],
    [<item:immersive_weathering:deepslate_brick>,   <item:tconstruct:grout>,                        <item:immersive_weathering:deepslate_brick>],
    [<item:immersive_weathering:deepslate_brick>,   <item:immersive_weathering:deepslate_brick>,    <item:immersive_weathering:deepslate_brick>]
]);

// Blast Brick
<recipetype:create:mechanical_crafting>.addRecipe("crafting/blastbrick", <item:immersiveengineering:blastbrick>, [
    [<tag:items:forge:ingots/nether_brick>, <tag:items:forge:ingots/nether_brick>,  <tag:items:forge:ingots/nether_brick>],
    [<tag:items:forge:ingots/nether_brick>, <item:minecraft:magma_cream>,           <tag:items:forge:ingots/nether_brick>],
    [<tag:items:forge:ingots/nether_brick>, <tag:items:forge:ingots/nether_brick>,  <tag:items:forge:ingots/nether_brick>]
]);

// Windmill
<recipetype:create:mechanical_crafting>.addRecipe("crafting/windmill", <item:immersiveengineering:windmill>, [
    [<item:immersiveengineering:windmill_blade>,    <item:immersiveengineering:windmill_blade>, <item:immersiveengineering:windmill_blade>],
    [<item:immersiveengineering:windmill_blade>,    <item:create:shaft>,                        <item:immersiveengineering:windmill_blade>],
    [<item:immersiveengineering:windmill_blade>,    <item:immersiveengineering:windmill_blade>, <item:immersiveengineering:windmill_blade>]
]);

// Water Wheel
<recipetype:create:mechanical_crafting>.addRecipe("crafting/watermill", <item:immersiveengineering:watermill>, [
    [<item:minecraft:air>,                              <item:minecraft:air>,                           <item:immersiveengineering:waterwheel_segment>, <item:minecraft:air>,                           <item:minecraft:air>],
    [<item:minecraft:air>,                              <item:immersiveengineering:waterwheel_segment>, <item:immersiveengineering:stick_treated>,      <item:immersiveengineering:waterwheel_segment>, <item:minecraft:air>],
    [<item:immersiveengineering:waterwheel_segment>,    <item:immersiveengineering:stick_treated>,      <tag:items:forge:ingots/steel>,                 <item:immersiveengineering:stick_treated>,      <item:immersiveengineering:waterwheel_segment>],
    [<item:minecraft:air>,                              <item:immersiveengineering:waterwheel_segment>, <item:immersiveengineering:stick_treated>,      <item:immersiveengineering:waterwheel_segment>, <item:minecraft:air>],
    [<item:minecraft:air>,                              <item:minecraft:air>,                           <item:immersiveengineering:waterwheel_segment>, <item:minecraft:air>,                           <item:minecraft:air>]
]);

// Generator Block
<recipetype:create:mechanical_crafting>.addRecipe("crafting/generator", <item:immersiveengineering:generator>, [
    [<item:minecraft:air>,                  <tag:items:forge:sheetmetals/steel>,   <tag:items:forge:plates/electrum>,      <tag:items:forge:sheetmetals/steel>,   <item:minecraft:air>],
    [<tag:items:forge:sheetmetals/steel>,  <tag:items:forge:wires/copper>,         <item:createaddition:redstone_relay>,   <tag:items:forge:wires/copper>,         <tag:items:forge:sheetmetals/steel>],
    [<tag:items:forge:plates/electrum>,     <item:create:metal_bracket>,            <item:createaddition:alternator>,       <item:create:metal_bracket>,            <tag:items:forge:plates/electrum>],
    [<tag:items:forge:sheetmetals/steel>,  <tag:items:forge:wires/copper>,         <item:createaddition:capacitor>,        <tag:items:forge:wires/copper>,         <tag:items:forge:sheetmetals/steel>],
    [<item:minecraft:air>,                  <tag:items:forge:sheetmetals/steel>,   <tag:items:forge:plates/electrum>,      <tag:items:forge:sheetmetals/steel>,   <item:minecraft:air>]
]);

// Radiator Block
<recipetype:create:mechanical_crafting>.addRecipe("crafting/radiator", <item:immersiveengineering:radiator>, [
    [<item:minecraft:air>,                  <tag:items:forge:sheetmetals/steel>,    <tag:items:forge:plates/copper>,    <tag:items:forge:sheetmetals/steel>,    <item:minecraft:air>],
    [<tag:items:forge:sheetmetals/steel>,   <item:create:fluid_pipe>,               <item:create:encased_fan>,          <item:create:fluid_pipe>,               <tag:items:forge:sheetmetals/steel>],
    [<tag:items:forge:plates/copper>,       <item:create:encased_fan>,              <item:minecraft:water_bucket>,      <item:create:encased_fan>,              <tag:items:forge:plates/copper>],
    [<tag:items:forge:sheetmetals/steel>,   <item:create:fluid_pipe>,               <item:create:encased_fan>,          <item:create:fluid_pipe>,               <tag:items:forge:sheetmetals/steel>],
    [<item:minecraft:air>,                  <tag:items:forge:sheetmetals/steel>,    <tag:items:forge:plates/copper>,    <tag:items:forge:sheetmetals/steel>,    <item:minecraft:air>]
]);

// Heavy Engineering Block
<recipetype:create:mechanical_crafting>.addRecipe("crafting/heavy_engineering", <item:immersiveengineering:heavy_engineering>, [
    [<item:minecraft:air>,                          <tag:items:forge:sheetmetals/steel>,    <item:immersiveengineering:component_steel>,    <tag:items:forge:sheetmetals/steel>,    <item:minecraft:air>],
    [<tag:items:forge:sheetmetals/steel>,           <item:create:cogwheel>,                 <item:create:vertical_gearbox>,                 <item:create:cogwheel>,                 <tag:items:forge:sheetmetals/steel>],
    [<item:immersiveengineering:component_steel>,   <item:create:gearbox>,                  <item:create:large_cogwheel>,                   <item:create:sequenced_gearshift>,      <item:immersiveengineering:component_steel>],
    [<tag:items:forge:sheetmetals/steel>,           <item:create:cogwheel>,                 <item:create:belt_connector>,                   <item:create:cogwheel>,                 <tag:items:forge:sheetmetals/steel>],
    [<item:minecraft:air>,                          <tag:items:forge:sheetmetals/steel>,    <item:immersiveengineering:component_steel>,    <tag:items:forge:sheetmetals/steel>,    <item:minecraft:air>]
]);

// Transformer
<recipetype:create:mechanical_crafting>.addRecipe("crafting/transformer", <item:immersiveengineering:transformer>, [
    [<item:immersiveengineering:connector_mv>,  <item:minecraft:air>,                           <item:immersiveengineering:connector_lv>],
    [<tag:items:forge:sheetmetals/steel>,       <tag:items:forge:sheetmetals/steel>,            <tag:items:forge:sheetmetals/steel>],
    [<item:immersiveengineering:coil_mv>,       <item:immersiveengineering:creosote_bucket>,    <item:immersiveengineering:coil_lv>],
    [<tag:items:forge:ingots/iron>,             <tag:items:forge:ingots/iron>,                  <tag:items:forge:ingots/iron>],
    [<tag:items:forge:sheetmetals/steel>,       <tag:items:forge:sheetmetals/steel>,            <tag:items:forge:sheetmetals/steel>,]
]);

// HV Transformer
<recipetype:create:mechanical_crafting>.addRecipe("crafting/transformer_hv", <item:immersiveengineering:transformer_hv>, [
    [<item:immersiveengineering:connector_hv>,  <item:minecraft:air>,                           <item:immersiveengineering:connector_lv>],
    [<tag:items:forge:sheetmetals/steel>,       <tag:items:forge:sheetmetals/steel>,            <tag:items:forge:sheetmetals/steel>],
    [<item:immersiveengineering:coil_hv>,       <item:immersiveengineering:plantoil_bucket>,    <item:immersiveengineering:coil_lv>],
    [<tag:items:forge:ingots/electrum>,         <tag:items:forge:ingots/electrum>,              <tag:items:forge:ingots/electrum>],
    [<tag:items:forge:sheetmetals/steel>,       <tag:items:forge:sheetmetals/steel>,            <tag:items:forge:sheetmetals/steel>]
]);

// Standard 3x3
/*
<recipetype:create:mechanical_crafting>.addRecipe("crafting/name", output, [
    [topleft, top, topright],
    [left, center, right],
    [bottomleft, bottom, bottomright]
]);
*/

// Star
/*
<recipetype:create:mechanical_crafting>.addRecipe("crafting/name", output, [
    [<item:minecraft:air>, <item:minecraft:air>, fartop, <item:minecraft:air>, <item:minecraft:air>],
    [<item:minecraft:air>, topleft, top, topright, <item:minecraft:air>],
    [farleft, left, center, right, farright],
    [<item:minecraft:air>, bottomleft, bottom, bottomright, <item:minecraft:air>],
    [<item:minecraft:air>, <item:minecraft:air>, farbottom, <item:minecraft:air>, <item:minecraft:air>]
]);
*/

// Wheal
/*
<recipetype:create:mechanical_crafting>.addRecipe("crafting/name", output, [
    [<item:minecraft:air>, toptopleft, fartop, toptopright, <item:minecraft:air>],
    [lefttopleft, topleft, top, topright, righttopright],
    [farleft, left, center, right, farright],
    [leftbottomleft, bottomleft, bottom, bottomright, rightbottomright],
    [<item:minecraft:air>, bottombottomleft, farbottom, bottombottomright, <item:minecraft:air>]
]);
*/

// Transformator
/*
<recipetype:create:mechanical_crafting>.addRecipe("crafting/name", output, [
    [toptopleft, <item:minecraft:air>, toptopright],
    [topleft, top, topright],
    [left, center, right],
    [bottomleft, bottom, bottomright],
    [bottombottomleft, farbottom, bottombottomright]
]);
*/

// made immersiveengineering recipes only use water as water instead of chocolate, honey, etc.
craftingTable.removeByName(["immersiveengineering:crafting/paper_from_sawdust", "immersiveengineering:crafting/concrete"]);
craftingTable.addShapeless("crafting/paper_from_sawdust", <item:minecraft:paper> * 2, [<tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>, <tag:items:forge:dusts/wood>,<item:minecraft:water_bucket>]);
craftingTable.addShaped("crafting/concrete", <item:immersiveengineering:concrete> * 8,[
    [<tag:items:forge:sand>,    <tag:items:forge:clay>,         <tag:items:forge:sand>],
    [<tag:items:forge:gravel>,  <item:minecraft:water_bucket>,  <tag:items:forge:gravel>],
    [<tag:items:forge:sand>,    <tag:items:forge:clay>,         <tag:items:forge:sand>]
]);