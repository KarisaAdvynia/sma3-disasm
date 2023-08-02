# Yoshi's Island: Super Mario Advance 3 (U) disassembly

For assembling with [Armips](https://github.com/Kingcom/armips). Work in progress.

All ROM pointers in the completed regions have been replaced by labels, to allow freely adding/removing code, though this hasn't yet been thoroughly tested.

Currently produces an exact match for these regions of the vanilla ROM:
- 08000000-0812FDC0 (code)
- 08163F90-081C1D54 (data)

Remaining regions:
- 0812FDC0-08163F90: Currently labeled as "single-cart pseudo-ROM", a ROM region copied into RAM (for all players) when playing Mario Bros. multiplayer from a single cartridge. This needs further research to determine the correct RAM pointers.
- 083077E0-end: Music/sound region. These also need to be included with `.incbin`, but this sector uses relative instead of absolute pointers, so the pointer labels also need to be generated.

## About data files
This repository does not include in-game data files (graphics, etc), which must be extracted from the vanilla game before assembling. A script is provided to do so:
- Place the vanilla ROM in the directory containing the `sma3-disasm` directory
    - Optionally: name the vanilla ROM `sma3.gba`. If the vanilla ROM is the only .gba file in the directory, it will be auto-detected, but if there are multiple .gba files, this is required.
- Run `exportbin.py` (in `scripts`) to create the `data` folder.

## Vanilla ROM hashes
- SHA1: `7352D2BD064D9EBAEC579E264228AA21C7345B80`
- SHA256: `A8BB331A6F0FF7AF4387DF9AC8566AE395863C2F79A5A597528A64C8BFF57941`
- MD5: `BB09508C782F37934C9519C5F8A7350C`

## See also
- [Yoshi's Island (SMA3) (U) documentation](https://docs.google.com/spreadsheets/d/1CTFCkLnR21BXwHq5X9ldGkFWHairEo8TILOWzcE1nwE/) - Documentation spreadsheet, including ROM/RAM maps, various IDs, and other info
- [Super Mario World 2: Yoshi's Island (SNES) Disassembly](https://github.com/brunovalads/yoshisisland-disassembly/) - SNES version code
