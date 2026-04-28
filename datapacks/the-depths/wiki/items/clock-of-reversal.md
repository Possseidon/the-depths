# Clock of Reversal

## Event

When thrown.

## Effect

Teleports the player to the last grounded position.

## Implementation Notes

Use a `last_grounded` marker that tracks the last grounded position for every player.

On every tick kill all `last_grounded` markers and create new ones for all players with a **Clock of Reversal**.

:warning: Additionally clear all `last_grounded` markers upon entering a room with enemies. Otherwise, if a player enters a room by jumping into it and then teleports back outside using the **Clock of Reversal**, they will be locked out.
