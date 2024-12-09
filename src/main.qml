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

    Loader
    {
        id: pageLoader
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
        switch(pageIndex)
        {
            case ui.pageHome:           pageLoader.source = "hmi/Home.qml"; break;
            case ui.pageAirCond:        pageLoader.source = "hmi/Aircond.qml"; break;
            //case ui.pageControlCenter:  pageLoader.source = "hmi/ControlCenter.qml"; break;
            case ui.pageSetting:        pageLoader.source = "hmi/Setting.qml"; break;
            case ui.pageApp:            pageLoader.source = "hmi/App.qml"; break;
            case ui.pageCarModel:       pageLoader.source = "hmi/CarModel.qml"; break;
        }
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

    Component.onCompleted:
    {
        ui.pageIndex = ui.pageHome
    }
}
