import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")
    Rectangle {
        id:box
        width : 500
        height: 400
        anchors.centerIn: parent
        color : "red" //Qt.red
        SequentialAnimation {
            running: true
            loops: Animation.Infinite
            RotationAnimation {
               duration: 1000;
               direction: RotationAnimation.Clockwise
               target:box
               to:180
            }
        }

    }
}
