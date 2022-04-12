#Timers
execute as @a[scores={p.timer=1..}] run scoreboard players remove @a p.timer 1

#Assigning selector
execute as @a unless score @s p.selector matches 1.. run function place:onetime/assigning_selector
execute as @e[tag=selector] at @s unless entity @s[scores={p.selector=1..}] run function place:onetime/selector/kill_off

execute as @a[tag=on.place] at @s unless entity @e[tag=p.cast,limit=1] unless entity @s[scores={p.timer=1..}] run function place:raycast/main