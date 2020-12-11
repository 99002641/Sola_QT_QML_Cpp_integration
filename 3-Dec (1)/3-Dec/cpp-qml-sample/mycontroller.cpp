#include "mycontroller.h"

MyController::MyController(QObject *parent) : QObject(parent)
{
    timer = new QTimer(this);
    timer->setInterval(2000);
    connect(timer, SIGNAL(timeout()), this, SLOT(onTimedOut()));
    timer->start();
}
void MyController::onTimedOut() {
    int speed = qrand()%100;
    int volume = qrand()%100;
    emit speedChanged(QVariant(speed));
    emit volumeChanged(QVariant(volume));
}
