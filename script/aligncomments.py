"""Align all in-line comments in each code file to a particular character
position. Start-of-line comments are unaffected."""

from pathlib import Path

def aligncomments(path, startstr=";", commentpos=36):
    print("Processing: " + path.as_posix())
    outputlines = []
    for line in path.open("r", newline="", encoding="UTF-8"):
        pos = line.find(startstr)
        if pos < 1 or pos == commentpos:
            outputlines.append(line)
        else:
            left, right = line.split(startstr, maxsplit=1)
            outputlines.append(
                left.rstrip(" ").ljust(commentpos) + startstr + right)
    path.open("w", newline="", encoding="UTF-8").writelines(outputlines)

def aligncomments_dir(dirpath, ext, *args, **kwargs):
    for path in dirpath.glob("**/*" + ext):
        aligncomments(path, *args, **kwargs)

if __name__ == "__main__":
    path = Path("../asm/")
    import sys
    if len(sys.argv) > 1:
        path = Path(sys.argv[1])
    if path.is_dir():
        # align comments for all .asm files in directory
        aligncomments_dir(path, ext=".asm")
    else:
        aligncomments(path)
