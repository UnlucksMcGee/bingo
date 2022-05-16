#> bingo:item_detection/announce
#
# This function is called to announce the item get of the current item.
#
# It also announces reaching a goal, when applicable
#
# @within function bingo:item_detection/check_and_announce

#>
# Storage that holds information about the currently selected slot
#
# @internal
#declare storage tmp.bingo:item_detection

#>
# @private
#declare score_holder $item_detect/announce.has_bingo
#>
# @within
# 	function bingo:item_detection/**
#declare score_holder $item_detect/announce.items

execute in bingo:lobby run function neun_einser.timer:store_current_time

#MCGEE_ADDITION
execute in bingo:lobby run function bingo:item_detection/goals/bingo/mcgee_functions/set_time_and_players
#END_MCGEE_ADDITION

scoreboard players reset @s bingo.has_item
tag @s add bingo.clear

# Update item count
execute store result score $item_detect/announce.items bingo.tmp run data get storage bingo:card teams[-1].itemCount
scoreboard players add $item_detect/announce.items bingo.tmp 1
execute store result storage bingo:card teams[-1].itemCount int 1 run scoreboard players get $item_detect/announce.items bingo.tmp

execute as @a[tag=bingo.in_current_team] at @s run playsound minecraft:block.end_portal_frame.fill master @s ~ ~ ~ 1 2
tellraw @a {"translate": "bingo.got_item", "with": [{"score": {"name": "$item_detect/announce.items", "objective": "bingo.tmp"}}, {"storage": "neun_einser.timer:display", "nbt": "\"hh:mm:ss.s\"", "interpret": true}, {"selector": "@s"}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.item.textComponent", "interpret": true}]}

execute store result score $item_detect/announce.has_bingo bingo.tmp run data get storage bingo:card teams[-1].hasBingo

# Update completed indicator
execute store result score $item_detect/announce.background_index bingo.tmp run data get storage bingo:card teams[-1].backgroundIndex
data modify storage tmp.bingo:item_detection skippedBackgrounds set value []
function bingo:item_detection/find_background
data modify storage tmp.bingo:item_detection slot.background prepend from storage bingo:card teams[-1].background
data modify storage tmp.bingo:item_detection slot.background prepend from storage tmp.bingo:item_detection skippedBackgrounds[]

execute in bingo:lobby run setblock 0 0 0 minecraft:oak_sign{Text1:'["", {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[0]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[1]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[2]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[3]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[4]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[5]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[6]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[7]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[8]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[9]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[10]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[11]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[12]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[13]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[14]", "interpret": true}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.background[15]", "interpret": true}, {"translate": "space.2", "font": "space:default"}, {"storage": "tmp.bingo:item_detection", "nbt": "slot.item.icon", "interpret": true}, {"translate": "space.2", "font": "space:default"}]'}
execute in bingo:lobby run data modify storage tmp.bingo:item_detection slot.display set from block 0 0 0 Text1
execute in bingo:lobby run setblock 0 0 0 minecraft:barrier

# detect goals
execute if score $item_detect/announce.has_bingo bingo.tmp matches 0 run function bingo:item_detection/goals/bingo/detect_bingo_and_20_no_bingo
execute if score $item_detect/announce.items bingo.tmp matches 25 run function bingo:item_detection/goals/announce_blackout

scoreboard players set $update_card bingo.state 1

#MCGEE_ADDITION
# Check for invalid runs
scoreboard players set invalid_run mcgee 0
# Check for gamemode switch (player will have bingo.spectator tag if they switched gamemode)
execute as @a[tag=bingo.in_current_team,tag=bingo.spectator] run scoreboard players set invalid_run mcgee 1

# Determine if bingo was achieved
scoreboard players set got_bingo mcgee 0
execute if score $item_detect/bingo.row bingo.tmp matches 0 if score $item_detect/bingo.column bingo.tmp matches 0 if score $item_detect/bingo.diagonal bingo.tmp matches 0 if score $item_detect/announce.items bingo.tmp matches 20 run scoreboard players set got_bingo mcgee 1
scoreboard players operation got_bingo mcgee += $item_detect/bingo.row bingo.tmp
scoreboard players operation got_bingo mcgee += $item_detect/bingo.column bingo.tmp
scoreboard players operation got_bingo mcgee += $item_detect/bingo.diagonal bingo.tmp
execute if score got_bingo mcgee matches 1.. run scoreboard players set got_bingo mcgee 1

# Mention invalid run - First bingo
execute if score got_bingo mcgee matches 1.. if score invalid_run mcgee matches 1 if score $item_detect/announce.has_bingo bingo.tmp matches 0 unless score $item_detect/announce.items bingo.tmp matches 25 run tellraw @a "Run is invalid because of gamemode switch"
# Mention invalid run - Blackout
execute if score invalid_run mcgee matches 1 if score $item_detect/announce.items bingo.tmp matches 25 run tellraw @a "Run is invalid because of gamemode switch"

# Announce that run is seeded, and may not be supported on leaderboard yet, and set encoding version to 01
execute if score seeded_run mcgee matches 1 run tellraw @a "This is a set-seed run, which might not be supported on the leaderboard yet"
execute if score seeded_run mcgee matches 1 run scoreboard players set bit22 mcgee 0
execute if score seeded_run mcgee matches 1 run scoreboard players set bit21 mcgee 1

# Announce first bingo run ID
execute unless score invalid_run mcgee matches 1 if score got_bingo mcgee matches 1.. if score $item_detect/announce.has_bingo bingo.tmp matches 0 unless score $item_detect/announce.items bingo.tmp matches 25 in bingo:lobby run function bingo:item_detection/goals/bingo/mcgee_functions/announce_run_id
# Announce Blackout run ID
execute unless score invalid_run mcgee matches 1 if score $item_detect/announce.items bingo.tmp matches 25 in bingo:lobby run function bingo:item_detection/goals/bingo/mcgee_functions/announce_run_id
#END_MCGEE_ADDITION