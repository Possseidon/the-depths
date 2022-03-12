# Initializes the world exactly once.

execute unless data storage td:data {initialized: 1b} run function td:init/helper
