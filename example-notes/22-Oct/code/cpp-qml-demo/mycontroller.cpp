#include "mycontroller.h"
#include<QDebug>

MyController::MyController(QObject *parent) : QObject(parent)
{
    timer = new QTimer(this);
    timer->setInterval(1000);
    connect(timer, SIGNAL(timeout()),
            this, SLOT(onTimedOut()));
    timer->start();
}
void MyController::onTimedOut()
{
    qDebug() << "timed out";
    int speed = qrand()%100;
    int volume = qrand()%100;
    emit speedChanged(QVariant(speed));
    emit volumeChanged(QVariant(volume));
}
