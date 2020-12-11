#ifndef MYHEALTH_H
#define MYHEALTH_H

#include <QObject>

class MyHealth : public QObject
{
    Q_OBJECT
    Q_PROPERTY(qreal pulse READ pulse WRITE setPulse NOTIFY pulseChanged)
    Q_PROPERTY(int spo2 READ spo2 WRITE setSpo2 NOTIFY spo2Changed)
public:
    explicit MyHealth(QObject *parent = nullptr);
    qreal pulse() const;
    void setPulse(qreal);
    int spo2() const;
    void setSpo2(int);
signals:
    void pulseChanged(qreal);
    void spo2Changed(int);

private:
    qreal m_pulse;
    int m_spo2;

};

#endif // MYHEALTH_H
