import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: first
        x:50
        y:50
        width : 200
        height : 150
        color: "#00FF00"
        radius : 10
   }
   Rectangle {
        id: second
        x:300
        y:50
        width : 200
        height : 150
        color: "#00FF00"
        radius : 10
   }
   Rectangle {
        id: third
        x:50
        y:250
        width : 200
        height : 150
        color: "#00FF00"
        radius : 10
   }
   Rectangle {
        id: fourth
        x:300
        y:250
        width : 200
        height : 150
        color: "#00FF00"
        radius : 10
   }
}
