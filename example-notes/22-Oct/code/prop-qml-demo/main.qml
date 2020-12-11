import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    Column {
        anchors.centerIn: parent
        spacing : 20
        ProgressBar
        {
            id:temperature
            from:0
            to:0
            value:weather.temperature
        }
        ProgressBar
        {
            id:humidity
            from:0
            to:0
            value:weather.humidity
        }
    }
}
