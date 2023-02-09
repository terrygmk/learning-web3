# 通过构建资产负债表了解有关 CSS 伪选择器的更多信息



- 对屏幕阅读器隐藏此特定元素
    - aria-hidden="true"
- 描述表格的内容
    - HTML 表格使用 caption 元素来描述表格的内容。 caption 元素应该始终是 table 的第一个子元素，但可以使用 caption-side CSS 属性定位。

- table
    - thead 
        - 标题
    - tbody
        - 主要数据或内容
    - tr
        - 表格行
    - td 
        - 表格单元
    - th
        - 表格标题单元
- span[class~='sr-only']
    - 表示选择class属性值中包含"sr-only"的span元素，并应用指定的样式。这段代码用于设置指定的span元素的样式，使其不显示边框。其中"[class~='sr-only']"为CSS选择器，用于选择满足条件的元素。
- [attribute="value"] 选择器针对具有特定值的属性的任何元素。
    - 创建一个 tr[class="total"] 选择器，专门针对具有 total 类的 tr 元素。 给它一个 4px double #0a0a23 的底部边框，并使字体加粗。
- CSS clip 属性用于定义元素的可见部分。 设置 span[class~="sr-only"] 选择器的 clip 属性为 rect(1px, 1px, 1px, 1px)。clip-path 属性决定了 clip 属性应该采用的形状。 设置 clip-path 和 -webkit-clip-path 属性值为 inset(50%)，创建矩形显示方式。

- :not() 伪选择器用于定位与选择器不匹配的所有元素
- !important
    - !important 关键字来确保始终应用这些属性，而不考虑其顺序或特殊性。

- 不仅不再可见，而且甚至不在页面视图中

- 绝对位置
    - position:absolute;
- 确保宽度是固定的
    - 创建一个选择器来定位表格正文中的 td 元素。 给它们一个宽度以填充视口，最小值和最大值为 4rem。 这种方法确保宽度是固定的，而专门设置 width 将允许元素收缩到容器中（因为我们使用的是 flexbox）

- tr[class="total"] 和 tr.total
    - 主要区别在于，前一个将选择类只是 total 的 tr 元素。 第二个将选择类包含 total 的 tr 元素

- :nth-of-type(number)
    - 第几个？ tr.total td:nth-of-type(3){}
- :hover
    - 鼠标停留时

- 字体设为斜体
    - font-style:italic;
- 垂直对齐
    - vertical-align:top;
