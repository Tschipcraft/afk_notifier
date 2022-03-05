## by Tschipcraft

tellraw @s ["",{"text":"=-= How to use =-=","bold":true,"color":"gold"},{"text":"\n"},{"text":"If you want to go AFK you can go into the \"AFK mode\" with the command ","color":"aqua"},{"text":"/trigger afk","italic":true,"color":"aqua","clickEvent":{"action":"suggest_command","value":"/trigger afk"},"hoverEvent":{"action":"show_text","contents":"Click here"}},{"text":" to show other players that you are currently AFK. That's it.","color":"aqua"}]
scoreboard players reset @s afk_how_to_use
scoreboard players enable @s afk_how_to_use
