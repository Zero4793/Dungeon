# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

execute store result score @s rng run random value 1..2
execute if score @s rng matches 1 run data merge entity @s {data:{theme:stone}}
execute if score @s rng matches 2 run data merge entity @s {data:{theme:nether}}