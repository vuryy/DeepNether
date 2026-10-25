# "Subspace Bubble": remember where each player entered the Nether layer and grant it 875 blocks away
execute as @a[tag=!deepnether.below] if predicate deepnether:in_layer run function deepnether:travel_start
execute as @a[tag=deepnether.below] unless predicate deepnether:in_layer run tag @s remove deepnether.below
execute as @a[tag=deepnether.below] unless entity @s[advancements={minecraft:nether/fast_travel=true}] run function deepnether:travel_check
# Client bug workaround: a respawned player keeps hearing the Nether ambience loop of their old body
execute as @a[scores={deepnether.deaths=1..,deepnether.alive=1..}] run function deepnether:respawned
schedule function deepnether:travel 10t replace
