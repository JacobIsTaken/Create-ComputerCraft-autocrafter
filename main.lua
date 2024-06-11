-- BUILD 1941_11_06_2024

-- Crafting Schematics
-- format: variable_name = {"item_being_crafted", "key_id_item", "base_item", "component_1", "component_2", ...}
-- Precision Mechanism ID
local precision_mechanism = {"create:precision_mechanism", "chisel:antiblock/white", "emendatusenigmatica:gold_plate", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget", "create:cogwheel", "create:large_cogwheel", "minecraft:iron_nugget"}
-- Cogwheel
local cogwheel = {"create:cogwheel", "chisel:antiblock/orange", "create:andesite_alloy", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button", "tconstruct:large_plate", "minecraft:acacia_button"}
-- Large Cogwheel
local large_cogwheel = {"create:large_cogwheel", "chisel:antiblock/magenta", "create:andesite_alloy", "minecraft:acacia_planks", "minecraft:acacia_button", "minecraft:acacia_planks", "minecraft:acacia_button", "minecraft:acacia_planks", "minecraft:acacia_button", "minecraft:acacia_planks", "minecraft:acacia_button"}

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
    print("Crafting ".. name[1])
    -- drop key id item
    os.sleep(0.5)
    turtle.drop(find_item_slot(name[2]))
    -- drop base item
    turtle.turnRight()
    os.sleep(0.5)
    turtle.dropDown(find_item_slot(name[3]))
    -- drop components
    for i = 4, #name do
        os.sleep(1)
        turtle.drop(find_item_slot(name[i]))
    end
    -- go back to normal position
    turtle.turnRight()
end

-- Main Loop
-- Periodically check if key items appear in inventory

while true do
    for item = 1, 16 do
        
        -- Checks every slot for key item
        turtle.select(item)
        if (turtle.getItemDetail(item)~= nil) then
            local item_details = turtle.getItemDetail(item)

            -- Checks if key item is in the list of schematics
            for i = 1, #schematics do
                if (item_details.name == schematics[i][2]) then
                    craft(schematics[i])
                    break
                end
            end
        end
    end
    -- No item found
    print("No key item found")
    os.sleep(5)
end