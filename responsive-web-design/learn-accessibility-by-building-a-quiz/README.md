
# 通过编写小测验学习无障碍

- 长宽比
    - aspect-ratio:35/4; 即长/宽=35/4；
- 定位 nav 元素中的无序列表元素，并使用 Flexbox 均匀地间隔子元素。
    ```css
    nav > ul {
        display:flex;
        justify-content: space-evenly;
    }
    ```
- role 属性
    - 可用于向辅助技术指示页面上元素背后的用途
    - 每个 region role 都需要一个可见标签，该标签应由 aria-labelledby 属性引用。给 section 元素添加以下 aria-labelledby 属性：student-info,html-questions,css-questions.然后，在每个 section 元素中，嵌套一个 h2 元素，其 id 与相应的 aria-labelledby 属性匹配。 给每个 h2 添加适当的文本内容。

- 日期
    - input type="date"

- 只有屏幕阅读器可以阅读的文本，而无需向标签添加可见文本
    - 可以说，D.O.B. 的描述性不够。 对于视力受损的用户来说尤其如此。 解决此类问题的一种方法是添加只有屏幕阅读器可以阅读的文本，而无需向标签添加可见文本。将具有 sr-only 类的 span 元素添加到第三个 label 元素的当前文本内容。

- 防止不必要的重复
    - 为了防止不必要的重复，针对 p 元素的 before 伪元素，给它 一个值为 "Question #" 的 content 属性。

- address 元素
- 标题的文本和背景之间的对比度应至少为 4.5:1
- 移除下划线
    - text-decoration:none;
- 鼠标
    - cursor:pointer;
- 在小屏幕上，导航栏中的无序列表会溢出屏幕的右侧。
    - 通过使用 Flexbox 来包含 ul 内容来解决此问题。
- 设置元素滚动的动画效果
    > `* {    scroll-behavior:smooth;    }`
    - 表示在页面滚动时，元素滚动的动画效果为平滑
- 键盘快捷键 
    - accesskey="s"