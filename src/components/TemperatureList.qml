import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    readonly property var temperatureText: ["32°", "31°", "30°", "29°", "28°", "27°", "26°", "25°", "24°",
                                            "23°", "22°", "21°", "20°", "19°", "18°", "17°", "16°"]
    property real temperature: 26

    property int spacing: 70
    property int flickDeceleration: 5000
    property int maximumFlickVelocity: 2500

    property color background: "transparent"
    property color currentIndexTextColor: "#FFFFFF"
    property color otherIndexTextColor: "#DFDFDF"
    property color movingColor: Qt.rgba(currentIndexTextColor.r, currentIndexTextColor.g, currentIndexTextColor.b, 0.5)

    property string fontFamiliy: "阿里巴巴普惠体 R"
    property int fontPixelSize: 38
    property bool fontBold: false

    readonly property int maxTemp: 32
    readonly property int minTemp: 16

    property int direction: 0   // 0-左  1-右

    signal movementStarted()
    signal movementEnded(real temperatureValue)


    Rectangle
    {
        anchors.fill: parent
        color: background
    }

    onTemperatureChanged:
    {
        listView.currentIndex = getIndex()
    }

    ListView
    {
        id: listView
        anchors.fill: parent
        clip: true
        spacing: root.spacing
        model: 17

        preferredHighlightBegin: height / 2 - 32
        preferredHighlightEnd: height / 2 + 32

        highlightRangeMode: ListView.StrictlyEnforceRange
        //highlightMoveDuration: 0    // 关闭高亮滑动动画


        visible: true
        enabled: true
        opacity: 1

        flickDeceleration: root.flickDeceleration
        maximumFlickVelocity: root.maximumFlickVelocity

        Component.onCompleted:
        {
            var index = getIndex(temperature)
            console.log("onCompleted: " + index)
            listView.positionViewAtIndex(((index < 0) ? 0 : index), ListView.Center)
        }

        delegate: Item
        {
            id: item
            width: listView.width
            height: 59

            Label
            {
                id: temperatureLabel

                width: parent.width
                height: parent.height
                topPadding: 5
                leftPadding: (direction == 1) ? getPadding() : leftPadding
                rightPadding: (direction == 0) ? getPadding() : rightPadding

                color: getColor()
                text: getTemperature()
                font.family: fontFamiliy
                font.pixelSize: getFontPixelSize()
                font.bold: fontBold

                horizontalAlignment: (direction == 0) ? Text.AlignRight : Text.AlignLeft
                verticalAlignment: Text.AlignVCenter

                opacity: enabled ? getOpacity() : 0.3

                function getOpacity()
                {
                    if(item.ListView.isCurrentItem)
                    {
                        return 1
                    }
                    else
                    {
                        var indexOffset = Math.abs(listView.currentIndex - index)
                        switch(indexOffset)
                        {
                            case 1: return 0.6
                            case 2: return 0.5
                            case 3: return 0.3
                            default: return 0.3
                        }
                    }
                }

                function getPadding()
                {
                    if(item.ListView.isCurrentItem)
                    {
                        return 50
                    }
                    else
                    {
                        var indexOffset = Math.abs(listView.currentIndex - index)
                        switch(indexOffset)
                        {
                            case 1: return 35
                            case 2: return 25
                            case 3: return 5
                        }
                    }
                }

                function getFontPixelSize()
                {
                    if(item.ListView.isCurrentItem)
                    {
                        return fontPixelSize
                    }
                    else
                    {
                        var indexOffset = Math.abs(listView.currentIndex - index)
                        switch(indexOffset)
                        {
                            case 1: return 36
                            case 2: return 28
                            case 3: return 20
                            default: return 20
                        }
                    }
                }

                function getTemperature()
                {
                    if(listView.moving)
                    {
                        return temperatureText[index]
                    }
                    else
                    {
                        var indexOffset = listView.currentIndex - index
                        return temperatureText[listView.currentIndex - indexOffset]
                    }
                }

                function getColor()
                {
                    //return item.ListView.isCurrentItem ? root.currentIndexTextColor :
                    //        (listView.moving ? root.movingColor : otherIndexTextColor)
                    return item.ListView.isCurrentItem ? root.currentIndexTextColor :
                            (otherIndexTextColor)
                }
            }
        }

        onMovementStarted:
        {
            root.movementStarted()
        }

        onMovementEnded:
        {
            root.movementEnded(getTemperature(currentIndex))
        }
    }

    function getTemperature(index)
    {
        if(index <= 0)
        {
            return maxTemp
        }
        else if(index >= 16)
        {
            return minTemp
        }
        else
        {
            return maxTemp - index
        }
    }

    function getIndex()
    {
        var index = 0
        if(temperature >= maxTemp)
        {
            index = 0
        }
        else if(temperature <= minTemp)
        {
            index = 16
        }
        else
        {
            index = maxTemp - temperature
        }
        console.log("getIndex : " + index)
        return index
    }
}
