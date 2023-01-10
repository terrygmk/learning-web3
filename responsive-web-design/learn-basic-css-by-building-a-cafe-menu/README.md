# 编写`咖啡店菜单`学习`基础CSS`

### 本项目重点注意

- `防宽屏`，不美观
  - max-width: 500px;

    ```css
    .menu {
        background-color: burlywood;
        width: 80%;
        margin: 0 auto;
        padding: 20px;
        /* 防止宽屏，咖顺名和价格相距太远，不美观 */
        max-width: 500px;
    }
    ```

- 行内块元素
    - display: inline-block;

        ```css
        .item p {
            display: inline-block; /* 俩个p 要在同一行展示, p设置为行内块元素 */
            margin: 5px auto;
            font-size: 18px;
        }
        ```

- html`预防行内块元素换行`
    - 当俩个或多个行内块元素 width加起来 100%时，需要在html中连在一起，不能有任何字符（包括空白），不然会换行

         ```css
        .flavor, .dessert {
            text-align: left;
            width: 75%; /* Coffee 名比价格长，所以名占大部份 设为75%，可防止总width较小时 名会换行 */
        }
        
        .price {
            text-align: right;
            width: 25%;
        }
        ```

        ```html
        <p class="flavor">French Vanilla</p><p class="price">3.00</p>
        ```

- 图片`居中`展示
    - 不通过外包div 需要2步

        ```css
        img {
            /* 图片居中展示 需要2步 */
            display: block; /* 1. 设置为块级元素 */
            margin: 0 auto; /* 2. 设置左右外边距为auto */
        }
        ```

- hr 水平线 
    - `实体`展示
    
        ```css
        hr {
            height: 2px;
            /* 水平线要实体展示，可将 background-color border-color 设为同种颜色 */
            background-color: brown;
            border-color: brown;
        }
        ```
