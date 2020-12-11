import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.5


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    function onSpeedChanged(val)
    {
        speed.value = val
    }
    function onVolumeChanged(val)
    {
        volume.value = val
    }
    Column {
        anchors.centerIn: parent
        ProgressBar {
            id: speed
            from :0
            to : 100

        }
        Dial {
            id: volume
            from : 0
            to : 100
        }
    }
}
