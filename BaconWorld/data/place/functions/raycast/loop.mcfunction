execute as @e[tag= p.cast] at @s if score @s p.selector = @p[distance=4.75..] p.selector run kill @s
execute as @e[tag= p.cast] at @s if block ~ ~1.5 ~ #place:okay run tp ^ ^ ^.1
execute as @e[tag= p.cast] at @s unless block ~ ~1.5 ~ #place:okay positioned ~ ~1 ~ align xyz positioned ~.5 ~ ~.5 unless entity @e[tag=selector, distance=..0.5] align xyz run function place:onetime/selector/selector
execute as @e[tag= p.cast] at @s unless block ~ ~1.5 ~ #place:okay positioned ~ ~1 ~ align xyz positioned ~.5 ~ ~.5 if entity @e[tag=selector, distance=..0.5] run kill @s
execute as @e[tag= p.cast] at @s if block ~ ~1.5 ~ #place:okay run function place:raycast/loop