tag @s add cmd

setblock ~ ~ ~ air

execute positioned ~ ~-1 ~ if block ~ ~ ~ command_block run function dungeon:cmd_clear

execute positioned ~-1 ~ ~ if block ~ ~ ~ chain_command_block run function dungeon:cmd_clear
execute positioned ~1 ~ ~ if block ~ ~ ~ chain_command_block run function dungeon:cmd_clear
execute positioned ~ ~-1 ~ if block ~ ~ ~ chain_command_block run function dungeon:cmd_clear
execute positioned ~ ~1 ~ if block ~ ~ ~ chain_command_block run function dungeon:cmd_clear
execute positioned ~ ~ ~-1 if block ~ ~ ~ chain_command_block run function dungeon:cmd_clear
execute positioned ~ ~ ~1 if block ~ ~ ~ chain_command_block run function dungeon:cmd_clear
