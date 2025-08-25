# in dungeon as @e[type=marker,tag=dungeon,tag=room] at @s

# if !found and player:
execute if entity @s[tag=!found] if score @s age matches 0.. if entity @a[dx=46,dy=46,dz=46,gamemode=!spectator] run function dungeon:found with entity @s data

# if no room:
execute if entity @s[tag=!made] run function dungeon:generate_room

# age++
scoreboard players add @s age 1
# if age=old:
# 	kill room
# 	kill @s

