## by Tschipcraft

summon area_effect_cloud ~ ~ ~ {PersistanceRequired:1b,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:51840000,DurationOnUse:0f,Tags:["afk"]}
## summon armor_stand ~ ~ ~ {Tags:[afk],Marker:1,Invisible:1,NoGravity:1,Small:1,Silent:1b,NoBasePlate:1b,PersistanceRequired:1b}
tellraw @s {"text":"You are now afk!","color":"light_purple"}

## Announce
execute if score .announce afk_settings matches 1 run tellraw @a [{"selector":"@s","color":"light_purple"},{"text":" is now afk!","color":"light_purple"}]

team join afk @s
