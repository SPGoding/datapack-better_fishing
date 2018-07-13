# spgoding:uid/tick
# Execute by #minecraft:tick.

scoreboard players add @a uid 0
execute as @a[scores={uid=0}] run scoreboard players add #highest uid 1
execute as @a[scores={uid=0}] run scoreboard players operation @s uid = #highest uid