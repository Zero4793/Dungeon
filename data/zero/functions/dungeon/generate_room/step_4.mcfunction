
#armor stands triggers

#impulse/chain commands
execute as @s[tag=del_cmd] positioned ~ ~-1 ~ run function zero:dungeon/cmd_remove
kill @s[tag=del_cmd]
execute if block ~ ~-1 ~ command_block run setblock ~ ~ ~ redstone_block
execute if block ~ ~-1 ~ command_block run setblock ~ ~ ~ air
execute if block ~ ~-1 ~ command_block run tag @s add del_cmd

scoreboard players add @s zero.step 1
#step 5 + 1step *2 = step 7

tag @s add generated

execute as @e[distance=..64] run data merge entity @s {PersistenceRequired:1b}
