# Yoshi's Island: Super Mario Advance 3 (U) Disassembly

For assembling with [Armips](https://github.com/Kingcom/armips). Work in progress.

All ROM pointers in the completed regions have been replaced by labels, to allow freely adding/removing code, though this hasn't yet been thoroughly tested.

Currently produces an exact match for these regions of the vanilla ROM:
- 08000000-0812FDC0 (code)
- 08163F90-081C1D54 (in-line(?) data)

Remaining regions:
- 0812FDC0-08163F90: currently labeled as "single-cart pseudo-ROM", a ROM region copied into RAM (for all players) when playing Mario Bros. multiplayer from a single cartridge. This needs further research to determine the correct RAM pointers.
- 081C1D54-end: larger data files (including levels, graphics, tilemaps, palettes, music, sound effects). These need to be exported to .bin files. Also, the music/sound region has relative pointers, which need to be included as labels.

## See also
- [Yoshi's Island (SMA3) (U) documentation](https://docs.google.com/spreadsheets/d/1CTFCkLnR21BXwHq5X9ldGkFWHairEo8TILOWzcE1nwE/) - Documentation spreadsheet, including ROM/RAM maps, various IDs, and other info
- [Super Mario World 2: Yoshi's Island (SNES) Disassembly](https://github.com/brunovalads/yoshisisland-disassembly/) - SNES version code
