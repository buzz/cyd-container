CONFIG = cyd_container.yaml
MODULES = $(wildcard modules/*.yaml)
SERIAL_PORT = /dev/ttyUSB0
OTA_HOST = cyd-container
FIRMWARE = .esphome/build/cyd-container/.pioenvs/cyd-container/firmware.ota.bin

$(FIRMWARE): $(CONFIG) $(MODULES)
	esphome compile $(CONFIG)

.PHONY: flash-usb
flash-usb: $(FIRMWARE)
	esphome upload --device $(SERIAL_PORT) $(CONFIG)

.PHONY: flash-ota
flash-ota: $(FIRMWARE)
	esphome upload --device $(OTA_HOST) $(CONFIG)

.PHONY: logs-usb
logs-usb:
	esphome logs --device $(SERIAL_PORT) $(CONFIG)
