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

    Loader
    {
        id: pageLoader
        anchors.fill: parent
    }

    AirCondFanSlider
    {
        id: acFan
        width: 723
        height: 71
        x: 323 + 108
        y: 617
    }

    AirCondControlBar
    {
        width: 1305
        height: 123
        anchors.left: parent.left
        anchors.leftMargin: 55
        anchors.top: parent.top
        anchors.topMargin: 707

        onFan: acFan.opened ? acFan.close() : acFan.open()
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
