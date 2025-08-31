# in dungeon as @a at @s(overworld)

execute unless entity @e[type=marker,tag=dungeon,tag=spawn,distance=..1] run summon marker ~ ~ ~ {Tags:[dungeon,spawn]}
execute positioned ~24 ~24 ~24 run tp @s[scores={time=..0}] @n[type=marker,tag=dungeon,tag=entry,distance=..48]
