#MCGEE_ADDITION
## Parity

scoreboard players set parity_total mcgee 0

scoreboard players operation pbit20 mcgee = bit22 mcgee
scoreboard players operation pbit19 mcgee = bit21 mcgee
scoreboard players operation pbit18 mcgee = bit20 mcgee
scoreboard players operation pbit17 mcgee = bit19 mcgee
scoreboard players operation pbit16 mcgee = bit18 mcgee
scoreboard players operation pbit15 mcgee = bit17 mcgee
scoreboard players operation pbit14 mcgee = bit16 mcgee
scoreboard players operation pbit13 mcgee = bit15 mcgee
scoreboard players operation pbit12 mcgee = bit14 mcgee
scoreboard players operation pbit11 mcgee = bit13 mcgee
scoreboard players operation pbit10 mcgee = bit12 mcgee
scoreboard players operation pbit9 mcgee = bit11 mcgee
scoreboard players operation pbit8 mcgee = bit10 mcgee
scoreboard players operation pbit7 mcgee = bit9 mcgee
scoreboard players operation pbit6 mcgee = bit8 mcgee
scoreboard players operation pbit5 mcgee = bit7 mcgee
scoreboard players operation pbit4 mcgee = bit6 mcgee
scoreboard players operation pbit3 mcgee = bit5 mcgee
scoreboard players operation pbit2 mcgee = bit4 mcgee
scoreboard players operation pbit1 mcgee = bit3 mcgee
scoreboard players operation pbit0 mcgee = bit2 mcgee

scoreboard players operation pbit20 mcgee *= const2pow20 mcgee
scoreboard players operation pbit19 mcgee *= const2pow19 mcgee
scoreboard players operation pbit18 mcgee *= const2pow18 mcgee
scoreboard players operation pbit17 mcgee *= const2pow17 mcgee
scoreboard players operation pbit16 mcgee *= const2pow16 mcgee
scoreboard players operation pbit15 mcgee *= const2pow15 mcgee
scoreboard players operation pbit14 mcgee *= const2pow14 mcgee
scoreboard players operation pbit13 mcgee *= const2pow13 mcgee
scoreboard players operation pbit12 mcgee *= const2pow12 mcgee
scoreboard players operation pbit11 mcgee *= const2pow11 mcgee
scoreboard players operation pbit10 mcgee *= const2pow10 mcgee
scoreboard players operation pbit9 mcgee *= const2pow9 mcgee
scoreboard players operation pbit8 mcgee *= const2pow8 mcgee
scoreboard players operation pbit7 mcgee *= const2pow7 mcgee
scoreboard players operation pbit6 mcgee *= const2pow6 mcgee
scoreboard players operation pbit5 mcgee *= const2pow5 mcgee
scoreboard players operation pbit4 mcgee *= const2pow4 mcgee
scoreboard players operation pbit3 mcgee *= const2pow3 mcgee
scoreboard players operation pbit2 mcgee *= const2pow2 mcgee
scoreboard players operation pbit1 mcgee *= const2pow1 mcgee
scoreboard players operation pbit0 mcgee *= const2pow0 mcgee

scoreboard players operation parity_total mcgee += pbit20 mcgee
scoreboard players operation parity_total mcgee += pbit19 mcgee
scoreboard players operation parity_total mcgee += pbit18 mcgee
scoreboard players operation parity_total mcgee += pbit17 mcgee
scoreboard players operation parity_total mcgee += pbit16 mcgee
scoreboard players operation parity_total mcgee += pbit15 mcgee
scoreboard players operation parity_total mcgee += pbit14 mcgee
scoreboard players operation parity_total mcgee += pbit13 mcgee
scoreboard players operation parity_total mcgee += pbit12 mcgee
scoreboard players operation parity_total mcgee += pbit11 mcgee
scoreboard players operation parity_total mcgee += pbit10 mcgee
scoreboard players operation parity_total mcgee += pbit9 mcgee
scoreboard players operation parity_total mcgee += pbit8 mcgee
scoreboard players operation parity_total mcgee += pbit7 mcgee
scoreboard players operation parity_total mcgee += pbit6 mcgee
scoreboard players operation parity_total mcgee += pbit5 mcgee
scoreboard players operation parity_total mcgee += pbit4 mcgee
scoreboard players operation parity_total mcgee += pbit3 mcgee
scoreboard players operation parity_total mcgee += pbit2 mcgee
scoreboard players operation parity_total mcgee += pbit1 mcgee
scoreboard players operation parity_total mcgee += pbit0 mcgee

scoreboard players operation parity_total mcgee %= const4 mcgee

execute if score parity_total mcgee >= const2 mcgee run scoreboard players set bit1 mcgee 1
execute if score parity_total mcgee = const1 mcgee run scoreboard players set bit0 mcgee 1
execute if score parity_total mcgee >= const3 mcgee run scoreboard players set bit0 mcgee 1

# Run ID

scoreboard players operation bit7 mcgee *= const2pow22 mcgee
scoreboard players operation bit19 mcgee *= const2pow21 mcgee
scoreboard players operation bit11 mcgee *= const2pow20 mcgee
scoreboard players operation bit14 mcgee *= const2pow19 mcgee
scoreboard players operation bit2 mcgee *= const2pow18 mcgee
scoreboard players operation bit13 mcgee *= const2pow17 mcgee
scoreboard players operation bit0 mcgee *= const2pow16 mcgee
scoreboard players operation bit12 mcgee *= const2pow15 mcgee
scoreboard players operation bit15 mcgee *= const2pow14 mcgee
scoreboard players operation bit18 mcgee *= const2pow13 mcgee
scoreboard players operation bit1 mcgee *= const2pow12 mcgee
scoreboard players operation bit22 mcgee *= const2pow11 mcgee
scoreboard players operation bit3 mcgee *= const2pow10 mcgee
scoreboard players operation bit17 mcgee *= const2pow9 mcgee
scoreboard players operation bit20 mcgee *= const2pow8 mcgee
scoreboard players operation bit5 mcgee *= const2pow7 mcgee
scoreboard players operation bit10 mcgee *= const2pow6 mcgee
scoreboard players operation bit9 mcgee *= const2pow5 mcgee
scoreboard players operation bit21 mcgee *= const2pow4 mcgee
scoreboard players operation bit8 mcgee *= const2pow3 mcgee
scoreboard players operation bit6 mcgee *= const2pow2 mcgee
scoreboard players operation bit4 mcgee *= const2pow1 mcgee
scoreboard players operation bit16 mcgee *= const2pow0 mcgee


scoreboard players set run_id mcgee 0
scoreboard players operation run_id mcgee += bit22 mcgee
scoreboard players operation run_id mcgee += bit21 mcgee
scoreboard players operation run_id mcgee += bit20 mcgee
scoreboard players operation run_id mcgee += bit19 mcgee
scoreboard players operation run_id mcgee += bit18 mcgee
scoreboard players operation run_id mcgee += bit17 mcgee
scoreboard players operation run_id mcgee += bit16 mcgee
scoreboard players operation run_id mcgee += bit15 mcgee
scoreboard players operation run_id mcgee += bit14 mcgee
scoreboard players operation run_id mcgee += bit13 mcgee
scoreboard players operation run_id mcgee += bit12 mcgee
scoreboard players operation run_id mcgee += bit11 mcgee
scoreboard players operation run_id mcgee += bit10 mcgee
scoreboard players operation run_id mcgee += bit9 mcgee
scoreboard players operation run_id mcgee += bit8 mcgee
scoreboard players operation run_id mcgee += bit7 mcgee
scoreboard players operation run_id mcgee += bit6 mcgee
scoreboard players operation run_id mcgee += bit5 mcgee
scoreboard players operation run_id mcgee += bit4 mcgee
scoreboard players operation run_id mcgee += bit3 mcgee
scoreboard players operation run_id mcgee += bit2 mcgee
scoreboard players operation run_id mcgee += bit1 mcgee
scoreboard players operation run_id mcgee += bit0 mcgee

tellraw @a ["","Submit your run in discord with run ID: ",{"score":{"name":"run_id","objective":"mcgee"},"color":"aqua"}]
#END_MCGEE_ADDITION