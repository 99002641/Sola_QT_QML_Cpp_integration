#include "mycontroller.h"
#include <QDebug>

MyController::MyController(QObject *parent) : QObject(parent)
{

}
void MyController::onSliderChanged(QVariant var)
{
    qDebug() << "cpp slot -- slider:" << var.toInt() << "\n";
}
void MyController::onSpinnerChanged(QVariant var)
{
    qDebug() << "cpp slot -- spinner:" << var.toInt() << "\n";
}
