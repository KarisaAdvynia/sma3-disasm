from exportbin import importbinptrs

def findduplicates(sourcepath, binptrpath):
    ptrmap = importbinptrs(binptrpath)

    datarevmap = {}
    with open(sourcepath, "rb") as f:
        for startptr, length, name in ptrmap:
            f.seek(startptr - 0x08000000)
            data = f.read(length)

            matchptr = datarevmap.get(data)
            if matchptr:
                print(f"Duplicate data: {matchptr:08X}, {startptr:08X} {name}")
            else:
                datarevmap[data] = startptr

if __name__ == "__main__":
    findduplicates("../../sma3.gba", "../binptrs.txt")
