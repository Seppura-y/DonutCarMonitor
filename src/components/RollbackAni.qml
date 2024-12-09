import QtQuick
import QtQuick.Controls
import QtQuick3D

Item {
    id: root
    property alias target: rotationAnimation.target
    property real from: 90 
    property real to: 0
    property real cur: from
    property int fullDuration: 1000 
    property string targetProperty: ""
    property bool isRollingback: false

    signal finished()

    NumberAnimation
    {
        id: rotationAnimation
        property: root.targetProperty
        duration: root.fullDuration
        onRunningChanged:
        {
            if (!running) root.finished()
        }
    }

    function startRollback()
    {
        rotationAnimation.stop()

        cur = target[targetProperty]

        let remainingAngle = Math.abs(Math.abs(cur) - Math.abs(to))
        let remainingDuration = Math.abs(remainingAngle) / Math.abs((Math.abs(from) - Math.abs(to))) * fullDuration

        rotationAnimation.to = to
        rotationAnimation.duration = remainingDuration

        rotationAnimation.start()
        isRollingback = false
    }

    function reverseRollback()
    {
        rotationAnimation.stop()

        cur = target[targetProperty]

        let remainingAngle = Math.abs(Math.abs(from) - Math.abs(cur))
        let remainingDuration = Math.abs(remainingAngle) / Math.abs(Math.abs(from) - Math.abs(to)) * fullDuration

        rotationAnimation.to = from
        rotationAnimation.duration = remainingDuration

        rotationAnimation.start()
        isRollingback = true
    }
}
