"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const express_1 = require("express");
const prisma_1 = require("./prisma");
const router = (0, express_1.Router)();
router.post("/reset", async (_req, res) => {
    if (process.env.NODE_ENV !== "test") {
        return res.status(403).json({ message: "Forbidden" });
    }
    try {
        // 清空 DB（順序重要：先關聯表，再主表）
        await prisma_1.prisma.houseFeature.deleteMany();
        await prisma_1.prisma.feature.deleteMany();
        await prisma_1.prisma.house.deleteMany();
        return res.json({ ok: true });
    }
    catch (e) {
        console.error(e);
        return res.status(500).json({ message: "Reset failed" });
    }
});
exports.default = router;
