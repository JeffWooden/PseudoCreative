execute as @s at @s align xyz run particle minecraft:happy_villager ~0.5 ~0.5 ~0.5 0.5 0.5 0.5 0.05 10
execute as @s at @s run summon item ~ ~0.5 ~ {Motion:[0.0,0.7,0.0],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Duplicateur","color":"blue","italic":false}'},EntityTag:{DeathLootTable:"",Silent:1b,NoAI:1b,Tags:["DupliCreate"]}}}}
#execute as @s at @s unless entity @p[scores={PanelDupliPaper=1..}] run summon item ~ ~0.5 ~ {Motion:[0.0,0.7,0.0],Item:{id:"minecraft:paper",Count:64b,tag:{display:{Name:'{"text":"Dupli"}'}}}}
execute as @s at @s run kill @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:1b}},sort=nearest,limit=1]
kill @s