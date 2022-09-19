from string import ascii_lowercase
from subprocess import run
from os import walk, mkdir
from os.path import dirname, exists


def main() -> None:
    BASE_PATH: str = "/".join(dirname(__file__).split("/")[:])
    file: str; let: str

    if not exists("./out"):
        mkdir("./out")

    for file in next(walk(BASE_PATH))[2]:
        if not file.endswith(".HEIC"):
            continue

        filename: str = file.split(".")[0]
        if exists(f"{filename}.jpg"):
            for let in ascii_lowercase:
                filename = f"{filename}-{let}"
                if not exists (f"{filename}-{let}.jpg"):
                    break

        run(
            [
                "heif-convert",
                "-q", "100",
                f"'{file}'",
                f"'{filename}.jpg'"
            ]
        )


if __name__ == "__main__":
    main()
