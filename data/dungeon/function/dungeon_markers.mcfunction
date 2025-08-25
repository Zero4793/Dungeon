# in dungeon as @e[type=marker,tag=dungeon] at @s

execute if entity @s[tag=spawn,tag=!room] run function dungeon:spawn
execute if entity @s[tag=room] run function dungeon:room
execute if entity @s[tag=exit] run function dungeon:exit_load
