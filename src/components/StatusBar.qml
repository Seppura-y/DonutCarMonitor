import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    property bool positionStatus: true
    property bool bluetoothStatus: true
    property bool signalStatus: true

    Rectangle
    {
        anchors.fill: parent
        color: "#80FF0000"
        visible: false
    }

    Connections
    {
        target: ui

        function onUpdateDateTime(date, time)
        {
            timeLabel.text = time
        }
    }

    Image
    {
        id: backgroundImage
        width: parent.width
        height: 40
        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 4
        source: "qrc:/images/images/StatusBar/status_bar_background.png"
        fillMode: Image.Stretch

        Label
        {
            id: timeLabel
            width: 220
            height: 26
            anchors.left: parent.left
            anchors.leftMargin: 1173
            anchors.verticalCenter: parent.verticalCenter
            text: qsTr("")
            color: "#FFFFFF"
            font.pixelSize: 16
        }

        Row
        {
            width: 108
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 1270
            anchors.verticalCenter: parent.verticalCenter
            spacing: 20

            Image
            {
                id: positionImage
                width: 22
                height: 21
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/images/StatusBar/position.png"
                fillMode: Image.PreserveAspectFit
                visible: positionStatus
            }

            Image
            {
                id: bluetoothImage
                width: 17
                height: 22
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/images/StatusBar/bluetooth.png"
                fillMode: Image.PreserveAspectFit
                visible: bluetoothStatus
            }

            Image
            {
                id: signalImage
                width: 30
                height: 28
                anchors.verticalCenter: parent.verticalCenter
                source: "qrc:/images/images/StatusBar/signal.png"
                fillMode: Image.PreserveAspectFit
                visible: signalStatus
            }
        } // Row
    } // backgroundImage

    Button
    {
        id: messageButton
        width: 121
        height: 46
        anchors.left: parent.left
        anchors.top: parent.top
        hoverEnabled: false

        background: Image
        {
            width: parent.width
            height: parent.height
            anchors.centerIn: parent
            source: "qrc:/images/images/Home/message_background.png"
            fillMode: Image.PreserveAspectFit
            opacity: parent.down ? 0.6 : 1

            Image
            {
                width: 29
                height: 26
                anchors.centerIn: parent
                source: "qrc:/images/images/Home/message.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    } // messageButton
} // root
