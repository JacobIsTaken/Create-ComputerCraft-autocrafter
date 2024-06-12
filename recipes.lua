-- Known Crafting Recipes

-- format: local recipe_name = {"item_being_crafted", "key_id_item", "base_item", "component_1", "component_2", ...}

-- NOTE: The key_id_item is the item that is used to identify the item being crafted, it is required for the turtle to know what to craft.

-- Precision Mechanism
local precision_mechanism = {"create:precision_mechanism", "chisel:antiblock/white", "emendatusenigmatica:gold_plate", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget"}

-- Cogwheel
local cogwheel = {"create:cogwheel", "chisel:antiblock/orange", "create:andesite_alloy", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button"}

-- Large Cogwheel
local large_cogwheel = {"create:large_cogwheel", "chisel:antiblock/magenta", "create:andesite_alloy", "minecraft:acacia_planks", "tconstruct:large_plate", "minecraft:acacia_planks", "tconstruct:large_plate", "minecraft:acacia_planks", "tconstruct:large_plate", "minecraft:acacia_planks", "tconstruct:large_plate"}

local recipes = {
    precision_mechanism, 
    cogwheel, 
    large_cogwheel
}

return recipes