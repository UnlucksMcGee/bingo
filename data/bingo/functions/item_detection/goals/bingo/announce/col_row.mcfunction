#> bingo:item_detection/goals/bingo/announce/col_row
#
# Announces reaching a bingo in one column and one row
#
# @within function bingo:item_detection/goals/bingo/detect_bingo_and_20_no_bingo

execute unless score $item_detect/announce.items bingo.tmp matches 9 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_bingo.double.col_row", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}, {"score": {"name": "$item_detect/bingo.row", "objective": "bingo.tmp"}}]}]
execute if score $item_detect/announce.items bingo.tmp matches 9 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_sniper_bingo.double.col_row", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}, {"score": {"name": "$item_detect/bingo.row", "objective": "bingo.tmp"}}]}]

function bingo:item_detection/goals/completed_goal_effects/init

data modify storage bingo:card teams[-1].hasBingo set value true

#MCGEE_ADDITION
# Bingo Type
## Double Bingo
scoreboard players set bit2 mcgee 1
#END_MCGEE_ADDITION