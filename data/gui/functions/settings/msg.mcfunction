clear @s #gui:menu{secu:1b}
scoreboard players add @s PanelMsg 1
scoreboard players set @s[scores={PanelMsg=2..}] PanelMsg 0
execute as @s run function gui:give_menu
execute as @s run function gui:pages/7
execute as @s at @s run playsound minecraft:ui.button.click ambient @s
