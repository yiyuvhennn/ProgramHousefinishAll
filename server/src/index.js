"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const app_1 = require("./app");
const app = (0, app_1.createApp)();
const port = Number(process.env.PORT) || 3001;
app.listen(port, () => {
    console.log(`API server running at http://localhost:${port}`);
});
