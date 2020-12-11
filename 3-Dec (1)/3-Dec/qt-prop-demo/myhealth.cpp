#include "myhealth.h"

MyHealth::MyHealth(QObject *parent) : QObject(parent)
{

}
qreal MyHealth::pulse() const
{
    return m_pulse;
}
void MyHealth::setPulse(qreal val)
{
    m_pulse = val;
    emit pulseChanged(val);
}
int MyHealth::spo2() const
{
   return m_spo2;
}
void MyHealth::setSpo2(int val)
{
    m_spo2 = val;
    emit spo2Changed(val);
}
