##Interface

#Si le joueur n'a pas le tag GuiOpen & GuiError on test alors si son inventaire est clear
execute as @a[tag=!GuiOpen,tag=!GuiError,nbt={recipeBook:{isGuiOpen:1b}}] run function gui:verify

#Retire le tag GuiError
execute as @a[tag=GuiError,nbt={recipeBook:{isGuiOpen:0b}}] run tag @s remove GuiError

#Ferme le GUI
execute as @a[tag=GuiOpen,nbt={recipeBook:{isGuiOpen:0b}}] run function gui:close

#Clear et replace la poubelle
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:35b,tag:{ben:1b}}]}] run clear @s cauldron{ben:1b}
execute as @a[tag=GuiOpen,nbt=!{Inventory:[{Slot:35b,tag:{ben:1b}}]}] run replaceitem entity @s inventory.26 minecraft:cauldron{display:{Name:'{"text":"Poubelle","color":"red","italic":false}'},ben:1b}

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

##Fly

#Ajout et retrait du /fly
execute as @a[scores={PanelFly=0},nbt={SelectedItemSlot:0}] run function gui:fly
execute as @a[scores={PanelFly=1},nbt={SelectedItemSlot:1}] run function gui:fly
execute as @a[scores={PanelFly=2},nbt={SelectedItemSlot:2}] run function gui:fly
execute as @a[scores={PanelFly=3},nbt={SelectedItemSlot:3}] run function gui:fly
execute as @a[scores={PanelFly=4},nbt={SelectedItemSlot:4}] run function gui:fly
execute as @a[scores={PanelFly=5},nbt={SelectedItemSlot:5}] run function gui:fly
execute as @a[scores={PanelFly=6},nbt={SelectedItemSlot:6}] run function gui:fly
execute as @a[scores={PanelFly=7},nbt={SelectedItemSlot:7}] run function gui:fly
execute as @a[scores={PanelFly=8},nbt={SelectedItemSlot:8}] run function gui:fly
execute as @a[scores={PanelFly=9}] run function gui:fly
tag @a[scores={PanelFly=10..}] remove PanelFly

execute as @a[scores={PanelFly=0},nbt=!{SelectedItemSlot:0}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=1},nbt=!{SelectedItemSlot:1}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=2},nbt=!{SelectedItemSlot:2}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=3},nbt=!{SelectedItemSlot:3}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=4},nbt=!{SelectedItemSlot:4}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=5},nbt=!{SelectedItemSlot:5}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=6},nbt=!{SelectedItemSlot:6}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=7},nbt=!{SelectedItemSlot:7}] run tag @s remove PanelFly
execute as @a[scores={PanelFly=8},nbt=!{SelectedItemSlot:8}] run tag @s remove PanelFly

execute as @a[tag=PanelFly] run effect give @s resistance 5 255 true

#Points d'xp rajoutés
execute as @a unless score @s PanelXp matches 0.. run scoreboard players set @s PanelXp 10
execute as @a[scores={PanelXp=..9}] run tellraw @s {"text":"Valeur trop petite (minimum = 10pts d'xp)","color":"red"}
scoreboard players set @a[scores={PanelXp=..9}] PanelXp 10
execute as @a[scores={PanelXp=501..}] run tellraw @s {"text":"Valeur trop grande (maximum = 500pts d'xp)","color":"red"}
scoreboard players set @a[scores={PanelXp=501..}] PanelXp 500

##Duplicateur

#Papiers "Dupli"
execute as @a[scores={PanelDupliPaper=1..}] run function duplicateur:paper

#Don de l'item
execute as @a unless score @s PanelDupliPaper matches 0.. run scoreboard players set @s PanelDupliPaper 0
execute as @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}}] at @s if entity @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},distance=..1] run function duplicateur:give_item

#Spawn du coffre
execute as @e[tag=DupliCreate] run function duplicateur:create
execute as @e[tag=duplicateur] at @s unless block ~ ~ ~ chest run function duplicateur:delete
execute as @e[tag=duplicateur] at @s if entity @e[type=item,nbt={Item:{tag:{test:1b}}},distance=..2] run function duplicateur:dupli

#Duplication
execute as @e[tag=duplicateur] at @s positioned ~ ~1 ~ if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:paper",tag:{display:{Name:'{"text":"Dupli"}'}}}}] run function duplicateur:dupli