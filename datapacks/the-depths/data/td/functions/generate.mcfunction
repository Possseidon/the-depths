function td:maze/generate

# Instant, but causes a lot buggy lighting that takes a while to fix itself.
# function td:map/load

# Alternatively, cover everything, wait for it to update lighting and finally uncover, which fixes itself a lot quicker.
fill -192 64 -192 -65 64 -65 minecraft:white_concrete
schedule function td:map/load 10s
