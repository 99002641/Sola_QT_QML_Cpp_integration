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
        width : 300
        height : 200
        color: "#00FF00"
        radius : 10
   }
}
