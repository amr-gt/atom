-- ============================================================
-- loot_offsets.lua  (HSVPS v4 — remote offsets)  [FINAL]
-- LootDefinition latest dump: Size 0x280, vtable build (2160)
--
-- Major game update hole shudhu ei file er offset gulo
-- bosalao + version bump — script ar change lagbe na.
--
-- list field mane std::vector = 3ta pointer (begin/end/cap),
-- tai prottekta off theke 3ta qword (off, off+8, off+0x10).
-- string-list er element = 1ta std::string (size 0x18).
--
-- BAD/SKIP: customChests (0x140), upgrades (0x1D0) — structure
-- pawa jayni. chests (0xF8, List<int>) — ChestDefinition pawa
-- jayni, tai index guess kore test korte hobe (game JSON e
-- chest name ache: "common", "epic" — probable index 0/1).
-- ============================================================
return {
    version = "1.0",

    kinds = {
        -- ================= CHALU (tested) =================
        paints     = {off = 0x98,  size = 0x30, str = {{0x00, "vehicleId"}, {0x18, "paintId"}}},
        wheels     = {off = 0xB0,  size = 0x48, str = {{0x00, "vehicleId"}, {0x18, "partId"}, {0x30, "variantId"}}},
        parts      = {off = 0x158, size = 0x38, str = {{0x00, "id"}, {0x18, "vehicleId"}},
                      int = {{0x30, "amount"}, {0x34, "rarity"}}},

        -- ======== NOTUN (dumped structure onujayi) ========
        -- CurrencyAmount  {string currency @0x0, int amount @0x18}      Size 0x20
        currencies = {off = 0x128, size = 0x20, str = {{0x00, "currency"}}, int = {{0x18, "amount"}}},
        -- VehicleChest    {string vehicleId @0x0, int chestIndex @0x18, int targetIndex @0x1C} Size 0x20
        vehChests  = {off = 0x110, size = 0x20, str = {{0x00, "vehicleId"}},
                      int = {{0x18, "chestIndex"}, {0x1C, "targetIndex"}}},
        -- HomePropLoot    {string id @0x0, int amount @0x18}            Size 0x20
        homeProps  = {off = 0x188, size = 0x20, str = {{0x00, "id"}}, int = {{0x18, "amount"}}},
        -- VehicleMasteryXpReward {string vehicleId @0x0, int amount @0x18} Size 0x20
        masteryXp  = {off = 0x1E8, size = 0x20, str = {{0x00, "vehicleId"}}, int = {{0x18, "amount"}}},
        -- StyleShardReward {string itemId @0x0, string vehicleId @0x18, Rarity rarity @0x30, int amount @0x34} Size 0x38
        shards     = {off = 0x200, size = 0x38, str = {{0x00, "itemId"}, {0x18, "vehicleId"}},
                      int = {{0x30, "rarity"}, {0x34, "amount"}}},

        -- ======== STRING-LIST (element = 1ta std::string, size 0x18) ========
        vehicles     = {off = 0x50,  size = 0x18, str = {{0x00, "id"}}},  -- unlockVehicles
        driverAssets = {off = 0x68,  size = 0x18, str = {{0x00, "id"}}},  -- unlockDriverAssets
        driverAnims  = {off = 0x80,  size = 0x18, str = {{0x00, "id"}}},  -- unlockDriverAnimations
        maps         = {off = 0xC8,  size = 0x18, str = {{0x00, "id"}}},  -- unlockAdventureMaps
        themes       = {off = 0xE0,  size = 0x18, str = {{0x00, "id"}}},  -- unlockEditorThemes
        backgrounds  = {off = 0x1A0, size = 0x18, str = {{0x00, "id"}}},  -- unlockHomeBackgrounds
        boosters     = {off = 0x1B8, size = 0x18, str = {{0x00, "id"}}},  -- boosters

        -- ======== EXPERIMENTAL ========
        -- chests: List<int> (ChestDefinition pawa jayni — index guess:
        -- 0 = common? / 1 = epic? — game JSON e chest name "common"/"epic")
        chests     = {off = 0xF8,  size = 4,    int = {{0x00, "chest"}}},
    },
}
