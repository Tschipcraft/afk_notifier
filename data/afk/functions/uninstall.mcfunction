## by Tschipcraft

kill @e[tag=afk]
execute as @a[team=afk] run tellraw @s {"text":"You are no longer afk!","color":"gold"}
execute as @a[team=afk] run team leave @s

team remove afk
scoreboard objectives remove afk
scoreboard objectives remove afk_welcome
scoreboard objectives remove afk_how_to_use
scoreboard objectives remove afk_settings
scoreboard objectives remove afk_settings_ui
scoreboard objectives remove menu

datapack disable "file/afk.zip"
datapack disable "file/afk"
datapack disable "file/afk-v1.5-mc1.18-datapack.zip"

say AFK Notifier by Tschipcraft uninstalled!
