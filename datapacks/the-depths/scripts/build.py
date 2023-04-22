import colors
import generate_disable_vanilla
import generate_func
import generate_tiles
import loot_tables


def print_header(header):
    print(f"{colors.header}{header}{colors.reset}")


def main():
    print_header("Generating disable-vanilla datapack:")
    generate_disable_vanilla.main()

    print_header("Converting all .in.py files:")
    generate_func.convert_all()

    print()
    print_header("Generating structure lookups:")
    generate_tiles.main()

    print()
    print_header("Generating loot tables:")
    loot_tables.main()


if __name__ == "__main__":
    main()
