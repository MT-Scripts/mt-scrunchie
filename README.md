# mt-scrunchie
Simple scrunchie script for QBCore

#Installation
- Using ox_inventory:
Add this to ox_inventory/data/items.lua
```
  	["scrunchie"] = {
  		label = "Scrunchie",
  		weight = 0,
  		stack = true,
  		close = true,
  		description = "Use this shit on your hair.",
  	},
```
- Using other inventories:
Add this to qb-core/shared/items.lua
```
["scrunchie"]     = {["name"] = "scrunchie", 				    ["label"] = "Scrunchie", 					["weight"] = 1000, 		["type"] = "item", 			["image"] = "scrunchie.png", 		    ["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = "Use this shit on your hair."},
```
