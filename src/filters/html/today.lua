function format_date(date)
    local months = {
        "janeiro", "fevereiro", "março", "abril", "maio", "junho",
        "julho", "agosto", "setembro", "outubro", "novembro", "dezembro"
    }
    local day = date.day
    local month = months[date.month]
    local year = date.year
    return string.format("%d de %s de %d", day, month, year)
end

function Meta(meta)
    if meta.date then
        local current_date = os.date("*t")
        meta.date = format_date(current_date)
    end

    return meta
end
