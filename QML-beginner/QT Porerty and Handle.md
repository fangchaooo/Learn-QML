# QT Porerty and Handle

属性更改信号的信号处理程序采用`on <Property> Changed`的语法形式*，*其中`<Property>`是*属性*的名称，**首字母大写**。

来看个例子

``` js
import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Qt Property and handle")
    color: "red"
  	//定义一个属性
    property string name: "LiMing"
  	//属性更改信号,属性发生更改，则颜色改变
    onNameChanged: {
        color = "green"
    }
    MouseArea{
        anchors.fill: parent
        //鼠标点击更改属性
        onClicked: {
            name = "LiLei"
            console.log("This name is " + name)
        }
    }

    Component.onCompleted: {
        console.log("This name is " + name)
    }
}

```

![](/Users/fc/Documents/QML-beginner/images/propertychange.gif)