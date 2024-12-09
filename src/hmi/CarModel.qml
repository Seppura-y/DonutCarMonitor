import QtQuick
import QtQuick.Controls
import QtQuick.Controls.Basic

import QtQuick.Layouts

import QtQuick3D
import QtQuick3D.Helpers
import QtQuick3D.Particles3D
import "../components"
import "../"

Item
{
	id: carModelPage
	visible: true

	width: 1414
	height: 856
	x: 108
	y: 0

	
    property bool acPower: false
    property bool acAdjusting: false
    property int leftTemperature: 26
    property int rightTemperature: 26

    property point pressedPoint: Qt.point(0, 0)
    property point positionDeltaPoint: Qt.point(0, 0)
    property point pressedL9ModelPoint: Qt.point(0, 0)

    property real pressedAngle: 90
    property int deltaAngle: 0
    property point rotationDeltaPoint: Qt.point(0, 0)

    property point leftAirCondRotationDeltaPoint: Qt.point(0, 0)
    property real leftAirCondRotateXAngle: 0
    property real leftAirCondRotateYAngle: 0

    property point rightAirCondRotationDeltaPoint: Qt.point(0, 0)
    property real rightAirCondRotateXAngle: 0
    property real rightAirCondRotateYAngle: 0

    
    property var colorArray: ["#8055AAFF", "#8077BBF8", "#8088BBF0",
                              "#8099CCEE", "#8099DDEE", "#80AAEEEE",
                              "#80BBEEEE", "#80CCDDEE", "#80DDDDFF",
                              "#80EEEEFF", "#80FFFFFF", "#80FFEEEE",
                              "#80FFDDDD", "#80FFCCCC", "#80EEBBBB",
                              "#80EEAAAA", "#80EE9999"]

    Rectangle
    {
        anchors.fill: parent
        visible: true
    
        View3D
        {
            id: view3D
            anchors.fill: parent
            environment: sceneEnvironment
            SceneEnvironment
            {
                id: sceneEnvironment
                backgroundMode: SceneEnvironment.SkyBox
    
                antialiasingQuality: SceneEnvironment.VeryHigh
                antialiasingMode: SceneEnvironment.MSAA
    
                lightProbe: Texture
                {
                    source: "../textures/NordnesPark.hdr"
                }
                
                probeExposure: probeExposureSlider.value
            }

            Node
            {
                id: scene
    
                DirectionalLight
                {
                    id: directionalLight
                    x: 2725.066
                    y: 0
                    z: 0
                    brightness: 2
                    castsShadow: true
                    shadowMapQuality: Light.ShadowMapQualityHigh
                }
                PerspectiveCamera
                {
                    id: sceneCamera
                    x: 16
                    y: 750
                    z: 1760
                    eulerRotation.x: -18
                    eulerRotation.y:  0
                    eulerRotation.z:  0
                }

                //Model
                //{
                //    id: cylinder1
                //    position: Qt.vector3d(trsController.positionX, trsController.positionY, trsController.positionZ)
                //    eulerRotation: Qt.vector3d(trsController.rotationX, trsController.rotationY, trsController.rotationZ)
                //    source: "#Cylinder"
                //    scale: Qt.vector3d(trsController.scaleX, trsController.scaleY, trsController.scaleZ)
                //    materials:
                //    [
                //        DefaultMaterial
                //        {
                //            diffuseColor: "#ffffff"
                //        }
                //    ]
                //}

                SU7Model
                {
                    id: su7Model
                    x: getX()
                    z: getY()

                    position: Qt.vector3d(0, 0, 0)

                    scale: Qt.vector3d(0.45, 0.45, 0.45)
                    eulerRotation.y: getRotationY()
                    //eulerRotation.y: 0

                    property bool doorFLOpening: (doorFLRotationZ < 0 && !doorFLRollbackAni.isRollingback) ? true : false
                    property bool doorBLOpening: (doorBLRotationZ < 0 && !doorBLRollbackAni.isRollingback) ? true : false
                    property bool doorFROpening: (doorFRRotationZ > 0 && !doorFRRollbackAni.isRollingback) ? true : false
                    property bool doorBROpening: (doorBRRotationZ > 0 && !doorBRRollbackAni.isRollingback) ? true : false

                    function getX()
                    {
                        return pressedL9ModelPoint.x + positionDeltaPoint.x
                    }

                    function getY()
                    {
                        return pressedL9ModelPoint.y + positionDeltaPoint.y
                    }
                    
                    function getRotationY()
                    {
                        if((pressedAngle + rotationDeltaPoint.x) < 0)
                        {
                            return 0
                        }
                        else if((pressedAngle + rotationDeltaPoint.x) > 360)
                        {
                            return 360
                        }
                        else
                        {
                            return (pressedAngle + rotationDeltaPoint.x)
                        }
                    }
                    //----- doors animations -----
                    RollbackAni
                    {
                        id: doorFLRollbackAni
                        target: su7Model
                        targetProperty: "doorFLRotationZ"
                        from: 0
                        to: -75
                        fullDuration: 500
                    }
                    
                    RollbackAni
                    {
                        id: doorBLRollbackAni
                        target: su7Model
                        targetProperty: "doorBLRotationZ"
                        from: 0
                        to: -75
                        fullDuration: 500
                    }
                    
                    RollbackAni
                    {
                        id: doorFRRollbackAni
                        target: su7Model
                        targetProperty: "doorFRRotationZ"
                        from: 0
                        to: 75
                        fullDuration: 500
                    }
                    
                    RollbackAni
                    {
                        id: doorBRRollbackAni
                        target: su7Model
                        targetProperty: "doorBRRotationZ"
                        from: 0
                        to: 75
                        fullDuration: 500
                    }
                    
                    
                    onDoorFLRotationZChanged:
                    {
                        doorFLOpening = (doorFLRotationZ < 0 && !doorFLRollbackAni.isRollingback) ? true : false
                    }
                    onDoorBLRotationZChanged:
                    {
                        doorBLOpening = (doorBLRotationZ < 0 && !doorBLRollbackAni.isRollingback) ? true : false
                    }
                    onDoorFRRotationZChanged:
                    {
                        doorFROpening = (doorFRRotationZ > 0 && !doorFRRollbackAni.isRollingback) ? true : false
                    }
                    onDoorBRRotationZChanged:
                    {
                        doorBROpening = (doorBRRotationZ > 0 && !doorBRRollbackAni.isRollingback) ? true : false
                    }
                    //------- doors animations------
                    
                    //------- car interior animation ------
                    ParallelAnimation
                    {
                        id: carInteriorAnimation
                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "eulerRotation"
                            to: Qt.vector3d(0, 90, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "scale"
                            to: Qt.vector3d(0.45, 0.45, 0.45)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "position"
                            to: Qt.vector3d(0, 0, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: sceneCamera
                            properties: "eulerRotation"
                            to: Qt.vector3d(-15, 90, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: sceneCamera
                            properties: "position"
                            to: Qt.vector3d(105, 500, -5)
                            duration: 1000
                        }
                    }
                    //------- car interior animation ------

                    //------- air-cond animation ------
                    ParallelAnimation
                    {
                        id: airCondAnimation
                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "eulerRotation"
                            to: Qt.vector3d(0, 90, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "scale"
                            to: Qt.vector3d(0.45, 0.45, 0.45)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "position"
                            to: Qt.vector3d(0, 0, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: sceneCamera
                            properties: "eulerRotation"
                            to: Qt.vector3d(-9, 90, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: sceneCamera
                            properties: "position"
                            to: Qt.vector3d(442, 410, 2)
                            duration: 1000
                        }
                    }
                    //------- car interior animation ------
                    
                    //------- car body animation ------
                    ParallelAnimation
                    {
                        id: carBodyAnimation
                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "eulerRotation"
                            to: Qt.vector3d(0, 90, 0)
                            duration: 1000
                        }

                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "scale"
                            to: Qt.vector3d(0.45, 0.45, 0.45)
                            duration: 1000
                        }
                        
                        PropertyAnimation
                        {
                            target: su7Model
                            properties: "position"
                            to: Qt.vector3d(0, 0, 0)
                            duration: 1000
                        }
                        
                        PropertyAnimation
                        {
                            target: sceneCamera
                            properties: "eulerRotation"
                            to: Qt.vector3d(-18, 0, 0)
                            duration: 1000
                        }
                        
                        PropertyAnimation
                        {
                            target: sceneCamera
                            properties: "position"
                            to: Qt.vector3d(16, 750, 1760)
                            duration: 1000
                        }
                    }
                    //------- car interior animation ------
                    
                } // SU7Model
            } // Node scene

            ParticleWind3DSystem
            {
                id: leftAirCond
                source: "/images/glowdot.png"
                windColor: getColor()
        
                //position: Qt.vector3d(trsController.positionX, trsController.positionY, trsController.positionZ)
                //eulerRotation: Qt.vector3d(trsController.rotationX, trsController.rotationY, trsController.rotationZ)
                //scale: Qt.vector3d(trsController.scaleX, trsController.scaleY, trsController.scaleZ)

                position: Qt.vector3d(183, 240, 6)
                eulerRotation: Qt.vector3d(0, 270, 0)
                scale: Qt.vector3d(0.5, 0.5, 0.5)

                level: acPower ? leftWindSlider.value : 0

                function getColor()
                {
                    switch(leftTemperature)
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
            }

            ParticleWind3DSystem
            {
                id: rightAirCond
                source: "/images/glowdot.png"
                windColor: getColor()
        
                //position: Qt.vector3d(trsController2.positionX, trsController2.positionY, trsController2.positionZ)
                //eulerRotation: Qt.vector3d(trsController2.rotationX, trsController2.rotationY, trsController2.rotationZ)
                //scale: Qt.vector3d(trsController2.scaleX, trsController.scaleY, trsController2.scaleZ)

                position: Qt.vector3d(183, 240, -46)
                eulerRotation: Qt.vector3d(0, 270, 0)
                scale: Qt.vector3d(0.5, 0.5, 0.5)

                level: acPower ? rightWindSlider.value : 0

                function getColor()
                {
                    switch(rightTemperature)
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
            }


            WasdController
            {
                id: wasdController
                controlledObject: sceneCamera
            }
        } // view3d
    
            
        Rectangle
        {
            id: controlBarRect
            width: parent.width
            height: 50
            color: "#80222222"
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
    
            Row
            {
                id: wheelRow
                width: 300
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 350
                anchors.bottom: controlBarRect.top
                anchors.bottomMargin: 0
                visible: false
                spacing: 20

                Label { id: label; text: "wheel : "; color: "white"}

                Slider
                {
                    id: wheelSlider
                    width: 200
                    height: 20
                    from: 70
                    to: 110
                    stepSize: 1
                    value: 90
                }

                Label {text: wheelSlider.value; color: "white"}
            } // Wheel Row
            
            Row
            {
                id: probeExposureControlRow
                width: 300
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 1100
                anchors.bottom: controlBarRect.top
                anchors.bottomMargin: 10
                visible: false
                spacing: 20

                Label { id: label2; text: "光线强度: "; color: "white"}

                Slider
                {
                    id: probeExposureSlider
                    width: 200
                    height: 20
                    from: 0
                    to: 5
                    stepSize: 0.1
                    value: 1
                }
            } // probe exposure row

            Row
            {
                id: doorRow
                anchors.left: parent.left
                anchors.leftMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                width: 260
                height: 50
                spacing: 5
    
                ControlButton
                {
                    id: doorFLButton
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "左前门"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/door.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)

                    onClicked:
                    {
                        if(su7Model.doorFLOpening)
                        {
                            doorFLRollbackAni.reverseRollback()
                        }
                        else
                        {
                            doorFLRollbackAni.startRollback()
                        }
                    }
                }
   
                ControlButton
                {
                    id: doorBLButton
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "左后门"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/door.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)

                    onClicked:
                    {
                        if(su7Model.doorBLOpening)
                        {
                            doorBLRollbackAni.reverseRollback()
                        }
                        else
                        {
                            doorBLRollbackAni.startRollback()
                        }
                    }
                }

                ControlButton
                {
                    id: doorFRButton
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "右前门"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/door.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)

                    onClicked:
                    {
                        if(su7Model.doorFROpening)
                        {
                            doorFRRollbackAni.reverseRollback()
                        }
                        else
                        {
                            doorFRRollbackAni.startRollback()
                        }
                    }
                }

                ControlButton
                {
                    id: doorBRButton
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "右后门"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/door.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)

                    onClicked:
                    {
                        if(su7Model.doorBROpening)
                        {
                            doorBRRollbackAni.reverseRollback()
                        }
                        else
                        {
                            doorBRRollbackAni.startRollback()
                        }
                    }
                }

                ControlButton
                {
                    id: trunkButton
                    visible: false
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "后备箱"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/trunk.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)

                    onClicked:
                    {
                        if(su7Model.doorTrunkOpening)
                        {
                            doorTrunkRollbackAni.reverseRollback()
                        }
                        else
                        {
                            doorTrunkRollbackAni.startRollback()
                        }
                    }
                }

                ControlButton
                {
                    id: wheelButton
                    visible: false
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "前轮"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/wheel.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)

                    onClicked:
                    {
                        wheelRow.visible = !wheelRow.visible
                    }
                }
            } // doorRow

            Row
            {
                id: positionRow
                anchors.left: doorRow.right
                anchors.leftMargin: 0
                anchors.verticalCenter: parent.verticalCenter
                width: 120
                height: 50
                spacing: 5

                ControlButton
                {
                    id: positionButton
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "位置"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/position.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)
                    iconMargin: 2
                    onClicked:
                    {
                        su7ModelPositionRect.visible = !su7ModelPositionRect.visible
                    }
                }

                ControlButton
                {
                    id: rotationButton
                    width: 60
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "旋转"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rotation.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)
                    iconMargin: 2

                    onClicked:
                    {
                        su7ModelRotationRect.visible = !su7ModelRotationRect.visible
                    }

                }
            } // positionRow

            Row
            {
                id: carViewRow
                anchors.left: positionRow.right
                anchors.leftMargin: 15
                //anchors.verticalCenter: parent.verticalCenter
                width: 195
                height: 50
                spacing: 5
                ControlButton
                {
                    id: carBodyButton
                    width: 65
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "车身视角"
                    buttonColor: "#80AAAAAA"
                    //buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/car.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)
                    iconMargin: 2
                    onClicked:
                    {
                        //su7Model.eulerRotation = Qt.vector3d(0, 320, 0)
                        //su7Model.position = Qt.vector3d(0, 0, 0)
                        //
                        //sceneCamera.eulerRotation = Qt.vector3d(-18, 0, 0)
                        //sceneCamera.position = Qt.vector3d(16, 750, 1760)

                        carBodyAnimation.start()
                        
                        carPaintRow.visible = true
                        acPowerRow.visible = false

                        leftTempRow.visible = false
                        rightTempRow.visible = false

                        leftWindRow.visible = false
                        rightWindRow.visible = false
                    }
                }
                ControlButton
                {
                    id: carInteriorButton
                    width: 65
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "车内视角"
                    buttonColor: "#80AAAAAA"
                    ////buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/interior.png"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)
                    iconMargin: 2
                    onClicked:
                    {
                        carInteriorAnimation.start()

                        carPaintRow.visible = false

                        acPowerRow.visible = false

                        leftTempRow.visible = false
                        rightTempRow.visible = false

                        leftWindRow.visible = false
                        rightWindRow.visible = false
                    }
                }
                ControlButton
                {
                    id: animationButton
                    width: 65
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter
                    buttonText: "空调视角"
                    buttonColor: "#80AAAAAA"
                    ////buttonSource: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/animation.png"
                    //buttonSource: ""
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)
                    iconMargin: 2

                    onClicked:
                    {
                        airCondAnimation.start()
                        acAdjusting = !acAdjusting

                        carPaintRow.visible = false
                        acPowerRow.visible = true

                        leftTempRow.visible = true
                        rightTempRow.visible = true

                        leftWindRow.visible = true
                        rightWindRow.visible = true
                    }
                }
            } // carViewRow

            Row
            {
                id: probeExposureRow
                anchors.left: carViewRow.right
                anchors.leftMargin: 15
                anchors.verticalCenter: parent.verticalCenter


                width: 65
                height: 50
                spacing: 5

                ControlButton
                {
                    id: probeExposureButton
                    width: 65
                    height: 40
                    anchors.verticalCenter: parent.verticalCenter

                    buttonText: "光线"
                    buttonColor: "#80AAAAAA"
                    textColor: "white"
                    font.pixelSize: 14
                    iconSize: Qt.point(16, 16)
                    iconMargin: 6

                    onClicked:
                    {
                        probeExposureControlRow.visible = !probeExposureControlRow.visible
                    }
                }
            } // probeExposureRow

            Row
            {
                id: carPaintRow
                anchors.left: probeExposureRow.right
                anchors.bottom: parent.bottom
                width: 120
                height: 40
                spacing: 5

                Rectangle
                {
                    width: 30
                    height: 30
                    radius: height / 2
                    color: "#5D503F"
                    border.color: "lightgray"
                    border.width: 1
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: su7Model.carbodyColor = parent.color
                    }
                }
                
                Rectangle
                {
                    width: 30
                    height: 30
                    radius: height / 2
                    color: "#030303"
                    border.color: "lightgray"
                    border.width: 1
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: su7Model.carbodyColor = parent.color
                    }
                }
                
                Rectangle
                {
                    width: 30
                    height: 30
                    radius: height / 2
                    color: "#7C7C79"
                    border.color: "lightgray"
                    border.width: 1
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: su7Model.carbodyColor = parent.color
                    }
                }

                Rectangle
                {
                    width: 30
                    height: 30
                    //anchors.fill: parent
                    radius: height / 2
                    color: "#402341"
                    border.color: "lightgray"
                    border.width: 1
                    MouseArea
                    {
                        anchors.fill: parent
                        onClicked: su7Model.carbodyColor = parent.color
                    }
                }
            } // carPaintRow

            Row
            {
                id: leftWindRow
                anchors.left: probeExposureRow.right
                anchors.leftMargin: 5
                anchors.verticalCenter: parent.verticalCenter

                width: 60
                height: 50
                spacing: 5

                ControlSlider
                {
                    id: leftWindSlider
                    width: 196
                    height: 30
                    anchors.verticalCenter: parent.verticalCenter

                    enabled: true
                    visible: true
                    opacity: enabled ? 1 : 0.3
                    imageWidth: 28
                    imageHeight: 8
                    midelSourceOn: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/midelSourceOn.png"
                    midelSourceOff: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/midelSourceOff.png"
                    leftSourceOn: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/leftSourceOn.png"
                    leftSourceOff: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/leftSourceOff.png"
                    rightSourceOn: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rightSourceOn.png"
                    rightSourceOff: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rightSourceOff.png"
                    value: 3
                }

                Item
                {
                    Layout.fillWidth: true
                    height: 0
                }
            } // leftWindRow

            
            Row
            {
                id: leftTempRow
                width: 170
                height: 50
                anchors.left: leftWindRow.right
                anchors.leftMargin: 80
                anchors.verticalCenter: parent.verticalCenter

                Button
                {
                    width: 50
                    height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false

                    background: Image
                    {
                        width: parent.width * 0.7
                        height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/Arrow_Left.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    onClicked:
                    {
                        if(leftTemperature > 16)
                        {
                            leftTemperature -= 1
                        }
                    }
                }

                Label
                {
                    id: leftTemperatureLabel
                    width: 70
                    height: 50
                    text: leftTemperature + "℃"
                    font.pixelSize: 32
                    font.bold: true
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Button
                {
                    width: 50
                    height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false

                    background: Image
                    {
                        width: parent.width * 0.7
                        height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/Arrow_Right.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    onClicked: {
                        if(leftTemperature < 32)
                        {
                            leftTemperature += 1
                        }
                    }
                }
            } // leftTempRow

            Row
            {
                id: acPowerRow
                anchors.left: leftTempRow.right
                anchors.leftMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                width: 70
                height: 50
                spacing: 5

                Button
                {
                    width: 50
                    height: 50
                    opacity: acPower ? (down ? 0.7 : 1) : 0.3
                    hoverEnabled: false

                    background: Image
                    {
                        width: parent.width * 0.7
                        height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/switch.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    onClicked:
                    {
                        acPower = !acPower
                    }
                }

            } // air conditioner power row

            Row
            {
                id: rightTempRow
                width: 170
                height: 50
                anchors.left: acPowerRow.right
                anchors.leftMargin: 5
                anchors.verticalCenter: parent.verticalCenter

                Button
                {
                    width: 50
                    height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false

                    background: Image
                    {
                        width: parent.width * 0.7
                        height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/Arrow_Left.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    onClicked:
                    {
                        if(rightTemperature > 16)
                        {
                            rightTemperature -= 1
                        }
                    }
                }

                Label
                {
                    id: rightTemperatureLabel
                    width: 70
                    height: 50
                    text: rightTemperature + "℃"
                    font.pixelSize: 32
                    font.bold: true
                    color: "white"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                }

                Button
                {
                    width: 50
                    height: 50
                    opacity: down ? 0.3 : 1
                    hoverEnabled: false

                    background: Image
                    {
                        width: parent.width * 0.7
                        height: parent.height * 0.7
                        anchors.centerIn: parent
                        source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/Arrow_Right.png"
                        fillMode: Image.PreserveAspectFit
                    }

                    onClicked:
                    {
                        if(rightTemperature < 32)
                        {
                            rightTemperature += 1
                        }
                    }
                }
            } // right temperature row


            Row
            {
                id: rightWindRow
                anchors.left: rightTempRow.right
                anchors.leftMargin: 5
                anchors.verticalCenter: parent.verticalCenter
                width: 70
                height: 50
                spacing: 5

                ControlSlider
                {
                    id: rightWindSlider
                    width: 196
                    height: 30
                    anchors.verticalCenter: parent.verticalCenter

                    enabled: true
                    visible: true
                    opacity: enabled ? 1 : 0.3
                    imageWidth: 28
                    imageHeight: 8
                    midelSourceOn: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/midelSourceOn.png"
                    midelSourceOff: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/midelSourceOff.png"
                    leftSourceOn: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/leftSourceOn.png"
                    leftSourceOff: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/leftSourceOff.png"
                    rightSourceOn: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rightSourceOn.png"
                    rightSourceOff: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rightSourceOff.png"
                    value: 3
                }
            } // right wind row
        } // controlbarRect

        //Row
        //{
        //    id: infoRow
        //    anchors.left: parent.left
        //    anchors.leftMargin: 5
        //    anchors.top: parent.top
        //    visible: true
        //
        //    Label
        //    {
        //        id: infoLabel
        //        font.pixelSize: 16
        //        color: "white"
        //        text: "eulerRotation: " + su7Model.eulerRotation + "  " +
        //              "scale: " + su7Model.scale + "  " +
        //              "position: " + su7Model.position + "\n" +
        //              "sceneCamera: " + sceneCamera.eulerRotation + "  " +
        //              "sceneCamera.position: " + sceneCamera.position
        //              // "sceneCamera.position: " + sceneCamera.position + "  " +
        //              // "lightness: " + probeExposureSlider.value.toFixed(1)
        //    }
        //} // info Row

        Rectangle
        {
            id: su7ModelPositionRect
            width: 420
            height: 220
            z: su7Model.z + 10000
            color: "#23AAAAAA"
            anchors.left: parent.left
            anchors.leftMargin: 330
            anchors.bottom: controlBarRect.top
            anchors.bottomMargin: 0

            visible: false

            Image
            {
                width: 128
                height: 128
                anchors.centerIn: parent
                source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/position.png"
                fillMode: Image.PreserveAspectFit
            }
            
            MouseArea
            {
                id: positionMouseArea
                anchors.fill: parent
                drag.target: su7Model

                onPressed:
                {
                    wasdController.mouseEnabled = false
                    pressedPoint = Qt.point(mouseX, mouseY)
                    pressedL9ModelPoint = Qt.point(su7Model.x, su7Model.y)
                }

                onReleased: wasdController.mouseEnabled = true

                onPositionChanged:
                {
                    positionDeltaPoint.x = mouseX - pressedPoint.x
                    positionDeltaPoint.y = mouseY - pressedPoint.y
                }

                onWheel:
                {
                    var baseScale = 0.055
                    var angleDeltaY = (wheel.angleDelta.y / 10) / 1000
                    su7Model.scale.x += angleDeltaY
                    su7Model.scale.y += angleDeltaY
                    su7Model.scale.z += angleDeltaY
                }
            } // MouseArea
        } // L9 Model Position Rect

        Rectangle
        {
            id: su7ModelRotationRect
            width: 422
            height: 220
            z: su7Model.z + 10000
            color: "#23AAAAAA"
        
            anchors.left: parent.left
            anchors.leftMargin: 400
            anchors.bottom: controlBarRect.top
            anchors.bottomMargin: 0
            visible: false
        
            Image
            {
                width: 128
                height: 128
                anchors.centerIn: parent
                source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rotation.png"
                fillMode: Image.PreserveAspectFit
            }
        
            MouseArea
            {
                id: rotationMouseArea
                anchors.fill: parent
                drag.target: su7Model
        
                onPressed:
                {
                    wasdController.mouseEnabled = false
                    pressedPoint = Qt.point(mouseX, mouseY)
                    pressedAngle = su7Model.eulerRotation.y
                }
        
                onPositionChanged:
                {
                    rotationDeltaPoint.x = mouseX - pressedPoint.x
                    rotationDeltaPoint.y = mouseY - pressedPoint.y
        
                    // 要在这里手动调用，否则在点击过车身视角后，不能更新旋转角
                    su7Model.eulerRotation.y = su7Model.getRotationY()
                }
        
                onReleased:
                {
                    wasdController.mouseEnabled = true
                }
            } // rotationMouseArea
        } // su7ModelRotationRect

        Rectangle
        {
            id: leftAirCondRotationRect
            width: 422
            height: 220
            z: su7Model.z + 10000
            color: "#23AAAAAA"

            visible: acAdjusting

            //x: trsController.positionX
            //y: trsController.positionY
            x: 854 - 500 - 74
            y: 700 - 300 + 110

            Image
            {
                width: 128
                height: 128
                anchors.centerIn: parent
                source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rotation.png"
                fillMode: Image.PreserveAspectFit
            }

            function getAirCondRotation()
            {
                var result = leftAirCond.eulerRotation
                if((leftAirCondRotateYAngle + leftAirCondRotationDeltaPoint.x) < 250)
                {
                    result.y = 250
                }
                else if((leftAirCondRotateYAngle + leftAirCondRotationDeltaPoint.x) > 270)
                {
                    result.y = 270
                }
                else
                {
                    var rotationY = leftAirCondRotateYAngle + leftAirCondRotationDeltaPoint.x
                    result.y = rotationY
                }

                if((leftAirCondRotateXAngle - leftAirCondRotationDeltaPoint.y) < -10)
                {
                    result.x = -10
                }
                else if((leftAirCondRotateXAngle - leftAirCondRotationDeltaPoint.y) > 30)
                {
                    result.x = 30
                }
                else
                {
                    var rotationX = leftAirCondRotateXAngle - leftAirCondRotationDeltaPoint.y
                    result.x = rotationX
                }

                return result
            }

            MouseArea
            {
                id: leftAirCondRotationMouseArea
                anchors.fill: parent
                drag.target: leftAirCond

                onPressed:
                {
                    wasdController.mouseEnabled = false
                    pressedPoint = Qt.point(mouseX, mouseY)

                    leftAirCondRotateXAngle = leftAirCond.eulerRotation.x
                    leftAirCondRotateYAngle = leftAirCond.eulerRotation.y
                }

                onPositionChanged:
                {
                    leftAirCondRotationDeltaPoint.x = mouseX - pressedPoint.x
                    leftAirCondRotationDeltaPoint.y = mouseY - pressedPoint.y

                    leftAirCond.eulerRotation = leftAirCondRotationRect.getAirCondRotation()
                }

                onReleased:
                {
                    wasdController.mouseEnabled = true
                }
            } // rotationMouseArea
        } // leftAirCondRotationRect

        Rectangle
        {
            id: rightAirCondRotationRect
            width: 422
            height: 220
            z: su7Model.z + 10000
            color: "#23AAAAAA"
        
            visible: acAdjusting
        
            //x: trsController.positionX
            //y: trsController.positionY
            x: 1296 - 500 - 74
            y: 700 - 300 + 110
        
            Image
            {
                width: 128
                height: 128
                anchors.centerIn: parent
                source: "file:///G:/2024/project/qml/DonutCarMonitor/src/images/rotation.png"
                fillMode: Image.PreserveAspectFit
            }
        
            function getAirCondRotation()
            {
                var result = rightAirCond.eulerRotation
                if((rightAirCondRotateYAngle + rightAirCondRotationDeltaPoint.x) < 270)
                {
                    result.y = 270
                }
                else if((rightAirCondRotateYAngle + rightAirCondRotationDeltaPoint.x) > 290)
                {
                    result.y = 290
                }
                else
                {
                    var rotationY = rightAirCondRotateYAngle + rightAirCondRotationDeltaPoint.x
                    result.y = rotationY
                }
        
                if((rightAirCondRotateXAngle - rightAirCondRotationDeltaPoint.y) < -10)
                {
                    result.x = -10
                }
                else if((rightAirCondRotateXAngle - rightAirCondRotationDeltaPoint.y) > 30)
                {
                    result.x = 30
                }
                else
                {
                    var rotationX = rightAirCondRotateXAngle - rightAirCondRotationDeltaPoint.y
                    result.x = rotationX
                }
        
                return result
            }
        
            MouseArea
            {
                id: rightAirCondRotationMouseArea
                anchors.fill: parent
                drag.target: rightAirCond
        
                onPressed:
                {
                    wasdController.mouseEnabled = false
                    pressedPoint = Qt.point(mouseX, mouseY)
        
                    rightAirCondRotateXAngle = rightAirCond.eulerRotation.x
                    rightAirCondRotateYAngle = rightAirCond.eulerRotation.y
                }
        
                onPositionChanged:
                {
                    rightAirCondRotationDeltaPoint.x = mouseX - pressedPoint.x
                    rightAirCondRotationDeltaPoint.y = mouseY - pressedPoint.y

                    rightAirCond.eulerRotation = rightAirCondRotationRect.getAirCondRotation()
                }
        
                onReleased:
                {
                    wasdController.mouseEnabled = true
                }
            } // rotationMouseArea
        } // rightAirCondRotationRect

        TRSController
        {
            id: trsController
            visible: false
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.topMargin: 100

            positionMin: -1000
            positionMax: 1000

            Component.onCompleted:
            {
                trsController.setTRSValue(Qt.vector3d(854, 700, 6), Qt.vector3d(0, 270, 0), Qt.vector3d(0.5, 0.5, 0.5))
            }
        }

        TRSController
        {
            id: trsController2
            visible: false
            anchors.right: parent.right
            anchors.rightMargin: 250
            anchors.top: parent.top
            anchors.topMargin: 100

            positionMin: -1000
            positionMax: 3000

            Component.onCompleted:
            {
                trsController2.setTRSValue(Qt.vector3d(1296, 700, -46), Qt.vector3d(0, 270, 0), Qt.vector3d(0.5, 0.5, 0.5))
                carPaintRow.visible = true

                acPowerRow.visible = false

                leftTempRow.visible = false
                rightTempRow.visible = false

                leftWindRow.visible = false
                rightWindRow.visible = false
            }
        }

        Item
        {
            id: __materialLibrary__
        }
    } // rect
}