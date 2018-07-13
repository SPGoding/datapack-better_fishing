# spgoding:better_fishing/check_bait
# Execute as the fishing_rod's owner.

# Try { 
#   Cost bait.
execute as @s store success score @s success run clear @s #spgoding:better_fishing/bait 1
# } Catch {
#   Remove bobber.
execute if score @s success matches 0 run tellraw @s {"text":"You don't have any bait.","color":"red"}
execute if score @s success matches 0 run tag @s add executor
execute if score @s success matches 0 run execute as @e[type=fishing_bobber] if score @s owner = @p[tag=executor] uid run tag @s add dead
execute if score @s success matches 0 run kill @e[tag=dead]
execute if score @s success matches 0 run tag @s remove executor
# }
execute unless score @s success matches 0 run tag @s add using_bait