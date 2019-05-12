clear @s #gui:menu{secu:1b}
scoreboard players add @s PanelFly 1
scoreboard players set @s[scores={PanelFly=10..}] PanelFly 0
execute as @s run function gui:give_menu
execute as @s run function gui:pages/7
execute as @s at @s run playsound minecraft:ui.button.click ambient @s