## by Tschipcraft

kill @e[tag=afk]
execute as @a[team=afk] run tellraw @s {"text":"You are no longer afk!","color":"gold"}
execute as @a[team=afk] run team leave @s

say AFK Notifier reset by @s!
