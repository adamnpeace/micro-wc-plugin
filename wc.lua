VERSION = "1.0.0"

MakeCommand("wc", "wc.wordCount", 0)

function wordCount ()
	buffer = CurView().Buf	--Pulls working screen buffer from editor view
	charCount = buffer:len() --Finds length of buffer
	bufstr = tostring(buffer)
	_, buflen = bufstr:gsub("[^%s]+","") --Lua patterns:"[^%s]"" relates to NOT of space chars, "+" removes repeated chars (see: lua.org/pil/20.2.html)
	messenger:Message("Words:"..buflen.."  Characters:"..charCount)
end

AddRuntimeFile("wc", "help", "help/wc.md")

