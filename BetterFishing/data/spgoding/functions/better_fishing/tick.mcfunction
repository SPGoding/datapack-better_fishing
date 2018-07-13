# spgoding:better_fishing/tick
# Execute by #minecraft:tick.

# Fuck the default fishing sound.
stopsound @a * minecraft:entity.fishing_bobber.splash

# Find the owner of fishing_bobber.
scoreboard players add @e[type=minecraft:fishing_bobber] owner 0
execute as @e[type=minecraft:fishing_bobber,scores={owner=0}] at @s run scoreboard players operation @s owner = @p[scores={used_rod=1..}] uid

# Check owner's bait.
execute as @a[scores={used_rod=1..},tag=!using_bait] run function spgoding:better_fishing/check_bait
scoreboard players set @a used_rod 0

# Attract fishes.
function spgoding:better_fishing/tag_fishes
execute as @e[type=minecraft:fishing_bobber] at @s run function spgoding:better_fishing/attract_fish
execute unless entity @e[type=minecraft:fishing_bobber] as @e[tag=fish,nbt={NoAI:1b}] run data merge entity @s {NoAI:0b}

# Kill fishes.
execute as @e[type=minecraft:fishing_bobber] at @s if entity @e[distance=..1,tag=fish] run function spgoding:better_fishing/kill_fishes