# Portals stay off: the Nether is reached by digging down through the obsidian at y=-64.
scoreboard objectives add deepnether dummy
execute unless score #installed deepnether matches 1 run gamerule allow_entering_nether_using_portals false
scoreboard players set #installed deepnether 1
scoreboard objectives add deepnether.x dummy
scoreboard objectives add deepnether.z dummy
scoreboard objectives add deepnether.d dummy
scoreboard objectives add deepnether.deaths deathCount
scoreboard objectives add deepnether.alive minecraft.custom:minecraft.time_since_death
schedule function deepnether:travel 10t replace
