# mt-scrunchie
Simple scrunchie script for QBCore

# Installation
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


https://github.com/MT-Scripts/mt-scrunchie/assets/89866234/3c8b38ec-a279-4648-bab4-b0b71728c659

