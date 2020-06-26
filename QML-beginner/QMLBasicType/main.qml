import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Basic Type")

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
