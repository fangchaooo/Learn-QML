import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Qt Property and handle")
    color: "red"
    property string name: "LiMing"
    onNameChanged: {
        color = "green"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            name = "LiLei"
            console.log("This name is " + name)
        }
    }

    Component.onCompleted: {
        console.log("This name is " + name)
    }
}
