#include "interface.h"

Q_GLOBAL_STATIC(Interface, interface)

Interface::Interface(QObject* parent)
    : QObject{parent}
{
    page_index_ = -1;
}

Interface* Interface::getInstance()
{
    return interface;
}

int Interface::getPageIndex() const
{
    return page_index_;
}

void Interface::setPageIndex(int index)
{
    if (previous_page_index_ != page_index_)
    {
        previous_page_index_ = page_index_;
    }

    if (page_index_ == index)
        return;
    page_index_ = index;
    emit pageIndexChanged();
}

int Interface::getHomePageIndex()
{
    return s_page_home_;
}

int Interface::getAppPageIndex()
{
    return s_page_app_;
}

int Interface::getControlCenterPageIndex()
{
    return s_page_control_center_;
}

int Interface::getAirCondPageIndex()
{
    return s_page_air_cond_;
}

int Interface::getSettingPageIndex()
{
    return s_page_setting_;
}
