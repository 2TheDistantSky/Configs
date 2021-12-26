# vim 学习笔记

1. 进入插入模式：

    - i &emsp; 光标前
    - a &emsp; 光标后
    - o &emsp; 光标下一行
    - I &emsp; 光标所在行第一个非空字符
    - A &emsp; 光标所在行最后一个非空字符
    - O &emsp; 光标上一行

2. 插入模式下进行修改

    - ^h &emsp; 向前删除一个字符
    - ^w &emsp; 向前删除一个单词
    - ^u &emsp; 向前删除一行

3. 快速切换 insert 模式与 normal 模式

    - gi &emsp; 跳转到最后一次编辑的地方并进入插入模式

4. 单词间移动(word 指非空白符分割的单词，Word 指空白符分割的单词)

    - w &emsp; 跳转到下一个 **word** 开头
    - e &emsp; 跳转到下一个 **word** 结尾
    - b &emsp; 跳转到上一个 **word** 开头
    - W &emsp; 跳转到下一个 **Word** 开头
    - E &emsp; 跳转到下一个 **Word** 开头
    - B &emsp; 跳转到下一个 **Word** 开头

5. 