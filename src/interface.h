#ifndef INTERFACE_H
#define INTERFACE_H

#include <QObject>

#define INTERFACE (Interface::getInstance())
class Interface : public QObject
{
	Q_OBJECT
public:
	explicit Interface(QObject* parent = nullptr);
	static Interface* getInstance();



	int getPageIndex() const; 
	void setPageIndex(int index);

	int getPreviousPageIndex() const;
	void setPreviousPageIndex(int index);

	static int getHomePageIndex();
	static int getAppPageIndex();
	static int getSettingPageIndex();
	static int getControlCenterPageIndex();
	static int getAirCondPageIndex();

	int getACFanLevel();
	void setACFanLevel(int val);

	int getACLeftTemperature();
	void setACLeftTemperature(int val);

	int getACRightTemperature();
	void setACRightTemperature(int val);
signals:
	void pageIndexChanged();
	void previousPageIndexChanged();
	void acFanLevelChanged();
	void acLeftTemperatureChanged();
	void acRightTemperatureChanged();
public:

private:
	const static int s_page_home_ = 0;
	const static int s_page_app_ = 1;
	const static int s_page_setting_ = 2;
	const static int s_page_control_center_ = 3;
	const static int s_page_air_cond_ = 4;

	int page_index_;
	int previous_page_index_;

	int ac_fan_level_;
	int ac_left_temperature_;
	int ac_right_temperature_;
private:
	Q_PROPERTY(int pageIndex				READ getPageIndex				WRITE setPageIndex			NOTIFY pageIndexChanged FINAL)
	Q_PROPERTY(int previousPageIndex		READ getPreviousPageIndex		WRITE setPreviousPageIndex	NOTIFY previousPageIndexChanged FINAL)

	Q_PROPERTY(int pageHome					READ getHomePageIndex			CONSTANT FINAL)
	Q_PROPERTY(int pageApp					READ getAppPageIndex			CONSTANT FINAL)
	Q_PROPERTY(int pageSetting				READ getSettingPageIndex		CONSTANT FINAL)
	Q_PROPERTY(int pageControlCenter		READ getControlCenterPageIndex	CONSTANT FINAL)
	Q_PROPERTY(int pageAirCond				READ getAirCondPageIndex		CONSTANT FINAL)

	Q_PROPERTY(int acFanLevel				READ getACFanLevel				WRITE setACFanLevel			NOTIFY acFanLevelChanged FINAL)
	Q_PROPERTY(int acLeftTemperature		READ getACLeftTemperature		WRITE setACLeftTemperature	NOTIFY acLeftTemperatureChanged FINAL)
	Q_PROPERTY(int acRightTemperature		READ getACRightTemperature		WRITE setACRightTemperature NOTIFY acRightTemperatureChanged FINAL)
};

#endif