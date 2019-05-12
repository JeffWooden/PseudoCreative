clear @s #gui:menu{secu:1b}
execute as @s run function gui:give_menu
execute as @s[scores={PanelCategory=1,PanelPage=..15}] run scoreboard players add @s PanelPage 1
execute as @s[scores={PanelCategory=2,PanelPage=..7}] run scoreboard players add @s PanelPage 1
execute as @s[scores={PanelCategory=3,PanelPage=..4}] run scoreboard players add @s PanelPage 1
execute as @s[scores={PanelCategory=4,PanelPage=..10}] run scoreboard players add @s PanelPage 1
execute as @s[scores={PanelCategory=5,PanelPage=..2}] run scoreboard players add @s PanelPage 1
execute as @s[scores={PanelCategory=6,PanelPage=..3}] run scoreboard players add @s PanelPage 1
execute as @s at @s run playsound minecraft:item.book.page_turn ambient @s