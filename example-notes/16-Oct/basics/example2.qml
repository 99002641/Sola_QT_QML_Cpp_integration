import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        x : 100
        y : 100
        text: "Hello QML"
        color: "#F03030"
        font.family: "Ubuntu"
        font.pixelSize: 28
    }
}
