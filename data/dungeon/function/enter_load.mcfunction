# in overworld as @e[type=marker,tag=dungeon,tag=enter] at @s

execute if entity @a[distance=..8] in dungeon:dungeon run forceload add ~-1 ~-1 ~1 ~1
execute unless entity @a[distance=..16] in dungeon:dungeon run forceload remove ~-1 ~-1 ~1 ~1

execute if block ~ ~-1 ~ air run kill @s
execute if block ~-1 ~-1 ~-1 air run kill @s
execute if block ~-1 ~-1 ~ air run kill @s
execute if block ~-1 ~-1 ~1 air run kill @s
execute if block ~ ~-1 ~-1 air run kill @s
execute if block ~ ~-1 ~1 air run kill @s
execute if block ~1 ~-1 ~-1 air run kill @s
execute if block ~1 ~-1 ~ air run kill @s
execute if block ~1 ~-1 ~1 air run kill @s
