# in dungeon as @a at @s(overworld)

execute unless entity @e[type=marker,tag=dungeon,tag=spawn,distance=..1] run summon marker ~ ~ ~ {Tags:[dungeon,spawn]}
# tp @s @n[type=marker,tag=dungeon,tag=entry,distance=..48]
execute at @e[type=marker,tag=dungeon,tag=spawn,distance=..1] run tp @s ~4 ~1 ~4