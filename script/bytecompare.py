import os

def bytecompare(source, dest, regions=None):
    mismatch = False
    if regions is None:
        regions = [(0, min(os.path.getsize(source), os.path.getsize(dest)))]

    with open(source, "rb") as f0, open(dest, "rb") as f1:
        for start, end in regions:
            f0.seek(start)
            f1.seek(start)

            for i in range(start, end):
                nextbyte0 = f0.read(1)
                nextbyte1 = f1.read(1)
                if nextbyte0 != nextbyte1:
                    print("".join((
                        "Mismatch at ", hex(i),
                        ": source ", format(nextbyte0[0], "02X"),
                        ", dest ", format(nextbyte1[0], "02X")
                        )))
                    mismatch = True

    if mismatch is False:
        print("The byte regions",
              ", ".join(hex(start) + "-" + hex(end) for start, end in regions),
              "are identical.")

if __name__ == "__main__":
    bytecompare(
        "../../sma3.gba",
        "../../sma3-disasm.gba",
        regions=[(0, 0x12FDC0),
                 (0x163F90, 0x1C1D54)])
    input()  # wait for Enter, if run on a shell that closes at end of program
