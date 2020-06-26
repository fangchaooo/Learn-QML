# QML基本类型

## QML语言基本类型

| 类型名                              | 解释                                                    |
| ----------------------------------- | ------------------------------------------------------- |
| [bool](qml-bool.html)               | Binary true/false value                                 |
| [double](qml-double.html)           | Number with a decimal point, stored in double precision |
| [enumeration](qml-enumeration.html) | Named enumeration value                                 |
| [int](qml-int.html)                 | Whole number, e.g. 0, 10, or -20                        |
| [list](qml-list.html)               | List of QML objects                                     |
| [real](qml-real.html)               | Number with a decimal point                             |
| [string](qml-string.html)           | Free form text string                                   |
| [url](qml-url.html)                 | Resource locator                                        |
| [var](qml-var.html)                 | Generic property typ                                    |

## QML模块基本类型

| 类型名                  | 解释                                   |
| ----------------------- | -------------------------------------- |
| [date](qml-date.html)   | Date value                             |
| [point](qml-point.html) | Value with x and y attributes          |
| [rect](qml-rect.html)   | x, y, width and height                 |
| [size](qml-size.html)   | Value with width and height attributes |

## 例子

``` js
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property int rect_width: 200
    property string name: "LiMing"
    property double cost: 10.001
    property url webset: "http://www.baidu.com"


    property var my_color: Qt.rgba(0.4,0.5,0.6,0.7)
    property var afun: (function(){return "an";})
    Rectangle{
        id:rect
        anchors.centerIn: parent
        width: rect_width
        height: 200
        color: my_color
        Text {
            id: text
            anchors.centerIn: parent
            width: 200
            height: 100
            color: "green"
            text: "My name is " + name +" . I cost " + cost + "\nI use " + webset + "\n I select " + afun() + " apple!"
        }
    }
}

```

![](/Users/fc/Desktop/截屏2020-06-26 下午5.49.44.png)

## QT全局对象

[QT全局对象](https://doc.qt.io/qt-5/qml-qtqml-qt.html)可以直接在QML中使用

