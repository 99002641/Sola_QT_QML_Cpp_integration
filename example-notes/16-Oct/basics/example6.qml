import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: outer
        width : 400
        height : 300
        color: "#00FF00"
        border.width: 1
        border.color: "black"
        radius : 10
        Rectangle {
            id: inner
            anchors.centerIn: parent
            width : 200
            height : 150
            color: "#FFFF00"
            radius : 10
            border.width: 1
            border.color: "black"
        }
    }
}

