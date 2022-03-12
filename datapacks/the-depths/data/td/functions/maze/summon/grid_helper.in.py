import itertools

width, depth = 8, 8

for x, z in itertools.product(range(width), range(depth)):
    out(f'summon marker ~{x} ~ ~{z} {{Tags: [grid], data: {{Pos: [{(x - width - 4) * 16}d, 0d, {(z - depth - 4) * 16}d]}}}}')
