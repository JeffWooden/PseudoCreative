#Donne le score au joueur s'il n'en a pas encore reçu
execute as @s unless score @s PanelMsg matches 0.. run scoreboard players set @s PanelMsg 0
execute as @s unless score @s PanelFly matches 0.. run scoreboard players set @s PanelFly 0

replaceitem entity @s inventory.9 air
replaceitem entity @s inventory.10 chest{settings:{duplicateur:1b},HideFlags:63,secu:1b,display:{Name:'{"text":"Duplicateur d\'objets","bold":true,"italic":false}'}} 64

replaceitem entity @s[scores={PanelFly=0}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"1","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=1}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"2","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=2}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"3","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=3}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"4","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=4}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"5","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=5}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"6","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=6}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"7","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=7}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"8","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=8}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"9","bold":true,"italic":false,"color":"aqua"}]'}}
replaceitem entity @s[scores={PanelFly=9}] inventory.11 feather{settings:{fly:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Slot Vol Créatif: ","bold":true,"italic":false},{"text":"Aucun","bold":true,"italic":false,"color":"red"}]'}}

replaceitem entity @s[scores={PanelMsg=0}] inventory.12 flower_banner_pattern{settings:{msg:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Messages d\'ouverture/fermeture: ","bold":true,"italic":false},{"text":"Oui","bold":true,"italic":false,"color":"green"}]'}}
replaceitem entity @s[scores={PanelMsg=1..}] inventory.12 flower_banner_pattern{settings:{msg:1b},HideFlags:63,secu:1b,display:{Name:'["",{"text":"Messages d\'ouverture/fermeture: ","bold":true,"italic":false},{"text":"Non","bold":true,"italic":false,"color":"red"}]'}}

replaceitem entity @s inventory.13 experience_bottle{settings:{xp:1b},HideFlags:63,secu:1b,display:{Name:'{"text":"Niveaux d\'expérience","bold":true,"italic":false}'}}
replaceitem entity @s inventory.14 book{settings:{github:1b},HideFlags:63,secu:1b,display:{Name:'{"text":"Projet GitHub (dernières versions)","bold":true,"italic":false}'}}
replaceitem entity @s inventory.15 book{settings:{video:1b},HideFlags:63,secu:1b,display:{Name:'{"text":"Vidéo didacticiel","bold":true,"italic":false}'}}
replaceitem entity @s inventory.16 air
replaceitem entity @s inventory.17 air
replaceitem entity @s inventory.18 air
replaceitem entity @s inventory.19 air
replaceitem entity @s inventory.20 air
replaceitem entity @s inventory.21 air
replaceitem entity @s inventory.22 air
replaceitem entity @s inventory.23 air
replaceitem entity @s inventory.24 air
replaceitem entity @s inventory.25 air
tag @s add hadRecieve7