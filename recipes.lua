-- Known Crafting Recipes

-- format: local recipe_name = {"item_being_crafted", "key_id_item", "base_item", "component_1", "component_2", ...}

-- NOTE: The key_id_item is the item that is used to identify the item being crafted, it is required for the turtle to know what to craft.

local recipes = {}

-- Cogwheel
recipes.cogwheel = {"create:cogwheel", "chisel:antiblock/orange", "create:andesite_alloy", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button"}

-- Large Cogwheel
recipes.large_cogwheel = {"create:large_cogwheel", "chisel:antiblock/magenta", "create:andesite_alloy", "minecraft:acacia_planks", "tconstruct:large_plate", "minecraft:acacia_planks", "tconstruct:large_plate", "minecraft:acacia_planks", "tconstruct:large_plate", "minecraft:acacia_planks", "tconstruct:large_plate"}

-- Precision Mechanism
recipes.precision_mechanism = {"create:precision_mechanism", "chisel:antiblock/white", "emendatusenigmatica:gold_plate", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget"}

-- LV Capacitor
recipes.lv_capacitor = {"immersiveengineering:capacitor_lv", "chisel:antiblock/gray", "createaddition:capacitor", "immersiveengineering:treated_wood_horizontal", "emendatusenigmatica:copper_rod", "minecraft:redstone_block", "emendatusenigmatica:copper_rod", "tconstruct:large_plate"}

-- MV Capacitor
recipes.mv_capacitor = {"immersiveengineering:capacitor_mv", "chisel:antiblock/brown", "immersiveengineering:capacitor_lv", "immersiveengineering:treated_wood_horizontal", "emendatusenigmatica:electrum_rod", "minecraft:redstone_block", "emendatusenigmatica:electrum_rod", "tconstruct:large_plate"}

-- HV Capacitor
recipes.hv_capacitor = {"immersiveengineering:capacitor_hv", "chisel:antiblock/black", "immersiveengineering:capacitor_mv", "immersiveengineering:treated_wood_horizontal", "emendatusenigmatica:aluminum_rod", "minecraft:redstone_block", "emendatusenigmatica:aluminum_rod", "tconstruct:large_plate"}

-- Redstone Engineering Block
recipes.red_engineering_block = {"immersiveengineering:rs_engineering", "chisel:antiblock/red", "immersiveengineering:sheetmetal_iron", "immersiveengineering:component_iron", "twilightforest:carminite", "immersiveengineering:wirecoil_redstone", "twilightforest:carminite", "immersiveengineering:component_iron", "immersiveengineering:component_iron", "twilightforest:carminite", "immersiveengineering:wirecoil_redstone", "twilightforest:carminite", "immersiveengineering:component_iron"}

-- Heavy Engineering Block
recipes.heavy_engineering_block = {"immersiveengineering:heavy_engineering", "chisel:antiblock/purple", "immersiveengineering:sheetmetal_aluminum", "immersiveengineering:component_steel", "emendatusenigmatica:electrum_dust", "create:precision_mechanism", "emendatusenigmatica:electrum_dust", "immersiveengineering:component_steel", "immersiveengineering:component_steel", "emendatusenigmatica:electrum_dust", "create:precision_mechanism", "emendatusenigmatica:electrum_dust", "immersiveengineering:component_steel"}

-- Light Engineering Block
recipes.light_engineering_block = {"immersiveengineering:light_engineering", "chisel:antiblock/blue", "immersiveengineering:sheetmetal_steel", "immersiveengineering:component_iron", "atum:nebu_ingot", "create:precision_mechanism", "atum:nebu_ingot", "immersiveengineering:component_iron", "immersiveengineering:component_iron", "atum:nebu_ingot", "create:precision_mechanism", "atum:nebu_ingot", "immersiveengineering:component_iron"}


return recipes