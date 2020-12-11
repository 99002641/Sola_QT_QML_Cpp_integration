import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: textbox
        anchors.centerIn: parent
        width : 300
        height : 50
        color: "#FFFF00"
        radius : 10
        border.width: 1
        border.color: "black"
        TextInput  {
            id: lineedit
            width:textbox.width
            height:textbox.height
            anchors.fill: textbox
            anchors.margins: 15
            //anchors.verticalCenter: outer
            focus:true
        }
    }
    Rectangle {
        id:button
        anchors.top:textbox.bottom
        anchors.topMargin: 20
        anchors.left:textbox.left
        width:100
        height:50
        color : "blue"
        Text {
            anchors.centerIn: parent
            text : "Click Here"
        }
        MouseArea {
            anchors.fill :parent
            onClicked: {
                console.log("mouse clicked:" + lineedit.text)
            }
        }
    }

}

