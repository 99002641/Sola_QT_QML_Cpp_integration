#ifndef MYCONTROLLER_H
#define MYCONTROLLER_H

#include <QObject>
#include <QTimer>
#include <QVariant>

class MyController : public QObject
{
    Q_OBJECT
public:
    explicit MyController(QObject *parent = nullptr);

signals:
    void speedChanged(QVariant);
    void volumeChanged(QVariant);
public slots:
    void onTimedOut();
private:
    QTimer *timer;
};

#endif // MYCONTROLLER_H
