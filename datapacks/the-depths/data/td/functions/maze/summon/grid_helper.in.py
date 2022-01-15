import itertools

width, depth = 8, 8

for (x, z) in itertools.product(range(width), range(depth)):
    tags = 'grid'

    if x < width - 1 and z < depth - 1:
        tags += ', can_big'

    out(f'summon marker ~{x} ~ ~{z} {{Tags: [{tags}], data: {{Pos: [{(x - width - 4) * 16}d, 0d, {(z - depth - 4) * 16}d]}}}}')
