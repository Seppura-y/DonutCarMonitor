#include "interface.h"
#include <QDateTime>

Q_GLOBAL_STATIC(Interface, interface)

Interface::Interface(QObject* parent)
    : QObject{parent}
{
    page_index_ = -1;
    previous_page_index_ = -1;
    ac_left_temperature_ = 23;
    ac_right_temperature_ = 23;

    control_center_bluetooth_status_ = true;
    control_center_position_status_ = true;
    control_center_wlan_status_ = true;

    update_timer_ = new QTimer();
    update_timer_->start(100);
    QObject::connect(update_timer_, &QTimer::timeout, this, &Interface::onUpdateTimer);
}

Interface* Interface::getInstance()
{
    return interface;
}

void Interface::onUpdateTimer()
{
    QDateTime current_date_time = QDateTime::currentDateTime();

    QTime current_time = current_date_time.time();
    QDate current_date = current_date_time.date();
    QString time = current_time.toString("HH:mm");
    QString date = current_date.toString("M月d日");

    int week = current_date.dayOfWeek();
    QString week_string;
    switch (week)
    {
        case Qt::Sunday:    week_string = " 星期日"; break;
        case Qt::Monday:    week_string = " 星期一"; break;
        case Qt::Tuesday:   week_string = " 星期二"; break;
        case Qt::Wednesday: week_string = " 星期三"; break;
        case Qt::Thursday:  week_string = " 星期四"; break;
        case Qt::Friday:    week_string = " 星期五"; break;
        case Qt::Saturday:  week_string = " 星期六"; break;
    }
    date.append(week_string);
    emit updateDateTime(date, time);
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

int Interface::getPreviousPageIndex() const
{
    return previous_page_index_;
}

void Interface::setPreviousPageIndex(int index)
{
    if (previous_page_index_ == index)
    {
        return;
    }
    previous_page_index_ = index;
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

int Interface::getCarModelPageIndex()
{
    return s_page_car_model_;
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

bool Interface::getControlCenterPositionStatus()
{
    return control_center_position_status_;
}

void Interface::setControlCenterPositionStatus(bool status)
{
    if (control_center_position_status_ == status)
    {
        return;
    }
    control_center_position_status_ = status;
    emit controlCenterPositionStatusChanged();
}

bool Interface::getControlCenterWLANStatus()
{
    return control_center_wlan_status_;
}

void Interface::setControlCenterWLANStatus(bool status)
{
    if (control_center_wlan_status_ == status)
    {
        return;
    }
    control_center_wlan_status_ = status;
    emit controlCenterWLANStatusChanged();
}

bool Interface::getControlCenterBluetoothStatus()
{
    return control_center_bluetooth_status_;
}

void Interface::setControlCenterBluetoothStatus(bool status)
{
    if (control_center_bluetooth_status_ == status)
    {
        return;
    }
    control_center_bluetooth_status_ = status;
    emit controlCenterBluetoothStatusChanged();
}

int Interface::getSettingsFunctionValue()
{
    return settings_function_value_;
}

void Interface::setSettingsFunctionValue(int val)
{
    if (settings_function_value_ == val)
    {
        return;
    }
    settings_function_value_ = val;
    emit settingsFunctionValueChanged();
}

int Interface::getSettingPageIndex()
{
    return s_page_setting_;
}
