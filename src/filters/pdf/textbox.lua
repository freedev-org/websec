function Div(el)
    if el.classes:includes('infobox') then
        local content = pandoc.write(pandoc.Pandoc(el.content), 'latex')
        return pandoc.RawBlock('latex', '\\infobox{\n\n' .. content .. '\n}')
    elseif el.classes:includes('notebox') then
        local content = pandoc.write(pandoc.Pandoc(el.content), 'latex')
        return pandoc.RawBlock('latex', '\\notebox{\n\n' .. content .. '\n}')
    elseif el.classes:includes('challengebox') then
        local content = pandoc.write(pandoc.Pandoc(el.content), 'latex')
        return pandoc.RawBlock('latex', '\\challengebox{\n\n' .. content .. '\n}')
    end
end
