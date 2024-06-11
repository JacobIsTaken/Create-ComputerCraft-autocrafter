-- Crafting Schematics
-- format: name = {"key_id_item", "base_item", "component_1", "component_2", ...}
-- Precision Mechanism ID
local precision_mechanism = {"chisel:antiblock/white", "emendatusenigmatica:gold_plate", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget"}
-- Cogwheel
local cogwheel = {"chisel:antiblock/orange", "create:andesite_alloy", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button"}
-- Large Cogwheel
local large_cogwheel = {"chisel:antiblock/magenta", "create:andesite_alloy", "minecraft:acacia_planks", "minecraft:acacia_button", "minecraft:acacia_planks", "minecraft:acacia_button", "minecraft:acacia_planks", "minecraft:acacia_button", "minecraft:acacia_planks", "minecraft:acacia_button"}

local schematics = {
    precision_mechanism, 
    cogwheel, 
    large_cogwheel
}

-- Crafting Functions
local function find_item_slot(item_name)
    for slot = 1, 16 do
        turtle.select(slot)
        if (turtle.getItemDetail(slot).name == item_name) then
            return slot
        end
    end
end

local function craft(name)
    -- drop key id item
    os.sleep(0.5)
    turtle.drop(find_item_slot(name[1]))
    -- drop base item
    turtle.turnRight()
    os.sleep(0.5)
    turtle.dropDown(find_item_slot(name[2]))
    -- drop components
    for i = 3, #name do
        os.sleep(1)
        turtle.drop(find_item_slot(name[i]))
    end
    -- go back to normal position
    turtle.turnRight()
end

-- Main Loop
-- Periodically check if key items appear in inventory

while true do
    local item_exists = turtle.getItemDetail(1)
    if (item_exists) then
        
        -- Check inventory for key item
        for item = 1, 16 do
            local item_detail = turtle.getItemDetail(item)

            if (item_detail.name == "chisel:antiblock/white") then
                craft(precision_mechanism)    
            elseif (item_detail.name == "chisel:antiblock/orange") then
                craft(cogwheel)    
            elseif (item_detail.name == "chisel:antiblock/magenta") then
                craft(large_cogwheel)    
            else
                printError("Unknown item found in inventory: ".. item_detail.name)    
            end    
        end    
    end

    -- No item found
    os.sleep(5)
end



