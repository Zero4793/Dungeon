# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

# detect door criteria | 0=no | 1=yes | -1=rand |
data merge entity @s {data:{N:-1,E:-1,S:-1,W:-1}}
# if must have door
execute if block ~47 ~49 ~1 bedrock run data merge entity @s {data:{E:1}}
execute if block ~1 ~49 ~47 bedrock run data merge entity @s {data:{S:1}}
execute if block ~-45 ~49 ~1 bedrock run data merge entity @s {data:{W:1}}
execute if block ~1 ~49 ~-45 bedrock run data merge entity @s {data:{N:1}}
# if must not have door
execute if data entity @s {data:{E:-1}} if block ~48 ~49 ~1 bedrock run data merge entity @s {data:{E:0}}
execute if data entity @s {data:{S:-1}} if block ~1 ~49 ~48 bedrock run data merge entity @s {data:{S:0}}
execute if data entity @s {data:{W:-1}} if block ~-46 ~49 ~1 bedrock run data merge entity @s {data:{W:0}}
execute if data entity @s {data:{N:-1}} if block ~1 ~49 ~-46 bedrock run data merge entity @s {data:{N:0}}

# rand optional
execute if data entity @s {data:{E:-1}} store result score @s rng run random value 0..2
execute if data entity @s {data:{E:-1}} if score @s rng matches 0 run data merge entity @s {data:{E:0}}
execute if data entity @s {data:{E:-1}} if score @s rng matches 1..2 run data merge entity @s {data:{E:1}}
execute if data entity @s {data:{S:-1}} store result score @s rng run random value 0..2
execute if data entity @s {data:{S:-1}} if score @s rng matches 0 run data merge entity @s {data:{S:0}}
execute if data entity @s {data:{S:-1}} if score @s rng matches 1..2 run data merge entity @s {data:{S:1}}
execute if data entity @s {data:{W:-1}} store result score @s rng run random value 0..2
execute if data entity @s {data:{W:-1}} if score @s rng matches 0 run data merge entity @s {data:{W:0}}
execute if data entity @s {data:{W:-1}} if score @s rng matches 1..2 run data merge entity @s {data:{W:1}}
execute if data entity @s {data:{N:-1}} store result score @s rng run random value 0..2
execute if data entity @s {data:{N:-1}} if score @s rng matches 0 run data merge entity @s {data:{N:0}}
execute if data entity @s {data:{N:-1}} if score @s rng matches 1..2 run data merge entity @s {data:{N:1}}

# assign type & turn based on door flags
#1
execute if data entity @s {data:{E:1,S:0,W:0,N:0}} run data merge entity @s {data:{type:1,turn:1}}
execute if data entity @s {data:{E:0,S:1,W:0,N:0}} run data merge entity @s {data:{type:1,turn:2}}
execute if data entity @s {data:{E:0,S:0,W:1,N:0}} run data merge entity @s {data:{type:1,turn:3}}
execute if data entity @s {data:{E:0,S:0,W:0,N:1}} run data merge entity @s {data:{type:1,turn:0}}
#2a
execute if data entity @s {data:{E:1,S:1,W:0,N:0}} run data merge entity @s {data:{type:"2a",turn:1}}
execute if data entity @s {data:{E:0,S:1,W:1,N:0}} run data merge entity @s {data:{type:"2a",turn:2}}
execute if data entity @s {data:{E:0,S:0,W:1,N:1}} run data merge entity @s {data:{type:"2a",turn:3}}
execute if data entity @s {data:{E:1,S:0,W:0,N:1}} run data merge entity @s {data:{type:"2a",turn:0}}
#2b
execute if data entity @s {data:{E:1,S:0,W:1,N:0}} run data merge entity @s {data:{type:"2b",turn:1}}
execute if data entity @s {data:{E:0,S:1,W:0,N:1}} run data merge entity @s {data:{type:"2b",turn:2}}
execute if data entity @s {data:{E:1,S:0,W:1,N:0}} run data merge entity @s {data:{type:"2b",turn:3}}
execute if data entity @s {data:{E:0,S:1,W:0,N:1}} run data merge entity @s {data:{type:"2b",turn:0}}
#3
execute if data entity @s {data:{E:1,S:1,W:1,N:0}} run data merge entity @s {data:{type:3,turn:1}}
execute if data entity @s {data:{E:0,S:1,W:1,N:1}} run data merge entity @s {data:{type:3,turn:2}}
execute if data entity @s {data:{E:1,S:0,W:1,N:1}} run data merge entity @s {data:{type:3,turn:3}}
execute if data entity @s {data:{E:1,S:1,W:0,N:1}} run data merge entity @s {data:{type:3,turn:0}}
#4
execute if data entity @s {data:{E:1,S:1,W:1,N:1}} run data merge entity @s {data:{type:4}}
execute if data entity @s {data:{E:1,S:1,W:1,N:1}} store result score @s rng run random value 0..3
execute if data entity @s {data:{E:1,S:1,W:1,N:1}} if score @s rng matches 0 run data merge entity @s {data:{turn:0}}
execute if data entity @s {data:{E:1,S:1,W:1,N:1}} if score @s rng matches 1 run data merge entity @s {data:{turn:1}}
execute if data entity @s {data:{E:1,S:1,W:1,N:1}} if score @s rng matches 2 run data merge entity @s {data:{turn:2}}
execute if data entity @s {data:{E:1,S:1,W:1,N:1}} if score @s rng matches 3 run data merge entity @s {data:{turn:3}}

# maybe change theme
execute store result score @s rng run random value 0..8
execute if score @s rng matches 0 run function dungeon:pick_theme

# pick room from <theme>/<type>
function dungeon:spawn_room with entity @s data

# done
tag @s add made