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

	static int getHomePageIndex();
	static int getAppPageIndex();
	static int getSettingPageIndex();
	static int getControlCenterPageIndex();
	static int getAirCondPageIndex();
signals:
	void pageIndexChanged();
public:

private:
	int page_index_;
	int previous_page_index_;

	const static int s_page_home_ = 0;
	const static int s_page_app_ = 1;
	const static int s_page_setting_ = 2;
	const static int s_page_control_center_ = 3;
	const static int s_page_air_cond_ = 4;
private:
	Q_PROPERTY(int page_index_ READ getPageIndex WRITE setPageIndex NOTIFY pageIndexChanged FINAL)

	Q_PROPERTY(int s_page_home_				READ getHomePageIndex			CONSTANT FINAL)
	Q_PROPERTY(int s_page_app_				READ getAppPageIndex			CONSTANT FINAL)
	Q_PROPERTY(int s_page_setting_			READ getSettingPageIndex		CONSTANT FINAL)
	Q_PROPERTY(int s_page_control_center_	READ getControlCenterPageIndex	CONSTANT FINAL)
	Q_PROPERTY(int s_page_air_cond_			READ getAirCondPageIndex		CONSTANT FINAL)
};

#endif