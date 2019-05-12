tellraw @s {"text":"Fonctionnalité non-disponible","color":"red"}
clear @s #gui:menu{secu:1b}
execute as @s run function gui:give_menu
execute as @s run function gui:pages/7
