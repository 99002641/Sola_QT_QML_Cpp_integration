#ifndef MYCONTROLLER_H
#define MYCONTROLLER_H

#include <QObject>
#include <QVariant>

class MyController : public QObject
{
    Q_OBJECT
public:
    explicit MyController(QObject *parent = nullptr);
public slots:
    void onSliderChanged(QVariant);
    void onSpinnerChanged(QVariant);

signals:

};

#endif // MYCONTROLLER_H
