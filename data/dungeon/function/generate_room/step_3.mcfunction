#Zero_4793

#4
execute if entity @s[tag=type_4] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"zero:dungeon/classic-tunnel_4"}
execute if entity @s[tag=type_4,scores={zero.num=1..6}] run data merge block ~ ~ ~ {name:"zero:dungeon/trap-1_4"}
execute if entity @s[tag=type_4,scores={zero.num=7..12}] run data merge block ~ ~ ~ {name:"zero:dungeon/warped-forest_4"}
execute if entity @s[tag=type_4,scores={zero.num=13..18}] run data merge block ~ ~ ~ {name:"zero:dungeon/bray-nether-fortress-1_4"}
execute if entity @s[tag=type_4,scores={zero.num=19..24}] run data merge block ~ ~ ~ {name:"zero:dungeon/sand-trap_4"}
execute if entity @s[tag=type_4,scores={zero.num=25..30}] run data merge block ~ ~ ~ {name:"zero:dungeon/underground-passage-1_4"}
execute if entity @s[tag=type_4,scores={zero.num=31..36}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-tunnel_4"}

#3
execute if entity @s[tag=type_3] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"zero:dungeon/classic-tunnel_3"}
execute if entity @s[tag=type_3,scores={zero.num=1..10}] run data merge block ~ ~ ~ {name:"zero:dungeon/entrance-1_3"}
execute if entity @s[tag=type_3,scores={zero.num=11..20}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-bridge_3"}
execute if entity @s[tag=type_3,scores={zero.num=21..30}] run data merge block ~ ~ ~ {name:"zero:dungeon/the-forge_3"}
execute if entity @s[tag=type_3,scores={zero.num=31..40}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-tunnel_3"}

#2b
execute if entity @s[tag=type_2b] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"zero:dungeon/classic-tunnel_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=1..6}] run data merge block ~ ~ ~ {name:"zero:dungeon/basic-dungeon-1_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=7..12}] run data merge block ~ ~ ~ {name:"zero:dungeon/bone-bridge_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=13..18}] run data merge block ~ ~ ~ {name:"zero:dungeon/crossway-lava-express_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=19..24}] run data merge block ~ ~ ~ {name:"zero:dungeon/hell-bridge_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=25..30}] run data merge block ~ ~ ~ {name:"zero:dungeon/lava-cave-2_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=31..36}] run data merge block ~ ~ ~ {name:"zero:dungeon/bridge-fight_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=37..42}] run data merge block ~ ~ ~ {name:"zero:dungeon/dungeon-cave-1_2b"}
execute if entity @s[tag=type_2b,scores={zero.num=43..48}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-tunnel_2b"}

#2a
execute if entity @s[tag=type_2a] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"zero:dungeon/classic-tunnel_2a"}
execute if entity @s[tag=type_2a,scores={zero.num=1..10}] run data merge block ~ ~ ~ {name:"zero:dungeon/trial-by-fire_2a"}
execute if entity @s[tag=type_2a,scores={zero.num=11..20}] run data merge block ~ ~ ~ {name:"zero:dungeon/dungeon-run-1_2a"}
execute if entity @s[tag=type_2a,scores={zero.num=21..30}] run data merge block ~ ~ ~ {name:"zero:dungeon/lava-maze_2a"}
execute if entity @s[tag=type_2a,scores={zero.num=31..40}] run data merge block ~ ~ ~ {name:"zero:dungeon/abandoned-mine_2a"}
execute if entity @s[tag=type_2a,scores={zero.num=41..50}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-room-1_2a"}
execute if entity @s[tag=type_2a,scores={zero.num=51..60}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-tunnel_2a"}

#1
execute if entity @s[tag=type_1] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"zero:dungeon/classic-tunnel_1"}
execute if entity @s[tag=type_1,scores={zero.num=1..10}] run data merge block ~ ~ ~ {name:"zero:dungeon/lava-cave_1"}
execute if entity @s[tag=type_1,scores={zero.num=11..20}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-parkour_1"}
execute if entity @s[tag=type_1,scores={zero.num=21..30}] run data merge block ~ ~ ~ {name:"zero:dungeon/lich-kings-throne_1"}
execute if entity @s[tag=type_1,scores={zero.num=31..40}] run data merge block ~ ~ ~ {name:"zero:dungeon/ancient-hall_1"}
execute if entity @s[tag=type_1,scores={zero.num=41..50}] run data merge block ~ ~ ~ {name:"zero:dungeon/nether-tunnel_1"}
execute if entity @s[tag=type_1,scores={zero.num=51..60}] run data merge block ~ ~ ~ {name:"zero:dungeon/dungeon-tower_1"}

#turn_1
execute if entity @s[tag=turn_1] run data merge block ~ ~ ~ {posX:31,rotation:"CLOCKWISE_90"}
#turn_2
execute if entity @s[tag=turn_2] run data merge block ~ ~ ~ {posX:31,posZ:31,rotation:"CLOCKWISE_180"}
#turn_3
execute if entity @s[tag=turn_3] run data merge block ~ ~ ~ {posZ:31,rotation:"COUNTERCLOCKWISE_90"}

#trigger
setblock ~ ~1 ~ redstone_block
scoreboard players set @s zero.step 5
