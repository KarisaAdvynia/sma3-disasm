import os

def exportbin(sourcefile, outputdir, binptrs):
    ptrmap = []
    with open(binptrs, "r", encoding="UTF-8") as f:
        fillnext = False
        for line in f:
            rawdata = line.split()
            startptr = int(rawdata[0], 16)
            if fillnext:
                ptrmap[-1][1] = startptr - ptrmap[-1][0]
            if len(rawdata) == 3:
                ptrmap.append([startptr, int(rawdata[1], 16) - startptr,
                               rawdata[2]])
            elif len(rawdata) == 2:
                ptrmap.append([startptr, None, rawdata[1]])
                fillnext = True
            else:
                raise ValueError

    with open(sourcefile, "rb") as f:
        for startptr, length, outputfile in ptrmap:
            f.seek(startptr - 0x08000000)
            data = f.read(length)
            with open(os.path.join(outputdir, outputfile), "wb") as output:
                output.write(data)

if __name__ == "__main__":
    exportbin("C:/Users/Karisa/Desktop/118/Advynia/sma3.gba",
              "../asm/data/",
              "../binptrs.txt")
