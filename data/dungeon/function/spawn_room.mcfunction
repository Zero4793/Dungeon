# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s with @s data

# set map
$setblock ~ ~48 ~ structure_block{mode:"LOAD",posY:0,name:"dungeon:$(theme)/$(type)"}
# set/pick room
setblock ~ ~ ~ structure_block{mode:"LOAD",posY:0,name:"dungeon:4",ignoreEntities:false}
$function dungeon:rooms/$(theme)/$(type)
# rotate pieces
function dungeon:rotate

# load room & map
function dungeon:load_room with entity @s data
setblock ~ ~1 ~ air
fill ~ ~1 ~ ~ ~49 ~ redstone_block replace air
setblock ~ ~-1 ~ reinforced_deepslate

# trigger command stands
execute as @e[type=armor_stand,dx=46,dy=46,dz=46] at @s if block ~ ~-1 ~ command_block run setblock ~ ~ ~ redstone_block

# time limit; rand+prev
execute if entity @s[tag=spawn] run return fail
execute store result score @s time run random value 1000..1200
scoreboard players operation @s time += @n[type=marker,tag=dungeon,tag=room,distance=1..48] time
