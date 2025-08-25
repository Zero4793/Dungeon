# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!found] at @s when first player enters

# load found
setblock ~ ~50 ~ structure_block{mode:"LOAD",posY:0,name:"dungeon:found"}
setblock ~ ~50 ~1 redstone_block

# for each door: summon marker-room with <theme>
$execute if block ~ ~49 ~1 bedrock unless block ~-47 ~-1 ~ reinforced_deepslate run summon marker ~-47 ~ ~ {Tags:[dungeon,room],data:{theme:$(theme)}}
$execute if block ~2 ~49 ~1 bedrock unless block ~47 ~-1 ~ reinforced_deepslate run summon marker ~47 ~ ~ {Tags:[dungeon,room],data:{theme:$(theme)}}
$execute if block ~1 ~49 ~ bedrock unless block ~ ~-1 ~-47 reinforced_deepslate run summon marker ~ ~ ~-47 {Tags:[dungeon,room],data:{theme:$(theme)}}
$execute if block ~1 ~49 ~2 bedrock unless block ~ ~-1 ~47 reinforced_deepslate run summon marker ~ ~ ~47 {Tags:[dungeon,room],data:{theme:$(theme)}}

# done
tag @s add found