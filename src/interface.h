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

};

#endif