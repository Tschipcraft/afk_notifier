## by Tschipcraft

execute as @e[type=armor_stand,tag=spa_leg_test] at @s run tp @s @e[type=area_effect_cloud,tag=spa_leg_test,limit=1,sort=nearest]
execute as @e[type=area_effect_cloud,tag=spa_leg_test] at @s run tp @s ~ ~2 ~
execute as @e[type=armor_stand,tag=spa_leg_test] at @s run tp @s ~ ~2 ~

execute as @e[type=armor_stand,tag=spa_leg_test] at @s unless entity @e[type=area_effect_cloud,tag=spa_leg_test,distance=..0.5] run tellraw @a ["",{"text":"[AFK Notifier]","color":"gray"},{"text":" An error was observed. This data pack may not work correctly. Please make sure that there is no command block/plugin that removes area effect clouds.","bold":true,"color":"red"},{"text":" ","bold":true,"color":"red"},{"text":"(Error: area_effect_cloud_deleted)","color":"red","clickEvent":{"action":"copy_to_clipboard","value":"area_effect_cloud_deleted"},"hoverEvent":{"action":"show_text","contents":"Click here to copy the error"}}]

kill @e[tag=spa_leg_test]
