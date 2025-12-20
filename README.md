## Upload Firmware

```
$ make flash-ota
```

## Links

ESPHome CYD Thermostat example
  https://gist.github.com/GuySie/3721b7851c6a2de644453f0570dab87c

Extended IO/GPIO pins
  https://randomnerdtutorials.com/esp32-cheap-yellow-display-cyd-pinout-esp32-2432s028r/#extended-io
  https://github.com/witnessmenow/ESP32-Cheap-Yellow-Display/blob/main/PINS.md#broken-out-pins

## HW damage?

06.12.25
  - The ESP32’s original SDA pin (GPIO27) is internally damaged and can no longer drive the I²C data line high.
    -> No temperature sensor... :(

## Home Assistant Config

Export thermostat attributes as sensor values.

```yaml
- template:
  - sensor:
      - name: "Thermostat Current Temperature"
        state: "{{ state_attr('climate.thermostat', 'current_temperature') }}"
        unit_of_measurement: "°C"
      - name: "Thermostat Target Temperature"
        state: "{{ state_attr('climate.thermostat', 'temperature') }}"
        unit_of_measurement: "°C"
      - name: "Thermostat Preset Mode"
        state: "{{ state_attr('climate.thermostat', 'preset_mode') }}"
      - name: "Thermostat HVAC Action"
        state: "{{ state_attr('climate.thermostat', 'hvac_action') }}"
```
