#Mass clears
execute as @e[tag=selector] run function place:onetime/selector/kill_off
tag @a remove p.selected

# Required Scoreboards

scoreboard objectives add p.selector dummy
scoreboard objectives add p.timer dummy

# Colourful Selections
team add p.black
team modify p.black color black
team add p.white
team modify p.white color white
team add p.lgray
team modify p.lgray color gray
team add p.gray
team modify p.gray color dark_gray
team add p.purple
team modify p.purple color dark_purple
team add p.magenta
team modify p.magenta color red
team add p.pink
team modify p.pink color light_purple
team add p.red
team modify p.red color dark_red
team add p.orange
team modify p.orange color gold
team add p.yellow
team modify p.yellow color yellow
team add p.lime
team modify p.lime color green
team add p.lblue
team modify p.lblue color aqua
team add p.blue
team modify p.blue color dark_blue
team add p.green
team modify p.green color dark_green
