import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Image {
        id:img
        x:10
        y:10
        source: "Tux.png"
        width:100
        height:125
    }

    Rectangle {
        width : 300
        height : 200
        anchors.centerIn: parent

    }
}

