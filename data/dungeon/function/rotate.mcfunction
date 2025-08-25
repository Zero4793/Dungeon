# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s

#turn:0 - no change

#turn:1
execute if data entity @s {data:{turn:1}} run data merge block ~ ~ ~ {posX:47,rotation:"CLOCKWISE_90"}
execute if data entity @s {data:{turn:1}} run data merge block ~ ~48 ~ {posX:47,rotation:"CLOCKWISE_90"}
#turn:2
execute if data entity @s {data:{turn:2}} run data merge block ~ ~ ~ {posX:47,posZ:47,rotation:"CLOCKWISE_180"}
execute if data entity @s {data:{turn:2}} run data merge block ~ ~48 ~ {posX:47,posZ:47,rotation:"CLOCKWISE_180"}
#turn:3
execute if data entity @s {data:{turn:3}} run data merge block ~ ~ ~ {posZ:47,rotation:"COUNTERCLOCKWISE_90"}
execute if data entity @s {data:{turn:3}} run data merge block ~ ~48 ~ {posZ:47,rotation:"COUNTERCLOCKWISE_90"}
