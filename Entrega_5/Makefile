#
TARGET = main
TARGET2 = blink_led
TARGET3 = read_switch

ALT_DEVICE_FAMILY ?= soc_cv_av
SOCEDS_ROOT ?= $(SOCEDS_DEST_ROOT)
HWLIBS_ROOT = $(SOCEDS_ROOT)/ip/altera/hps/altera_hps/hwlib
CROSS_COMPILE = arm-linux-gnueabihf-
CFLAGS = -g -Wall   -D$(ALT_DEVICE_FAMILY) -I$(HWLIBS_ROOT)/include/$(ALT_DEVICE_FAMILY)   -I$(HWLIBS_ROOT)/include/
LDFLAGS =  -g -Wall 
CC = $(CROSS_COMPILE)gcc
ARCH= arm

build: $(TARGET)
build: $(TARGET2)
build: $(TARGET3)


$(TARGET): main.o 
	$(CC) $(LDFLAGS)   $^ -o $@ 
	
$(TARGET2): blink_led.o 
	$(CC) $(LDFLAGS)   $^ -o $@ 

$(TARGET3): read_switch.o 
	$(CC) $(LDFLAGS)   $^ -o $@ 

%.o : %.c
	$(CC) $(CFLAGS) -c $< -o $@

	

.PHONY: clean
clean:
	rm -f $(TARGET) *.a *.o *~
	rm -f $(TARGET2) *.a *.o *~
	rm -f $(TARGET3) *.a *.o *~

deploy:
	scp $(TARGET) root@169.254.0.13: /work
	scp $(TARGET2) root@169.254.0.13: /wprk
	scp $(TARGET3) root@169.254.0.13: /work
	scp app.py root@169.254.0.13: /work
	scp form.html root@169.254.0.13: /work/templates

run:
	ssh root@169.254.0.13 python3 -m flask run -h 169.254.0.13


