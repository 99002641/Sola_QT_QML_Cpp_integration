import QtQuick 2.0

Rectangle {
    property string bgcolor: "black"
    property int dia: 200
    id : light
    width : dia
    height : dia
    radius : dia/2
    color : bgcolor
    border.width: 2
    border.color: "black"
    state: "off"
    states : [
        State {
            name : "on"
            PropertyChanges {
                target: light;
                color : bgcolor
            }
        },
        State {
            name : "off"
            PropertyChanges {
                target: light
                color : "black"
            }
        }

    ]
}
