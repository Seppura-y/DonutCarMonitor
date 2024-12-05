import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    property string color: "#FFFFFF"
    property string backgroundColor: "#80000000"
    property string startColor: "#0532FB"
    property string endColor: "#52E6FB"

    property int minValue: 0
    property int maxValue: 10
    property int value: 5
    property int stepSize: 1


    Rectangle
    {
        id: backroundRectangle
        anchors.fill: parent
        color: root.backgroundColor
        radius: 14

        Rectangle
        {
            id: innerRectangle
            width: getWidth()
            height: parent.height
            x: 0
            anchors.verticalCenter: parent.verticalCenter
            radius: 14

            gradient: Gradient
            {
                orientation: Gradient.Horizontal
                GradientStop { position: 0.0; color: startColor }
                GradientStop { position: 1.0; color: endColor }
            }

            property real stepSize: backroundRectangle.width / (slider.to)

            function getWidth()
            {
                if(slider.value == slider.to)
                {
                    var width = (slider.value + 1) * stepSize
                    if(width >= backroundRectangle.width)
                    {
                        width = backroundRectangle.width
                    }

                    return width
                }
                else
                {
                    return slider.value * stepSize
                }
            }
        }

        Slider
        {
            id: slider
            anchors.fill: parent
            value: root.value
            from: minValue
            to: maxValue
            stepSize: root.stepSize
            focusPolicy: Qt.NoFocus

            background: Rectangle
            {
                width: 0
                height: parent.height
                color: "transparent"
            }

            handle: Rectangle
            {
                width: 0
                height: parent.height
                color: "transparent"
            }

            onValueChanged:
            {
                root.value = value
            }
        }
    }
}
