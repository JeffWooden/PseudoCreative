execute as @s at @s run setblock ~ ~ ~ air
execute as @s at @s align xyz run particle flash ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[distance=..20]
execute as @s at @s run kill @e[type=item,nbt={Item:{id:"minecraft:chest",Count:1b}},limit=1,sort=nearest]
execute as @s at @s run summon item ~ ~0.5 ~ {Motion:[0.0,0.7,0.0],Item:{id:"minecraft:bat_spawn_egg",Count:1b,tag:{display:{Name:'{"text":"Duplicateur","color":"blue","italic":false}'},EntityTag:{DeathLootTable:"",Silent:1b,NoAI:1b,Tags:["DupliCreate"]}}}}
kill @s