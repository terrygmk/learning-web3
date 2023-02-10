
## HTML

### 属性

- loading="lazy"
    - 告诉浏览器在需要（例如，当用户将图像滚动到视图中时）的时候才获取图像资源
- a rel="noreferrer"
    - 告诉浏览器 省图 来源信息

## CSS

- 边框辅助设计，
    ```css
    * {
    border: 1px solid black;
    box-sizing: border-box;
    }
    ```

- 隐藏滚动条
    ```css
    body {
        overflow:hidden;
    }
    ```

- 变量
    ```css
    :root {
        --building-color1: #999; /* 变量声明 */
    }
    .bb1a {
        background-color:var(--building-color1); /* 变量使用 */
    }
    ```

- 渐变
    ```css
    .fb5 {
        width: 10%;
        height: 33%;
        position: relative;
        right: 10%;
        background: repeating-linear-gradient(
            var(--building-color2),
            var(--building-color2) 5%,
            transparent 5%,
            transparent 10%
            ),
            repeating-linear-gradient(
            90deg,
            var(--building-color2),
            var(--building-color2) 12%,
            var(--window-color2) 12%,
            var(--window-color2) 44%
            );
    }
    .sky {
        background: radial-gradient(
            closest-corner circle at 15% 15%,
            #ccc,
            #ccc 20%,
            #445 21%,
            #223 100%
        );
    }
    ```

- 伪类
    - ::first-letter
    ```css
    .first-paragraph::first-letter{
        font-size : 6rem;
        color:orangered;
    }
    ```
    - ::before ::after
    ```css
    .quote::before{
        content:'" ';
    }
    .quote::after{
        content:' "';
    }
    ```