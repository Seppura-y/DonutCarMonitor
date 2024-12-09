import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

import Qt5Compat.GraphicalEffects

import "../components"

Item {
    id: controlCenterPage
    width: 1414
    height: 856

    Image
    {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/images/images/ControlCenter/background.png"

        fillMode: Image.PreserveAspectFit
        SwipeArea
        {
            id: upSwipeArea
            anchors.fill: parent

            onSwipeUp:
            {
                hide()
            }
        }
    }

    GaussianBlur
    {
        anchors.fill: backgroundImage
        source: backgroundImage
        radius: 8
        samples: 16
    }

    NumberAnimation
    {
        id: upOpacityAnimation
        target: controlCenterPage
        properties: "opacity"
        from: 1
        to: 0
        duration: 250
        easing.type: Easing.OutQuad
    }

    NumberAnimation
    {
        id: upMoveAnimation
        target: controlCenterPage
        properties: "y"
        from: 0
        to: -controlCenterPage.height
        duration: 250
        easing.type: Easing.OutQuad
    }

    function hide()
    {
        if(controlCenterPage.y !== -controlCenterPage.height)
        {
            upMoveAnimation.start()
            upOpacityAnimation.start()
        }
    }

    //////////////////////////////////////////////////////
    Label
    {
        width: 150
        height: 34

        anchors.left: parent.left
        anchors.leftMargin: 282
        anchors.top: parent.top
        anchors.topMargin: 106

        text: qsTr("Dlink快捷")
        color: "#FFFFFF"
        font.pixelSize: 24
    }

    IconSwitch
    {
        id: wlanSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 277
        anchors.top: parent.top
        anchors.topMargin: 155

        switchStatus: ui.controlCenterWLANStatus

        sourceOnImage: "qrc:/images/images/ControlCenter/wlan_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/wlan_off.png"
        text: qsTr("无线网络")
    
        onSwitchStatusChanged:
        {
            ui.controlCenterWLANStatus = switchStatus
        }
    }

    IconSwitch
    {
        id: bluetoothSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 425
        anchors.top: parent.top
        anchors.topMargin: 155

        switchStatus: ui.controlCenterBluetoothStatus

        sourceOnImage: "qrc:/images/images/ControlCenter/bluetooth_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/bluetooth_off.png"
        text: qsTr("蓝牙")
    
        onSwitchStatusChanged:
        {
            ui.controlCenterBluetoothStatus = switchStatus
        }
    }

    IconSwitch
    {
        id: themeModeSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 573
        anchors.top: parent.top
        anchors.topMargin: 155

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/theme_mode_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/theme_mode_off.png"
        text: switchStatus ? qsTr("深色主题") : qsTr("浅色主题")
    }

    IconSwitch
    {
        id: remotePostionSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 277
        anchors.top: parent.top
        anchors.topMargin: 302

        switchStatus: ui.controlCenterPositionStatus

        sourceOnImage: "qrc:/images/images/ControlCenter/romote_postion_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/romote_postion_off.png"
        text: qsTr("远程位置")
    
        onSwitchStatusChanged:
        {
            ui.controlCenterPositionStatus = switchStatus
        }
    }

    IconSwitch
    {
        id: clairvoyanceSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 425
        anchors.top: parent.top
        anchors.topMargin: 302

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/clairvoyance_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/clairvoyance_off.png"
        text: qsTr("千里眼")
    }

    IconSwitch
    {
        id: autoRotationSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 573
        anchors.top: parent.top
        anchors.topMargin: 302

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/auto_rotation_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/auto_rotation_off.png"
        text: qsTr("自动旋转")
    }

    //////////////////////////////////////////////////////
    Label
    {
        width: 150
        height: 34

        anchors.left: parent.left
        anchors.leftMargin: 733
        anchors.top: parent.top
        anchors.topMargin: 106

        text: qsTr("整车控制")
        color: "#FFFFFF"
        font.pixelSize: 24
    }

    IconSwitch
    {
        id: hudSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 721
        anchors.top: parent.top
        anchors.topMargin: 155

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/hud_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/hud_off.png"
        sourceWidth: 50
        sourceHeight: 40
        text: qsTr("抬头显示")
    }

    IconSwitch
    {
        id: dynamicSuspensionSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 869
        anchors.top: parent.top
        anchors.topMargin: 155

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/dynamic_suspension_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/dynamic_suspension_off.png"
        sourceWidth: 40
        sourceHeight: 40
        text: qsTr("动态悬架")
    }

    IconSwitch
    {
        id: ventilationSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 1017
        anchors.top: parent.top
        anchors.topMargin: 155

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/ventilation_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/ventilation_off.png"
        sourceWidth: 40
        sourceHeight: 40
        text: qsTr("通风加热")
    }

    IconSwitch
    {
        id: defrostSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 721
        anchors.top: parent.top
        anchors.topMargin: 302

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/defrost_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/defrost_off.png"
        sourceWidth: 40
        sourceHeight: 40
        text: qsTr("电除霜")
    }

    IconSwitch
    {
        id: windowSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 869
        anchors.top: parent.top
        anchors.topMargin: 302

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/window_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/window_off.png"
        sourceWidth: 40
        sourceHeight: 40
        text: qsTr("天窗")
    }

    IconSwitch
    {
        id: espSwitch
        width: 113
        height: 113

        anchors.left: parent.left
        anchors.leftMargin: 1017
        anchors.top: parent.top
        anchors.topMargin: 302

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/esp_on.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/esp_off.png"
        sourceWidth: 50
        sourceHeight: 40
        text: qsTr("ESP")
    }

    //////////////////////////////////////////////////////
    Label
    {
        width: 150
        height: 34

        anchors.left: parent.left
        anchors.leftMargin: 282
        anchors.top: parent.top
        anchors.topMargin: 449

        text: qsTr("音量")
        color: "#FFFFFF"
        font.pixelSize: 24
    }

    IconSlider
    {
        id: mediaVolumeSlider
        width: 405
        height: 95

        anchors.left: parent.left
        anchors.leftMargin: 279
        anchors.top: parent.top
        anchors.topMargin: 496

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/volume.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/mute.png"
        sourceWidth: 36
        sourceHeight: 31

        textWidth: 100
        textHeight: sourceHeight
        text: qsTr("媒体音量")

        value: ui.controlCenterMediaVolume
        minValue: 0
        maxValue: 10
        fontColor: "#0BC3C4"
    
        onValueChanged:
        {
            console.log("mediaVolumeSlider: " + value)
            ui.controlCenterMediaVolume = value
        }
    }

    IconSlider
    {
        id: navigationVolumeSlider
        width: 405
        height: 95

        anchors.left: parent.left
        anchors.leftMargin: 279
        anchors.top: parent.top
        anchors.topMargin: 626

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/volume.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/mute.png"
        sourceWidth: 36
        sourceHeight: 31

        textWidth: 100
        textHeight: sourceHeight
        text: qsTr("导航音量")

        value: 5
        minValue: 0
        maxValue: 10
        fontColor: "#0BC3C4"
    
        onValueChanged:
        {
            console.log("navigationVolumeSlider: " + value)
        }
    }

    //////////////////////////////////////////////////////
    Label
    {
        width: 150
        height: 34

        anchors.left: parent.left
        anchors.leftMargin: 733
        anchors.top: parent.top
        anchors.topMargin: 449

        text: qsTr("亮度")
        color: "#FFFFFF"
        font.pixelSize: 24
    }

    IconSlider
    {
        id: centerControlScreenSlider
        width: 405
        height: 95

        anchors.left: parent.left
        anchors.leftMargin: 725
        anchors.top: parent.top
        anchors.topMargin: 496

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/brightness.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/brightness_off.png"
        sourceWidth: 36
        sourceHeight: 31

        textWidth: 100
        textHeight: sourceHeight
        text: qsTr("中控亮度")

        value: 50
        fontColor: "#3874F2"
        autoMode: 1
    
        onValueChanged:
        {
            console.log("centerControlScreenSlider: " + value)
        }
    }

    IconSlider
    {
        id: meterSlider
        width: 405
        height: 95

        anchors.left: parent.left
        anchors.leftMargin: 725
        anchors.top: parent.top
        anchors.topMargin: 626

        switchStatus: false

        sourceOnImage: "qrc:/images/images/ControlCenter/brightness.png"
        sourceOffImage: "qrc:/images/images/ControlCenter/brightness_off.png"
        sourceWidth: 36
        sourceHeight: 31

        textWidth: 100
        textHeight: sourceHeight
        text: qsTr("仪表亮度")

        value: 50
        fontColor: "#3874F2"
        autoMode: 2
    
        onValueChanged:
        {
            console.log("meterSlider: " + value)
        }
    }

    Rectangle
    {
        width: 127
        height: 5

        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: parent.top
        anchors.topMargin: 811

        radius: height / 2
        color: "#CDFFFFFF"
    }


}
