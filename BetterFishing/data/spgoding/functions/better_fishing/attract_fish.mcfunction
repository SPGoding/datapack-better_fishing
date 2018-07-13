# spgoding:better_fishing/attract_fish
# Executed as fishing_bobber.

tag @s add executor
execute as @e[tag=fish] if score @s owner = @e[tag=executor,limit=1] owner run tag @s add target_fish
execute unless entity @e[tag=target_fish] run scoreboard players operation @e[distance=..64,tag=fish,sort=random,limit=1] owner = @s owner
execute as @e[tag=fish] if score @s owner = @e[tag=executor,limit=1] owner run tag @s add target_fish

# Entities:
# @e[tag=target_fish]: The target fish.
# @s: The fishing_bobber.

#effect give @e[tag=target_fish,limit=1] minecraft:glowing 1 1 true

data merge entity @e[tag=target_fish,limit=1] {NoAI:1b}
execute as @e[tag=target_fish,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=executor,limit=1]
execute as @e[tag=target_fish,limit=1] at @s run tp @s ^ ^ ^0.1

tag @s remove executor
tag @e remove target_fish