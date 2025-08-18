#Zero_4793

#entrance rooms skip straight to entrance_step_3, then continue normally after that
execute as @e[type=armor_stand,tag=room,tag=entrance,tag=!temp] at @s run function dungeon:generate_room/entrance_gen

#procedural generation
execute as @e[type=armor_stand,tag=room,tag=!set] at @s positioned ~2 ~ ~2 run function dungeon:generate_room/step_0
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=1}] at @s run function dungeon:generate_room/step_1
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=2}] at @s run function dungeon:generate_room/step_2
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=4}] at @s run function dungeon:generate_room/step_3
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=3}] at @s run scoreboard players add @s dungeon.step 1
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=5..6}] at @s as @e[type=armor_stand,dx=29,dy=48,dz=29] at @s run function dungeon:generate_room/step_4

#later boss may be set in generation rather than post-gen via boss mob spawn
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=6}] at @s as @e[dx=29,dy=48,dz=29] at @s run data merge entity @s {PersistenceRequired:1b}
execute as @e[type=armor_stand,tag=room,scores={dungeon.step=7}] at @s if entity @e[dx=29,dy=48,dz=29,tag=boss] run tag @s add boss

#mark rooms that have been entered
execute as @e[type=armor_stand,tag=room,tag=generated,tag=!entered] at @s if entity @a[dx=29,dy=48,dz=29,gamemode=!spectator] run fill ~9 ~48 ~9 ~22 ~48 ~22 black_concrete
execute as @e[type=armor_stand,tag=room,tag=generated,tag=!entered] at @s if entity @a[dx=29,dy=48,dz=29,gamemode=!spectator] run fill ~12 ~48 ~12 ~19 ~48 ~19 white_concrete
execute as @e[type=armor_stand,tag=room,tag=generated,tag=!entered] at @s if entity @a[dx=29,dy=48,dz=29,gamemode=!spectator] positioned ~2 ~ ~2 run function dungeon:spawn_rooms

#check boss defeat - summon exit portals
execute as @e[type=armor_stand,tag=room,tag=boss] at @s unless entity @e[dx=29,dy=48,dz=29,type=#zero:hostile] run function dungeon:boss_defeat



#dungeon enter/exit
scoreboard players remove @a[scores={dungeon=1..}] dungeon 1
scoreboard players add @a[scores={dungeon=..-1}] dungeon 1
#effects
effect give @a[scores={dungeon=1..}] nausea 4 1 true
effect give @a[scores={dungeon=90..}] blindness 6 1 true
#add particles
#Enter
execute as @a at @s if dimension minecraft:overworld if block ~ ~-1 ~ lodestone if block ~-1 ~-1 ~-1 crying_obsidian if block ~ ~-1 ~-1 crying_obsidian if block ~1 ~-1 ~-1 crying_obsidian if block ~-1 ~-1 ~ crying_obsidian if block ~1 ~-1 ~ crying_obsidian if block ~-1 ~-1 ~1 crying_obsidian if block ~ ~-1 ~1 crying_obsidian if block ~1 ~-1 ~1 crying_obsidian run scoreboard players add @s dungeon 2
execute as @a[scores={dungeon=100..100}] at @s if dimension minecraft:overworld align xyz in dungeon:dungeon run forceload add ~ ~
execute as @a[scores={dungeon=100..100}] at @s if dimension minecraft:overworld align xyz in dungeon:dungeon unless entity @e[type=armor_stand,tag=room,distance=..2] run summon armor_stand ~ ~ ~ {Invisible:1b,NoGravity:1b,Tags:[room,entrance]}
execute as @a[scores={dungeon=110..110}] at @s if dimension minecraft:overworld run tag @s add overworld
execute as @a[scores={dungeon=110..110},tag=!dungeon] at @s if dimension minecraft:overworld align xyz in dungeon:dungeon run tp @s ~16 ~6 ~16
#Exit
execute as @a at @s if dimension dungeon:dungeon if block ~ ~-1 ~ bedrock if block ~-1 ~-1 ~-1 crying_obsidian if block ~ ~-1 ~-1 crying_obsidian if block ~1 ~-1 ~-1 crying_obsidian if block ~-1 ~-1 ~ crying_obsidian if block ~1 ~-1 ~ crying_obsidian if block ~-1 ~-1 ~1 crying_obsidian if block ~ ~-1 ~1 crying_obsidian if block ~1 ~-1 ~1 crying_obsidian run scoreboard players add @s dungeon 2
execute as @a[scores={dungeon=110..110}] at @s if dimension dungeon:dungeon run tag @s add dungeon
execute as @a[scores={dungeon=110..110},tag=!overworld] at @s if dimension dungeon:dungeon in overworld run tp @s ~.5 ~-6 ~.5
#cool down
scoreboard players set @a[tag=dungeon] dungeon -600
scoreboard players set @a[tag=overworld] dungeon -600
#tag remove
tag @a remove dungeon
tag @a remove overworld
