import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

import "../components"

Item
{
	id: homePage
	visible: true

	width: 1414
	height: 856
	x: 108
	y: 0

	Connections
	{
		target: ui
		function onUpdateDateTime(date, time)
		{
			dateLabel.text = date
			timeLabel.text = time
		}
	}

	Image
	{
		id: backgroundImage
		anchors.fill: parent
		source: "qrc:/images/images/Home/background.png"
		fillMode: Image.PreserveAspectFit
	}

	PropertyAnimation
	{
		id: fadeInAni
		target: parent
		properties: "opacity"
		from: 0
		to: 1
		duration: 300
		easing.type: Easing.OutQuad
	}

	StatusBar
	{
		id: statusBar
		width: parent.width
		height: 46

		anchors.left: parent.left
		anchors.top: parent.top

		positionStatus: ui.controlCenterPositionStatus
		bluetoothStatus: ui.controlCenterBluetoothStatus
		signalStatus: ui.controlCenterWLANStatus

		onPositionStatusChanged:
		{
			ui.controlCenterPositionStatus = positionStatus
		}

		onBluetoothStatusChanged:
		{
			ui.controlCenterBluetoothStatus = bluetoothStatus
		}

		onSignalStatusChanged:
		{
			ui.controlCenterWLANStatus = signalStatus
		}
	} // StatusBar

	Button
	{
		id: voiceAssistantButton
		width: 444
		height: 120

		anchors.left: parent.left
		anchors.leftMargin: 79
		anchors.top: parent.top
		anchors.topMargin: 67
		hoverEnabled: false

		background: Image
		{
			width: parent.width
			height: parent.height
			anchors.centerIn: parent

			source: "qrc:/images/images/Home/voice_assistant_background.png"
			fillMode: Image.PreserveAspectFit
			opacity: parent.down ? 0.6 : 1

			Image
			{
				id: voiceAssistantImage
				width: 86
				height: 86
				
				anchors.left: parent.left
				anchors.leftMargin: 17
				anchors.top: parent.top
				anchors.topMargin: 20

				source: "qrc:/images/images/Home/voice_assistant.png"
				fillMode: Image.PreserveAspectFit
			}
		} // backgroundImage

		Label
		{
			id: voiceTipsLabel
			width: 220
			height: 26

			anchors.left: parent.left
			anchors.leftMargin: 118
			anchors.top: parent.top
			anchors.topMargin: 30

			text: qsTr("你可以这样说:")
			color: "#9AFFFFFF"
			font.pixelSize: 16
		}

		Label
		{
			id: voiceAssistantLabel
			width: 220
			height: 26

			anchors.left: parent.left
			anchors.leftMargin: 118
			anchors.top: parent.top
			anchors.topMargin: 63

			text: qsTr("小迪去公司的路况怎么样？")
			color: "#FFFFFF"
			font.pixelSize: 18
		}

	}// voiceAssistantButton

	Button
	{
		id: weatherButton
		width: 627
		height: 120

		anchors.left: parent.left
		anchors.leftMargin: 551
		anchors.top: parent.top
		anchors.topMargin: 67

		hoverEnabled: false

		background: Image
		{
			width: parent.width
			height: parent.height
			anchors.centerIn: parent

			source: "qrc:/images/images/Home/weather_background.png"

			fillMode: Image.PreserveAspectFit
			opacity: parent.down ? 0.6 : 1

			Image
			{
				id: weatherImage
				width: 76
				height: 65

				anchors.left: parent.left
				anchors.leftMargin: 44
				anchors.top: parent.top
				anchors.topMargin: 28

				source: "qrc:/images/images/Home/Weather/sun_clouds.png"
				fillMode: Image.PreserveAspectFit
			}
		} // background image

		Label
		{
			id: regionLabel
			width: 135
			height: 26

			anchors.left: parent.left
			anchors.leftMargin: 172
			anchors.top: parent.top
			anchors.topMargin: 30

			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter

			text: qsTr("佛山市 南海区")
			color: "#FFFFFF"
			font.pixelSize: 18
		}

		Label
		{
			id: weatherLabel
			width: 135
			height: 26
		
			anchors.left: parent.left
			anchors.leftMargin: 172
			anchors.top: parent.top
			anchors.topMargin: 64
		
			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter
		
			text: qsTr("晴转多云")
			color: "#FFFFFF"
			opacity: 0.6
			font.pixelSize: 18
		} // weatherLabel

		Rectangle
		{
			width: 3
			height: 55
			
			anchors.left: parent.left
			anchors.leftMargin: 356
			anchors.top: parent.top
			anchors.topMargin: 31

			color: "#2C333E"
		} // seperator

		Label
		{
			id: airQualityTipsLabel

			anchors.left: parent.left
			anchors.leftMargin: 412
			anchors.top: parent.top
			anchors.topMargin: 30

			text: qsTr("空气质量")
			color: "#FFFFFF"

			font.pixelSize: 18
		}

		Label
		{
			id: airQualityLabel

			anchors.left: parent.left
			anchors.leftMargin: 494
			anchors.top: parent.top
			anchors.topMargin: 30

			text: qsTr("优")
			color: "#2D7B87"
			
			font.pixelSize: 18
		}

		Label
		{
			id: temperatureLabel
		
			anchors.left: parent.left
			anchors.leftMargin: 412
			anchors.top: parent.top
			anchors.topMargin: 64
		
			text: qsTr("车内 20 车外 120")
			color: "#FFFFFF"
			opacity: 0.6
			font.pixelSize: 18
		} // temperatureLabel
	} // weather

	Label
	{
		id: timeLabel
		width: 162
		height: 91

		anchors.left: parent.left
		anchors.leftMargin: 1217
		anchors.top: parent.top
		anchors.topMargin: 61

		text: qsTr("")
		color: "#FFFFFF"
		font.pixelSize: 64
	}

	Label
	{
		id: dateLabel
		width: 162
		height: 26

		anchors.left: parent.left
		anchors.leftMargin: 1217
		anchors.top: parent.top
		anchors.topMargin: 146

		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		text: qsTr("")
		color: "#9AFFFFFF"
		font.pixelSize: 18
	}

	AirCondFanSlider
	{
		id: acFan
		width: 723
		height: 71
		x: 323 + 108
		y: 617
	}

	AirCondControlBar
	{
		width: 1305
		height: 123

		anchors.left: parent.left
		anchors.leftMargin: 55
		anchors.top: parent.top
		anchors.topMargin: 707

		onFan: acFan.opened ? acFan.close() : acFan.open()
	}
}