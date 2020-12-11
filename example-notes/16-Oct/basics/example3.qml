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
        width : 300         //50-350, 50-250
        height : 200
        color: "red"
        radius : 10
        Text {
            x : 100     //150
            y : 100     //150
            text: "Hello QML"
        }
    }
}
