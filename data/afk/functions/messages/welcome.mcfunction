## by Tschipcraft

tellraw @s ["",{"text":"➤ AFK Notifier by Tschipcraft installed!","italic":false,"color":"green"},{"text":"\n"},{"text":"[How to use]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger afk_how_to_use"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":" "},{"text":"[Settings]","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger afk_settings_ui"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":" "},{"text":"[Reset]","color":"red","clickEvent":{"action":"run_command","value":"/function afk:reset"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Reset the whole data pack. ","color":"white"},{"text":"Note: Will deactivate the afk mode for all players!","color":"red"}]}},{"text":" "},{"text":"[Uninstall]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function afk:uninstall"},"hoverEvent":{"action":"show_text","contents":["",{"text":"Uninstalls the data pack. ","color":"white"},{"text":"Note: Will deactivate the afk mode for all players!","color":"red"}]}},{"text":" "},{"text":"[Check for updates] ","color":"blue","clickEvent":{"action":"open_url","value":"https://tschipcraft.ddns.net/update/test.html?pack=afk_notifier&v=1.5"},"hoverEvent":{"action":"show_text","contents":"Click here to check for updates"}}]
scoreboard players enable @s afk_how_to_use
scoreboard players set @s afk_welcome 1
