
include $(USERAPPS_ROOT)/mkdefs

#KERNEL_HEADERS=-I$(ROOTDIR)/linux-2.4.x/include
#KERNEL_HEADERS=-I$(USERAPPS_ROOT)/linux/include

CFLAGS += -Wall -g $(KERNEL_HEADERS)
#ifeq ($(USE_RT256X),y)
#CFLAGS += -Wall -g -I$(USERAPPS_ROOT)/../MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/lib/include $(KERNEL_HEADERS)
#endif
#ifeq ($(USE_RTL8196B),y)
#CFLAGS += -Wall -g -I$(USERAPPS_ROOT)/../RTL3.4/rtl819x_3.4.11b/rtl819x/toolchain/rsdk-4.6.4-5281-EB-3.10-0.9.33-m32ub-20141111/include $(KERNEL_HEADERS)
#endif

prefix=/usr/local
exec_prefix=${prefix}
includedir=${prefix}/include
libdir=${exec_prefix}/lib

libbridge_SOURCES= \
	libbridge_devif.c \
	libbridge_if.c \
	libbridge_init.c \
	libbridge_misc.c 

libbridge_OBJECTS=$(libbridge_SOURCES:.c=.o)

all:	libbridge.a

install: libbridge.a
	mkdir -p $(DESTDIR)$(includedir)
	install -m 644 libbridge.h $(DESTDIR)$(includedir)
	mkdir -p $(DESTDIR)$(libdir)
	install -m 644 libbridge.a $(DESTDIR)$(libdir)


clean:
	rm -f *.o libbridge.a

libbridge.a:	$(libbridge_OBJECTS)
	$(AR) rcs $@ $(libbridge_OBJECTS)
	$(RANLIB) $@

%.o: %.c libbridge.h libbridge_private.h
	$(CC) $(CFLAGS) $(INCLUDE) -c $<

libbridge_compat.o:	libbridge_compat.c if_index.c
	$(CC) $(CFLAGS) -c libbridge_compat.c

