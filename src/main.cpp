#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlContext>
#include <QQuickWindow>

#include "interface.h"
#include "log.h"


int main(int argc, char **argv)
{
    Donut::Log::init();
    qputenv("QSG_RHI_BACKEND", QByteArray("opengl"));

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url("qrc:/DonutCarMonitor/main.qml");
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);

    app.setWindowIcon(QIcon(":images/images/Home/vehicle.png"));
    engine.rootContext()->setContextProperty("ui", INTERFACE);
    engine.load(url);

    return app.exec();
}
