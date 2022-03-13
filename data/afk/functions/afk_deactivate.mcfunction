## by Tschipcraft

team leave @s
tellraw @s {"text":"You are no longer afk!","color":"gold"}

## Announce
execute if score .announce afk_settings matches 1 run tellraw @a [{"selector":"@s","color":"gold"},{"text":" is no longer afk!","color":"gold"}]
