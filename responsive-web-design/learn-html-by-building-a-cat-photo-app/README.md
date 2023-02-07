
# 通过编写猫咪相册应用学习 HTML
index.htmleditor


- 开始标签与结束标签
    - 元素的内容在元素的开始标签和结束标签之间。
- 标题的分级
    - h1->h6,数字越低，重要性越高
- 段落
    - p元素
- 注释
    - 一个注释以 `<!--` 开始，包含数行文本，并以 `-->` 结束。
        ```html
        <!-- 这是注释 -->
        ```
- 不同的内容区域
    - head元素
    - body元素
    - main元素
    - section元素
    - figure元素
        - figure 元素代表独立的内容，并允许你将图像与标题相关联
        - figcaption元素
            - 图像标题（figcaption）元素用于添加标题以描述 figure 元素中包含的图像。
    - footer元素
- 嵌套与缩进
    - 子元素需要比父元素多缩进了两个空格
- 自闭合标签
    - img元素
        - src属性
        - alt属性
            - 让屏幕阅读器可以知晓图片的内容
            - 当图片无法加载时，页面需要显示的替代文本
    - input元素
- 内联元素
    - input
    - button
- 块级元素
    - p
    - field
- 锚点元素
    - a元素
        - href属性 链接的地址
        - target 打开方式
            - target="_blank" 在新窗口打开
- 列表
    - ul无序列表
        - li列表项
    - ol有序列表

- 文本修饰
    - em斜体元素
    - strong粗体强调元素

- Web表单
    - form元素 
        - action属性
            - 表单数据发送到的目标路径
    - input元素
        - type属性
            - text 文本
            - submit
            - radio 单选框
                - name属性
                    - 为了使选择一个单选按钮自动取消选择另一个，两个按钮必须有具有相同值的 name 属性
                - value属性
                    - 默认是`on`,在你有多个按钮时没有用处,一般要主动给value属性
                - checked属性
                    - 默认选中，无需属性值
            - checkbox 多选框
                - name属性
        - name属性
            - 提交的字段名
        - placeholder属性
            - 占位符文本用于提示人们在输入框中输入什么样的信息
        - required属性
            - 要求必填，无需为 required 属性设置值
    - label 元素
        - 用于帮助将 input 元素的文本与 input 元素本身关联起来（尤其是对于屏幕阅读器等辅助技术）
            - <label><input type="radio"> cat</label> 使得点击单词 cat 也会选择相应的单选按钮
        - for属性 当元素不在label里面时 可以用for关联起来
    - button元素
        - 单击没有任何属性的表单按钮的默认行为会将表单提交到表单的 action 属性中指定的位置
        - 依赖默认行为可能造成混乱。 将值为 submit 的 type 属性添加到 button 以明确它是一个提交按钮
    - fieldset元素
        - fieldset 元素用于在 Web 表单中将相关的输入和标签组合在一起。
        - legend
            - legend 元素充当 fieldset 元素中内容的标题。一般位于fieldset的第一个子元素
        