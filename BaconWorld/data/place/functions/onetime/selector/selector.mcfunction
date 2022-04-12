execute at @p as @e[type=magma_cube, nbt={Size:0},distance=..30] run kill @s

execute unless entity @e[type=magma_cube , sort=nearest , limit=1, distance=..0.5] run summon magma_cube ~.5 ~.001 ~.5 {OnGround:1b,Silent:1b,DeathLootTable:"place:useful/nothing",NoAI:1b,Size:1,Tags:["selector","fresh"],ActiveEffects:[{Id:10b,Amplifier:5b,Duration:20000000,ShowParticles:0b},{Id:14b,Amplifier:1b,Duration:20000000,ShowParticles:0b},{Id:24b,Amplifier:1b,Duration:1000000,ShowParticles:0b}]}
execute at @s run scoreboard players operation @e[type=magma_cube , limit=1 ,sort= nearest] p.selector = @s p.selector
execute as @e[tag=fresh] at @s run function place:onetime/selector/only_one

kill @s