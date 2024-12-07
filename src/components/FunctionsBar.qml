import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

Item
{
    id: root

    property string background: "#5A364A5E"
    property string textColor: "#FFFFFF"
    property int fontPixelSize: 16

    property int selectedIndex: 0 // 当前选中的按钮索引
    property var buttonTexts: ["功能1", "功能2", "功能3", "功能4", "功能5"] // 按钮文本数组，可动态指定

    property int buttonCount: 2 // 可通过外部指定按钮数量
    property real buttonWidth: width / buttonCount
    property int backgroundWidth: width
    property int backgroundHeight: height
    property int xOffset: (buttonWidth - backgroundWidth) / 2

    Rectangle
    {
        anchors.fill: parent
        color: parent.background
        radius: parent.height / 2
    }

    Rectangle
    {
        id: selectedRectangle
        x: selectedIndex * root.buttonWidth + root.xOffset

        width: root.backgroundWidth
        height: root.backgroundHeight
        radius: height / 2

        anchors.bottom: parent.bottom

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
                properties: "x"
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
                                x: ${i * buttonWidth + xOffset}
                            }
                        }
                    `, selectedRectangle)

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
            console.log("FunctionsBar States generated:", states)
        } // onCompleted
    } // selectedRectangle

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
                height: parent.height

                indicator: Rectangle { color: "transparent" }

                Label
                {
                    width: parent.width
                    height: parent.height
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
} // root
