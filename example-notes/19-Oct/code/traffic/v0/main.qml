import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 240
    height: 680
    title: qsTr("Hello World")

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
    }
}
