import QtQuick
import Donut.DonutCarMonitor 1.0

import "./hmi"

Window
{
    width: 1520
    height: 856
    visible: true
    title: qsTr("DonutCarMonitor")

    property int pageIndex: ui.page_index_
    property int previousPageIndex: 0

    Loader
    {
        id: pageLoader
        anchors.fill: parent
    }

    onPageIndexChanged:
    {
        console.log("onPageIndexChanged:" + pageIndex)
        switch(pageIndex)
        {
            case ui.s_page_home_:           pageLoader.source = "hmi/Home.qml"; break;
            case ui.s_page_air_cond_:       pageLoader.source = "hmi/Aircond.qml"; break;
            case ui.s_page_control_center_: pageLoader.source = "hmi/ControlCenter.qml"; break;
            case ui.s_page_setting_:        pageLoader.source = "hmi/Setting.qml"; break;
            case ui.s_page_app_:            pageLoader.source = "hmi/App.qml"; break;
        }
    }

    MouseArea
    {
        anchors.fill: parent
    
        onClicked:
        {
            pageIndex++
            if(pageIndex > 4)
            {
                pageIndex = 0
            }
            ui.page_index_ = pageIndex
        }
    }

    Component.onCompleted:
    {
        ui.page_index_ = ui.s_page_home_
    }
}
