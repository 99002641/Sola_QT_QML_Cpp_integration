import QtQuick 2.12
import QtQuick.Window 2.12

//Image
Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")
    Text{
        id: label
        text : "Enter here:"
        anchors.centerIn: parent
    }
    Rectangle {
        id:rect
        width:100
        height:20
        anchors.top: label.top
        anchors.left : label.right
        // anchors.top: label.bottom
        // anchors.left : label.left
        border.width : 2
        border.color : "black"
        TextInput {
            id: input1
            anchors.fill: rect
        }
    }
}

