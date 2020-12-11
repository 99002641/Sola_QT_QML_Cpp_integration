import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: first
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.topMargin: 50
        width : 200
        height : 150
        color: "#0000FF"
        radius : 10
   }
   Rectangle {
        id: second
        anchors.left: first.right
        anchors.leftMargin: 50
        anchors.top: parent.top
        anchors.topMargin: 50
        width : 200
        height : 150
        color: "#00FF00"
        radius : 10
   }
   Rectangle {
        id: third
        anchors.left: parent.left
        anchors.leftMargin: 50
        anchors.top: first.bottom
        anchors.topMargin: 50
        width : 200
        height : 150
        color: "#00FFFF"
        radius : 10
   }
   Rectangle {
        id: fourth
        anchors.left: first.right
        anchors.leftMargin: 50
        anchors.top: first.bottom
        anchors.topMargin: 50
        width : 200
        height : 150
        color: "#FF0000"
        radius : 10
   }
}

