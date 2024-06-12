-- BUILD 0020_13_06_2024

-- Crafting Recipes
local recipes = require("recipes")

-- Crafting Functions
local function find_item_slot(item_name)
    while true do
        for slot = 1, 16 do
            turtle.select(slot)
            if (turtle.getItemDetail(slot)~= nil) then
                if (turtle.getItemDetail(slot).name == item_name) then
                    return slot
                end
            end
        end
        printError("ERROR: Item '" ..item_name.. "' not found in inventory")
        printError("Checking again in 5 seconds.")
        os.sleep(5)
    end
end

local function craft(name)
    print("Crafting ".. name[1])
    -- drop key id item
    os.sleep(0.5)
    turtle.select(find_item_slot(name[2]))
    turtle.drop(1)
    -- drop base item
    turtle.turnRight()
    os.sleep(0.5)
    turtle.select(find_item_slot(name[3]))
    turtle.dropDown(1)
    -- drop components
    for i = 4, #name do
        os.sleep(1)
        turtle.select(find_item_slot(name[i]))
        turtle.drop(1)
    end
    -- go back to normal position
    turtle.turnLeft()
    print("Crafted ".. name[1])
    return true
end


-- Main Loop
-- Periodically check if key items appear in inventory

while true do
    -- Used to restart the loop if the item is crafted and look from first slot
    local break_loop = false
    for item = 1, 16 do
        
        -- Checks every slot for key item
        turtle.select(item)
        if (turtle.getItemDetail(item)~= nil) then
            local item_details = turtle.getItemDetail(item)

            -- Checks if key item is in the list of recipes
            for i = 1, #recipes do
                if (item_details.name == recipes[i][2]) then
                    if(craft(recipes[i])) then
                        break_loop = true
                        break
                    end
                end
            end
            if break_loop then
                break
            end
        end
    end
    if not break_loop then
        -- No item found
        print("No key item found, waiting")
        os.sleep(10)
    end
end