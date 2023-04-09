def formatdata(filepath, start, end, bytewidth=1, linebreak=None):
    """Import and format a data table for use by an ARM assembler.
    start: ROM pointer to start of data
    end: total length in bytes, or ROM pointer to end of data
    bytewidth: number of bytes per data value (valid values: 1, 2, 4, 8)
    linebreak: insert a new line after this many values
    """

    if start % bytewidth:
        print("Warning: Table is not aligned to a multiple of " +
              str(bytewidth) + " bytes")

    if end < 0x08000000: length = end
    else: length = end - start

    if linebreak is None:
        linebreak = defaultlinebreaks[bytewidth]

    nextline = "\n" + prefixes[bytewidth]
    output = ["Data", format(start, "08X"),
              ":                   ; ", format(start, "08X"),
              nextline]

    with open(filepath, "rb") as f:
        f.seek(start - 0x08000000)
        for i in range(length // bytewidth):
            if i:
                if i % linebreak == 0:
                    output.append(nextline)
                else:
                    output.append(", ")
            newvalue = int.from_bytes(f.read(bytewidth), "little")
            output.append("0x" + format(newvalue, "0" + str(bytewidth*2) + "X"))

    print("".join(output))

prefixes = {
    1: ".byte ",
    2: ".halfword ",
    4: ".word ",
    8: ".doubleword "}
defaultlinebreaks = {
    1: 8,
    2: 8,
    4: 4,
    8: 2}
