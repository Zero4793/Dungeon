execute as @a[distance=0..] at @s align xyz positioned ~.5 ~ ~.5 run function dungeon:enter_check
execute as @e[type=marker,tag=dungeon,tag=enter,distance=0..] at @s run function dungeon:enter_load
execute in dungeon:dungeon as @e[type=marker,tag=dungeon,distance=0..] at @s run function dungeon:dungeon_markers
execute in dungeon:dungeon as @a[distance=0..] at @s if entity @e[type=marker,tag=dungeon,tag=exit,distance=..1] run function dungeon:exit
