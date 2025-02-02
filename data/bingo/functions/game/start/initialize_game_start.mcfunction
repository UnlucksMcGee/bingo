#> bingo:game/start/initialize_game_start
#
# This function is called when a player starts the game and either starts pre-
# generating or spawns the skybox.
#
# @within function bingo:game/start/check_and_start

scoreboard players set $game_state bingo.state 1
bossbar set bingo:start/pre_gen/progress visible true
execute if score $pregen_status bingo.state matches 0 run function bingo:game/start/locate_spawnpoint
execute if score $pregen_status bingo.state matches 2 at @e[type=minecraft:area_effect_cloud, tag=bingo.skybox_cloud, limit=1] run function bingo:game/start/spawn_skybox