import colors
import genfunc
import gentiles
import loot_tables


def print_header(header):
    print(f"{colors.header}{header}{colors.reset}")


def main():
    print_header("Converting all .in.py files:")
    genfunc.convert_all()

    print()
    print_header("Generating structure lookups:")
    gentiles.main()

    print()
    print_header("Generating loot tables:")
    loot_tables.main()


if __name__ == "__main__":
    main()
