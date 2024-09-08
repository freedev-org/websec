function RawInline(el)
    if el.text:match("https://cwe.mitre.org/data/definitions/%d+.html") then
        local cwe_id = el.text:match("(%d+).html")

        local url = "https://cwe.mitre.org/data/definitions/" .. cwe_id .. ".html"
        local link_text = "CWE-" .. cwe_id
        return pandoc.RawInline('html', '<a href="' .. url .. '">' .. link_text .. '</a>')
    end
end
