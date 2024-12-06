import QtQuick

import "../components"

Item
{
	id: airCondPage
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

		Image
		{
			id: innerImage
			width: 1414
			height: 707
			x: 0
			y: 0
			
			source: "qrc:/images/images/AC/inner.png"
			fillMode: Image.PreserveAspectFit
			
			Image
			{
				id: verticalMask
				anchors.fill: parent
				source: "qrc:/images/images/AC/mask_v.png"
				fillMode: Image.PreserveAspectFit
			}

			Image
			{
				id: horizontalMask
				anchors.fill: parent
				source: "qrc:/images/images/AC/mask_h.png"
				fillMode: Image.PreserveAspectFit
			}
		}
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
		width: 1305
		height: 123
	
		anchors.left: parent.left
		anchors.leftMargin: 55
		anchors.top: parent.top
		anchors.topMargin: 707
	
		onFan: acFan.opened ? acFan.close() : acFan.open()
	}
}