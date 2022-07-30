#> bingo:game/start/spawn_players
#
# Spawns all players in the skybox
#
# @within function bingo:game/start/spawn_skybox
# @context entity Current player

#MCGEE_ADDITION
tellraw @s "Note: This datapack edit by UnlucksMcGee cannot be used for official speedrun submissions. See the original by NeunEinser for that."
#END_MCGEE_ADDITION

tellraw @s ["[", {"text":"≡", "color":"#00c3ff", "clickEvent":{"action":"run_command", "value":"/trigger bingo.menu"}, "hoverEvent":{"action":"show_text", "contents":{"translate":"bingo.game.menu.hover_text"}}}, "] ", {"translate": "bingo.game.start.loading_terrain"}]
scoreboard players operation @s bingo.game_id = $current_game_id bingo.game_id
teleport @s ~ 128 ~
tag @s remove bingo.spectator

scoreboard players reset @s bingo.pref
scoreboard players reset @s bingo.seed
scoreboard players reset @s bingo.settings

gamemode adventure @s
effect give @s minecraft:jump_boost 1000000 128 true
effect give @s minecraft:invisibility 1000000 0 true
effect give @s minecraft:saturation 1000000 255 true
effect give @s minecraft:weakness 1000000 255 true
clear @s
experience set @s 0 levels
experience set @s 0 points

#MCGEE_ADDITION
replaceitem entity @s hotbar.0 minecraft:stone_sword 1
replaceitem entity @s hotbar.1 minecraft:stone_pickaxe 1
replaceitem entity @s hotbar.2 minecraft:stone_axe 1
replaceitem entity @s hotbar.3 minecraft:stone_shovel 1
#END_MCGEE_ADDITION

tag @s remove bingo.has_slot0
tag @s remove bingo.has_slot1
tag @s remove bingo.has_slot2
tag @s remove bingo.has_slot3
tag @s remove bingo.has_slot4
tag @s remove bingo.has_slot5
tag @s remove bingo.has_slot6
tag @s remove bingo.has_slot7
tag @s remove bingo.has_slot8
tag @s remove bingo.has_slot9
tag @s remove bingo.has_slot10
tag @s remove bingo.has_slot11
tag @s remove bingo.has_slot12
tag @s remove bingo.has_slot13
tag @s remove bingo.has_slot14
tag @s remove bingo.has_slot15
tag @s remove bingo.has_slot16
tag @s remove bingo.has_slot17
tag @s remove bingo.has_slot18
tag @s remove bingo.has_slot19
tag @s remove bingo.has_slot20
tag @s remove bingo.has_slot21
tag @s remove bingo.has_slot22
tag @s remove bingo.has_slot23
tag @s remove bingo.has_slot24