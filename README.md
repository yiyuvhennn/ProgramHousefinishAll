🏠 Program House – 全端建案展示平台

一套具備 Production 部署能力的前後端分離 Web 應用。

🔗 Demo
https://program-housefinish-all.vercel.app

🔗 Backend API
https://programhousefinishdeploy.onrender.com

📌 專案概述：

   本專案為個人獨立開發之全端系統，目標是完整實作一個具備：

   前後端分離架構

   RESTful API 設計

   資料庫 ORM 管理

   API + E2E 測試

   雲端部署

   的 Production 等級 Web 應用。

   開發時間：2025/011 – 2026/02（約 4 個月）

系統架構：

   Browser
   → Vercel（Vue Frontend）
   → Render（Express API）
   → PostgreSQL

   前後端透過 REST API 溝通，資料庫操作由 Prisma 管理。

技術棧：
   Frontend

   Vue 3

   Vite

   Axios

   動態路由與元件化設計

   Backend

   Node.js

   Express

   Prisma ORM

   PostgreSQL

   Controller / Service 分層設計

   Testing

   Vitest + Supertest（API）

   Cypress（E2E）

   Deployment

   Vercel（Frontend）

   Render（API + Database）

   環境變數管理

功能：

   建案列表頁

   建案詳細頁

   RESTful API 設計

   統一 JSON 回應格式

   404 / 500 錯誤處理

   Production 環境可公開運行

技術重點：

   SQLite（本機）→ PostgreSQL（雲端）資料庫遷移

   分層後端架構設計

   API 與使用者流程測試

   解決 Production 圖片路徑問題

   環境差異除錯

未來優化方向：

   使用者驗證系統

   分頁與搜尋功能

   Docker 容器化

   CI/CD 流程

   Monorepo 架構優化

👨‍💻 作者

陳翊猷
新手全端工程師 / 學生
Junior Full-Stack Developer