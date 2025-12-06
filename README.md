ESPHome CYD Thermostat example
  https://gist.github.com/GuySie/3721b7851c6a2de644453f0570dab87c

Extended IO/GPIO pins
  https://randomnerdtutorials.com/esp32-cheap-yellow-display-cyd-pinout-esp32-2432s028r/#extended-io
  https://github.com/witnessmenow/ESP32-Cheap-Yellow-Display/blob/main/PINS.md#broken-out-pins

06.12.25
  - The ESP32’s original SDA pin (GPIO27) is internally damaged and can no longer drive the I²C data line high.
    -> No temperature sensor... :(
