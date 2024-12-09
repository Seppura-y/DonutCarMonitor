import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Item
{
    property real positionX: positionXSlider.value
    property real positionY: positionYSlider.value
    property real positionZ: positionZSlider.value

    property real rotationX: rotationXSlider.value
    property real rotationY: rotationYSlider.value
    property real rotationZ: rotationZSlider.value
    
    property real scaleX: scaleXSlider.value
    property real scaleY: scaleYSlider.value
    property real scaleZ: scaleZSlider.value

    property real positionMin: -500
    property real positionMax: 500
    property real positionStep: 1

    property real rotationMin: 0
    property real rotationMax: 360
    property real rotationStep: 1

    property real scaleMin: 0.1
    property real scaleMax: 5
    property real scaleStep: 0.1

    function setTRSValue(position, rotation, scale)
    {
        positionXSlider.value = position.x
        positionYSlider.value = position.y
        positionZSlider.value = position.z

        rotationXSlider.value = rotation.x
        rotationYSlider.value = rotation.y
        rotationZSlider.value = rotation.z

        scaleXSlider.value = scale.x
        scaleYSlider.value = scale.y
        scaleZSlider.value = scale.z
    }


    Label
    {
        id: positionLabel
        font.pixelSize: 16
        text: "Position "
        color: "white"

        anchors.left: parent.left
        anchors.top: parent.top
        anchors.topMargin: 100
    }

    Row
    {
        id: positionXRow
        anchors.left: parent.left
        anchors.top: positionLabel.bottom
        anchors.topMargin: 10

        Label
        {
            font.pixelSize: 16
            text: "x : "
            color: "white"
        }

        Slider
        {
            id: positionXSlider
            width: 200
            height: 20
            from: positionMin
            to: positionMax
            stepSize: positionStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: positionXSlider.value
        }
    }

    Row
    {
        id: positionYRow
        anchors.left: parent.left
        anchors.top: positionXRow.bottom
        anchors.topMargin: 10

        Label
        {
            font.pixelSize: 16
            text: "y : "
            color: "white"
        }

        Slider
        {
            id: positionYSlider
            width: 200
            height: 20
            from: positionMin
            to: positionMax
            stepSize: positionStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: positionYSlider.value
        }
    }

    Row
    {
        id: positionZRow
        anchors.left: parent.left
        anchors.top: positionYRow.bottom
        anchors.topMargin: 10
        
        Label
        {
            font.pixelSize: 16
            text: "z : "
            color: "white"
        }
        
        Slider
        {
            id: positionZSlider
            width: 200
            height: 20
            from: positionMin
            to: positionMax
            stepSize: positionStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: positionZSlider.value
        }
    }

    Label
    {
        id: rotationLabel
        font.pixelSize: 16
        text: "Rotation "
        color: "white"

        anchors.left: parent.left
        anchors.top: positionZRow.bottom
        anchors.topMargin: 10
    }

    Row
    {
        id: rotationXRow
        anchors.left: parent.left
        anchors.top: rotationLabel.bottom
        anchors.topMargin: 10

        Label
        {
            font.pixelSize: 16
            text: "x : "
            color: "white"
        }

        Slider
        {
            id: rotationXSlider
            width: 200
            height: 20
            from: rotationMin
            to: rotationMax
            stepSize: rotationStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: rotationXSlider.value
        }
    }

    Row
    {
        id: rotationYRow
        anchors.left: parent.left
        anchors.top: rotationXRow.bottom
        anchors.topMargin: 10

        Label
        {
            font.pixelSize: 16
            text: "y : "
            color: "white"
        }

        Slider
        {
            id: rotationYSlider
            width: 200
            height: 20
            from: rotationMin
            to: rotationMax
            stepSize: rotationStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: rotationYSlider.value
        }
    }

    Row
    {
        id: rotationZRow
        anchors.left: parent.left
        anchors.top: rotationYRow.bottom
        anchors.topMargin: 10
        
        Label
        {
            font.pixelSize: 16
            text: "z : "
            color: "white"
        }
        
        Slider
        {
            id: rotationZSlider
            width: 200
            height: 20
            from: rotationMin
            to: rotationMax
            stepSize: rotationStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: rotationZSlider.value
        }
    }
    /////////////////////////////////////////////////////////////////////////////////////////////////////
    Label
    {
        id: scaleLabel
        font.pixelSize: 16
        text: "Scale "
        color: "white"

        anchors.left: parent.left
        anchors.top: rotationZRow.bottom
        anchors.topMargin: 10
    }

        Row
    {
        id: scaleXRow
        anchors.left: parent.left
        anchors.top: scaleLabel.bottom
        anchors.topMargin: 10

        Label
        {
            font.pixelSize: 16
            text: "x : "
            color: "white"
        }

        Slider
        {
            id: scaleXSlider
            width: 200
            height: 20
            from: scaleMin
            to: scaleMax
            stepSize: scaleStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: scaleXSlider.value
        }
    }

    Row
    {
        id: scaleYRow
        anchors.left: parent.left
        anchors.top: scaleXRow.bottom
        anchors.topMargin: 10

        Label
        {
            font.pixelSize: 16
            text: "y : "
            color: "white"
        }

        Slider
        {
            id: scaleYSlider
            width: 200
            height: 20
            from: scaleMin
            to: scaleMax
            stepSize: scaleStep
            value: 90
        }
        Label
        {
            font.pixelSize: 16
            color: "white"
            text: scaleYSlider.value
        }
    }

    Row
    {
        id: scaleZRow
        anchors.left: parent.left
        anchors.top: scaleYRow.bottom
        anchors.topMargin: 10
        
        Label
        {
            font.pixelSize: 16
            text: "z : "
            color: "white"
        }
        
        Slider
        {
            id: scaleZSlider
            width: 200
            height: 20
            from: scaleMin
            to: scaleMax
            stepSize: scaleStep
            value: 90
        }

        Label
        {
            font.pixelSize: 16
            color: "white"
            text: scaleZSlider.value
        }
    }
}