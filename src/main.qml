import QtQuick

import Donut.DonutCarMonitor 1.0


import "./hmi"
import "./components"

Window
{
    id: root
    width: 1520
    height: 856
    visible: true
    title: qsTr("DonutCarMonitor")

    property int pageIndex: ui.pageIndex
    property int previousPageIndex: 0

    Image
    {
        id: backgroundImage
        anchors.fill: parent
        source: "qrc:/images/images/Home/base.png"
        fillMode: Image.PreserveAspectCrop
    }

    DonutScene
    {
        id: glScene
        width: 1414
        height: 856
        x: 108
        y: 0

        //anchors.fill: parent
        visible: true
        SequentialAnimation on delta_t_
        {
            NumberAnimation { to: 1; duration: 2500; easing.type: Easing.InQuad }
            NumberAnimation { to: 0; duration: 2500; easing.type: Easing.OutQuad }
            loops: Animation.Infinite
            running: true
        }

        Component.onCompleted:
        {
            //glScene.sigItemInitialized()
            ////qmlAVManager.initManager()
            //qmlAVManager.onVideoViewInitialized(glScene)
        }
    }

    Loader
    {
        id: pageLoader

        function setPage(index) {
            console.log("setPage:" + index)
            glScene.visible = false
            if (playerPageLoader.item)
            {
                console.log("Hiding PlayerMain.qml")
                playerPageLoader.active = false  // 使 playerPageLoader 非活动状态
            }
            //playerPageLoader.active = false
            switch(index) {
                case ui.pageHome:           pageLoader.source = "hmi/Home.qml"; break;
                case ui.pageAirCond:        pageLoader.source = "hmi/Aircond.qml"; break;
                case ui.pageSetting:        pageLoader.source = "hmi/Setting.qml"; break;
                case ui.pageApp:            pageLoader.source = "hmi/App.qml"; break;
                case ui.pageCarModel:       pageLoader.source = "hmi/CarModel.qml"; break;
                case ui.pagePlayer:
                {
                    if (playerPageLoader.item) {
                        console.log("Reusing PlayerMain.qml instance")
                        playerPageLoader.active = true
                        glScene.visible = true
                    } else {
                        console.log("Loading PlayerMain.qml")
                        playerPageLoader.source = "playerUI/PlayerMain.qml"
                        playerPageLoader.active = true
                        glScene.visible = true
                    }
                    break;
                }
            }
        } // function setPage

    }
    Loader {
        id: playerPageLoader
        active: false
        onStatusChanged: {
            if (status === Loader.Ready) {
                console.log("PlayerMain.qml loaded successfully");
            } else if (status === Loader.Error) {
                console.error("Error loading PlayerMain.qml:", errorString());
            }
        }
    }


    Navigation
    {
        id: navigation
        width: 108
        height: parent.height
        anchors.left: parent.left
        anchors.top: parent.top
    }

    onPageIndexChanged:
    {
        console.log("onPageIndexChanged:" + pageIndex)
        pageLoader.setPage(pageIndex)
        //switch(pageIndex)
        //{
        //    case ui.pageHome:           pageLoader.source = "hmi/Home.qml"; break;
        //    case ui.pageAirCond:        pageLoader.source = "hmi/Aircond.qml"; break;
        //    //case ui.pageControlCenter:  pageLoader.source = "hmi/ControlCenter.qml"; break;
        //    case ui.pageSetting:        pageLoader.source = "hmi/Setting.qml"; break;
        //    case ui.pageApp:            pageLoader.source = "hmi/App.qml"; break;
        //    case ui.pageCarModel:       pageLoader.source = "hmi/CarModel.qml"; break;
        //    case ui.pagePlayer:         pageLoader.source = "playerUI/PlayerMain.qml"; break;
        //}
    }

    ControlCenter
    {
        id: controlCenterPage
        width: 1414
        height: 856
        x: 108
        y: -height
    }

    Rectangle
    {
        width: 1292
        height: 60

        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        color: "transparent"

        SwipeArea
        {
            id: controlCenterSwipeArea
            anchors.fill: parent

            onSwipeDown:
            {
                swipeOpacityAni.start()
                swipeMovementAni.start()
            }

            NumberAnimation
            {
                id: swipeOpacityAni
                target: controlCenterPage
                properties: "opacity"
                from: 0
                to: 1
                duration: 700
                easing.type: Easing.OutQuad
            }

            NumberAnimation
            {
                id: swipeMovementAni
                target: controlCenterPage
                properties: "y"
                from: -controlCenterPage.height
                to: 0
                duration: 250
                easing.type: Easing.OutQuad
            }
        }
    }
    
    Component.onCompleted: {
        var qmlAVManagerInstance = DonutQMLAVManager.getInstance()
        if (qmlAVManagerInstance) {
            console.log("DonutQMLAVManager instance initialized")

            // 将 qmlAVManager 实例传递到 PlayerMain.qml 中
            if (playerPageLoader.item && playerPageLoader.item.qmlAVManager !== undefined) {
                playerPageLoader.item.qmlAVManager = qmlAVManagerInstance
                playerPageLoader.item.glScene = glScene
                console.log("DonutQMLAVManager instance set to PlayerMain")
            }
        }

        glScene.sigItemInitialized()
        qmlAVManagerInstance.initManager()
        qmlAVManagerInstance.onVideoViewInitialized(glScene)

        ui.pageIndex = ui.pageHome
    }


    Connections
    {
        //target: DonutQMLAVManager.getInstance()
        //onSigUpdateTotalDurationSec: (duration)=>
        //{
        //    controlBar.duration = duration
        //}
        //
        //onSigUpdateTimePosSec: (value)=>
        //{
        //    controlBar.updateTimePosSec(value)
        //}
    }
}
