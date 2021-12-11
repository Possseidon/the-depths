# Initializes the world exactly once.

execute unless data storage td:settings {initialized: 1b} run function td:init/helper
