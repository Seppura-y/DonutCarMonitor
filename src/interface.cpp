#include "interface.h"

Q_GLOBAL_STATIC(Interface, interface)

Interface::Interface(QObject* parent)
    : QObject{parent}
{
    page_index_ = -1;
    ac_left_temperature_ = 26;
    ac_right_temperature_ = 26;
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

int Interface::getACFanLevel()
{
    return ac_fan_level_;
}

void Interface::setACFanLevel(int val)
{
    if (ac_fan_level_ == val)
    {
        return;
    }

    ac_fan_level_ = val;
    emit acFanLevelChanged();
}

int Interface::getACLeftTemperature()
{
    return ac_left_temperature_;
}

void Interface::setACLeftTemperature(int val)
{
    if (ac_left_temperature_ == val)
    {
        return;
    }
    ac_left_temperature_ = val;
    emit acLeftTemperatureChanged();
}

int Interface::getACRightTemperature()
{
    return ac_right_temperature_;
}

void Interface::setACRightTemperature(int val)
{
    if (ac_right_temperature_ == val)
    {
        return;
    }
    ac_right_temperature_ = val;
    emit acRightTemperatureChanged();
}

int Interface::getSettingPageIndex()
{
    return s_page_setting_;
}
