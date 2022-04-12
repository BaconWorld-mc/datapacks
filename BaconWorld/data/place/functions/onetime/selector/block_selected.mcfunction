title @s actionbar {"text":"Press crouch and right click to select a block.", "color":"gold"}
execute if predicate place:sneaking unless score @s p.selector = @e[type=minecart,limit=1] p.selector