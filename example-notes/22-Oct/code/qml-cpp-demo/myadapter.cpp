#include "myadapter.h"
#include<QDebug>

MyAdapter::MyAdapter(QObject *parent) : QObject(parent)
{

}
void MyAdapter::onTemperatureChanged(QVariant var)
{
    qDebug() << "C++,temperature:" << var.toInt();
}
void MyAdapter::onVolumeChanged(QVariant var)
{
    qDebug() << "C++,volume:" << var.toInt();

}
