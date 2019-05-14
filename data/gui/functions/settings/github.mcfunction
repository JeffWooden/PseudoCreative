tellraw @s ["",{"text":"Lien github:","bold":true,"underlined":true,"color":"aqua"},{"text":" https://github.com/JeffWooden/PseudoCreative"}]
clear @s #gui:menu{secu:1b}
execute as @s run function gui:give_menu
execute as @s run function gui:pages/7
