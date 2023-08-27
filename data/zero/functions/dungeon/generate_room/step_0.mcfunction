tag @s add set

#Upper = must have door. lower = optional. notag = cannot.
execute if block ~ ~ ~-30 barrier run tag @s add N
execute if block ~ ~ ~-30 air run tag @s add n
execute if block ~ ~ ~30 barrier run tag @s add S
execute if block ~ ~ ~30 air run tag @s add s
execute if block ~30 ~ ~ barrier run tag @s add E
execute if block ~30 ~ ~ air run tag @s add e
execute if block ~-30 ~ ~ barrier run tag @s add W
execute if block ~-30 ~ ~ air run tag @s add w

#rng: same as in step_1
scoreboard players set @s zero.rng 2
scoreboard players set @s zero.step 1
