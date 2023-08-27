fill ~14 ~5 ~14 ~16 ~5 ~16 crying_obsidian
setblock ~15 ~5 ~15 bedrock
tag @s remove boss

tellraw @a[distance=..1000] {"text":"The boss has been defeated!","color":"green"}

#temp measure
