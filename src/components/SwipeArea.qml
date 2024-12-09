import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic


MouseArea
{
	property point origin

	property bool ready: false

	property int threshold: 10

	signal swipePressed
	signal swipeReleased
	signal swipeClicked

	signal move(int x, int y)
	signal swipe(string direction)
	signal swipeStarted(int x, int y)

	signal swipeUp()
	signal swipeDown()
	signal swipeLeft()
	signal swipeRight()
	signal doubleClicked()

	onPressed:(mouse)=>
	{
		// drag是MouseArea的成员变量
		drag.axis = Drag.XAndYAxis
		origin = Qt.point(mouse.x, mouse.y)
	}

	onPositionChanged:(mouse)=>
	{
		switch(drag.axis)
		{
			case Drag.XAndYAxis:
			{
				if(Math.abs(mouse.x - origin.x) > threshold)
				{
					drag.axis = Drag.XAxis
				}
				else if(Math.abs(mouse.y - origin.y) > threshold)
				{
					drag.axis = Drag.YAxis
				}

				if((Math.abs(mouse.x - origin.x) >= threshold) || (Math.abs(mouse.y - origin.y) >= threshold))
				{
					swipeStarted(Math.abs(mouse.x - origin.x), Math.abs(mouse.y - origin.y))
				}

				if((mouse.y < origin.y) && (Math.abs(mouse.y - origin.y) >= (threshold)))
				{
					swipeUp()
				}
				if((mouse.y > origin.y) && (Math.abs(mouse.y - origin.y) >= (threshold)))
				{
					swipeDown()
				}

				if((mouse.x < origin.x) && (Math.abs(mouse.x - origin.x) >= (threshold)))
				{
					swipeLeft()
				}
				if((mouse.x > origin.x) && (Math.abs(mouse.x - origin.x) >= (threshold)))
				{
					swipeRight()
				}
				break;
			}//case Drag.XAndYAxis:

			case Drag.XAxis:
			{
				move(mouse.x - origin.x, 0)
				break;
			}
			case Drag.YAxis:
			{
				move(0, mouse.y - origin.y)
				break;
			}
		}//switch(drag.axis)
	}//onPositionChanged

	onReleased:(mouse)=>
	{
		switch(drag.axis)
		{
			case Drag.XAndYAxis:
				canceled(mouse)
				break
			case Drag.XAxis:
				console.log("drag.x")
				swipe(mouse.x - origin.x < 0 ? "left" : "right")
			case Drag.YAxis:
				console.log("drag.y")
				swipe(mouse.y - origin.y < 0 ? "up" : "down")
				break
		}
	}// onReleased:


}