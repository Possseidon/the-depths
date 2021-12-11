import sys
import os


def main():
    path, filename = sys.argv

    pre, ext = os.path.splitext(filename)
    assert(ext == ".py")

    with open(filename) as file:
        code = file.read()

    fixed_filename = pre + ".out.mcfunction"

    with open(fixed_filename, "w") as file:
        def out(line):
            file.write(line)
            file.write("\n")

        out("# AUTO-GENERATED")
        exec(code, {"out": out})


if __name__ == "__main__":
    main()
