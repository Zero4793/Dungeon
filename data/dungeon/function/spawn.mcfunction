# in dungeon as @e[type=marker,tag=dungeon,tag=spawn,tag=!room] at @s

# pick theme
execute store result score @s rng run random value 1..2
execute if score @s rng matches 1 run data merge entity @s {data:{theme:stone}}
execute if score @s rng matches 2 run data merge entity @s {data:{theme:nether}}

# pick type
data merge entity @s {data:{turn:0}}
execute store result score @s rng run random value 1..5
execute if score @s rng matches 1..1 run data merge entity @s {data:{type:"1"}}
execute if score @s rng matches 2..2 run data merge entity @s {data:{type:"2a"}}
execute if score @s rng matches 3..3 run data merge entity @s {data:{type:"2b"}}
execute if score @s rng matches 4..4 run data merge entity @s {data:{type:"3"}}
execute if score @s rng matches 5..5 run data merge entity @s {data:{type:"4"}}

# load room from <theme>/s
function dungeon:spawn_room with entity @s data
# place spawn marker
setblock ~ ~51 ~ structure_block{mode:"LOAD",posY:0,name:"dungeon:spawn"}
setblock ~ ~51 ~1 redstone_block

# set entry
execute at @n[type=armor_stand,name=spawn,distance=..48] run summon marker ~ ~ ~ {Tags:[dungeon,entry]}
execute as @n[type=armor_stand,name=spawn,distance=..48] at @s rotated as @s run tp @n[tag=dungeon,tag=entry] ~ ~ ~ ~ ~
kill @n[type=armor_stand,name=spawn,distance=..48]

# live longer than other rooms
scoreboard players set @s age -100

# done
tag @s add room
tag @s add made
