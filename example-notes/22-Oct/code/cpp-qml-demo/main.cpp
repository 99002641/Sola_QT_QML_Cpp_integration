#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickWindow>
#include "mycontroller.h"
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    QObject *topLevel = engine.rootObjects().value(0);
    QQuickWindow *dashboard = qobject_cast<QQuickWindow *>(topLevel);
    MyController controller;
    QObject::connect(&controller, SIGNAL(speedChanged(QVariant)),
                     dashboard, SLOT(onSpeedChanged(QVariant)));
    QObject::connect(&controller, SIGNAL(volumeChanged(QVariant)),
                     dashboard, SLOT(onVolumeChanged(QVariant)));
    return app.exec();
}
