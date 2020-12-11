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
            PropertyAnimation {
                target : box
                property : "color"
                to : "green"
                duration:3000
            }
            PropertyAnimation {
                target : box
                property : "color"
                to : "blue"
                duration:3000
            }
            PropertyAnimation {
                target : box
                property : "color"
                to : "yellow"
                duration:3000
            }
            /*ColorAnimation {
                target : box
                from: "yellow"
                to: "red"
                duration: 2000
            }*/
            PropertyAnimation {
                target : box
                property : "color"
                to : "white"
                duration:3000
            }
        }

    }
}
