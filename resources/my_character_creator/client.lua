local isMenuOpen = false

-- Lệnh mở menu để test thử
RegisterCommand('opencreator', function()
    ToggleUI(true)
end)

function ToggleUI(show)
    isMenuOpen = show
    SetNuiFocus(show, show) 
    SendNUIMessage({
        type = "showUI",
        display = show
    })
end

-- Lắng nghe dữ liệu từ UI gửi về
RegisterNUICallback('changeHair', function(data, cb)
    local ped = PlayerPedId()
    -- Thay đổi kiểu tóc (Component số 2)
    SetPedComponentVariation(ped, 2, tonumber(data.value), 0, 0)
    cb('ok')
end)

-- Khi nhấn nút Hoàn tất trên UI
RegisterNUICallback('saveCharacter', function(data, cb)
    ToggleUI(false)
    print("Nhan vat da duoc luu!")
    cb('ok')
end)
