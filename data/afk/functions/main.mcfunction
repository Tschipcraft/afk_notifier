## by Tschipcraft

# deactivate afk-ing
execute as @e[type=minecraft:area_effect_cloud,tag=afk] at @s at @a[team=afk,nbt={RootVehicle:{Entity:{id:"minecraft:minecart"}}},distance=..1] run tp @s ~ ~ ~
execute as @e[type=minecraft:area_effect_cloud,tag=afk] at @s unless entity @a[distance=..0.3,team=afk] run kill @s
execute as @a[team=afk] at @s unless entity @e[tag=afk,distance=..0.3] run function afk:afk_deactivate

# activate afk-ing
execute as @a[scores={afk=1..},team=afk] run tellraw @s {"text":"You are already afk!","color":"red"}
execute as @a[scores={afk=1..},team=!afk] at @s run function afk:afk_activate
scoreboard players reset @a[scores={afk=1..}] afk

# enable afk-ing for all players (@a)
scoreboard players enable @a afk
scoreboard players enable @a afk_settings_ui
scoreboard players enable @a menu

# settings
execute as @a[scores={afk_settings_ui=1..}] run function afk:settings/core

# welcome & menu
scoreboard players add @a afk_welcome 0
execute as @a[scores={menu=1..60,afk_welcome=1}] run scoreboard players set @s afk_welcome 0
execute as @a[scores={afk_welcome=0}] run function afk:messages/welcome
execute as @a[scores={afk_how_to_use=1}] run function afk:messages/how_to_use

execute as @a[scores={menu=1..60,afk_welcome=1}] run scoreboard players set @s afk_welcome 2
execute as @a[scores={menu=61..}] run scoreboard players set @s afk_welcome 1
scoreboard players reset @a[scores={menu=122..}] menu
scoreboard players add @a[scores={menu=1..}] menu 1
