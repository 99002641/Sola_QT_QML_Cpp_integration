#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "myhealth.h"

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
    MyHealth health;
    QQmlContext *context = engine.rootContext();
    context->setContextProperty("myhealth",&health);

    health.setPulse(72);
    health.setSpo2(96);

    return app.exec();
}
