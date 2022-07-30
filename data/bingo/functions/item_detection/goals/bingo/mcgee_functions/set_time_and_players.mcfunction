#MCGEE_ADDITION
scoreboard objectives add mcgee dummy

# Constants
scoreboard players set const1 mcgee 1
scoreboard players set const2 mcgee 2
scoreboard players set const3 mcgee 3
scoreboard players set const4 mcgee 4
scoreboard players set const100 mcgee 100
scoreboard players set const2pow0 mcgee 1
scoreboard players set const2pow1 mcgee 2
scoreboard players set const2pow2 mcgee 4
scoreboard players set const2pow3 mcgee 8
scoreboard players set const2pow4 mcgee 16
scoreboard players set const2pow5 mcgee 32
scoreboard players set const2pow6 mcgee 64
scoreboard players set const2pow7 mcgee 128
scoreboard players set const2pow8 mcgee 256
scoreboard players set const2pow9 mcgee 512
scoreboard players set const2pow10 mcgee 1024
scoreboard players set const2pow11 mcgee 2048
scoreboard players set const2pow12 mcgee 4096
scoreboard players set const2pow13 mcgee 8192

scoreboard players set const2pow14 mcgee 16384
scoreboard players set const2pow15 mcgee 32768
scoreboard players set const2pow16 mcgee 65536
scoreboard players set const2pow17 mcgee 131072
scoreboard players set const2pow18 mcgee 262144
scoreboard players set const2pow19 mcgee 524288
scoreboard players set const2pow20 mcgee 1048576
scoreboard players set const2pow21 mcgee 2097152
scoreboard players set const2pow22 mcgee 4194304

# Bits
## Encoding Version
# 0 = old, 1 = seeded, 2 = valid (below), 3 = invalid
scoreboard players set bit22 mcgee 1
scoreboard players set bit21 mcgee 0

## Time
scoreboard players set bit20 mcgee 0
scoreboard players set bit19 mcgee 0
scoreboard players set bit18 mcgee 0
scoreboard players set bit17 mcgee 0
scoreboard players set bit16 mcgee 0
scoreboard players set bit15 mcgee 0
scoreboard players set bit14 mcgee 0
scoreboard players set bit13 mcgee 0
scoreboard players set bit12 mcgee 0
scoreboard players set bit11 mcgee 0
scoreboard players set bit10 mcgee 0
scoreboard players set bit9 mcgee 0
scoreboard players set bit8 mcgee 0
scoreboard players set bit7 mcgee 0

## Num players
scoreboard players set bit6 mcgee 0
scoreboard players set bit5 mcgee 0

## Bingo types
scoreboard players set bit4 mcgee 0
scoreboard players set bit3 mcgee 0
scoreboard players set bit2 mcgee 0

## Parity
scoreboard players set bit1 mcgee 0
scoreboard players set bit0 mcgee 0


# Set values
## Encoding Version
scoreboard players set bit22 mcgee 0
scoreboard players set bit21 mcgee 0

## Time
scoreboard players operation total_seconds mcgee = $raw 91.timer.time
scoreboard players operation total_seconds mcgee /= const100 mcgee

scoreboard players operation bit20 mcgee = total_seconds mcgee
scoreboard players operation bit19 mcgee = total_seconds mcgee
scoreboard players operation bit18 mcgee = total_seconds mcgee
scoreboard players operation bit17 mcgee = total_seconds mcgee
scoreboard players operation bit16 mcgee = total_seconds mcgee
scoreboard players operation bit15 mcgee = total_seconds mcgee
scoreboard players operation bit14 mcgee = total_seconds mcgee
scoreboard players operation bit13 mcgee = total_seconds mcgee
scoreboard players operation bit12 mcgee = total_seconds mcgee
scoreboard players operation bit11 mcgee = total_seconds mcgee
scoreboard players operation bit10 mcgee = total_seconds mcgee
scoreboard players operation bit9 mcgee = total_seconds mcgee
scoreboard players operation bit8 mcgee = total_seconds mcgee
scoreboard players operation bit7 mcgee = total_seconds mcgee

scoreboard players operation bit20 mcgee /= const2pow13 mcgee
scoreboard players operation bit19 mcgee /= const2pow12 mcgee
scoreboard players operation bit18 mcgee /= const2pow11 mcgee
scoreboard players operation bit17 mcgee /= const2pow10 mcgee
scoreboard players operation bit16 mcgee /= const2pow9 mcgee
scoreboard players operation bit15 mcgee /= const2pow8 mcgee
scoreboard players operation bit14 mcgee /= const2pow7 mcgee
scoreboard players operation bit13 mcgee /= const2pow6 mcgee
scoreboard players operation bit12 mcgee /= const2pow5 mcgee
scoreboard players operation bit11 mcgee /= const2pow4 mcgee
scoreboard players operation bit10 mcgee /= const2pow3 mcgee
scoreboard players operation bit9 mcgee /= const2pow2 mcgee
scoreboard players operation bit8 mcgee /= const2pow1 mcgee
scoreboard players operation bit7 mcgee /= const2pow0 mcgee

scoreboard players operation bit20 mcgee %= const2 mcgee
scoreboard players operation bit19 mcgee %= const2 mcgee
scoreboard players operation bit18 mcgee %= const2 mcgee
scoreboard players operation bit17 mcgee %= const2 mcgee
scoreboard players operation bit16 mcgee %= const2 mcgee
scoreboard players operation bit15 mcgee %= const2 mcgee
scoreboard players operation bit14 mcgee %= const2 mcgee
scoreboard players operation bit13 mcgee %= const2 mcgee
scoreboard players operation bit12 mcgee %= const2 mcgee
scoreboard players operation bit11 mcgee %= const2 mcgee
scoreboard players operation bit10 mcgee %= const2 mcgee
scoreboard players operation bit9 mcgee %= const2 mcgee
scoreboard players operation bit8 mcgee %= const2 mcgee
scoreboard players operation bit7 mcgee %= const2 mcgee

## Num players
scoreboard players set num_team_players mcgee 0
execute as @a[tag=bingo.in_current_team] run scoreboard players add num_team_players mcgee 1
execute if score num_team_players mcgee >= const2 mcgee run scoreboard players set bit6 mcgee 1
execute if score num_team_players mcgee = const1 mcgee run scoreboard players set bit5 mcgee 1
execute if score num_team_players mcgee >= const3 mcgee run scoreboard players set bit5 mcgee 1

## Bingo types set in individual files in /goals/bingo/announce/*; /goals/bingo/detect_bingo_and_20_no_bingo; /goals/announce_blackout;

## Parity set in announce_run_id function
#END_MCGEE_ADDITION