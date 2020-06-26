# QML&HelloWrold

## What

> **QML** (Qt Markup Language[[2\]](https://zh.wikipedia.org/wiki/QML#cite_note-2) 或 Qt Meta Language 或 Qt Modeling Language[[3\]](https://zh.wikipedia.org/wiki/QML#cite_note-3)) 是基于[JavaScript](https://zh.wikipedia.org/wiki/JavaScript)、宣告式编程的编程语言，用于设计用户界面为主的应用程序。它是[Qt Quick](https://zh.wikipedia.org/w/index.php?title=Qt_Quick&action=edit&redlink=1)，诺基亚开发的用户界面创建包的一部分。QML 主要用于移动应用程序，注重于触控输入、流畅的动画（60张/秒）和用户体验。QML documents 描述元素的对象树。
>
> QML 元素可以透过标准 JavaScript 增强，包括这 inline 和引入.js 档。元素可以也无缝集成和使用 [Qt](https://zh.wikipedia.org/wiki/Qt) 框架的 [C++](https://zh.wikipedia.org/wiki/C%2B%2B) 组件扩展。

## How

1. 打开[官方下载链接](https://www.qt.io/offline-installers)
2. 在笔者撰写此文时，Qt5.15还没有官方打包版，因此使用Qt5.12.x版本，笔者为Qt5.12.8
3. 下载相应平台后一路安装全选
4. ![截屏2020-06-26 下午3.54.18](/Users/fc/Desktop/截屏2020-06-26 下午3.54.18.png)
5. ![](/Users/fc/Desktop/截屏2020-06-26 下午3.58.14.png)
6. ![HelloWorld](/Users/fc/Desktop/截屏2020-06-26 下午3.59.29.png)

## Why

- **渲染更快**。QML是提供GPU加速渲染界面，比QWidght只在CPU上渲染更快
- **界面逻辑分离**。QML使用UI于逻辑分析的GUI编程方式，用类HTML语言QML+JS可快速开发，JS开发速度远胜C++
- **跨平台**。QML实现移动端与嵌入式端的部署。

