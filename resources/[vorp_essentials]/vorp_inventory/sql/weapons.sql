ALTER TABLE `loadout` ADD COLUMN `dropped` INT(11) NOT NULL DEFAULT 0;
ALTER TABLE `loadout` ADD COLUMN `comps` LONGTEXT NOT NULL DEFAULT '{}';
ALTER TABLE `loadout` ADD COLUMN `used2` tinyint(4) NOT NULL DEFAULT 0;

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorepeaterexplosive', 'Repeater Ammo Explosive', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorepeaterexpress', 'Repeater Ammo Express', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorepeaternormal', 'Repeater Ammo Normal', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorepeatervelocity', 'Repeater Ammo Velocity', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorepeatersplitpoint', 'Repeater Ammo Splitpoint', 10, 1, 'item_standard', 1);


INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorevolverexplosive', 'Revolver Ammo Explosive', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorevolverexpress', 'Revolver Ammo Express', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorevolvernormal', 'Revolver Ammo Normal', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorevolvervelocity', 'Revolver Ammo Velocity', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorevolversplitpoint', 'Revolver Ammo Splitpoint', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorifleexplosive', 'Rifle Ammo Explosive', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammorifleexpress', 'Rifle Ammo Express', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoriflenormal', 'Rifle Ammo Normal', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoriflevelocity', 'Rifle Ammo Velocity', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoriflesplitpoint', 'Rifle Ammo Splitpoint', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoelephant', 'Elephant Rifle Ammo', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoshotgunincendiary', 'Shotgun Ammo Incendiary', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoshotgunexplosive', 'Shotgun Ammo Explosive', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoshotgunnormal', 'Shotgun Ammo Normal', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoshotgunslug', 'Shotgun Ammo Slug', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammopistolexplosive', 'Pistol Ammo Explosive', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammopistolexpress', 'Pistol Ammo Express', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammopistolnormal', 'Pistol Ammo Normal', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammopistolvelocity', 'Pistol Ammo Velocity', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammopistolsplitpoint', 'Pistol Ammo Splitpoint', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoarrowdynamite', 'Arrow Dynamite', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoarrowfire', 'Arrow Fire', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoarrownormal', 'Arrow Normal', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoarrowimproved', 'Arrow Improved', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoarrowsmallgame', 'Arrow Small Game', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoarrowpoison', 'Arrow Poison', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammovarmint', 'Varmint Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammovarminttranq', 'Varmint Tranquilizer Ammo', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammoknives', 'Knives Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammotomahawk', 'Tonmahawk Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammopoisonbottle', 'Poison Bottle Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammobolla', 'Bolla Ammo', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammodynamite', 'Dynamite Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammovoldynamite', 'Volatile Dynamite Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammomolotov', 'Molotov Ammo', 10, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('ammovolmolotov', 'Volatile Molotov Ammo', 10, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('carrots', 'Zanahoria', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('cigar', 'Tabaco', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('cigarette', 'Cigarro', 50, 1, 'item_standard', 1);

INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('rock', 'Roca', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_wedding_ring', 'Anillo de oro', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('shovel', 'Pala', 3, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('SnakeSkin', 'Piel de serpiente', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_eagle_talon', 'Talon de Aquila', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_bull_horns', 'Cuernos de toro', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_deer_hide', 'Piel de ciervo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_bison_horn', 'Cuernos de buffalo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_boar_skin', 'Piel de jabalí', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_boar_tusk', 'Colmillo de jabalí', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_ram_hide', 'Piel de carnero', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_ram_horn', 'Cuernos de carnero', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('bearHeart', 'Corazón de oso', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('bearClaws', 'Garras de oso', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_elk_antlers', 'Cuernos de alce', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_elk_fur', 'Piel de alce', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_buck_antlers', 'Cuernos de ciervo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_buck_fur', 'Piel de ciervo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_sheep_wool', 'Piel de obeja', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_rabbit_pelt', 'Piel de conejo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_pronghorn_fur', 'Piel de berrendo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_pronghorn_horn', 'Cuernos de berrendo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_pig_skin', 'Piel de puerco', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_panther_fur', 'Piel de pantera', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_panther_eye', 'Ojo de pantera', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_panther_heart', 'Corazon de pantera', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_cow_hide', 'Piel de vaca', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_coyote_fang', 'Colmillo de coyote', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_coyote_fur', 'Piel de coyote', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('animal_crane', 'Grulla', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_goat_hair', 'Pelo de cabra', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_iguana_skin', 'Piel de iguana', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_moose_antler', 'Cuernos de alce', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_moose_fur', 'Piel de alce', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_muskrat_fur', 'Piel de rata almizclera', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_muskrat_scentgland', 'Pulmon de rata almizclera', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_oxen_hide', 'Piel de buey', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_oxen_horn', 'Cuernos de buey', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_fox_claw', 'Garra de zorro', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_fox_fur', 'Piel de zorro', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_trinket_wolf_heart', 'Corazon de lobo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_wolf_fur', 'Piel de lobo', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('turtleshell', 'Concha de tortuga', 50, 1, 'item_standard', 1);
INSERT INTO `items`(`item`, `label`, `limit`, `can_remove`, `type`, `usable`) VALUES ('provision_skunk_fur', 'Piel de zorrillo', 50, 1, 'item_standard', 1);










































