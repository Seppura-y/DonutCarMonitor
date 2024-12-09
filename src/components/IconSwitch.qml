import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
	id: root

	property int sourceWidth: 100
	property int sourceHeight: 40

	property string sourceOffImage: ""
	property string sourceOnImage: ""

	property string text: ""
	property int textWidth: 10
	property int textHeight: 10
	property color onTextColor: "#000000"
	property color offTextColor: "#FFFFFF"

	signal sigPressed
	signal sigReleased
	signal sigClicked

	property bool switchStatus: false

	Rectangle
	{
		anchors.fill: parent
		color: switchStatus ? "#FFFFFF" : "#80000000"
		radius: 14

		Image
		{
			width: sourceWidth
			height: sourceHeight

			anchors.horizontalCenter: parent.horizontalCenter
			anchors.top: parent.top
			anchors.topMargin: 25

			source: switchStatus ? root.sourceOffImage : root.sourceOnImage

			fillMode: Image.PreserveAspectFit
		}

		Label
		{
			width: root.textWidth
			height: root.textHeight

			anchors.horizontalCenter: parent.horizontalCenter
			anchors.top: parent.top
			anchors.topMargin: 75

			horizontalAlignment: Text.AlignHCenter
			verticalAlignment: Text.AlignVCenter

			text: root.text
			color: switchStatus ? onTextColor : offTextColor
		}

		MouseArea
		{
			anchors.fill: parent

			onPressed: root.sigPressed()
			onReleased: root.sigReleased()
			onClicked: 
			{
				switchStatus = !switchStatus
				root.sigClicked()
			}
		}
	}
}