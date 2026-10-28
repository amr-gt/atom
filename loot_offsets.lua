return {
    kinds = {
        -- Lists: off + element size + string fields {offset, name} + int fields {offset, name}
        driverAssets     = {off = 0x68,  size = 0x18, str = {{0x00, "id"}}},
        driverAnims      = {off = 0x80,  size = 0x18, str = {{0x00, "id"}}},
        paints           = {off = 0x98,  size = 0x30, str = {{0x00, "vehicleId"}, {0x18, "paintId"}}},
        wheels           = {off = 0xB0,  size = 0x48, str = {{0x00, "vehicleId"}, {0x18, "partId"}, {0x30, "variantId"}}},
        parts            = {off = 0x158, size = 0x38, str = {{0x00, "id"}, {0x18, "vehicleId"}}, int = {{0x30, "amount"}, {0x34, "rarity"}}},
        currencies       = {off = 0x128, size = 0x20, str = {{0x00, "currency"}}, int = {{0x18, "amount"}}},
        maps             = {off = 0xC8,  size = 0x18, str = {{0x00, "id"}}},
        themes           = {off = 0xE0,  size = 0x18, str = {{0x00, "id"}}},
        backgrounds      = {off = 0x1A0, size = 0x18, str = {{0x00, "id"}}},
        homeProps        = {off = 0x188, size = 0x20, str = {{0x00, "id"}}, int = {{0x18, "amount"}}},
        vehicleMasteryXp = {off = 0x1E8, size = 0x20, str = {{0x00, "vehicleId"}}, int = {{0x18, "amount"}}},

        -- Direct values: written straight at lootBase + off
        masteryXp        = {off = 0x30, direct = "dword"},
        coins            = {off = 0x28, direct = "dword"},
        gems             = {off = 0x2C, direct = "dword"},
        rank             = {off = 0x20, direct = "float"},
    },
}