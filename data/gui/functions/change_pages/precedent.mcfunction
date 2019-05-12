clear @s #gui:menu{secu:1b}
execute as @s run function gui:give_menu
execute as @s[scores={PanelPage=2..}] at @s run playsound minecraft:item.book.page_turn ambient @s
scoreboard players remove @s[scores={PanelPage=2..}] PanelPage 1