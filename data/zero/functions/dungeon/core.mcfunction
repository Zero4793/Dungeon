#Zero_4793

execute if score zero.datapackLoad server matches 1 run scoreboard players add zero.datapackCount server 1
execute if score zero.datapackLoad server matches 1 run tellraw @a [{"color":"aqua","text":"  "},{"text":"Dungeon ","hoverEvent":{"action":"show_text","contents":[{"text":"A survival friendly infinite dungeon.","color":"blue"},{"text": "\nPlease re-enter the world after initial reload to initialise the dungeon dimension","color": "gray"}]},"color":"aqua","bold":true},{"text":"v"},{"score":{"name":"zero.dungeon-a","objective":"version"}},{"text":"."},{"score":{"name":"zero.dungeon-b","objective":"version"}},{"color":"light_purple","text":" by Zero_4793","hoverEvent":{"action":"show_text","contents":{"text":"Open PlanetMinecraft page for Zero_4793","color":"green"}},"clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/member/zero_4793/"}}]

#entrance rooms skip straight to entrance_step_3, then continue normally after that
execute as @e[type=armor_stand,tag=room,tag=entrance,tag=!temp] at @s run function zero:dungeon/generate_room/entrance_gen

#procedural generation
execute as @e[type=armor_stand,tag=room,tag=!set] at @s positioned ~2 ~ ~2 run function zero:dungeon/generate_room/step_0
execute as @e[type=armor_stand,tag=room,scores={zero.step=1}] at @s run function zero:dungeon/generate_room/step_1
execute as @e[type=armor_stand,tag=room,scores={zero.step=2}] at @s run function zero:dungeon/generate_room/step_2
execute as @e[type=armor_stand,tag=room,scores={zero.step=4}] at @s run function zero:dungeon/generate_room/step_3
execute as @e[type=armor_stand,tag=room,scores={zero.step=3}] at @s run scoreboard players add @s zero.step 1
execute as @e[type=armor_stand,tag=room,scores={zero.step=5..6}] at @s as @e[type=armor_stand,dx=29,dy=48,dz=29] at @s run function zero:dungeon/generate_room/step_4

#later boss may be set in generation rather than post-gen via boss mob spawn
execute as @e[type=armor_stand,tag=room,scores={zero.step=6}] at @s as @e[dx=29,dy=48,dz=29] at @s run data merge entity @s {PersistenceRequired:1b}
execute as @e[type=armor_stand,tag=room,scores={zero.step=7}] at @s if entity @e[dx=29,dy=48,dz=29,tag=boss] run tag @s add boss

#mark rooms that have been entered
execute as @e[type=armor_stand,tag=room,tag=generated,tag=!entered] at @s if entity @a[dx=29,dy=48,dz=29,gamemode=!spectator] run fill ~9 ~48 ~9 ~22 ~48 ~22 black_concrete
execute as @e[type=armor_stand,tag=room,tag=generated,tag=!entered] at @s if entity @a[dx=29,dy=48,dz=29,gamemode=!spectator] run fill ~12 ~48 ~12 ~19 ~48 ~19 white_concrete
execute as @e[type=armor_stand,tag=room,tag=generated,tag=!entered] at @s if entity @a[dx=29,dy=48,dz=29,gamemode=!spectator] positioned ~2 ~ ~2 run function zero:dungeon/spawn_rooms

#check boss defeat - summon exit portals
execute as @e[type=armor_stand,tag=room,tag=boss] at @s unless entity @e[dx=29,dy=48,dz=29,type=#zero:hostile] run function zero:dungeon/boss_defeat



#dungeon enter/exit
scoreboard players remove @a[scores={dungeon=1..}] dungeon 1
scoreboard players add @a[scores={dungeon=..-1}] dungeon 1
#effects
effect give @a[scores={dungeon=1..}] nausea 4 1 true
effect give @a[scores={dungeon=90..}] blindness 6 1 true
#add particles
#Enter
execute as @a at @s if dimension minecraft:overworld if block ~ ~-1 ~ lodestone if block ~-1 ~-1 ~-1 crying_obsidian if block ~ ~-1 ~-1 crying_obsidian if block ~1 ~-1 ~-1 crying_obsidian if block ~-1 ~-1 ~ crying_obsidian if block ~1 ~-1 ~ crying_obsidian if block ~-1 ~-1 ~1 crying_obsidian if block ~ ~-1 ~1 crying_obsidian if block ~1 ~-1 ~1 crying_obsidian run scoreboard players add @s dungeon 2
execute as @a[scores={dungeon=100..100}] at @s if dimension minecraft:overworld align xyz in zero:dungeon run forceload add ~ ~
execute as @a[scores={dungeon=100..100}] at @s if dimension minecraft:overworld align xyz in zero:dungeon unless entity @e[type=armor_stand,tag=room,distance=..2] run summon armor_stand ~ ~ ~ {Invisible:1,NoGravity:1,Tags:[room,entrance]}
execute as @a[scores={dungeon=110..110}] at @s if dimension minecraft:overworld run tag @s add overworld
execute as @a[scores={dungeon=110..110},tag=!dungeon] at @s if dimension minecraft:overworld align xyz in zero:dungeon run tp @s ~16 ~6 ~16
#Exit
execute as @a at @s if dimension zero:dungeon if block ~ ~-1 ~ bedrock if block ~-1 ~-1 ~-1 crying_obsidian if block ~ ~-1 ~-1 crying_obsidian if block ~1 ~-1 ~-1 crying_obsidian if block ~-1 ~-1 ~ crying_obsidian if block ~1 ~-1 ~ crying_obsidian if block ~-1 ~-1 ~1 crying_obsidian if block ~ ~-1 ~1 crying_obsidian if block ~1 ~-1 ~1 crying_obsidian run scoreboard players add @s dungeon 2
execute as @a[scores={dungeon=110..110}] at @s if dimension zero:dungeon run tag @s add dungeon
execute as @a[scores={dungeon=110..110},tag=!overworld] at @s if dimension zero:dungeon in overworld run tp @s ~.5 ~-6 ~.5
#cool down
scoreboard players set @a[tag=dungeon] dungeon -600
scoreboard players set @a[tag=overworld] dungeon -600
#tag remove
tag @a remove dungeon
tag @a remove overworld
