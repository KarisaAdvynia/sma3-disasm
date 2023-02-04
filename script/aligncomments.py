"""Align all in-line comments in each code file to a particular character
position. Start-of-line comments are unaffected."""

import os

def aligncomments(path, startstr=";", commentpos=32):
    print("Processing:", path)
    outputlines = []
    for line in open(path, "r", newline=""):
        pos = line.find(startstr)
        if pos < 1 or pos == commentpos:
            outputlines.append(line)
        else:
            left, right = line.split(startstr, maxsplit=1)
            outputlines.append(
                left.rstrip(" ").ljust(commentpos) + startstr + right)
    open(path, "w", newline="").writelines(outputlines)

def aligncomments_dir(directory, ext=".asm", *args, **kwargs):
    contents = sorted(os.listdir(directory), key=str.casefold)
    for name in contents:
        path = os.path.join(directory, name)
        if os.path.isdir(path):
            # recursively iterate through subdirectories
            aligncomments_dir(path, ext, *args, **kwargs)
        elif path.endswith(ext):
            aligncomments(path, *args, **kwargs)

if __name__ == "__main__":
    aligncomments_dir("../asm/")
