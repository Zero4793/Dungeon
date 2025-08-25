# About
An infinite dungeon to explore in survival.
Craft the portal, gather your supplies, venture in, survive and loot, finally defeat the boss to exit.
Entrance portal is lodestone surrounded by 8 crying obsidian.

Entrance: lodestone surrounded by crying obsidian
Exit: bedrock surrounded by crying obsidian

Warning: Currently there is only 1 boss room, and it is not yet guaranteed how soon you will come across it, so you may become trapped. apologies if this happens to you. Will be fixed in future versions.
## Rooms Credits
### Zero [​Discord: zero_4793]
lava-cave_1
trial-by-fire_2a
trap-1_4
hell-bridge_2b
classic-tunnel_*
nether-tunnel_*
quartz-tunnel_*
### xXBaZzAXx [​Discord: bazzaaaaa]
#### Nether
bone-bridge-test_2b
nether-bridge-3
warped-forest_4
nether-parkour_1
#### Underground / Stone
abandoned-mine_2a
lava-cave-2_2b
underground-passage-1_4
lava-maze_2a
ancient-hall_1
the-forge_3
### TechCircuit [​www.planetminecraft.com/member/techcircuit/]
entrance_3
basic-dungeon-1_2b
entrance-1_3
dungeon-run-1_2a
dungeon-cave-1_2b
# Plan
performance like clock checks can come later, for now just get working
forceload on larger range, before they even step on portal. have range buffer so not flickering load/unload

in overworld: #default
	as/at all marker-enter:
		if player near: in dungeon: forceload
		else: in dungeon: forceunload
		if blocks broke: kill @s
	as/at all player:
		if on blocks with no marker-enter: spawn marker-enter
		if on marker-enter: in dungeon:
			if no marker: spawn marker-spawn
			if marker-entry:
				tp @s to marker-entry
in dungeon:
	as/at all marker-spawn-!room:
		pick theme
		pick room from <theme>/s
		load <room>
		as/at all stands{name=spawn}:
			spawn marker-entry
			kill @s
		age--?
		tag @s room
	as/at all marker-room:
		if no room:
			detect door criteria
			rand optional
			assign type & turn based on door flags
			pick room from <theme>/<type>
			map = <theme>/<type>
			<turn> & load <room>
			<turn> & load <map>
			trigger & kill; command & chest stands
			merge entities {PersistenceRequired:1b}
		if !been and player:
			for each door: summon marker-room with <theme>
			load been
			tag been
		age++
		if age=old:
			kill room
			kill @s
	as/at all marker-exit:
		if player near: in overworld: forceload
		else: in overworld: forceunload
	as/at all player:
		if on marker-exit:
			in overworld: tp @s marker-enter

/trigger settings
/trigger credit
	tell current room name and creator
	button for [credits]
/trigger credits
	list all rooms and creators
# Ideas
custom loot tables
add time/stage based generation; start with larger door counts, then decrease. expand than wrap up
make dimension scaling a multiple of 48. dungeons could then join up