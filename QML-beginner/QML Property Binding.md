# QML Property Binding

可以为对象的属性分配一个静态值，该值保持不变，直到为它显式分配一个新值为止。但是，为了充分利用QML及其对动态对象行为的内置支持，大多数QML对象都使用*属性绑定*。

属性绑定是QML的一项核心功能，可让开发人员指定不同对象属性之间的关系。当属性的*依赖项*的值更改时，该属性将根据指定的关系自动更新。

在后台，QML引擎监视属性的依赖关系（即绑定表达式中的变量）。检测到更改时，QML引擎将重新计算绑定表达式并将新结果应用于属性。

## 简单例子

``` js
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Porperty Binding")

    Column {
        id: column
        width: 200
        height: 200

        Rectangle {
            id: topRect
            width: Math.max(bottomRect.width, parent.width/2)
            height: (parent.height / 3) + 10
            color: "yellow"

            TextInput {
                id: myTextInput
                text: "Hello QML!"
            }
        }

        Rectangle {
            id: bottomRect
            width: 100
            height: 50
            color: myTextInput.text.length <= 10 ? "red" : "blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    bottomRect.width  += 10
                    myTextInput.text += "click"
                }
            }
        }
    }
}

```

![](/Users/fc/Documents/QMLProertyBinding.gif)

- `topRect.width`取决于`bottomRect.width`和`column.width`
- `topRect.height` 依赖于取决于 `column.height`
- `bottomRect.color` 依赖于取决于 `myTextInput.text.length`

## 一点小改动

``` js
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Porperty Binding")

    Column {
        id: column
        width: 200
        height: 200

        Rectangle {
            id: topRect
            width: Math.max(bottomRect.width, parent.width/2)
            height: (parent.height / 3) + 10
            color: "yellow"

            TextInput {
                id: myTextInput
                text: "Hello QML!"
            }
        }

        Rectangle {
            id: bottomRect
            width: 100
            height: 50
            color: myTextInput.text.length <= 10 ? "red" : "blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    bottomRect.width  += 10
                    myTextInput.text += "click"
                }
            }
        }
				
        Rectangle{
            id:rect
            width: 100
            height: 50
            color: "aqua"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                  	//在这对最上面的矩形进行直接赋值
                    topRect.width  = 300
                }
            }

        }
    }
}

```

如结果所示，进行直接赋值后，在点击蓝色部分黄色矩形就不会width增加。**因为直接赋值强行打破了属性绑定。**

![](/Users/fc/Documents/QML-beginner/images/propertybinding2.gif)

## 使用JS创建属性绑定

``` js
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Porperty Binding")

    Column {
        id: column
        width: 200
        height: 200

        Rectangle {
            id: topRect
            width: Math.max(bottomRect.width, parent.width/2)
            height: (parent.height / 3) + 10
            color: "yellow"
            TextInput {
                id: myTextInput
                text: "Hello QML!"
            }
        }

        Rectangle {
            id: bottomRect
            width: 100
            height: 50
            color: myTextInput.text.length <= 10 ? "red" : "blue"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                  
										//js创建绑定
                    topRect.width = Qt.binding(function() { return this.width + 10})
                    myTextInput.text += "click"
                }
            }
        }

        Rectangle{
            id:rect
            width: 100
            height: 50
            color: "aqua"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    topRect.width  = 300
                }
            }

        }
    }
}

```

可以看到结果点击了最后的矩形使第一个矩形width=300后，点击第二个仍然可以使width增加。

![](/Users/fc/Documents/QML-beginner/images/propertybinding3.gif)