import sys
import glob
import colors


def print_status(index: int, total: int, filename: str):
    digits = len(str(total))
    print(f"[{colors.number}{index:{digits}}{colors.reset}/{colors.number}{total}{colors.reset}] {colors.filename}{filename}{colors.reset}")


def convert_file(filename: str):
    pre, *ext = filename.rsplit(".", 2)
    assert(ext == ["in", "py"])

    with open(filename, encoding="UTF-8") as file:
        code = file.read()

    fixed_filename = pre + ".out.mcfunction"

    with open(fixed_filename, "w", encoding="UTF-8") as file:
        def out(line):
            file.write(line)
            file.write("\n")

        out("# AUTO-GENERATED")
        exec(code, {"out": out})


def convert_multiple(filenames: list[str]):
    total = len(filenames)
    for index, filename in enumerate(filenames, 1):
        print_status(index, total, filename)
        convert_file(filename)


def convert_all():
    convert_multiple(list(glob.iglob("**/*.in.py", recursive=True)))


def main():
    match sys.argv:
        case _, :
            convert_all()
        case _, *filenames:
            convert_multiple(filenames)


if __name__ == "__main__":
    main()
