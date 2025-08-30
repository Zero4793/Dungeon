# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

execute store result score @s rng run random value 1..2
execute unless entity @s[tag=spawn] store result score @s rng run random value 2..3

# spawn only
execute if score @s rng matches 1 run data merge entity @s {data:{name:"basic",credit:"Zero"}}
# either
execute if score @s rng matches 2 run data merge entity @s {data:{name:"tunnel",credit:"Zero"}}
# normal
execute if score @s rng matches 3 run data merge entity @s {data:{name:"exit",credit:"Zero"}}
