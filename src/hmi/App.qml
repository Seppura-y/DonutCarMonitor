import QtQuick

import "../components"

Item
{
	id: appPage
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
		width: 1305
		height: 123

		anchors.left: parent.left
		anchors.leftMargin: 55
		anchors.top: parent.top
		anchors.topMargin: 707

		onFan: acFan.opened ? acFan.close() : acFan.open()
	}

	Row
	{
		id: appRow1
		width: 1281
		height:141

		anchors.left: parent.left
		anchors.leftMargin: 60
		anchors.top: parent.top
		anchors.topMargin: 128

		spacing: 103

		IconButton
		{
			id: mimoButton
			width: 94
			height: sourceHeight + spacing + textHeight

			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Mimo.png"

			textWidth: width
			textHeight: 31

			spacing: 16

			text: qsTr("Mimo")
			fontPixelSize: 22

			onButtonClicked:
			{
				console.log("Mimo clicked")
			}
		}

		IconButton
		{
			id: messengerButton

			width: 94
			height: sourceHeight + spacing + textHeight

			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Messenger.png"

			textWidth: width
			textHeight: 31

			spacing: 16

			text: qsTr("Messenger")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Messenger clicked")
			}
		}// messenger button

		IconButton
		{
			id: duolinguoButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Duolinguo.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Duolinguo")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Duolinguo clicked")
			}
		}// duolinguo button

		IconButton
		{
			id: calculatorButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Calculator.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Calculator")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Calculator clicked")
			}
		}// calculator button

		IconButton
		{
			id: spotifyButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Spotify.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Spotify")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Spotify clicked")
			}
		}// spotify button

		IconButton
		{
			id: mapsButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Maps.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Maps")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Maps clicked")
			}
		}// maps button

		IconButton
		{
			id: dayOneButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/DayOne.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("DayOne")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("DayOne clicked")
			}
		}// DayOne button
	} // app row 1

	Row
	{
		id: appRow2
		width: 1281
		height:141
	
		anchors.left: parent.left
		anchors.leftMargin: 60
		anchors.top: parent.top
		anchors.topMargin: 311
	
		spacing: 103

		IconButton
		{
			id: musicButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Music.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Music")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Music clicked")
			}
		}// Music button

		IconButton
		{
			id: notabilityButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Notability.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Notability")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Notability clicked")
			}
		}// Notability button

		IconButton
		{
			id: picstartButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Picstart.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Picstart")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Picstart clicked")
			}
		}// Picstart button

		IconButton
		{
			id: podcastButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Podcast.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Podcast")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Podcast clicked")
			}
		}// Podcast button

		IconButton
		{
			id: sparkButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Spark.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Spark")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Spark clicked")
			}
		}// Spark button

		IconButton
		{
			id: swiftButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Swift.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Swift")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Swift clicked")
			}
		}// Swift button

		IconButton
		{
			id: vectornatorButton
		
			width: 94
			height: sourceHeight + spacing + textHeight
		
			sourceWidth: width
			sourceHeight: 94
			source: "qrc:/images/images/App/Vectornator.png"
		
			textWidth: width
			textHeight: 31
		
			spacing: 16
		
			text: qsTr("Vectornator")
			fontPixelSize: 22
		
			onButtonClicked:
			{
				console.log("Vectornator clicked")
			}
		}// Vectornator button
	}
}