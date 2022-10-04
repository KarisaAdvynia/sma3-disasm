.gba
.create "sma3-disasm.gba", 0x08000000

.relativeinclude on

.include "asm/CodeStart.asm"
.include "asm/GameInitMain.asm"
.include "asm/SMA3Title.asm"
.include "asm/WorldLevelSelect.asm"
.include "asm/LevelCode.asm"
.include "asm/StoryIntroToadies.asm"
.include "asm/Credits.asm"
.include "asm/080352BC.asm"
.include "asm/Sprites/08040798.asm"
.include "asm/Sprites/SecondarySprites.asm"
.include "asm/Sprites/GeneralCode.asm"
.include "asm/Sprites/AllSprites.asm"
.include "asm/080E2278.asm"
.include "asm/LevelVictory.asm"
.include "asm/InventoryItems.asm"
.include "asm/InventoryScreen.asm"
.include "asm/080E7D90.asm"
.include "asm/StandardMessages.asm"
.include "asm/Minigames.asm"
.include "asm/IntroCutscene.asm"
.include "asm/100Cutscene.asm"
.include "asm/GameMode03.asm"
.include "asm/080FB01C.asm"
.include "asm/LevelNames.asm"
.include "asm/YITitle.asm"
.include "asm/Sprites/Bowser.asm"
.include "asm/GameOver.asm"
.include "asm/ChooseAGame.asm"
.include "asm/MarioBros.asm"
.include "asm/Sound.asm"
.include "asm/SharedSubroutines.asm"

.include "asm/SingleCart.asm"
.include "asm/Data.asm"
.include "asm/Data2.asm"

.fill 0x08400000-.

.close