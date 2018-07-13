# spgoding:better_fishing/kill_fishes
# Execute as fishing_rod.

tag @e[limit=1,tag=fish,distance=..1] add dead_fish
tag @s add executor
execute as @a if score @s uid = @e[tag=executor,limit=1] owner run tag @s add owner
tag @s remove executor
teleport @e[tag=dead_fish] @p[tag=owner]
kill @e[tag=dead_fish]
kill @s
execute as @p[tag=owner] at @s run playsound minecraft:item.bucket.fill_fish player @s ~ ~ ~
tag @p[tag=owner] remove using_bait
tag @a remove owner