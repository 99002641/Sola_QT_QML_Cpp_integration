#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include"weather.h"

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

    Weather w1;
    QQmlContext *context=engine.rootContext();
    context->setContextProperty("weather",&w1);

    w1.setTemperature(25);
    w1.setHumidity(32);
    //above set operations can be on event basis

    return app.exec();
}
