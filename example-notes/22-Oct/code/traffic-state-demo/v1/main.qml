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
                bgcolor: "yellow"
                dia : 200
            }
            Light {
                id : glight
                bgcolor: "green"
                dia : 200
            }
        }
        state : "stop"
        states : [
            State {
                name:"stop"
                PropertyChanges { target:  rlight; state: "on"}
                PropertyChanges { target:  ylight; state: "off"}
                PropertyChanges { target:  glight; state: "off"}

            },
            State {
                name: "wait"
                PropertyChanges { target:  rlight; state: "off"}
                PropertyChanges { target:  ylight; state: "on"}
                PropertyChanges { target:  glight; state: "off"}

            },
            State {
                name : "go"
                PropertyChanges { target:  rlight; state: "off"}
                PropertyChanges { target:  ylight; state: "off"}
                PropertyChanges { target:  glight; state: "on"}
            }
        ]
        transitions : [
            Transition {
                from: "*"
                to: "*"
                ColorAnimation { duration:1000 }
            }
        ]
        Timer {
            id : timer
            interval: 2000
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
