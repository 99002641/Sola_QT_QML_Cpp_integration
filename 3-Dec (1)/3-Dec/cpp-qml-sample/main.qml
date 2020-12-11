import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    function onSpeedChanged(val) {
        speedBar.value=val
    }
    function onVolumeChanged(val) {
        volumeBar.value=val
    }

    Column {
        anchors.centerIn: parent
        spacing: 50
        ProgressBar {
            id : speedBar
            from : 0
            to : 100
            value : 30
        }
        ProgressBar {
            id : volumeBar
            from : 0
            to : 100
            value : 30
        }

    }
}
