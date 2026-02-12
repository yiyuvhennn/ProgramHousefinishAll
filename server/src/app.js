"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.createApp = createApp;
const express_1 = __importDefault(require("express"));
const cors_1 = __importDefault(require("cors"));
const reset_1 = __importDefault(require("./reset"));
const houses_1 = __importDefault(require("./houses"));
function createApp() {
    const app = (0, express_1.default)();
    app.use((0, cors_1.default)());
    app.use(express_1.default.json());
    app.use('/test', reset_1.default);
    app.use('/houses', houses_1.default);
    app.get('/health', (_req, res) => {
        res.json({ ok: true });
    });
    app.get("/", (_req, res) => {
        res.send("API server is running");
    });
    return app;
}
