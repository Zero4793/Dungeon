# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

execute store result score @s rng run random value 1..2
execute unless entity @s[tag=spawn] store result score @s rng run random value 2..7

# spawn only
execute if score @s rng matches 1 run data merge entity @s {data:{name:"basic",credit:"Zero"}}
# either
execute if score @s rng matches 2 run data merge entity @s {data:{name:"tunnel",credit:"Zero"}}
# normal
execute if score @s rng matches 3 run data merge entity @s {data:{name:"trap1",credit:"Zero"}}
execute if score @s rng matches 4 run data merge entity @s {data:{name:"caves",credit:"Bazza"}}
execute if score @s rng matches 5 run data merge entity @s {data:{name:"cave-cross",credit:"Zero"}}
execute if score @s rng matches 6 run data merge entity @s {data:{name:"cave-pass",credit:"Zero"}}
execute if score @s rng matches 7 run data merge entity @s {data:{name:"fountain-trap",credit:"Conor"}}
