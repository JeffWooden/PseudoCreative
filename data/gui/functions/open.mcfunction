tellraw @s[scores={PanelMsg=0}] ["",{"text":">>","color":"green"},{"text":" Le panel créatif a été ouvert."}]
tellraw @s[scores={seeMsg=0}] ["",{"text":"Attention:","bold":true,"color":"dark_red"},{"text":" ne placez pas d'autres de vos items dans votre inventaire ! Seuls ceux de l'interface sont tolérés. Ce qui pourrait donc vous entrainer la perte d'un objet.","bold":true,"color":"red"},{"text":"\n"},{"text":"[ne plus afficher ce message]","italic":true,"color":"gray","clickEvent":{"action":"run_command","value":"/trigger seeMsg"}}]
tag @s add GuiOpen
#tag @s add GuiError
execute as @s run function gui:give_menu