#> bingo:preferences/custom_hud/show_col0
#
# Shows the dialog for col0 of custom hud
#
# @within
# 	function bingo:preferences/custom_hud/show
# 	function bingo:preferences/custom_hud/adjust_col/col0
# @context entity Player who triggered bingo.pref
# @reads storage bingo:custom_hud currentPlayer.components

tellraw @s ["\n\n\n\n\n=== ", {"translate": "bingo.preferences.custom_hud.adjust_col0.title", "bold": true, "color": "green"}, " ===\n\n", {"translate": "bingo.preferences.custom_hud.adjust_col.description", "color": "gray"}, "\n"]

data modify storage tmp.bingo:preferences/hud move set value '""'

# Work around for """WAI""" https://bugs.mojang.com/browse/MC-139625 :mad_neun:
data modify storage tmp.bingo:preferences/hud hudComponent set from storage bingo:custom_hud currentPlayer.components[11]
execute if data storage tmp.bingo:preferences/hud hudComponent{id: "bingo:blank"} run data modify storage tmp.bingo:preferences/hud move set value '[" [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_right.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_left_right.description", "color": "gold"}}}, "]"]'

#region Work around for """WAI""" https://bugs.mojang.com/browse/MC-139625 :mad_neun:
data modify storage tmp.bingo:preferences/hud filledComponets set value []
data modify storage tmp.bingo:preferences/hud filledComponets append from storage bingo:custom_hud currentPlayer.components[0]
data modify storage tmp.bingo:preferences/hud filledComponets append from storage bingo:custom_hud currentPlayer.components[1]
data modify storage tmp.bingo:preferences/hud filledComponets append from storage bingo:custom_hud currentPlayer.components[2]
data modify storage tmp.bingo:preferences/hud filledComponets append from storage bingo:custom_hud currentPlayer.components[3]
data modify storage tmp.bingo:preferences/hud filledComponets append from storage bingo:custom_hud currentPlayer.components[4]
data modify storage tmp.bingo:preferences/hud filledComponets append from storage bingo:custom_hud currentPlayer.components[5]

data remove storage tmp.bingo:preferences/hud filledComponets[{id: "bingo:blank"}]
#endregion

execute if data storage tmp.bingo:preferences/hud filledComponets[5] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "gray"}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 32"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 33"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 34"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[5].name", "interpret": true}]

execute unless data storage tmp.bingo:preferences/hud filledComponets[5] if data storage tmp.bingo:preferences/hud filledComponets[4] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "gray"}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 35"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 36"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 37"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[4].name", "interpret": true}]
execute if data storage tmp.bingo:preferences/hud filledComponets[5] if data storage tmp.bingo:preferences/hud filledComponets[4] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 32"}}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 35"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 36"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 37"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[4].name", "interpret": true}]

execute unless data storage tmp.bingo:preferences/hud filledComponets[4] if data storage tmp.bingo:preferences/hud filledComponets[3] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "gray"}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 38"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 39"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 40"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[3].name", "interpret": true}]
execute if data storage tmp.bingo:preferences/hud filledComponets[4] if data storage tmp.bingo:preferences/hud filledComponets[3] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 35"}}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 38"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 39"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 40"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[3].name", "interpret": true}]

execute unless data storage tmp.bingo:preferences/hud filledComponets[3] if data storage tmp.bingo:preferences/hud filledComponets[2] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "gray"}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 41"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 42"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 43"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[2].name", "interpret": true}]
execute if data storage tmp.bingo:preferences/hud filledComponets[3] if data storage tmp.bingo:preferences/hud filledComponets[2] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 38"}}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 41"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 42"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 43"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[2].name", "interpret": true}]

execute unless data storage tmp.bingo:preferences/hud filledComponets[2] if data storage tmp.bingo:preferences/hud filledComponets[1] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "gray"}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 44"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 45"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 46"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[1].name", "interpret": true}]
execute if data storage tmp.bingo:preferences/hud filledComponets[2] if data storage tmp.bingo:preferences/hud filledComponets[1] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 41"}}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 44"}}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 45"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 46"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[1].name", "interpret": true}]

execute unless data storage tmp.bingo:preferences/hud filledComponets[1] if data storage tmp.bingo:preferences/hud filledComponets[0] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "gray"}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "gray"}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 47"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 48"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[0].name", "interpret": true}]
execute if data storage tmp.bingo:preferences/hud filledComponets[1] if data storage tmp.bingo:preferences/hud filledComponets[0] run tellraw @s ["[", {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.move_up.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 44"}}, "] [", {"translate": "bingo.preferences.custom_hud.adjust_col.move_down.title", "color": "gray"}, "]", {"storage": "tmp.bingo:preferences/hud", "nbt": "move", "interpret": true, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 47"}}, " [", {"translate": "bingo.preferences.custom_hud.adjust_col.remove.title", "color": "#00c3ff", "hoverEvent": {"action": "show_text", "contents": {"translate": "bingo.preferences.custom_hud.adjust_col.remove.description", "color": "gold"}}, "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 48"}}, "] ", {"storage": "tmp.bingo:preferences/hud", "nbt": "filledComponets[0].name", "interpret": true}]

tellraw @s ["\n[", {"translate": "bingo.preferences.back", "color": "#00c3ff", "clickEvent": {"action": "run_command", "value": "/trigger bingo.pref set 5"}}, "]"]