import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    property bool isVertical: false

    property string background: "#5A364A5E"
    property string textColor: "#FFFFFF"
    property int fontPixelSize: 16

    property int selectedIndex: 0 // 当前选中的按钮索引
    property var buttonTexts: ["功能1", "功能2", "功能3", "功能4", "功能5"] // 按钮文本数组，可动态指定

    property int buttonCount: 2 // 可通过外部指定按钮数量

    property real buttonWidth: isVertical ? 204 : width / buttonCount
    property real buttonHeight: isVertical ? height / buttonCount : 70

    property int backgroundWidth: buttonHeight
    property int backgroundHeight: buttonHeight
    //property int offset: (buttonWidth - backgroundWidth) / 2
    property int offset: isVertical? (buttonHeight - backgroundHeight) / 2 : (buttonWidth - backgroundWidth) / 2

    property int tlCornerRadius: 20
    property int trCornerRadius: 20
    property int blCornerRadius: 20
    property int brCornerRadius: 20

    property Gradient gradientInstance: Gradient
    {
        orientation: isVertical ? Gradient.Vertical : Gradient.Horizontal
        GradientStop { position: 0.0; color: background }
        GradientStop { position: 1.0; color: background }
    }

    Item
    {
        id: back
        anchors.fill: parent
        clip: true
    
        Canvas
        {
            anchors.fill: parent
            onPaint:
            {
                var ctx = getContext("2d");
                ctx.clearRect(0, 0, width, height);
    
                // 绘制带不同圆角的矩形
                ctx.beginPath();
            
                // Top-left corner
                ctx.moveTo(tlCornerRadius, 0);
                ctx.arcTo(0, 0, 0, tlCornerRadius, tlCornerRadius);
    
                // Bottom-left corner
                ctx.lineTo(0, height - blCornerRadius);
                ctx.arcTo(0, height, blCornerRadius, height, blCornerRadius);
    
                // Bottom-right corner
                ctx.lineTo(width - brCornerRadius, height);
                ctx.arcTo(width, height, width, height - brCornerRadius, brCornerRadius);
    
                // Top-right corner
                ctx.lineTo(width, trCornerRadius);
                ctx.arcTo(width, 0, width - trCornerRadius, 0, trCornerRadius);
    
                ctx.closePath();
                ctx.clip();
    
                // 绘制渐变背景
                var gradient = ctx.createLinearGradient(0, 0, 0, height);
                gradient.addColorStop(0, gradientInstance.stops[0].color);
                gradient.addColorStop(1, gradientInstance.stops[1].color);
                ctx.fillStyle = gradient;
                ctx.fillRect(0, 0, width, height);
            }
        }
    }

    Rectangle
    {
        id: selectedRectangle
        x: root.isVertical ? root.offset : selectedIndex * root.buttonWidth + root.offset
        //y: root.isVertical ? selectedIndex * root.buttonHeight + root.offset : root.offset
        y: root.isVertical ? 20 : root.offset

        width: root.backgroundWidth
        height: root.backgroundHeight
        radius: height / 2

        anchors.bottom: root.isVertical ? null : parent.bottom

        gradient: Gradient
        {
            orientation: Gradient.Horizontal
            GradientStop { position: 0.0; color: "#43FFFF" }
            GradientStop { position: 1.0; color: "#0978E9" }
        }

        state: "SELECTED_" + selectedIndex

        transitions: Transition
        {
            to: "*"
            PropertyAnimation
            {
                target: selectedRectangle
                properties: isVertical ? "y" : "x"
                easing.type: Easing.InOutQuad
                duration: 300
            }
        }

        // 动态生成 states
        Component.onCompleted:
        {
            //console.log("Component.onCompleted: Generating states...")
            var dynamicStates = []
            var dynamicTransitions = []

            for (var i = 0; i < buttonCount; i++)
            {
                try
                {
                    // 动态创建 State 对象
                    var stateInstance = Qt.createQmlObject(`
                        import QtQuick
                        State {
                            name: "SELECTED_${i}"
                            PropertyChanges {
                                target: selectedRectangle
                                x: root.isVertical ? 0 : ${i * buttonWidth + offset}
                                //y: root.isVertical ? ${i * buttonHeight + offset + i * 122} : 0
                                y: root.isVertical ? ${18 + i * 122} : 0
                            }
                        }
                    `, selectedRectangle)

                    //console.error("Component.onCompleted x:", (i * buttonHeight + offset));

                    if (stateInstance)
                    {
                        dynamicStates.push(stateInstance);
                        //console.log("State created for index:", i, "State name:", stateInstance.name)
                    }
                    else
                    {
                        console.error("Failed to create state instance for index:", i)
                    }
                }
                catch (error)
                {
                    console.error("Error while creating state for index:", i, error)
                }
            }

            states = dynamicStates
            //console.log("FunctionsBar States generated:", states)
        } // onCompleted
    } // selectedRectangle

    Item
    {
        Loader
        {
            id: layoutLoader
            anchors.fill: parent
            sourceComponent: root.isVertical ? columnComponent : rowComponent
        }
        Component
        {
            id: rowComponent
            Row
            {
                anchors.fill: parent

                Repeater
                {
                    model: buttonCount
                    delegate: RadioButton
                    {
                        id: button
                        width: root.buttonWidth
                        height: root.buttonHeight
                        //height: parent.height

                        indicator: Rectangle { color: "transparent" }

                        Label
                        {
                            //width: parent.width
                            //height: parent.height

                            width: root.buttonWidth
                            height: root.buttonHeight

                            anchors.centerIn: parent
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: buttonTexts[index]
                            color: textColor
                            font.pixelSize: fontPixelSize
                        }

                        onClicked:
                        {

                            if (checked)
                            {
                                selectedIndex = index
                                console.log("selectedIndex: ", selectedIndex);
                            }
                        }
                    } // RadioButton
                } // Repeater
            } // Row
        } // Row Component


        Component
        {
            id: columnComponent
            Column
            {
                anchors.fill: parent

                Repeater
                {
                    model: buttonCount
                    delegate: RadioButton
                    {
                        id: button
                        width: root.buttonWidth
                        height: root.buttonHeight
                        //height: parent.height

                        anchors.left: parent.left
                        anchors.leftMargin: 18
                        anchors.top: parent.top
                        anchors.topMargin: 18 + index * 122

                        spacing: 122

                        indicator: Rectangle { color: "transparent" }

                        Label
                        {
                            //width: parent.width
                            //height: parent.height

                            width: root.buttonWidth
                            height: root.buttonHeight

                            anchors.centerIn: parent
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            text: buttonTexts[index]
                            color: textColor
                            font.pixelSize: fontPixelSize
                        }

                        onClicked:
                        {

                            if (checked)
                            {
                                selectedIndex = index
                                console.log("selectedIndex: ", selectedIndex);
                            }
                        }
                    } // RadioButton
                } // Repeater
            } // Row
        } // Column Component
    }

} // root
