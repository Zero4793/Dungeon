# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

# pick room
execute store result score @s rng run random value 1..2
execute if score @s rng matches 1 run data merge block ~ ~ ~ {name:"dungeon:stone/2b-tunnel"}
execute if score @s rng matches 2 run data merge block ~ ~ ~ {name:"dungeon:stone/2b-basic-dungeon-2"}

