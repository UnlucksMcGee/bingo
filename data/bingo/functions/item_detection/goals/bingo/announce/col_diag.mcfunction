#> bingo:item_detection/goals/bingo/announce/col_diag
#
# Announces reaching a bingo in a column and at least one diagonal
#
# @within function bingo:item_detection/goals/bingo/detect_bingo_and_20_no_bingo

execute unless score $item_detect/announce.items bingo.tmp matches 9 if score $item_detect/bingo.diagonal bingo.tmp matches 1 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_bingo.double.col_diag.top_left", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}]}]
execute unless score $item_detect/announce.items bingo.tmp matches 9 if score $item_detect/bingo.diagonal bingo.tmp matches 2 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_bingo.double.col_diag.bottom_left", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}]}]
execute unless score $item_detect/announce.items bingo.tmp matches 13 if score $item_detect/bingo.diagonal bingo.tmp matches 3 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_bingo.triple.col_diags", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}]}]
execute if score $item_detect/announce.items bingo.tmp matches 9 if score $item_detect/bingo.diagonal bingo.tmp matches 1 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_sniper_bingo.double.col_diag.top_left", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}]}]
execute if score $item_detect/announce.items bingo.tmp matches 9 if score $item_detect/bingo.diagonal bingo.tmp matches 2 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_sniper_bingo.double.col_diag.bottom_left", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}]}]
execute if score $item_detect/announce.items bingo.tmp matches 13 if score $item_detect/bingo.diagonal bingo.tmp matches 3 run tellraw @a ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate":"bingo.got_sniper_bingo.triple.col_diags", "with": [{"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@a[tag=bingo.in_current_team]"}, {"score": {"name": "$item_detect/bingo.column", "objective": "bingo.tmp"}}]}]

function bingo:item_detection/goals/completed_goal_effects/init

data modify storage bingo:card teams[-1].hasBingo set value true

#MCGEE_ADDITION
# Bingo Type
## Double Bingo
execute if score $item_detect/bingo.diagonal bingo.tmp matches 1 run scoreboard players set bit2 mcgee 1
execute if score $item_detect/bingo.diagonal bingo.tmp matches 2 run scoreboard players set bit2 mcgee 1

## Triple Bingo
execute if score $item_detect/bingo.diagonal bingo.tmp matches 3 run scoreboard players set bit3 mcgee 1
#END_MCGEE_ADDITION