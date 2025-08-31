# in dungeon as @e[type=marker,tag=dungeon,tag=room] at @s

# if !found and player:
execute if entity @s[tag=!found] if score @s age matches 0.. if entity @a[dx=46,dy=46,dz=46,gamemode=!spectator] run function dungeon:found with entity @s data

# if no room:
execute if entity @s[tag=!made] run return run function dungeon:generate_room

# clean up
execute as @e[type=armor_stand,dx=46,dy=46,dz=46] at @s if block ~ ~ ~ redstone_block run function dungeon:cmd_clear
kill @e[type=armor_stand,tag=cmd,dx=46,dy=46,dz=46]
execute as @e[dx=46,dy=46,dz=46] run data merge entity @s {PersistenceRequired:1b}

# time--
execute if score @s time matches 0 run function dungeon:room_death
scoreboard players remove @s time 1

# age++
scoreboard players add @s age 1

# set entry point
execute at @n[type=armor_stand,name=spawn,distance=..48] run summon marker ~ ~ ~ {Tags:[dungeon,entry]}
execute as @n[type=armor_stand,name=spawn,distance=..48] at @s rotated as @s run tp @n[tag=dungeon,tag=entry] ~ ~ ~ ~ ~
kill @n[type=armor_stand,name=spawn,distance=..48]
# set exit point
execute at @n[type=armor_stand,name=exit,distance=..48] run summon marker ~ ~ ~ {Tags:[dungeon,exit]}
execute as @n[type=armor_stand,name=exit,distance=..48] at @s rotated as @s run tp @n[tag=dungeon,tag=exit] ~ ~ ~ ~ ~
kill @n[type=armor_stand,name=exit,distance=..48]