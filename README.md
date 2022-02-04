# Airmon

## Roadmap

- Buzzer Alarm
- (D) Room temperature
- (D) Room Humidity
- Carbon Monoxide and other smokes MQ9
- Gas detection MQ2
- PIR
- Earthquake
- Status online logging on REST API
- 7Segment dispay 
- Photocell Light detection

## ESP8266 Firmware

### IO Mapping

- Buzzer        1 DO
- DHT22         1 DI
- MQ9           1 DI
- MQ22          1 DI
- PIR           1 DI
- Eaarthquake   1 DI
- 7Segment      3 Do
- Photocell     1 DI

### Setup

Follow [this](https://github.com/pylover/esp8266-env) instruction to 
prepare the development environment.


```bash
source path/to/pylover/esp8266-env/activate
cd path/to/airmon/firmware
make ...  # TODO: instruction to make and upload firmware
```
