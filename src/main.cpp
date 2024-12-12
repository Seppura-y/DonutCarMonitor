#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlComponent>
#include <QQmlContext>
#include <QQuickWindow>

#include "interface.h"
#include "log.h"
#include "donut_qml_av_manager.h"
#include "donut_scene.h"

#include "playlist_model.h"

int main(int argc, char **argv)
{
    Donut::Log::init();
    qputenv("QSG_RHI_BACKEND", QByteArray("opengl"));

    QGuiApplication app(argc, argv);

    qmlRegisterSingletonType<Donut::DonutQMLAVManager>("Donut.DonutCarMonitor", 1, 0, "DonutQMLAVManager", Donut::DonutQMLAVManager::createSingleton);
    //qmlRegisterSingletonType<Donut::DonutScene>("Donut.DonutCarMonitor", 1, 0, "DonutScene", Donut::DonutScene::createSingleton);
    qmlRegisterType<Donut::DonutScene>("Donut.DonutCarMonitor", 1, 0, "DonutScene");

    qmlRegisterSingletonType<PlaylistModel>("Donut.DonutCarMonitor", 1, 0, "PlaylistModel", PlaylistModel::createSingleton);

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
