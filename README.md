# Introduction
These OpenComputers (OC) scripts automatically pattern recipes in large batches with a single command. The inputs/outputs of each recipe are stored as code which can be quickly referenced at any time and updated as necessary; they do not need to be stored in a subnetwork or database address. Autopatterning is perfect for making many recipes at once and for recipes that are not easily translatable from NEI (e.g. NAC circuits). The only player intervention required is providing dummy patterns to ME dual interface(s), renaming anything afterwards (since the script cannot handle that), and then distributing the final patterns to wherever they are needed.

<img src="media/autoPattern-Preview.gif" width="400">

# Bare Minimum Components
The following requires access to EV circuits and epoxid (mid-late HV). It is possible to save some resources by not including the internet card, but that would require manually copying and pasting the code from GitHub which is NOT recommended for multiple reasons. Higher tier components are recommended because they help the computer and therefore the script run slightly faster.

- Tier 3 Computer Case
- Tier 2 Memory
- Tier 1 Graphics Card
- Tier 1 Central Processing Unit
- Tier 1 Hard Disk Drive
- Tier 1 Screen
- Internet Card
- Keyboard
- Adapter
- ME Dual Interface(s)
- EEPROM (Lua BIOS) [1]
- OpenOS Floppy Disk [2]

<img src="media/autoPattern-Components.png" width="400">

[1]  The EEPROM must have a Lua BIOS to work.<br />
[2]  The Floppy Disk must be OpenOS to work. Look for the green one that says OpenOS in its tooltip.

# Building the Setup
1) Place the computer case, screen, keyboard, and adapter in any sort of orientation as long as they can all connect to each other.
2) Place the full-block ME dual interface(s) next to the adapter. The interface(s) do not have to be powered or part of an AE2 network to work.
3) Insert the bare minimum components into the computer case. Power the computer with an AE2 cable, neutronium energy cell, or power converter.
4) Turn the computer on and follow the commands on screen 'install' → 'Y' → 'Y'. The OpenOS floppy disk is no longer needed in the computer afterwards.
5) Install the required scripts by copying this line of code into the computer (middle-click to paste).

       wget https://raw.githubusercontent.com/DylanTaylor1/GTNH-AutoPattern/main/setup.lua && setup

6) Prepare a stockpile of dummy patterns and insert them into the ME dual interface before running the script.

<img src="media/autoPattern-Setup.png" width="500">

# Dummy Patterns
Dummy patterns are necessary because blank patterns cannot be edited or even inserted into an ME dual interface. Dummy patterns in this case are just like normal patterns except they have a SINGLE random input and a SINGLE random output (e.g. 1 stone makes 1 stone). The exact items are irrelevant since the data is overwritten anyway. Encode dummy patterns in an ME pattern terminal and make an entire stack at once by holding SHIFT+CTRL.

<img src="media/autoPattern-Interface.png" height="250"> &nbsp; &nbsp; &nbsp; &nbsp; <img src="media/autoPattern-Dummy.png" height="200" align="top">

Automation methods cannot insert the dummy patterns into the proper slots of an ME dual interface so they need to be inserted manually, but that is a single shift-click for up to 36 at once. The script always begins with the first slot in the interface (bottom-left) and moves in order to the last slot (top-right). If it cannot find a dummy pattern in the next slot, then it stops immediately and prints an error message to the screen.

# Running the Scripts
The main script is "pattern" and it works by pulling the data from the different recipe files or batches stored locally on the computer. Run the script by entering the following command where \<key\> refers to one of the recipe filenames (e.g. NAC_circuits). After some basic input validation, it immediately starts overwriting the dummy patterns in the ME dual interface(s) until everything in that file or batch is successfully patterned. Renamed items must be added manually in a pattern terminal afterwards, if applicable.

       pattern <key>

The helper script "scan" works in reverse of the main script and has two modes. The first is "all" which extracts all the pattern data from the ME dual interface, parses it into a table, and then outputs everything into a separate file called results.txt. The second is "name" which outputs only the name of the outputs to the same separate file. Scan likely never needs to be used by the average player, but it can help build the recipe files for the main script and document them.

       scan

The last script "uninstall" removes everything in this repo from the computer. This is useful for updating everything to a newer version of the autoPattern script, since it clears out all the old files. It can also help with switching to an entirely different script/application.

       uninstall

# Recipes
The following are all the currently available recipe batches/files. All of them have been carefully constructed based on game-knowledge and experience, but some additional player intervention may be required. For example, the script cannot handle renamed items and it cannot predict the perfect recipe variations based on your available resources. Use the name of these files as the key in the pattern command described in the previous section. If using any of the "all" files, then ensure multiple ME dual interfaces are connected to the computer or else there will not be enough pattern space for everything.

For a complete written-out list and screenshots of each recipe file/batch, see [here](https://docs.google.com/spreadsheets/d/1VLpIZcV4zaBRzAb6_3RFL7HinYWas0tgBN9JcdpFpb8/edit?usp=sharing).

CoAL recipes always use silicone rubber. Dire crafting table recipes always use crystal circuits, if possible. Proto-halkonite steel parts always use infinity instead of mellion or creon. CAL recipes use advanced SMDs but can later upgrade to optical SMDs. The iron, copper, tin, leaden, and eternal singularities all have a blackhole and a non-blackhole recipe. NAC recipes all use the lowest tier superconductor possible.

- BEC_parts
- BEC_EOH
- BEC_stargate
- BEC_misc
- BEC_all
- CAL_regular
- CAL_soc
- CAL_all
- COAL_LV-EV
- COAL_IV-UV
- COAL_UHV-UMV
- COAL_UXV
- COAL_all
- Comp_singularity1
- Comp_singularity2
- Comp_HIP1
- Comp_HIP2
- Comp_HIP3
- Comp_blackhole
- Comp_misc
- Comp_all
- Dire_tech
- Dire_gear
- Dire_creative
- Dire_endgame
- Dire_all
- NAC_circuits
- NanoForge
- NeuComp_singularity1
- NeuComp_singularity2
- NeuComp_blackhole
- NeuComp_all
