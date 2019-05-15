tag @s[tag=hadRecieve7] remove hadRecieve7
clear @s #gui:menu{secu:1b}
scoreboard players set @s PanelCategory 7
scoreboard players set @s PanelPage 1
execute as @s run function gui:give_menu
execute as @s at @s run playsound minecraft:item.book.page_turn ambient @s