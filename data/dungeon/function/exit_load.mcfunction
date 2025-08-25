# in dungeon as @e[type=marker,tag=dungeon,tag=exit] at @s

execute if entity @a[distance=..8] in dungeon:dungeon run forceload add ~ ~
execute unless entity @a[distance=..16] in dungeon:dungeon run forceload remove ~ ~