#> bingo:card_generation/random_card
#
# Starts the generation of a random Bingo card.
#
# @within function bingo:lobby/settings/random_seed_strict_mode_check

function nope_name.math:rand/set_random_seed
function bingo:card_generation/generate_card

#MCGEE_ADDITION
scoreboard objectives add mcgee dummy
scoreboard players set seeded_run mcgee 0
#END_MCGEE_ADDITION