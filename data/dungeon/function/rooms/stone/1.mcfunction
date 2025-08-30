# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s
scoreboard players set @s rng 0

# spawn
execute if entity @s[tag=spawn] store result score @s rng run random value 1..2
execute if score @s rng matches 1..2 run data merge block ~ ~ ~ {name:"dungeon:stone/s1-basic"}
execute if entity @s[tag=spawn] run return fail

# pick room
execute store result score @s rng run random value 1..5
execute if score @s rng matches 1 run data merge block ~ ~ ~ {name:"dungeon:stone/1-tunnel"}
execute if score @s rng matches 2 run data merge block ~ ~ ~ {name:"dungeon:stone/1-tower"}
execute if score @s rng matches 3 run data merge block ~ ~ ~ {name:"dungeon:stone/1-exit"}
execute if score @s rng matches 4 run data merge block ~ ~ ~ {name:"dungeon:stone/1-lava-cave"}
execute if score @s rng matches 5 run data merge block ~ ~ ~ {name:"dungeon:stone/1-death-knights-throne"}
