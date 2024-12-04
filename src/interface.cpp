#include "interface.h"

Q_GLOBAL_STATIC(Interface, interface)

Interface::Interface(QObject* parent)
    : QObject{parent}
{

}

Interface* Interface::getInstance()
{
    return interface;
}
