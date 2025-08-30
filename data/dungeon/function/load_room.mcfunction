# in dungeon as @e[type=marker,tag=dungeon,tag=room,tag=!made] at @s with @s data

$data merge block ~ ~ ~ {name:"dungeon:$(theme)/$(type)-$(name)"}
$say Loaded $(theme)/$(type)-$(name) by $(credit)!