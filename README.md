# Deep Nether

**The Nether is no longer another dimension. It's right under your feet.**

Deep Nether moves the Nether directly beneath the Overworld. There are no portals and no loading screens. Bedrock is gone, and the bottom of the world is now a layer of obsidian. Mine through it and you break into the ceiling of the Nether, with its lava ocean, crimson forests and bastions spread out below you.

It's a pure datapack. It runs on the server, so vanilla clients can join without installing anything.

---

## How it works

| Height | What's there |
|---|---|
| y 319 to −59 | The normal Overworld, unchanged |
| y −59 to −70 | **Obsidian layer**, replacing bedrock. It's at least 2 blocks thick, and you need a diamond pickaxe. |
| y −65 to −192 | **The Nether**, a full 128-block-tall Nether |
| y −192 | Bedrock floor, the true bottom of the world |

The world's minimum height is extended from −64 down to −192 to make room.

---

## Features

### The Nether layer
- **Nether terrain**: big open caverns, cliffs, ledges and a **lava ocean** from y −161 down.
- **All five Nether biomes**: Nether Wastes, Crimson Forest, Warped Forest, Soul Sand Valley and Basalt Deltas, each with its own surface blocks (nylium, soul sand, soul soil, basalt, blackstone, gravel).
- **Vanilla Nether decoration**: glowstone, huge fungi, weeping and twisting vines, roots, sprouts, basalt pillars and columns, deltas, fire, soul fire, lava springs and mushrooms.
- **Nether ores**: Nether quartz, Nether gold and **ancient debris** at its usual depth.
- **Nether mobs** spawn by biome: ghasts, piglins, zombified piglins, hoglins, striders, magma cubes, endermen and skeletons.
- **Nether music, ambience and fog** in every Nether biome.

### Nether rules, in the Nether
The game normally applies Nether rules to the whole Nether dimension. Deep Nether applies them to the Nether *biomes* instead:
- Piglins **don't zombify** in the Nether, and still do on the surface.
- **Beds explode** in the Nether.
- **Respawn anchors** work in the Nether.
- **Water evaporates** when placed in the Nether.
- Raids can't start and snow golems melt in the Nether.

### Structures
- **Bastion remnants**: the vanilla structure with vanilla loot, sitting on the lava ocean.
- **Nether fortresses, rebuilt**: brand-new fortresses designed for Deep Nether, with:
  - **Blaze spawner thrones**
  - Castle wings with battlements, corridors, balconies, stairs, rooms with caged lava pillars, and nether wart gardens
  - **Treasure rooms** with several chests, guarded by a wither skeleton spawner
  - The vanilla fortress mob spawns: blazes, wither skeletons, skeletons, magma cubes and zombified piglins
- **Nether fossils**: all 14 vanilla fossil shapes on soul sand valley floors, with the vanilla **50% chance of a dried ghast**.
- **Nether wart** also grows naturally on soul sand in soul sand valleys.

### No more portals
Nether portals are disabled the first time the pack loads, using the gamerule `allow_entering_nether_using_portals`. To get to the Nether, you dig.

### Advancements, adjusted
| Advancement | New requirement |
|---|---|
| **We Need to Go Deeper** / **Nether** tab | Reach a Nether biome below the obsidian |
| **Subspace Bubble** | Travel 875 blocks through the Nether in one trip. This is the same effort as the vanilla 7 km in Overworld terms. |
| **Uneasy Alliance** | Kill a ghast **above** the obsidian, meaning you brought it up to the surface |
| **Feels Like Home** | Ride a strider 50 blocks on lava **above** the obsidian |

All other Nether advancements work as in vanilla, including **A Terrible Fortress**, Hot Tourist Destinations, Those Were the Days, Into Fire and Hidden in the Depths.

### The Overworld is untouched
Caves, aquifers, ores, geodes, ancient cities, trial chambers and deep dark all generate as in vanilla. In testing, ore and lava amounts below y 0 matched an unmodified world almost exactly. The only change is obsidian instead of bedrock at the bottom.

---

## Installation

> ⚠️ **A new world is required.** World generation changes only apply to newly created worlds.

**Singleplayer:** Create New World → **Data Packs** → drag the zip in → create the world.

**Server:**
1. Choose a new world name (`level-name` in `server.properties`), or move the old world folder away.
2. Create the folder `<level-name>/datapacks/` and put the zip inside.
3. Start the server.

Supports **Minecraft Java Edition 26.3**.

---

## Differences from vanilla and known limitations

- **No 1:8 travel shortcut.** The Nether layer is at the same scale as the Overworld, so it isn't a fast-travel network.
- **Fortresses are custom builds.** The vanilla fortress generator is hardcoded to its height, so fortresses were redesigned from scratch. They look different from vanilla, have more chests, and add a new treasure room. Blaze spawner thrones are random, so most fortresses have 1–3 and a small one may have none.
- **Nether fossils are decorations, not a structure.** `/locate structure minecraft:nether_fossil` won't find them.
- **Lava flows at Overworld speed** in the Nether layer. The game only allows fast lava for a whole dimension.
- **It's darker than the real Nether.** The Nether's constant dim glow is set per dimension, so the layer is lit only by lava, glowstone and fire. Bring torches. Sunlight can also shine down into the Nether through shafts dug from the surface.
- **The cave layout is not identical to vanilla.** The overall shape is close to the vanilla Nether, with similar caverns, open space and lava ocean, but it's generated differently. The Nether's narrow carved tunnels aren't included.
- **Strongholds can generate partly inside the Nether layer**, because the game places them anywhere between the world bottom and sea level. Eyes of ender still lead to them. Mineshafts that would land in the Nether are skipped, and their frequency is raised slightly to compensate.
- **The Nether layer counts as the Overworld** for compasses, clocks, maps and mob caps. Compasses and clocks work down there.
- **Default world type only.** Amplified, Large Biomes and other world presets are not supported.
- **Incompatible** with other datapacks or mods that change Overworld terrain generation, the Overworld's height, or the Nether biomes.
- **New chunks take about twice as long to generate**, because every chunk contains both an Overworld and a Nether section.
- **The original Nether dimension still exists** but can't be reached without commands, and its decoration is stripped.
- **Ruined portals** still appear in the Overworld as decoration, but portals can't be used.