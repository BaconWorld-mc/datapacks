tag @s add check

execute as @s[tag=fresh] at @s run function place:nest/colours
execute as @e[type=magma_cube,tag=!fresh] if score @s p.selector = @e[type=magma_cube,limit=1,tag=check] p.selector run tag @s add match
execute as @e[type=magma_cube,tag=match] at @s run function place:onetime/selector/kill_off

execute as @a if score @s p.selector = @e[type=magma_cube,limit=1,tag=check,tag=fresh] p.selector run tag @s add p.selected
execute as @a[tag=p.selected] at @s run function place:onetime/selector/block_selected 

tag @e[type=magma_cube] remove match
tag @s remove fresh
tag @s remove check