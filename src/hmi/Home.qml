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