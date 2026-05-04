-- replace with ur repo if you intend to fork!
local git = "https://raw.githubusercontent.com/justirib/rbx-icons/refs/heads/master/"
local module = {}

module.Material = loadstring(game:HttpGetAsync(git .. "MaterialIcons.luau"))()
module.Lucide = loadstring(game:HttpGetAsync(git .. "LucideIcons.luau"))()
module.Phosphor = loadstring(game:HttpGetAsync(git .. "Phosphor.luau"))()
module["Phosphor-Filled"] = loadstring(game:HttpGetAsync(git .. "Phosphor%20Filled.luau"))()
module["SF"] = loadstring(game:HttpGetAsync( git .. "SFSymbols.luau"))()
module["Symbols"] = loadstring(game:HttpGetAsync( git .. "Symbols.luau"))()
module["Symbols-Filled"] = loadstring(game:HttpGetAsync( git .. "Symbols-Filled.luau"))()
module["Lab"] = loadstring(game:HttpGetAsync( git .. "LucideLab.luau"))()
module.Fluency = loadstring(game:HttpGetAsync( git .. "Fluency.luau"))()
function module:get_icon(name, source)
	source = source or "Symbols"

	game:GetService("ContentProvider"):PreloadAsync({
		`rbxassetid://{module[source][name]}`
	})

	return module[source][name]
end

return module
