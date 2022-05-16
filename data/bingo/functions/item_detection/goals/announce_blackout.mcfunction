#> bingo:item_detection/goals/announce_blackout
#
# Announces a blackout and plays the goal completed effect for the entire team
#
# @within function bingo:item_detection/announce

tellraw @a {"translate": "bingo.got_blackout", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}]}
execute as @a[tag=bingo.in_current_team] at @s run function bingo:item_detection/goals/completed_goal_effects

tag @a[tag=bingo.in_current_team] add bingo.spectator

#MCGEE_ADDITION
# Bingo Type
## Blackout Bingo
scoreboard players set bit4 mcgee 1
scoreboard players set bit2 mcgee 1
#END_MCGEE_ADDITION