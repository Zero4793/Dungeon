
execute if entity @s[tag=n,scores={zero.num=2..}] run tag @s add N
execute if entity @s[tag=n,scores={zero.num=0..}] run scoreboard players set @s zero.num -1
execute if entity @s[tag=n,scores={zero.num=-1}] run tag @s remove n

execute if entity @s[tag=e,scores={zero.num=2..}] run tag @s add E
execute if entity @s[tag=e,scores={zero.num=0..}] run scoreboard players set @s zero.num -2
execute if entity @s[tag=e,scores={zero.num=-2}] run tag @s remove e

execute if entity @s[tag=s,scores={zero.num=2..}] run tag @s add S
execute if entity @s[tag=s,scores={zero.num=0..}] run scoreboard players set @s zero.num -3
execute if entity @s[tag=s,scores={zero.num=-3}] run tag @s remove s

#dont require -num, w is last possible, no need to redo checks if w was hit
execute if entity @s[tag=w,scores={zero.num=2..}] run tag @s add W
execute if entity @s[tag=w,scores={zero.num=0..}] run tag @s remove w



#redo step_1 | rng: same value as in step_0
execute if entity @s[scores={zero.num=..-1}] run scoreboard players set @s zero.rng 2

#setup step_2
execute if entity @s[scores={zero.num=0..}] run scoreboard players set @s zero.step 2
