import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id:root
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
    Timer {
        id:timer
        interval: 100
        repeat: true
        running: true
        onTriggered: {
            img.x += 10
            if(img.x > root.width )
                img.x=0
        }
    }
}

