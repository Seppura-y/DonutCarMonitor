import QtQuick
import QtQuick3D
import QtQuick3D.Particles3D
import QtQuick.Controls
Window
{
	id: rootItem

	//anchors.fill: parent

	visible: true
	width: 800
	height: 500
	
	property int xStepSize: width / 100
	property int yStepSize: height / 100

	Rectangle
	{
		anchors.fill: parent
		color: "#202020"
	}

	//Label
	//{
	//	x: 0
	//	y: 0
	//	z: particleWind3DSystem.z + 1
	//
	//	color: "white"
	//	font.pixelSize: 16
	//	font.bold: true
	//	text: ("x " + particleWind3DSystem.percentX + 
	//			"%  y: " + particleWind3DSystem.percentY + "%" +
	//			"  level: " + particleWind3DSystem.level)
	//}
	//
	//ParticleWind3DSystem
	//{
	//	id: particleWind3DSystem
	//	anchors.fill: parent
	//	anchors.centerIn: parent
	//	source: "/images/glowdot.png"
	//	windColor: "white"
	//}
	//
	//MouseArea
	//{
	//	id: mouseArea
	//	anchors.fill: parent
	//
	//	onPositionChanged:
	//	{
	//		if(mouse.x < 1)
	//		{
	//			particleWind3DSystem.percentX = 1
	//		}
	//		else if(mouse.x > mouseArea.width)
	//		{
	//			particleWind3DSystem.percentX = 100
	//		}
	//		else
	//		{
	//			particleWind3DSystem.percentX = mouse.x / xStepSize
	//		}
	//
	//		if(mouse.y < 1)
	//		{
	//			particleWind3DSystem.percentY = 1
	//		}
	//		else if(mouse.y > mouseArea.height)
	//		{
	//			particleWind3DSystem.percentY = 100
	//		}
	//		else
	//		{
	//			particleWind3DSystem.percentY = mouse.y / yStepSize
	//		}
	//	} // onPositionChanged
	//} // mouseArea
	//
	//
	//Row
	//{
	//	height: 50
	//	anchors.bottom: parent.bottom
	//	anchors.horizontalCenter: parent.horizontalCenter
	//	spacing: 10
	//
	//	Button
	//	{
	//		width: 100
	//		height: 50
	//		text: "-"
	//		font.pixelSize: 32
	//		onClicked:
	//		{
	//			if(particleWind3DSystem.level > 0)
	//			{
	//				particleWind3DSystem.level -= 1
	//			}
	//		}
	//	}
	//
	//	Button
	//	{
	//		width: 100
	//		height: 50
	//		text: "+"
	//		font.pixelSize: 32
	//		onClicked:
	//		{
	//			if(particleWind3DSystem.level < 5)
	//			{
	//				particleWind3DSystem.level += 1
	//			}
	//		}
	//	}
	//
	//	Button
	//	{
	//		width: 100
	//		height: 50
	//		text: "red"
	//		font.pixelSize: 32
	//		onClicked:
	//		{
	//			particleWind3DSystem.windColor = "#ffcccc"
	//		}
	//	}
	//
	//	Button
	//	{
	//		width: 100
	//		height: 50
	//		text: "blue"
	//		font.pixelSize: 32
	//		onClicked:
	//		{
	//			particleWind3DSystem.windColor = "#88ccff"
	//		}
	//	}
	//
	//	Button
	//	{
	//		width: 100
	//		height: 50
	//		text: "white"
	//		font.pixelSize: 32
	//		onClicked:
	//		{
	//			particleWind3DSystem.windColor = "#ffffff"
	//		}
	//	}
	//}
}
