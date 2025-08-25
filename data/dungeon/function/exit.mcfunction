# in dungeon as @a at @s(on exit)

scoreboard players set @s dim 100
execute in overworld run tp @s @n[type=marker,tag=dungeon,tag=enter,distance=..2]