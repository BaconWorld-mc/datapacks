scoreboard players set @s p.timer 20

summon area_effect_cloud ~ ~ ~ {Tags:["p.cast"], Duration:500, NoGravity:1b}
execute as @e[tag=p.cast, limit=1 , sort=nearest] at @s run scoreboard players operation @s p.selector = @p p.selector
execute as @e[tag=p.cast, limit=1 , sort=nearest] at @s if score @s p.selector = @p p.selector rotated as @p run tp ^ ^ ^

execute as @s at @s run function place:raycast/loop