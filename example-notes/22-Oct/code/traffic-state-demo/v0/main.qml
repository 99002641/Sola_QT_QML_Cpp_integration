import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 240
    height: 680
    title: qsTr("Hello World")
    property int k : 0
    Rectangle {
        id : traffic
        width : 240
        height : 680
        Column {
            spacing:20
            Light {
                id : rlight
                bgcolor: "red"
                dia : 200
            }
            Light {
                id : ylight
                bgcolor: "black"
                dia : 200
            }
            Light {
                id : glight
                bgcolor: "black"
                dia : 200
            }
        }
        state : "stop"
        states : [
            State {
                name:"stop"
                PropertyChanges { target:  rlight; color: "red"}
                PropertyChanges { target:  ylight; color: "black"}
                PropertyChanges { target:  glight; color: "black"}

            },
            State {
                name: "wait"
                PropertyChanges { target:  rlight; color: "black"}
                PropertyChanges { target:  ylight; color: "yellow"}
                PropertyChanges { target:  glight; color: "black"}

            },
            State {
                name : "go"
                PropertyChanges { target:  rlight; color: "black"}
                PropertyChanges { target:  ylight; color: "black"}
                PropertyChanges { target:  glight; color: "green"}
            }

        ]

        transitions : [
            Transition {
                from: "*"
                to: "*"
                ColorAnimation { duration:2000 }
            }
        ]
        Timer {
            id : timer
            interval: 5000
            running: true
            repeat: true
            onTriggered: {
                if(traffic.state=="stop")
                    traffic.state="wait";
                else if(traffic.state=="wait")
                    traffic.state="go"
                else //state=="go"
                    traffic.state="stop"
            }
        }
    }
}
