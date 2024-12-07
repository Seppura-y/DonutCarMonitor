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
	property int leftPercentX: 85
	property int leftPercentY: 100
	property int rightPercentX: 0
	property int rightPercentY: 100
	property int xStepSize: leftRect.width / 100
	property int yStepSize: leftRect.height / 100
	property var colorArray: ["#5055AAFF", "#5077BBF8", "#5088BBF0",
							  "#5099CCEE", "#5099DDEE", "#50AAEEEE",
							  "#50BBEEEE", "#50CCDDEE", "#50DDDDFF",
							  "#50EEEEFF", "#50FFFFFF", "#50FFEEEE",
							  "#50FFDDDD", "#50FFCCCC", "#50EEBBBB",
							  "#50EEAAAA", "#50EE9999"]
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

	FunctionsBar
	{
		width: 882
		height: 70

		anchors.left: parent.left
		anchors.leftMargin: 213
		anchors.top: parent.top
		anchors.topMargin: 57

		buttonCount: 4
		buttonTexts: ["空调", "通风加热", "滤净", "空调设置"]
		fontPixelSize: 26

		backgroundWidth: 50
		backgroundHeight: 8
	}

	Image
	{
		id: leftTemperatureImage

		width: 270
		height: 511
		
		anchors.left: parent.left
		anchors.leftMargin: 46
		anchors.top: parent.top
		anchors.topMargin: 158

		source: "qrc:/images/images/AC/left_temperatur_background.png"
		fillMode: Image.PreserveAspectFit
	}

	TemperatureList
	{
		id: leftTemperatureList
		
		width: 160
		height: 511
		
		anchors.left: parent.left
		anchors.leftMargin: 46
		anchors.top: parent.top
		anchors.topMargin: 158

		spacing: 10

		background: "transparent"
		
		currentIndexTextColor: "#04FAFB"
		otherIndexTextColor: "#DFDFDF"

		fontPixelSize: 38
		fontBold: true
		temperature: ui.acLeftTemperature
		direction: 0

		onMovementStarted:
		{
		
		}

		onMovementEnded: (temperatureValue) =>
		{
			ui.acLeftTemperature = temperatureValue
		}
	} // left temperature list

	Image
	{
		id: rightTemperatureImage
	
		width: 270
		height: 511
		
		anchors.left: parent.left
		anchors.leftMargin: 1047
		anchors.top: parent.top
		anchors.topMargin: 158
	
		source: "qrc:/images/images/AC/right_temperatur_background.png"
		fillMode: Image.PreserveAspectFit
	}

	TemperatureList
	{
		id: rightTemperatureList
		
		width: 160
		height: 511
		
		anchors.left: parent.left
		anchors.leftMargin: 1157
		anchors.top: parent.top
		anchors.topMargin: 158
	
		spacing: 10
	
		background: "transparent"
		
		currentIndexTextColor: "#04FAFB"
		otherIndexTextColor: "#DFDFDF"
	
		fontPixelSize: 38
		fontBold: true
		temperature: ui.acRightTemperature
		direction: 1
	
		onMovementStarted:
		{
		
		}
	
		onMovementEnded: (temperatureValue) =>
		{
			ui.acRightTemperature = temperatureValue
		}
	} // right temperature list

	Rectangle
	{
		id: leftRect
		width: 340
		height: 300
		x: 240
		y: 200
		z: backgroundImage.z + 1
		color: "transparent"

		MouseArea
		{
			id: leftMouseArea

			anchors.fill: parent
			onPositionChanged: (mouse)=>
			{
				if(mouse.x < 0)
				{
					leftPercentX = 0
				}
				else if(mouse.x > leftMouseArea.width)
				{
					leftPercentX = 100
				}
				else
				{
					leftPercentX = mouse.x / xStepSize
				}
			
				if(mouse.y < 0)
				{
					leftPercentY = 0
				}
				else if(mouse.y > leftMouseArea.height)
				{
					leftPercentY = 100
				}
				else
				{
					leftPercentY = mouse.y / yStepSize
				}
			}
		}
	} // leftRect

	ParticleWindSystem
	{
		id: leftParticleWind

		width: 240
		height: 200
		emitterWidth: 360
		emitterHeight: 30
		source: "qrc:/images/images/AC/fog.png"

		x: 220
		y: 280
		z: leftRect.z + 1

		moveX: leftPercentX
		moveY: leftPercentY

		offsetX: 0
		offsetY: 100
		value: ui.acFanLevel
		color: getColor()

		function getColor()
		{
			switch(ui.acLeftTemperature)
			{
				case 16: return colorArray[0]
				case 17: return colorArray[1]
				case 18: return colorArray[2]
				case 19: return colorArray[3]
				case 20: return colorArray[4]
				case 21: return colorArray[5]
				case 22: return colorArray[6]
				case 23: return colorArray[7]
				case 24: return colorArray[8]
				case 25: return colorArray[9]
				case 26: return colorArray[10]
				case 27: return colorArray[11]
				case 28: return colorArray[12]
				case 29: return colorArray[13]
				case 30: return colorArray[14]
				case 31: return colorArray[15]
				case 32: return colorArray[16]
			}
		}
	} // leftParticleWind


	Rectangle
	{
		id: rightRect
		width: 340
		height: 300
		x: 800
		y: 200
		z: backgroundImage.z + 1
		color: "transparent"
	
		MouseArea
		{
			id: rightMouseArea
	
			anchors.fill: parent
			onPositionChanged: (mouse)=>
			{
				if(mouse.x < 0)
				{
					rightPercentX = 0
				}
				else if(mouse.x > rightMouseArea.width)
				{
					rightPercentX = 100
				}
				else
				{
					rightPercentX = mouse.x / xStepSize
				}
			
				if(mouse.y < 0)
				{
					rightPercentY = 0
				}
				else if(mouse.y > rightMouseArea.height)
				{
					rightPercentY = 100
				}
				else
				{
					rightPercentY = mouse.y / yStepSize
				}
			}
		}
	} // rightRect
	
	ParticleWindSystem
	{
		id: rightParticleWind
	
		width: 240
		height: 200
		emitterWidth: 360
		emitterHeight: 30
		source: "qrc:/images/images/AC/fog.png"
	
		x: 890
		y: 280
		z: rightRect.z + 1
	
		moveX: rightPercentX
		moveY: rightPercentY
	
		offsetX: 0
		offsetY: 100
		value: ui.acFanLevel
		color: getColor()
	
		function getColor()
		{
			switch(ui.acRightTemperature)
			{
				case 16: return colorArray[0]
				case 17: return colorArray[1]
				case 18: return colorArray[2]
				case 19: return colorArray[3]
				case 20: return colorArray[4]
				case 21: return colorArray[5]
				case 22: return colorArray[6]
				case 23: return colorArray[7]
				case 24: return colorArray[8]
				case 25: return colorArray[9]
				case 26: return colorArray[10]
				case 27: return colorArray[11]
				case 28: return colorArray[12]
				case 29: return colorArray[13]
				case 30: return colorArray[14]
				case 31: return colorArray[15]
				case 32: return colorArray[16]
			}
		}
	} // rightParticleWind
}