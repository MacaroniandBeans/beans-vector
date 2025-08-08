local function round(num, numDecimalPlaces)
    return tonumber(string.format("%." .. (numDecimalPlaces or 0) .. "f", num))
end

RegisterCommand("vector3", function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local vectorString = string.format("vector3(%.3f, %.3f, %.3f)", round(coords.x, 3), round(coords.y, 3), round(coords.z, 3))

    SendNUIMessage({
        type = "copyToClipboard",
        text = vectorString
    })

    print("^2Copied to clipboard:^7 " .. vectorString)
end, false)

RegisterCommand("vector4", function()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    local heading = GetEntityHeading(ped)
    local vectorString = string.format("vector4(%.3f, %.3f, %.3f, %.3f)", round(coords.x, 3), round(coords.y, 3), round(coords.z, 3), round(heading, 3))

    SendNUIMessage({
        type = "copyToClipboard",
        text = vectorString
    })

    print("^2Copied to clipboard:^7 " .. vectorString)
end, false)


RegisterCommand("heading", function()
    local ped = PlayerPedId()
    local heading = GetEntityHeading(ped)
    local rounded = string.format("%.2f", heading)
    SendNUIMessage({
        type = "copyToClipboard",
        text = vectorString
    })
end, false)

RegisterCommand("heading", function()
    local ped = PlayerPedId()
    local heading = GetEntityHeading(ped)
    local headingStr = string.format("%.2f", heading)

    SendNUIMessage({
        type = "copyToClipboard",
        text = headingStr
    })

    print("^2Copied heading to clipboard:^7 " .. headingStr)
end, false)