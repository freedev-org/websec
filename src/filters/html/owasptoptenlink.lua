function RawInline(el)
    if el.text:match("https://owasp.org/Top10/") then
        local path = el.text:match("A%d+_2021[^}]+")

        local url = "https://owasp.org/Top10/" .. path .. "/"
        return pandoc.RawInline('html', '<a href="' .. url .. '">' .. path .. '</a>')
    end
end
