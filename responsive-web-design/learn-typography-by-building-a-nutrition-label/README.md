# 通过建立营养标签来学习`排版`

- 字体
    - 导入字体
        ```html
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700,800" rel="stylesheet">
        ```
        - 这将导入 Open Sans 字体系列，字体粗细值为 400、700 和 800
    - 字体设置，备用字体
        - font-family:"Open Sans", sans-serif;
        - 字体如有空格可以双引号
    - 字体大小
        - font-size: 16px;
    - 字体粗细？
        - font-weight: 800;
    - 元素中文本的每个字符之间的间距
        - letter-spacing


- 边框
    - 边框可用于对内容进行分组和优先排序。
    - 盒子像素计算
        - box-sizing: border-box; 包含边框，外边距，内边距计算较简便

- 对齐
    - 将元素在容器内平均分布，使其两端对齐
        - justify-content: space-between;
    - 容器内元素在垂直方向上的对齐方式
        - align-items: flex-end; 将元素对齐在容器的底部

- 缩进
    - 首行缩进
        - text-indent: -8px;

- 理念
    - 善用空白可以将焦点集中在页面的重要元素上，并有助于引导用户的视线浏览你的文本。
    - 线条可以帮助分隔和分组重要内容，尤其是在空间有限的情况下。
    - 同样重要的元素之间的水平间距可以增加文本的可读性。