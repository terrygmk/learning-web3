# 通过创建照片集来学习 CSS `弹性盒子`布局

- 资源
    -  [代码](https://github.com/terrygmk/learning-web3/tree/main/responsive-web-design/learn-css-flexbox-by-building-a-photo-gallery/) [展示](https://terrygmk.github.io/learning-web3/responsive-web-design/learn-css-flexbox-by-building-a-photo-gallery/) [教程](https://www.freecodecamp.org/chinese/learn/2022/responsive-web-design/learn-css-flexbox-by-building-a-photo-gallery/step-1)

- 弹性布局
    - 容器
        - 设定display
            - display: flex;
        - 主轴
            - flex-direction: row;
        - 动态换行
            - flex-wrap: wrap;
        - 主轴居中对齐
            - justify-content: center;
        - 交叉轴居中对齐
            - align-items: center;
            - 一般在容器交叉轴方向的长度固定时起作用
        - 元素之间留空白
            - gap: 16px;
        - :after
            - 用来创建一个伪元素 在最后一个图像后添加一个空元素
    - 元素
        - 宽度设定
            - width:100%
            - max-width:350px
        - 高度设定
            - height: 300px;
        - width 和 max-width height 配合使用，不管原始图片大小，显示都是一样的，较美观。
        - 圆角平滑
            - border-radius: 10px;
        - 图片保持横纵比，防失真
            - object-fit: cover;
        