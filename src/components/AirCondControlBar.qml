import QtQuick 2.15
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    signal mode
    signal navigation
    signal fan
    signal defrost
    signal music
    signal contact

    // 空调背景
    Image
    {
        anchors.fill: parent
        source: "qrc:/images/images/Home/ac_background.png"
        fillMode: Image.PreserveAspectFit

        // 模式
        Button
        {
            id: modelButton
            width: 72
            height: 72
            anchors.left: parent.left
            anchors.leftMargin: 70
            anchors.verticalCenter: parent.verticalCenter
            hoverEnabled: false

            background: Image
            {
                width: 48
                height: 48
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/model.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked: 
            {
                ui.pageIndex = ui.pageSetting
            }
        }

        // 导航
        Button
        {
            id: navigationButton
            width: 72
            height: 72
            anchors.left: parent.left
            anchors.leftMargin: 214
            anchors.verticalCenter: parent.verticalCenter
            hoverEnabled: false

            background: Image
            {
                width: 32
                height: 32
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/navigation.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked: navigation()
        }

        // 风量
        Button
        {
            id: fanButton
            width: 72
            height: 72
            anchors.left: parent.left
            anchors.leftMargin: 368
            anchors.verticalCenter: parent.verticalCenter
            hoverEnabled: false

            background: Image
            {
                width: 35
                height: 35
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/fan.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked: fan()
        }

        // 左温度
        Column
        {
            id: leftTemperatureColumn
            width: 50
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 496

            // 左温度加
            Button
            {
                id: leftTemperatureAddButton
                width: 50
                height: 30
                //anchors.top: parent.top
                hoverEnabled: false
                enabled: (ui.acLeftTemperature < 32)

                background: Image
                {
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                    source: "qrc:/images/images/ACBar/arrow_up.png"
                    fillMode: Image.PreserveAspectFit
                    opacity: parent.enabled ? (parent.down ? 0.6 : 1) : 0.3
                }

                onClicked:
                {
                    if(ui.acLeftTemperature < 32)
                    {
                        ui.acLeftTemperature++
                    }
                }
            }

            Row
            {
                //anchors.verticalCenter: parent.verticalCenter

                // 左温度
                Label
                {
                    id: leftTemperatureLabel
                    width: 52
                    height: 56
                    verticalAlignment: Text.AlignVCenter
                    text: ui.acLeftTemperature
                    color: "#FFFFFF"
                    font.pixelSize: 46
                }
                Label
                {
                    width: 30
                    height: 56
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("°")
                    color: "#9AFFFFFF"
                    font.pixelSize: 46
                    font.family: "Arial" 
                }
            }

            // 左温度减
            Button
            {
                id: leftTemperatureSubButton
                width: 50
                height: 30
                //anchors.bottom: parent.bottom
                hoverEnabled: false
                enabled: (ui.acLeftTemperature > 16)

                background: Image
                {
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                    source: "qrc:/images/images/ACBar/arrow_down.png"
                    fillMode: Image.PreserveAspectFit
                    opacity: parent.enabled ? (parent.down ? 0.6 : 1) : 0.3
                }

                onClicked:
                {
                    if(ui.acLeftTemperature > 16)
                    {
                        ui.acLeftTemperature--
                    }
                }
            }
        }

        // 吹风模式
        Button
        {
            id: blowButton
            width: 82
            height: 82
            anchors.centerIn: parent
            hoverEnabled: false

            background: Image
            {
                width: 82
                height: 82
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/blow.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked:
            {
                ui.pageIndex = ui.pageAirCond
            }
        }

        // 右温度
        Column
        {
            id: rightTemperatureColumn
            width: 50
            height: parent.height
            anchors.left: parent.left
            anchors.leftMargin: 757

            // 右温度加
            Button
            {
                id: rightTemperatureAddButton
                width: 50
                height: 30
                //anchors.top: parent.top
                hoverEnabled: false
                enabled: (ui.acRightTemperature < 32)

                background: Image
                {
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                    source: "qrc:/images/images/ACBar/arrow_up.png"
                    fillMode: Image.PreserveAspectFit
                    opacity: parent.enabled ? (parent.down ? 0.6 : 1) : 0.3
                }

                onClicked:
                {
                    if(ui.acRightTemperature < 32)
                    {
                        ui.acRightTemperature++
                    }
                }
            }

            Row
            {
                //anchors.verticalCenter: parent.verticalCenter

                // 右温度
                Label
                {
                    id: rightTemperatureLabel
                    width: 52
                    height: 56
                    verticalAlignment: Text.AlignVCenter
                    text: ui.acRightTemperature
                    color: "#FFFFFF"
                    font.pixelSize: 46
                }
                Label
                {
                    width: 30
                    height: 56
                    verticalAlignment: Text.AlignVCenter
                    text: qsTr("°")
                    //text: qsTr("度")
                    color: "#9AFFFFFF"
                    font.pixelSize: 46
                    font.family: "Arial" 
                }
            }

            Button
            {
                id: rightTemperatureSubButton
                width: 50
                height: 30
                //anchors.bottom: parent.bottom
                hoverEnabled: false
                enabled: (ui.acRightTemperature > 16)

                background: Image
                {
                    width: parent.width
                    height: parent.height
                    anchors.centerIn: parent
                    source: "qrc:/images/images/ACBar/arrow_down.png"
                    fillMode: Image.PreserveAspectFit
                    opacity: parent.enabled ? (parent.down ? 0.6 : 1) : 0.3
                }

                onClicked:
                {
                    if(ui.acRightTemperature > 16)
                    {
                        ui.acRightTemperature--
                    }
                }
            }
        }


        // 除霜
        Button
        {
            id: defrostButton
            width: 72
            height: 72
            anchors.left: parent.left
            anchors.leftMargin: 860
            anchors.verticalCenter: parent.verticalCenter
            hoverEnabled: false

            background: Image
            {
                width: 48
                height: 48
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/defrost.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked: defrost()
        }

        Button
        {
            id: musicButton
            width: 72
            height: 72
            anchors.left: parent.left
            anchors.leftMargin: 1010
            anchors.verticalCenter: parent.verticalCenter
            hoverEnabled: false

            background: Image
            {
                width: 42
                height: 42
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/music.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked: music()
        }

        Button
        {
            id: contactButton
            width: 72
            height: 72
            anchors.left: parent.left
            anchors.leftMargin: 1153
            anchors.verticalCenter: parent.verticalCenter
            hoverEnabled: false

            background: Image
            {
                width: 42
                height: 42
                anchors.centerIn: parent
                source: "qrc:/images/images/ACBar/contact.png"
                fillMode: Image.PreserveAspectFit
                opacity: parent.down ? 0.6 : 1
            }

            onClicked: contact()
        }
    }
}
