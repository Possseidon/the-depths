import itertools

width = 8
height = 8

for (x, y) in itertools.product(range(width), range(height)):
    tags = 'grid'

    if x < width - 1 and y < height - 1:
        tags += ', can_big'

    out(f'summon marker ~{x} ~ ~{y} {{Tags: [{tags}]}}')
