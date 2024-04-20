function showNotification(source, msg, type)
    TriggerClientEvent('esx:showNotification', source, msg, type)
end

function getMyIdentifier(source,idtype)
    local identifiers = GetPlayerIdentifiers(source)
    for _, identifier in pairs(identifiers) do
        if string.find(identifier, idtype) then
            return identifier
        end
    end
    return nil
end

function Trim(value)
    if not value then return nil end
    return (string.gsub(value, '^%s*(.-)%s*$', '%1'))
end
