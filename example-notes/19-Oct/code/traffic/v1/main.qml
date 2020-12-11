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
        Timer {
            id : timer
            interval: 2000
            running: true
            repeat: true
            onTriggered: {
                if(k%3==0) {
                    rlight.bgcolor = "black"
                    ylight.bgcolor = "yellow"
                    glight.bgcolor = "black"
                }
                else if(k%3==1) {
                    rlight.bgcolor = "black"
                    ylight.bgcolor = "black"
                    glight.bgcolor = "green"
                }
                else {
                    rlight.bgcolor = "red"
                    ylight.bgcolor = "black"
                    glight.bgcolor = "black"
                }
                k++;
            }
        }
    }
}
