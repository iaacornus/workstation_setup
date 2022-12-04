from sys import argv
from string import ascii_lowercase
from os import walk, mkdir, remove, system
from os.path import exists


def main(PATH: str) -> None:
    if not exists(f"out"):
        mkdir(f"out")

    for file in next(walk(PATH))[2]:
        if not file.endswith(".HEIC"):
            continue

        filename: str = file.split(".")[0]
        if exists(f"{filename}.jpg"):
            for let in ascii_lowercase:
                filename = f"{filename}-{let}"
                if not exists (f"{filename}-{let}.jpg"):
                    break

        cmd: list[str] = [
                "heif-convert",
                "-q", "100",
                f"'{file}'",
                f"'out/{filename}.jpg'"
            ]
        system(" ".join(cmd))

    for file in next(walk(f"{PATH}/out"))[2]:
        if file.endswith(":aux:hdrgainmap.jpg"):
            print(f"{PATH}/out/{file}")
            remove(f"{PATH}/out/{file}")


if __name__ == "__main__":
    main(argv[1])
