# spgoding:better_fishing/init
# Execute by #minecraft:load.

scoreboard objectives add owner dummy 鱼竿所有者
scoreboard objectives add used_rod minecraft.used:minecraft.fishing_rod 使用钓鱼竿
scoreboard objectives add success dummy 命令执行成功

tellraw @a ["",{"text":"[","color":"gray"},{"text":"Better Fishing","color":"yellow"},{"text":"]","color":"gray"},{"text":" Load successfully!","color":"green"}]