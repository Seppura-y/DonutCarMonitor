import QtQuick
import QtQuick.Controls

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
				fillMode: Image.preserveAspectFit
				opacity: parent.down ? 0.6 : 1
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