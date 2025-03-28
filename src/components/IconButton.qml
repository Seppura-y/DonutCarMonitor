import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    property string source: ""
    property int sourceWidth: 10
    property int sourceHeight: 10
    property int spacing: 5

    property int textWidth: 10
    property int textHeight: 10
    property string text: ""
    property int fontPixelSize: 10
    property color textColor: "#FFFFFF"

    signal buttonPressed
    signal buttonReleased
    signal buttonClicked

    Column
    {
        anchors.fill: parent
        spacing: root.spacing

        Button
        {
            anchors.horizontalCenter: parent.horizontalCenter
            hoverEnabled: false

            background: Image
            {
                width: sourceWidth
                height: sourceHeight

                anchors.centerIn: parent

                source: root.source
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onPressed: root.buttonPressed()
            onReleased: root.buttonReleased()
            onClicked: root.buttonClicked()
        }

        Label
        {
            id: voiceTipsLabel
            width: root.textWidth
            height: root.textHeight

            anchors.horizontalCenter: parent.horizontalCenter

            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: root.text
            color: textColor
            font.pixelSize: fontPixelSize
        }
    }
        
}
