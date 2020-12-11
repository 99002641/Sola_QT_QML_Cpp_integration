import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    signal temperatureChanged(var val);
    signal volumeChanged(var val);
    Column {
        anchors.centerIn: parent
        SpinBox {
            id : temperature
            from : 0
            to : 100
            onValueChanged: {
              console.log("QML..temperature changed:"+value)
              temperatureChanged(value);
            }
        }
        Slider {
            id : volume
            from : 0
            to : 100
            onMoved : {
                console.log("QML..volume changed:"+value)
                volumeChanged(value);
            }
        }
    }
}
