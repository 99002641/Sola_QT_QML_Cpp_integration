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
        Timer {
            id: timer
            interval : 1000
            running:true
            repeat: true
            onTriggered: {
                console.log("color is:"+box.color);
                if(box.color==Qt.red)
                    box.color="blue"
                else if(box.color==Qt.blue)
                    box.color="green"
                else if(box.color==Qt.green)
                    box.color="yellow"
                else if(box.color==Qt.yellow)
                    box.color="red"
            }
        }

    }
}
