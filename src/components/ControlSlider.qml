import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Item
{
    id: root
    property int value: 0
    property int imageWidth: 28
    property int imageHeight: 8
    property string midelSourceOn: ""
    property string midelSourceOff: ""
    property string leftSourceOn: ""
    property string leftSourceOff: ""
    property string rightSourceOn: ""
    property string rightSourceOff: ""

    Row
    {
        id: row
        width: parent.width
        height: parent.height / 2
        anchors.centerIn: parent
        spacing: 4
        topPadding: root.height / 4

        Image
        {
            id: valueImage1
            width: root.imageWidth
            height: root.imageHeight
            source: (value >= 1) ? leftSourceOn : leftSourceOff
            fillMode: Image.PreserveAspectFit
            opacity: root.enabled ? 1 : 0.3
        }

        Image
        {
            id: valueImage2
            width: root.imageWidth
            height: root.imageHeight
            source: (value >= 2) ? midelSourceOn : midelSourceOff
            fillMode: Image.PreserveAspectFit
            opacity: root.enabled ? 1 : 0.3
        }

        Image
        {
            id: valueImage3
            width: root.imageWidth
            height: root.imageHeight
            source: (value >= 3) ? midelSourceOn : midelSourceOff
            fillMode: Image.PreserveAspectFit
            opacity: root.enabled ? 1 : 0.3
        }

        Image
        {
            id: valueImage4
            width: root.imageWidth
            height: root.imageHeight
            source: (value >= 4) ? midelSourceOn : midelSourceOff
            fillMode: Image.PreserveAspectFit
            opacity: root.enabled ? 1 : 0.3
        }

        Image
        {
            id: valueImage5
            width: root.imageWidth
            height: root.imageHeight
            source: (value >= 5) ? rightSourceOn : rightSourceOff
            fillMode: Image.PreserveAspectFit
            opacity: root.enabled ? 1 : 0.3
        }
    }

    Slider
    {
        id: slider
        anchors.fill: parent
        from: 0
        to: 50
        stepSize: 1
        enabled: true
        z: row.z + 1

        background: Rectangle
        {
            opacity: 0
        }

        handle: Rectangle
        {
            opacity: 0
        }

        onValueChanged:
        {
            if(value <= 0)
            {
                root.value = 0
            }
            else if(value < (stepSize * 2) * 10)
            {
                root.value = 1
            }
            else if(value < (stepSize * 3) * 10)
            {
                root.value = 2
            }
            else if(value < (stepSize * 4) * 10)
            {
                root.value = 3
            }
            else if(value < (stepSize * 5) * 10)
            {
                root.value = 4
            }
            else
            {
                root.value = 5
            }
        }
    }

}
