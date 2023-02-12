
## HTML

### 属性

- loading="lazy"
    - 告诉浏览器在需要（例如，当用户将图像滚动到视图中时）的时候才获取图像资源
- a rel="noreferrer"
    - 告诉浏览器 省图 来源信息

## CSS


- display
    - 元素本身
        - block
        - inline
    - 当窗口时，子元素布局
        - flex 弹性布局
            - flex-direction 子元素布局的主轴
                - row/row-reverse/column/column-reverse
            - justify-content 子元素之间及其周围的空间如何分配
                - space-between 在每行上均匀分配弹性元素。相邻元素间距离相同。每行第一个元素与行首对齐，每行最后一个元素与行尾对齐
                - space-around 在每行上均匀分配弹性元素。相邻元素间距离相同。每行第一个元素到行首的距离和每行最后一个元素到行尾的距离将会是相邻元素之间距离的一半
                - space-evenly flex 项都沿着主轴均匀分布在指定的对齐容器中。相邻 flex 项之间的间距，主轴起始位置到第一个 flex 项的间距，主轴结束位置到最后一个 flex 项的间距，都完全一样。
            - align-items 子元素之间的对齐方式
                - center 元素在侧轴居中。如果元素在侧轴上的高度高于其容器，那么在两个方向上溢出距离相同。
        - grid 网格布局

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

- position 定位
    - fixed 
        - 相对浏览器固定，不随滚动而移动，可用于持久导航菜单

- 子元素对齐
    - align-items