import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("Hello World")
    Rectangle {
        anchors.fill:parent
        Rectangle {
            id: ball
            x:20
            y:20
            width:100
            height:100
            radius:50
            color:"lightblue"
            border.color: "black"
            border.width: 2
        }
        SequentialAnimation {
            running: true
            loops : 5
            ParallelAnimation {
                running: true
                loops : 1
                PropertyAnimation {
                    target : ball
                    duration : 5000
                    property : "x"
                    to : 700
                }
                PropertyAnimation {
                    target : ball
                    duration : 5000
                    property : "y"
                    to : 500
                }
            }
            ParallelAnimation {
                running: true
                loops : 1
                PropertyAnimation {
                    target : ball
                    duration : 5000
                    property : "x"
                    to : 20
                }
                PropertyAnimation {
                    target : ball
                    duration : 5000
                    property : "y"
                    to : 20
                }
            }
        }


    }
}
