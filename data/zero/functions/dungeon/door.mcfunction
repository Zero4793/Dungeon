
execute if dimension zero:dungeon positioned ^ ^2 ^.5 if entity @a[gamemode=!spectator,distance=..4] positioned ^ ^ ^-.5 run fill ^ ^ ^ ^ ^2 ^1 air
execute if dimension zero:dungeon positioned ^ ^2 ^.5 if entity @a[gamemode=!spectator,distance=..4] positioned ^ ^-2 ^-.5 run setblock ~ ~ ~ bedrock

