execute if block ~ ~ ~1 barrier if block ~ ~ ~31 air positioned ~-2 ~ ~-2 run summon armor_stand ~ ~ ~31 {Invisible:1,NoGravity:1,Tags:[room]}
execute if block ~ ~ ~-1 barrier if block ~ ~ ~-31 air positioned ~-2 ~ ~-2 run summon armor_stand ~ ~ ~-31 {Invisible:1,NoGravity:1,Tags:[room]}
execute if block ~1 ~ ~ barrier if block ~31 ~ ~ air positioned ~-2 ~ ~-2 run summon armor_stand ~31 ~ ~ {Invisible:1,NoGravity:1,Tags:[room]}
execute if block ~-1 ~ ~ barrier if block ~-31 ~ ~ air positioned ~-2 ~ ~-2 run summon armor_stand ~-31 ~ ~ {Invisible:1,NoGravity:1,Tags:[room]}
tag @s add entered