execute store result score #dx deepnether.d run data get entity @s Pos[0]
execute store result score #dz deepnether.d run data get entity @s Pos[2]
scoreboard players operation #dx deepnether.d -= @s deepnether.x
scoreboard players operation #dz deepnether.d -= @s deepnether.z
execute if score #dx deepnether.d matches ..-875 run return run advancement grant @s only minecraft:nether/fast_travel
execute if score #dx deepnether.d matches 875.. run return run advancement grant @s only minecraft:nether/fast_travel
execute if score #dz deepnether.d matches ..-875 run return run advancement grant @s only minecraft:nether/fast_travel
execute if score #dz deepnether.d matches 875.. run return run advancement grant @s only minecraft:nether/fast_travel
scoreboard players operation #dx deepnether.d *= #dx deepnether.d
scoreboard players operation #dz deepnether.d *= #dz deepnether.d
scoreboard players operation #dx deepnether.d += #dz deepnether.d
execute if score #dx deepnether.d matches 765625.. run advancement grant @s only minecraft:nether/fast_travel
