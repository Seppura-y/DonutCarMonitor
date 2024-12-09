import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Material

Button
{
	text:   buttonText
	hoverEnabled: false
	opacity: down ? 0.7 : 1

	property string buttonText: ""
	property color buttonColor: "white"
	property string buttonSource: ""

	property color textColor: "white"
	property int fontPixelSize: 10

	property point iconSize: Qt.point(16, 16)
	property int iconMargin: 2

	contentItem: Label
	{
		width: parent.width
		height: parent.height
		text: parent.text
		color: parent.textColor
		font: parent.font
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
	}

	background: Rectangle
	{
		implicitHeight: parent.height
		implicitWidth: parent.height
		radius: parent.height / 6
		color: buttonColor
	}

	Image
	{
		width: iconSize.x
		height: iconSize.y
		visible: true
		
		anchors.verticalCenter: parent.verticalCenter
		anchors.left: parent.left
		anchors.leftMargin: iconMargin
		source: buttonSource
		fillMode: Image.PreserveAspectFit
	}
}