# in overworld as @a at @s

execute if entity @e[type=marker,tag=dungeon,tag=enter,distance=..1] run return run execute in dungeon:dungeon run function dungeon:enter
execute if block ~ ~-1 ~ lodestone if block ~-1 ~-1 ~ crying_obsidian if block ~1 ~-1 ~ crying_obsidian if block ~ ~-1 ~-1 crying_obsidian if block ~ ~-1 ~1 crying_obsidian if block ~-1 ~-1 ~-1 crying_obsidian if block ~-1 ~-1 ~1 crying_obsidian if block ~1 ~-1 ~-1 crying_obsidian if block ~1 ~-1 ~1 crying_obsidian run summon marker ~ ~ ~ {Tags:[dungeon,enter]}
