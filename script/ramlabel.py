"""
Function to add RAM labels to a line, in a specified ROM address range
For example: "  ; 08043298/0300639C"
"""

def _processline(line, romstart, romend, offset):
    pos = line.find("; ")
    if pos < 1:
        # start-of-line comment, or no comment
        return line
    addrstr = line[pos+2:pos+10]
    if len(addrstr) < 8 or line[pos+10] == "/":
        # not long enough for a 32-bit address, or RAM label already exists
        return line
    try:
        addr = int(addrstr, 16)
    except ValueError:
        # not a 32-bit address
        return line
    if romstart <= addr < romend:
        line = line[0:pos+10] + f"/{addr+offset:08X}" + line[pos+10:]
    return line

def ramlabel(filepath, romstart, romend, ramstart):
    offset = ramstart - romstart
    outputlines = [
        _processline(line, romstart, romend, offset)
        for line in open(filepath, "r", newline="", encoding="UTF-8")]
    open(filepath, "w", newline="", encoding="UTF-8").writelines(outputlines)


if __name__ == "__main__":
    ramlabel("../../Sound.asm", 0x0812F3FC, 0x0812F6B4, 0x03001368)
