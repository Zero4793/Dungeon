# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

# pick room
execute store result score @s rng run random value 1..2
execute if score @s rng matches 1..2 run data merge block ~ ~ ~ {name:"dungeon:nether/4-tunnel"}
