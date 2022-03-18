.PHONY: menuconfig
menuconfig:
	idf.py menuconfig

.PHONY: build
build:
	idf.py build

.PHONY: flash
flash:
	idf.py flash

.PHONY: clean
clean:
	idf.py clean

PORT = /dev/ttyUSB0 
BAUDRATE = 115200

screen:
	screen $(PORT) $(BAUDRATE)
