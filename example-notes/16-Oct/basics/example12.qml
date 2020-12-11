import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    id:root
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Rectangle {
        anchors.fill:parent
        Image {
            id:img
            x:10
            y:10
            source: "Tux.png"
            width:100
            height:125
        }
        focus:true
        Keys.onLeftPressed: img.x -= 10
        Keys.onRightPressed: img.x += 10
        Keys.onUpPressed: img.y -= 10
        Keys.onDownPressed: img.y += 10
        //Keys.onEscapePressed:
        //Keys.onSpacePressed
        Keys.onPressed: {
            switch(event.key) {
            case Qt.Key_Plus:
                img.scale += 0.1
                break;
            case Qt.Key_Minus:
                img.scale -= 0.1
                break;
            }

        }
    }
}

