#ifndef MYADAPTER_H
#define MYADAPTER_H

#include <QObject>
#include <QVariant>

class MyAdapter : public QObject
{
    Q_OBJECT
public:
    explicit MyAdapter(QObject *parent = nullptr);
public slots:
    void onTemperatureChanged(QVariant);
    void onVolumeChanged(QVariant);
signals:

};

#endif // MYADAPTER_H
