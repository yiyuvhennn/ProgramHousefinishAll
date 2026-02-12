# vue-591-test

你的靜態 `index.html` 已經被拆成 Vue 3 + Vite 專案與多個元件：
- `HeaderNav.vue`
- `RentalHouse.vue`
- `Copywriting.vue`
- `FooterBar.vue`

## 使用方式
1. 把你原本的 `css/normalize.css`、`css/style.css` 放到本專案的 `public/css/` 下。
2. 把圖片（例如 `img/建案.jpg`）放到 `public/img/` 下。
3. 在專案根目錄執行：
   ```bash
   npm install
   npm run dev
   ```
4. 瀏覽器開啟 `http://localhost:5173/`。

## 哪裡改資料？
- 導覽列文案：`src/App.vue` 的 `navTop`、`navCategories`
- INFO_1 商品卡資料：`src/App.vue` 的 `products`
- INFO_2 文字與清單：`src/App.vue` 的 `copyBullets`、`imgSrc`
- 頁尾連結與熱門區域：`src/App.vue` 的 `footerLinks`、`hotAreas`

## 備註
- 所有原本的 class 名稱都有保留，你現有的 CSS 可以直接作用。
- 若你想拆得更細、加上路由或資料串接（例如從 API 拿房屋列表），可以再告訴我要怎麼串。# real-estate-project1
# ProgramHousefinishAll
# ProgramHousefinishAll
