import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle {
        id : pane
        anchors.centerIn: parent
        width : 200
        height : 200
        Grid {
            spacing: 20
            rows: 2
            columns: 2
            Button {
                id : first
                btext : "1"
                onMyButtonClicked: {
                    console.log("first button clicked")
                }
            }
            Button {
                id : second
                btext : "2"
                onMyButtonClicked: {
                    console.log("second button clicked")
                }
            }
            Button {
                id : third
                btext : "3"
                onMyButtonClicked: {
                    console.log("third button clicked")
                }
            }
            Button {
                id : fourth
                btext : "4"
                onMyButtonClicked: {
                    console.log("fourth button clicked")
                }
            }
        }

    }
}
