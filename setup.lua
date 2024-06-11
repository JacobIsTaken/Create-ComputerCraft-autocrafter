-- Defining URLs from the repository
local main_url = "https://raw.githubusercontent.com/JacobIsTaken/turtle-create-autocrafter/main/main.lua"

-- Define the local paths where the files should be saved
local main_path = "main"

-- Function to check if a file exists and read its content
local function readFile(path)
    if fs.exists(path) then
        local file = fs.open(path, "r")
        local content = file.readAll()
        file.close()
        return content
    end
    return nil
end

-- Function to download a file from a URL
local function downloadFile(url, path)
    print("Downloading: " .. path)
    local response = http.get(url)
    if response then
        local new_content = response.readAll()
        response.close()

        local old_content = readFile(path)

        if old_content == new_content then
            print("The file has not changed: " .. path)
        else
            local file = fs.open(path, "w")
            file.write(new_content)
            file.close()
            print("Downloaded file saved as: " .. path)
        end
    else
        print("Failed to download file from: " .. url)
    end
end

-- Download the files
downloadFile(main_url, main_path)