# Portals stay off: the Nether is reached by digging down through the obsidian at y=-64.
scoreboard objectives add deepnether dummy
execute unless score #installed deepnether matches 1 run gamerule allow_entering_nether_using_portals false
execute unless score #installed deepnether matches 1 run tellraw @a [{"text":"[Deep Nether] ","color":"dark_red"},{"text":"The Nether is directly below you. Dig through the obsidian at the bottom of the world.","color":"gray"}]
scoreboard players set #installed deepnether 1
scoreboard objectives add deepnether.x dummy
scoreboard objectives add deepnether.z dummy
scoreboard objectives add deepnether.d dummy
schedule function deepnether:travel 10t replace
