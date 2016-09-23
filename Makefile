subdir-ccflags-y := -DCONFIG_BATTERY_BQ27XXX_PLATFORM -DCONFIG_BATTERY_BQ27XXX_I2C
obj-m += bq27xxx_battery.o

all:
	make -C /usr/src/linux M=$(PWD) modules

clean:
	make -C /usr/src/linux M=$(PWD) clean
