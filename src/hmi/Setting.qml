import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

import "../components"

Item
{
	id: settingPage
	visible: true

	width: 1414
	height: 856
	x: 108
	y: 0

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
		duration: 600
		easing.type: Easing.OutQuad
	}
	Component.onCompleted: fadeInAni.start()

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
		z: parent.z + 1

		width: 1305
		height: 123

		anchors.left: parent.left
		anchors.leftMargin: 55
		anchors.top: parent.top
		anchors.topMargin: 707

		onFan: acFan.opened ? acFan.close() : acFan.open()
	}

	FunctionsBar
	{
		id: settingsFunctionBar
		width: 1099
		height: 69

		anchors.left: parent.left
		anchors.leftMargin: 276
		anchors.top: parent.top
		anchors.topMargin: 81

		buttonCount: 8
		buttonTexts: ["智能底盘", "灯光氛围", "抬头显示", "迎宾", "智能记忆", "空调", "门窗和锁", "智能提醒"]
		fontPixelSize: 26

		backgroundWidth: 50
		backgroundHeight: 8
	}

	FunctionsBar
	{
		id: modeFunctionBar
		width: 240
		height: parent.height

		anchors.left: parent.left
		anchors.leftMargin: 0
		anchors.top: parent.top
		anchors.topMargin: 46
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 30

		buttonCount: 5
		buttonTexts: ["智能底盘", "灯光氛围", "抬头显示", "迎宾", "智能记忆"]
		fontPixelSize: 26

		buttonWidth: 204
		buttonHeight: 70
		backgroundWidth: 240
		//backgroundHeight: parent.height

		isVertical: true
		
		gradientInstance : Gradient
		{
		    orientation: Gradient.Vertical
		    GradientStop { position: 0.0; color: "#111513" }
		    GradientStop { position: 1.0; color: "#414c5a" }
		}
	}
}