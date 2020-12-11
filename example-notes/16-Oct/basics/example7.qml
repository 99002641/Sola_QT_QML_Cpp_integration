import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: outer
        anchors.centerIn: parent
        width : 100
        height : 40
        color: "#FFFF00"
        radius : 10
        border.width: 1
        border.color: "black"
        MouseArea  {
            id: button
            anchors.fill: parent
            onClicked: {
                console.log("Button clicked");
            }
        }
    }

}

