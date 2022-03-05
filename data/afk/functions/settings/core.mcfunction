##by Tschipcraft

tellraw @s {"text":"=-=AFK Notifier Settings=-=","bold":true,"color":"dark_green"}

execute if score .announce afk_settings matches 1 run tellraw @s ["",{"text":"\n"},{"text":"Announce players switching modes","bold":true},{"text":" \u0020"},{"text":"[on]","bold":true,"color":"green","clickEvent":{"action":"run_command","value":"/function afk:settings/announce_on"}},{"text":" \u0020| \u0020"},{"text":"[off]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function afk:settings/announce_off"}}]
execute if score .announce afk_settings matches 0 run tellraw @s ["",{"text":"\n"},{"text":"Announce players switching modes","bold":true},{"text":" \u0020 "},{"text":"[on]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function afk:settings/announce_on"}},{"text":" \u0020| \u0020"},{"text":"[off]","bold":true,"color":"red","clickEvent":{"action":"run_command","value":"/function afk:settings/announce_off"}}]

scoreboard players reset @s afk_settings_ui
