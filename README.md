## Downloads
[![ContentDB](https://content.minetest.net/packages/DragonWrangler/tkr_nether_public/shields/downloads/)](https://content.minetest.net/packages/DragonWrangler/tkr_nether_public/)

## INTRODUCTION

- This README.md file is here to help you understand a bit more about the mod. I have added a few new features, and I feel I need to explain them.

### Lava Cooling ###

 Section 1.

- [THIS SETTING IS ENABLED BY DEFAULT]


- Lava Cooling is an optional feature added in version 1.6.0 that can be enabled via the setting 'nether_lava_crust_cooling'
 It changes any lava crust that is exposed to air into a cooled version. First though it may break the crust open and some lava might make it's way out and start dropping lower. However
 that too will eventually harden.


### Reverse Lava Cooling ###

 Section 2.

- [THIS SETTING IS DISABLED BY DEFAULT]

- In the case that you decide you're tired of looking at the cooled version of the lava crust, and all the different shaped formations it gives. I made a setting called 
 'nether_lava_cooling_reverse_effect'  When enabled it will undo what the 'nether_lava_crust_cooling' setting did. However do not have these both enabled at the same time, or they will
 constantly conflict.

### Lava Crust Particle Spawner ###

 Section 3.

- [THIS SETTING IS ENABLED BY DEFAULT]

- An optional feature added in version 1.6.0 this is meant to add a bit more character to lava crust, by allowing it to "pop" every once in a while.
 this feature can be enabled or disabled via the 'nether_lava_particle_spawner' setting.


### Alternate Aurelium Armor ###

 Section 4.

- [THIS SETTING IS DISABLED BY DEFAULT ]

- This is an optional feature added in version 1.6.0 and was made to change out the default aurelium armor with an alt version. If the alt version is enabled the default won't be and 
 vice versa. To enable it look for the 'nether_aurelium_armor_alt' setting.

### Alternate lava crust ###

 Section 5.

- These Nodes are permanent nodes designed to help in the restoration process which you can read about in section 2.
 These nodes are crucial to the restoration process and must not be removed. Removing them will result in unknown nodes everywhere in the nether.

### Nether Man Beacon Spawning ###

 Section 6.

- This feature allows Nether men to spawn on beacons. This feature was added due to a schematic added in 1.6.0.
- The default Y coordinates for the spawning is the same as the default Y coordinates for the nether. To change it, please go to your ingame settings menu and search Nether
 Then look for 'Nether Addons' mod. You will find all the settings there.

### Aurelium ###

 Section7.

- Aurelium is a permanent addition added in 1.6.0 it is a new mineral that spawns via crystals on the surface of nether:rack.

- If the crystals are standing straight up, then flowing lava can be placed on top of them, and then an abm will place a water source under the crystals ( to give the impression that the 
 crystals are magically changing lava into water. )

- If the crystals are next to a lava source then they will melt and become an aurelium source.
- Aurelium sources evaporate after a few seconds so make sure to collect them with a bucket before they do.
- After aurelium sources evaporate they will become a powder (possibly flammable in the future, but not at present)  after a few seconds an abm will remove them and on removal a particle
 spawner will occur blowing the particles away.

- [The instructions to craft Aurelium blocks are:]

- Place an aurelium crystal next to a lava source until it turns into an aurelium source.
- Grab the source with a bucket and cook it. Now do that 8 more times
- find a hot water source, collect it with a bucket and put it in the craft grid with the dust in the shape like this below:


-  ["nether:aurelium_dust", "nether:aurelium_dust", "nether:aurelium_dust"]
-  ["nether:aurelium_dust", "nether_addons:bucket_hot_water", "nether:aurelium_dust"]
-  ["nether:aurelium_dust", "nether:aurelium_dust", "nether:aurelium_dust"]

- That will get you a lump which you then cook to get an ingot.
- 9 ingots make a block so a total of 72 Aurelium Crystals will get you one block.

- The rates may change in the future, but I'm not yet sure

- There are a total of 3 different sizes of aurelium crystals.
- Each size has 5 different orientations.

- each size lower takes longer to turn into an aurelium source so the giant size is the most efficent.
- The collision boxes for the small ones aren't perfect, and I may redo them at some point, but for now they serve their purpose.



### Updates ###

- Update 1.6.0 is really a combination of 2 different individual ones

- [The Volcanic Update]
- [The Aurelium Update]

- I started with the Volcanic update but I ran out of ideas, and I felt that there wasn't enough changes for a full version update, so I stopped work on that and started working with
- Aurelium. It is wip, and changes to aurelium should be expected ( major changes ) but that is for a later update.

  ### Contributing ###

  Want to contribute ?

  Feel free to make a pr
