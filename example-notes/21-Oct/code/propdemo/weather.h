#ifndef WEATHER_H
#define WEATHER_H

#include <QObject>

class Weather : public QObject
{
    Q_OBJECT
    Q_PROPERTY(float temperature READ temperature
               WRITE setTemperature NOTIFY temperatureChanged)
    Q_PROPERTY(float humidity READ humidity
               WRITE setHumidity NOTIFY humidityChanged)

public:
    explicit Weather(QObject *parent = nullptr);
    float temperature() const;      //READ
    void setTemperature(float val); //WRITE
    float humidity() const;
    void setHumidity(float val);
signals:
    void temperatureChanged(float fval);
    void humidityChanged(float hval);
private:
    float m_temperature;
    float m_humidity;

};

#endif // WEATHER_H
