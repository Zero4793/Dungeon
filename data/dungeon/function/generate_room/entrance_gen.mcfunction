scoreboard players set @s zero.rng 12
execute if entity @s run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"zero:dungeon/classic-tunnel_4"}

execute if entity @s[tag=set] run tag @s add temp
execute if entity @s[tag=temp,scores={zero.num=1..1}] run data merge block ~ ~ ~ {name:"zero:dungeon/classic-tunnel_3"}
execute if entity @s[tag=temp,scores={zero.num=2..2}] run data merge block ~ ~ ~ {name:"zero:dungeon/classic-tunnel_2b"}
execute if entity @s[tag=temp,scores={zero.num=3..3}] run data merge block ~ ~ ~ {name:"zero:dungeon/classic-tunnel_2a"}
execute if entity @s[tag=temp,scores={zero.num=4..4}] run data merge block ~ ~ ~ {name:"zero:dungeon/classic-tunnel_1"}
execute if entity @s[tag=temp,scores={zero.num=5..12}] run data merge block ~ ~ ~ {name:"zero:dungeon/entrance-1_3"}

execute if entity @s[tag=temp] run setblock ~ ~1 ~ redstone_block
execute if entity @s[tag=temp] run scoreboard players set @s zero.step 5
tag @s add set
