#include "weather.h"

Weather::Weather(QObject *parent) : QObject(parent)
{

}
float Weather::temperature() const {
    return m_temperature;
}
void Weather::setTemperature(float val) {
    m_temperature = val;
    emit temperatureChanged(val);
}
float Weather::humidity() const {
    return m_humidity;
}
void Weather::setHumidity(float val) {
    m_humidity=val;
    emit humidityChanged(val);
}
