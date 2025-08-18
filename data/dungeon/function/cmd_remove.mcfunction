#Zero_4793

setblock ~ ~ ~ air

execute if block ~ ~ ~1 chain_command_block positioned ~ ~ ~1 run function zero:dungeon/cmd_remove
execute if block ~ ~ ~-1 chain_command_block positioned ~ ~ ~-1 run function zero:dungeon/cmd_remove
execute if block ~1 ~ ~ chain_command_block positioned ~1 ~ ~ run function zero:dungeon/cmd_remove
execute if block ~-1 ~ ~ chain_command_block positioned ~-1 ~ ~ run function zero:dungeon/cmd_remove
execute if block ~ ~1 ~ chain_command_block positioned ~ ~1 ~ run function zero:dungeon/cmd_remove
execute if block ~ ~-1 ~ chain_command_block positioned ~ ~-1 ~ run function zero:dungeon/cmd_remove

