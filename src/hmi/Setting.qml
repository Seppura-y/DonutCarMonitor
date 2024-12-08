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
		id: acControlBar

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

		blCornerRadius: 0
		brCornerRadius: 0

		selectedIndex: ui.settingsFunctionValue

		onSelectedIndexChanged:
		{
			ui.settingsFunctionValue = selectedIndex
		}
	}

	Image
	{
		id: centerBackgroundImage

		width: 1099
		height: 705

		anchors.left: parent.left
		anchors.leftMargin: 276
		anchors.top: parent.top
		anchors.topMargin: 151

		source: "qrc:/images/images/Settings/center_background.png"
		fillMode: Image.PreserveAspectFit
	}

	Label
	{
		id: daysLabel1
		width: 90
		height: 26
		anchors.left: parent.left
		anchors.leftMargin: 1168
		anchors.top: parent.top
		anchors.topMargin: 235
		verticalAlignment: Text.AlignVCenter
		text: qsTr("已安全陪伴您 ")
		color: "#9AFFFFFF"
		font.pixelSize: 16
	}

	Label
	{
		id: daysLabel
		width: 50
		height: 32
		anchors.left: daysLabel1.right
		anchors.leftMargin: 10
		anchors.top: parent.top
		anchors.topMargin: 230
		horizontalAlignment: Text.AlignHCenter
		verticalAlignment: Text.AlignVCenter
		text: qsTr("267")
		color: "#FFFFFF"
		font.pixelSize: 24
		font.bold: true
	}

	Label
	{
		id: daysLabel2
		width: 32
		height: 26
		anchors.left: daysLabel.right
		anchors.leftMargin: 5
		anchors.top: parent.top
		anchors.topMargin: 235
		verticalAlignment: Text.AlignVCenter
		text: qsTr(" 天")
		color: "#9AFFFFFF"
		font.pixelSize: 16
	}

	Image
	{
		width: 472
		height: 182
		anchors.left: parent.left
		anchors.leftMargin:870
		anchors.top: parent.top
		anchors.topMargin: 417
		source: "qrc:/images/images/Settings/vehicle.png"
		fillMode: Image.PreserveAspectFit
	}

	Image
	{
		id: vehicleConditionImage
		width: 167
		height: 28
		anchors.left: parent.left
		anchors.leftMargin: 1160
		anchors.top: parent.top
		anchors.topMargin: 637
		source: "qrc:/images/images/Settings/vehicle_condition_good.png"
		fillMode: Image.PreserveAspectFit
	}

	Image
	{
		id: milesImage
		width: 149
		height: 74
		anchors.left: parent.left
		anchors.leftMargin: 1178
		anchors.top: parent.top
		anchors.topMargin: 294
		source: "qrc:/images/images/Settings/miles.png"
		fillMode: Image.PreserveAspectFit
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

		tlCornerRadius: 0
		trCornerRadius: 0
		blCornerRadius: 60
		brCornerRadius: 60
		
		gradientInstance : Gradient
		{
		    orientation: Gradient.Vertical
		    GradientStop { position: 0.0; color: "#111513" }
		    GradientStop { position: 1.0; color: "#414c5a" }
		}
	}

	SettingsList
	{
		id: settingsList

		width: 537
		height: 705

		contentWidth: 405
		contentHeight: 3200

		anchors.left: parent.left
		anchors.leftMargin: 276
		anchors.top: parent.top
		anchors.topMargin: 151

		onMoveStarted:
		{
			acControlBar.visible = false
		}

		onMoveEnded:
		{
			acControlBar.visible = true
		}
	}
}