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
                    text3.text = "aqua"
                    console.log("This is green rectangle, its color is "+ rect2.color)
                }
            }
        }
    }
}
