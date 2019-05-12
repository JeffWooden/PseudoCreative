#Si le joueur n'a pas le tag GuiOpen é GuiError on test alors si son inventaire est clear
execute as @a[tag=!GuiOpen,tag=!GuiError,nbt={recipeBook:{isGuiOpen:1b}}] run function gui:verify

#Retire le tag GuiError
execute as @a[tag=GuiError,nbt={recipeBook:{isGuiOpen:0b}}] run tag @s remove GuiError

#Ferme le GUI
execute as @a[tag=GuiOpen,nbt={recipeBook:{isGuiOpen:0b}}] run function gui:close

#Clear et replace la poubelle
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{tag:{ben:1b}}]}] run clear @s cauldron{ben:1b}
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{tag:{ben:1b}}]}] run replaceitem entity @s inventory.26 minecraft:cauldron{display:{Name:'{"text":"Poubelle","color":"red","italic":false}'},ben:1b}

#Kill les items de la poubelle et du menu qui sont par terre
kill @e[type=item,nbt={Item:{tag:{ben:1b}}}]
kill @e[type=item,nbt={Item:{tag:{secu:1b}}}]

#Intéraction avec le menu
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:9b,tag:{menu:1b}}]}] run function gui:change_pages/1
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:10b,tag:{menu:2b}}]}] run function gui:change_pages/2
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:11b,tag:{menu:3b}}]}] run function gui:change_pages/3
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:12b,tag:{menu:4b}}]}] run function gui:change_pages/4
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:13b,tag:{menu:5b}}]}] run function gui:change_pages/5
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:14b,tag:{menu:6b}}]}] run function gui:change_pages/6
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:15b,tag:{menu:7b}}]}] run function gui:change_pages/7
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:16b,tag:{menu:8b}}]}] run function gui:change_pages/precedent
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:17b,tag:{menu:9b}}]}] run function gui:change_pages/suivant

#Affichage des différentes pages de chaques menus
execute as @a[tag=GuiOpen,scores={PanelCategory=1}] run function gui:pages/1
execute as @a[tag=GuiOpen,scores={PanelCategory=2}] run function gui:pages/2
execute as @a[tag=GuiOpen,scores={PanelCategory=3}] run function gui:pages/3
execute as @a[tag=GuiOpen,scores={PanelCategory=4}] run function gui:pages/4
execute as @a[tag=GuiOpen,scores={PanelCategory=5}] run function gui:pages/5
execute as @a[tag=GuiOpen,scores={PanelCategory=6}] run function gui:pages/6
execute as @a[tag=GuiOpen,tag=!hadRecieve7,scores={PanelCategory=7}] run function gui:pages/7

#Retrait du tag "hadRecieve7"
execute as @a[tag=hadRecieve7,tag=!GuiOpen] run tag @s remove hadRecieve7
execute as @a[tag=hadRecieve7,tag=GuiOpen] unless score @s PanelCategory matches 7 run tag @s remove hadRecieve7

#Intéractions avec les paramètres
execute as @a[tag=hadRecieve7,tag=GuiOpen,nbt=!{Inventory:[{Slot:19b,Count:64b,tag:{settings:{duplicateur:1b}}}]}] run function gui:settings/duplicateur
execute as @a[tag=hadRecieve7,tag=GuiOpen,nbt=!{Inventory:[{Slot:20b,tag:{settings:{fly:1b}}}]}] run function gui:settings/fly
execute as @a[tag=hadRecieve7,tag=GuiOpen,nbt=!{Inventory:[{Slot:21b,tag:{settings:{msg:1b}}}]}] run function gui:settings/msg
execute as @a[tag=hadRecieve7,tag=GuiOpen,nbt=!{Inventory:[{Slot:22b,tag:{settings:{xp:1b}}}]}] run function gui:settings/xp
execute as @a[tag=hadRecieve7,tag=GuiOpen,nbt=!{Inventory:[{Slot:23b,tag:{settings:{github:1b}}}]}] run function gui:settings/github
execute as @a[tag=hadRecieve7,tag=GuiOpen,nbt=!{Inventory:[{Slot:24b,tag:{settings:{video:1b}}}]}] run function gui:settings/video