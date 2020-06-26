# QML Syntax

QML语法已经有[一本书](https://qmlbook.github.io/)进行了讲解。

[此章节](https://qmlbook.github.io/ch04-qmlstart/qmlstart.html#qml-syntax)对语法进行了讲解

## 一个简单例子

``` js
//import 告诉qml客户端使用的模块，例如其他的qml,或者js，c++注册的模块
import QtQuick 2.12
import QtQuick.Window 2.12

//window是import QtQuick.Window 2.12这句引入的window对象，此对象构造一个顶级窗口。
Window {
    //id 是每个对象下的唯一标识
    id: root
    //可不可见
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Syntax")
    //在window对象中可以包含其他对象，Row对象是import QtQuick 2.12中引入，是一个对子项目的位置排列描述
    Row{
        id: row_root
        //anchors提供一组描述各项目对象相对位置的类型描述
        anchors.centerIn: parent
        //各对象之间的间隔
        spacing: 20
        //同样是import QtQuick引入的对象，描述一个通用矩形
        Rectangle{
            id: rect
            width: 150
            height: 150
            color: "green"
            //描述鼠标对象
            MouseArea{
                //鼠标对象的位置
                anchors.fill: parent
                //鼠标对象事件
                onClicked: {
                    //js 语法，打印
                    console.log("This is green rectangle, its color is "+ rect.color)
                }
            }
        }
        Rectangle{
            id: rect1
            width: 150
            height: 150
            color: "blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("This is green rectangle, its color is "+ rect1.color)
                }
            }
        }
        Rectangle{
            id: rect2
            width: 150
            height: 150
            color: "red"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    console.log("This is green rectangle, its color is "+ rect2.color)
                }
            }
        }
    }
}

```

- import语法

  > import <ModuleIdentifier> <Version.Number> [as <Qualifier>]

- JS版本及实现语法

  [QML中JS实现](https://doc.qt.io/qt-5/qtqml-javascript-expressions.html)

  - 实现了大多数ES6语法
  - QML中JS不能操作DOM

分别点击三张图片，结果如图。

![](/Users/fc/Documents/Jun-26-2020 16-29-32.gif)



## Property

``` js
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    //id 是每个对象下的唯一标识
    id: root
    //可不可见
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Syntax")
    //在window对象中可以包含其他对象，Row对象是import QtQuick 2.12中引入，是一个对子项目的位置排列描述
  	
  	//property type name: value
  	//在这相当于定义一个string类型的属性，属性名为color_name，值为"null"
    property string color_name: "null"
    Row{
        id: row_root
        //anchors提供一组描述各项目对象相对位置的类型描述
        anchors.centerIn: parent
        //各对象之间的间隔
        spacing: 20
        //同样是import QtQuick引入的对象，描述一个通用矩形
        Rectangle{
            id: rect
            width: 150
            height: 150
            color: "green"
            Text {
                id: text
                anchors.centerIn: parent
                text: color_name
            }
            //描述鼠标对象
            MouseArea{
                //鼠标对象的位置
                anchors.fill: parent
                //鼠标对象事件
                onClicked: {
                    //js 语法，打印
                  	//更改 property color_name的值
                    color_name = "green"
                    console.log("This is green rectangle, its color is "+ rect.color)
                }
            }
        }
        Rectangle{
            id: rect1
            width: 150
            height: 150
            color: "blue"
            Text {
                id: text1
                anchors.centerIn: parent
                text: color_name
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    color_name = "blue"
                    console.log("This is green rectangle, its color is "+ rect1.color)
                }
            }
        }
        Rectangle{
            id: rect2
            width: 150
            height: 150
            color: "red"
            Text {
                id: text2
                anchors.centerIn: parent
                text: color_name
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    color_name = "red"
                    console.log("This is green rectangle, its color is "+ rect2.color)
                }
            }
        }

        Rectangle{
            id: rect3
            radius: 100
            width: 150
            height: 150
            color: "aqua"
            Text {
                id: text3
                anchors.centerIn: parent
                text: color_name
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                  	//使用id进行变量直接赋值
                    text3.text = "aqua"
                    console.log("This is green rectangle, its color is "+ rect2.color)
                }
            }
        }
    }
}

```

- property 做属性可以对变量进行赋值
- 通过id直接赋值可以强制更改property，使其不再改变

![](/Users/fc/Documents/propertyandequre.gif)

