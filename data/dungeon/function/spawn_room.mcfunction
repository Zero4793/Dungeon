# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s with @s data

# set map
$setblock ~ ~48 ~ structure_block{mode:"LOAD",posY:0,name:"dungeon:$(theme)/$(type)"}
# set room
setblock ~ ~ ~ structure_block{mode:"LOAD",posY:0,name:"dungeon:4"}
$function dungeon:rooms/$(theme)/$(type)

# rotate pieces
function dungeon:rotate

# load room & map
setblock ~ ~1 ~ air
fill ~ ~1 ~ ~ ~49 ~ redstone_block replace air

# done
setblock ~ ~-1 ~ reinforced_deepslate
