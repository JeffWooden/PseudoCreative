execute as @s at @s align xyz run particle flash ~0.5 ~0.5 ~0.5 0 0 0 0 1 force @a[distance=..20]
execute as @s at @s run setblock ~ ~ ~ chest{CustomName:'{"text":"Duplicateur","color":"blue","italic":false,"bold":true}'}
execute as @s at @s run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["duplicateur"]}
kill @s