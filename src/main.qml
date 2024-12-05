import QtQuick

import Donut.DonutCarMonitor 1.0


import "./hmi"
import "./components"

Window
{
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
            case ui.pageControlCenter:  pageLoader.source = "hmi/ControlCenter.qml"; break;
            case ui.pageSetting:        pageLoader.source = "hmi/Setting.qml"; break;
            case ui.pageApp:            pageLoader.source = "hmi/App.qml"; break;
        }
    }

    Component.onCompleted:
    {
        ui.pageIndex = ui.pageHome
    }
}
