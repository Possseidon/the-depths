# Events and Effects

Items can trigger various effects at certain game events.

## Game Events

- On every `<n>` seconds.
- On enter...
  - `<n>` rooms.
  - boss room.
  - special.
  - next level.
- On clear...
  - `<n>` rooms.
  - boss.
- On kill monster.
- On attack monster.
- On take damage.
- On buy item.
- On throw `<item>`.
- On use `<item>`.
- `<instant-event>` after `<n>` seconds.
- `<instant-event>` while `<continous-event>`.
- `<instant-event>` until `<continous-event>`.

## Event Predicates

- Carrying `<item>`.
- Movement...
  - standing still.
  - sneaking.
  - walking.
  - running.
- Looking...
  - down.
  - up.
- Health below `<n>`.

## Game Effects

- Give between `<n>` `<item>` to `<target>`.
- Give `<target>` `<potion-effect>` `<level>` for `<n>` seconds.
- Kill `<target>`.
- Reset cooldown on...
  - held item.
  - `<n>` random items.
- Destroy `<item>`.
- Spawn `<spawnable>` at `<target>`.
- Set `<target>` on fire.

## Game Effect Targets

- Self
- `<n>` closest players
- `<n>` random players
- `<n>` closest enemies
- `<n>` random enemies
- For Orbitals:
  - Orbited entity

## Spawnables

- Laser that moves `<n>` blocks every `<n>` seconds, triggering `<effect>` every `<n>` steps.
- AoE with a radius of `<n>` blocks, triggering `<effect>` every `<n>` seconds.
- Orbital with radius `<n>` around `<target>` that triggers `effect` every `<n>` seconds.

## Notes

- Items can have multiple effects.
  - Different effects can potentially trigger on different game events.
  - Some effects can also be negative.
- `<n>` can also be random on each use or have even more complex rules.
  - (e.g. increases/decreases by 1 each use)
