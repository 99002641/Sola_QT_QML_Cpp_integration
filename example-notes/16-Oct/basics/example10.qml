import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        width : 300
        height : 200
        border.color: "black"
        border.width: 1
        anchors.centerIn: parent
        Text {
            id:display
            anchors.centerIn:parent
            text: "Hello QML"
            color: "#F03030"
            font.family: "Ubuntu"
            font.pixelSize: 28
        }
        Timer {
            id:timer
            interval:1000
            running: true
            repeat: true
            onTriggered: {
                console.log("Curren time is " + (new Date()).toTimeString())
                display.text = new Date().toTimeString()
            }
        }
    }
}

