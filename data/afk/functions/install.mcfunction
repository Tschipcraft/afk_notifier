## by Tschipcraft

scoreboard objectives add afk trigger
scoreboard objectives add afk_welcome dummy
scoreboard objectives add afk_how_to_use trigger
scoreboard objectives add afk_settings dummy
scoreboard objectives add afk_settings_ui trigger
scoreboard objectives add menu trigger
team add afk
team modify afk color gray
team modify afk prefix {"text":"[AFK] ","color":"gray"}
execute at @r run schedule function afk:legacy/test 2s

execute unless score .announce afk_settings matches 0..1 run scoreboard players set .announce afk_settings 0
