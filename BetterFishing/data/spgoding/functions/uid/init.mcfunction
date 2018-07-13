# spgoding:uid/init
# Execute by #minecraft:load.

scoreboard objectives add uid dummy 玩家唯一标识符
scoreboard objectives setdisplay list uid
scoreboard players add #highest uid 0

tellraw @a ["",{"text":"[","color":"gray"},{"text":"Player UID","color":"yellow"},{"text":"]","color":"gray"},{"text":" Load successfully!","color":"green"}]
