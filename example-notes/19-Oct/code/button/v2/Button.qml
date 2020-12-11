import QtQuick 2.0


Rectangle {
    property  string btext: "0"
    property string bgcolor : "steelblue"
    id: button
    width : 120
    height : 40
    radius: 10
    border.color: "black"
    border.width: 2
    color:bgcolor
    signal myButtonClicked()
    Text {
        id : label
        anchors.centerIn: button
        text : btext
        font.bold: true
        font.pixelSize: 20
    }
    MouseArea {
        id : capture
        anchors.fill: parent
        hoverEnabled: true
        onClicked: {
            //console.log("button clicked");
            myButtonClicked()
        }
        onEntered: {
            parent.scale *= 1.1
        }
        onExited: {
            parent.scale *= 0.9
        }
    }
}
