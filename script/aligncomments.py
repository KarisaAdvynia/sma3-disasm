"""Align all in-line comments in each code file to a particular character
position. Start-of-line comments are unaffected."""

from _iterate_recursive import iterate_recursive

def aligncomments(path, startstr=";", commentpos=36):
    print("Processing:", path)
    outputlines = []
    for line in open(path, "r", newline="", encoding="UTF-8"):
        pos = line.find(startstr)
        if pos < 1 or pos == commentpos:
            outputlines.append(line)
        else:
            left, right = line.split(startstr, maxsplit=1)
            outputlines.append(
                left.rstrip(" ").ljust(commentpos) + startstr + right)
    open(path, "w", newline="", encoding="UTF-8").writelines(outputlines)

if __name__ == "__main__":
    iterate_recursive(aligncomments, "../asm/", ext=".asm")
