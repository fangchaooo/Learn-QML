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
