import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    signal sliderChanged(var val)
    signal spinnerChanged(var val)

    Column {
        anchors.centerIn: parent
        ProgressBar {
            id : speedBar
            from : 0
            to : 100
            value : 50
        }
        Slider {
            id : slider
            from : 0
            to : 100
            value : 30
            onValueChanged: {
                //speedBar.value = value
                sliderChanged(value)
            }
        }
        SpinBox {
            id : spinner
            from:0
            to:100
            value: 30
            onValueChanged: {
                spinnerChanged(value)
            }
        }
    }
}
