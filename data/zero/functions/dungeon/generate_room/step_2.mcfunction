#type_4
execute if entity @s[tag=N,tag=E,tag=S,tag=W] run tag @s add type_4

#type_3
execute if entity @s[tag=N,tag=E,tag=S,tag=!W] run tag @s add type_3
execute if entity @s[tag=N,tag=E,tag=S,tag=!W] run tag @s add turn_0
execute if entity @s[tag=!N,tag=E,tag=S,tag=W] run tag @s add type_3
execute if entity @s[tag=!N,tag=E,tag=S,tag=W] run tag @s add turn_1
execute if entity @s[tag=N,tag=!E,tag=S,tag=W] run tag @s add type_3
execute if entity @s[tag=N,tag=!E,tag=S,tag=W] run tag @s add turn_2
execute if entity @s[tag=N,tag=E,tag=!S,tag=W] run tag @s add type_3
execute if entity @s[tag=N,tag=E,tag=!S,tag=W] run tag @s add turn_3

#type_2b
execute if entity @s[tag=N,tag=!E,tag=S,tag=!W] run tag @s add type_2b
execute if entity @s[tag=N,tag=!E,tag=S,tag=!W] run tag @s add turn_0
execute if entity @s[tag=!N,tag=E,tag=!S,tag=W] run tag @s add type_2b
execute if entity @s[tag=!N,tag=E,tag=!S,tag=W] run tag @s add turn_1

#type_2a
execute if entity @s[tag=N,tag=E,tag=!S,tag=!W] run tag @s add type_2a
execute if entity @s[tag=N,tag=E,tag=!S,tag=!W] run tag @s add turn_0
execute if entity @s[tag=!N,tag=E,tag=S,tag=!W] run tag @s add type_2a
execute if entity @s[tag=!N,tag=E,tag=S,tag=!W] run tag @s add turn_1
execute if entity @s[tag=!N,tag=!E,tag=S,tag=W] run tag @s add type_2a
execute if entity @s[tag=!N,tag=!E,tag=S,tag=W] run tag @s add turn_2
execute if entity @s[tag=N,tag=!E,tag=!S,tag=W] run tag @s add type_2a
execute if entity @s[tag=N,tag=!E,tag=!S,tag=W] run tag @s add turn_3

#type_1
execute if entity @s[tag=N,tag=!E,tag=!S,tag=!W] run tag @s add type_1
execute if entity @s[tag=N,tag=!E,tag=!S,tag=!W] run tag @s add turn_0
execute if entity @s[tag=!N,tag=E,tag=!S,tag=!W] run tag @s add type_1
execute if entity @s[tag=!N,tag=E,tag=!S,tag=!W] run tag @s add turn_1
execute if entity @s[tag=!N,tag=!E,tag=S,tag=!W] run tag @s add type_1
execute if entity @s[tag=!N,tag=!E,tag=S,tag=!W] run tag @s add turn_2
execute if entity @s[tag=!N,tag=!E,tag=!S,tag=W] run tag @s add type_1
execute if entity @s[tag=!N,tag=!E,tag=!S,tag=W] run tag @s add turn_3



#set rng based on total options
execute if entity @s[tag=type_4] run scoreboard players set @s zero.rng 60
execute if entity @s[tag=type_3] run scoreboard players set @s zero.rng 60
execute if entity @s[tag=type_2b] run scoreboard players set @s zero.rng 60
execute if entity @s[tag=type_2a] run scoreboard players set @s zero.rng 60
execute if entity @s[tag=type_1] run scoreboard players set @s zero.rng 60



scoreboard players set @s zero.step 3

