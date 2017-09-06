cmd_drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o := /opt/buildroot-gcc483_arm/usr/bin/arm-linux-gcc -Wp,-MD,drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/.hs20.o.d  -nostdinc -isystem /opt/buildroot-gcc483_arm/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.3/include -I/home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include -Iarch/arm/include/generated  -Iinclude -I/home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi -Iarch/arm/include/generated/uapi -I/home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi -Iinclude/generated/uapi -include /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/linux/kconfig.h -D__KERNEL__ -mlittle-endian -Iarch/arm/mach-mt7623/include -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs -fno-strict-aliasing -fno-common -Werror-implicit-function-declaration -Wno-format-security -fno-delete-null-pointer-checks -O2 -fno-dwarf2-cfi-asm -fno-omit-frame-pointer -mapcs -mno-sched-prolog -fstack-protector -mabi=aapcs-linux -mno-thumb-interwork -marm -D__LINUX_ARM_ARCH__=7 -march=armv7-a -mfloat-abi=softfp -mfpu=vfp -Uarm -Wframe-larger-than=1024 -Wno-unused-but-set-variable -fno-omit-frame-pointer -fno-optimize-sibling-calls -Wdeclaration-after-statement -Wno-pointer-sign -fno-strict-overflow -fconserve-stack -DCC_HAVE_ASM_GOTO -D MTK_WCN_REMOVE_KERNEL_MODULE -DLINUX -DMT6628 -DCFG_SUPPORT_WAPI=0 -DCFG_SUPPORT_XLOG=1 -DCFG_SUPPORT_AEE=0 -DCFG_SUPPORT_HOTSPOT_2_0=0 -DCFG_HS20_DEBUG=0 -DCFG_ENABLE_GTK_FRAME_FILTER=0 -D_HIF_SDIO=1 -DDBG=0 -Idrivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os -Idrivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include -Idrivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/hif/ahb/include -Idrivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include -Idrivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic -Idrivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt -I/home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/mach-mt7623/fpga7623_emmc/dct    -D"KBUILD_STR(s)=\#s" -D"KBUILD_BASENAME=KBUILD_STR(hs20)"  -D"KBUILD_MODNAME=KBUILD_STR(wlan_mt)" -c -o drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.c

source_drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o := drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.c

deps_drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o := \
    $(wildcard include/config/ipv6.h) \
    $(wildcard include/config/dgaf/disabled/mask.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/precomp.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_os.h \
    $(wildcard include/config/android.h) \
    $(wildcard include/config/nl80211/testmode.h) \
  include/generated/uapi/linux/version.h \
  include/linux/kernel.h \
    $(wildcard include/config/lbdaf.h) \
    $(wildcard include/config/preempt/voluntary.h) \
    $(wildcard include/config/debug/atomic/sleep.h) \
    $(wildcard include/config/prove/locking.h) \
    $(wildcard include/config/ring/buffer.h) \
    $(wildcard include/config/tracing.h) \
    $(wildcard include/config/ftrace/mcount/record.h) \
  /opt/buildroot-gcc483_arm/usr/lib/gcc/arm-buildroot-linux-uclibcgnueabi/4.8.3/include/stdarg.h \
  include/linux/linkage.h \
  include/linux/compiler.h \
    $(wildcard include/config/sparse/rcu/pointer.h) \
    $(wildcard include/config/trace/branch/profiling.h) \
    $(wildcard include/config/profile/all/branches.h) \
    $(wildcard include/config/enable/must/check.h) \
    $(wildcard include/config/enable/warn/deprecated.h) \
    $(wildcard include/config/kprobes.h) \
  include/linux/compiler-gcc.h \
    $(wildcard include/config/arch/supports/optimized/inlining.h) \
    $(wildcard include/config/optimize/inlining.h) \
  include/linux/compiler-gcc4.h \
    $(wildcard include/config/arch/use/builtin/bswap.h) \
  include/linux/stringify.h \
  include/linux/export.h \
    $(wildcard include/config/have/underscore/symbol/prefix.h) \
    $(wildcard include/config/modules.h) \
    $(wildcard include/config/modversions.h) \
    $(wildcard include/config/unused/symbols.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/linkage.h \
  include/linux/stddef.h \
  include/uapi/linux/stddef.h \
  include/linux/types.h \
    $(wildcard include/config/uid16.h) \
    $(wildcard include/config/arch/dma/addr/t/64bit.h) \
    $(wildcard include/config/phys/addr/t/64bit.h) \
    $(wildcard include/config/64bit.h) \
  include/uapi/linux/types.h \
  arch/arm/include/generated/asm/types.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/types.h \
  include/asm-generic/int-ll64.h \
  include/uapi/asm-generic/int-ll64.h \
  arch/arm/include/generated/asm/bitsperlong.h \
  include/asm-generic/bitsperlong.h \
  include/uapi/asm-generic/bitsperlong.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/posix_types.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/posix_types.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/posix_types.h \
  include/linux/bitops.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/bitops.h \
    $(wildcard include/config/smp.h) \
  include/linux/irqflags.h \
    $(wildcard include/config/trace/irqflags.h) \
    $(wildcard include/config/preempt/monitor.h) \
    $(wildcard include/config/irqsoff/tracer.h) \
    $(wildcard include/config/preempt/tracer.h) \
    $(wildcard include/config/trace/irqflags/support.h) \
  include/linux/typecheck.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/irqflags.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/ptrace.h \
    $(wildcard include/config/arm/thumb.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/ptrace.h \
    $(wildcard include/config/cpu/endian/be8.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/hwcap.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/hwcap.h \
  include/asm-generic/bitops/non-atomic.h \
  include/asm-generic/bitops/fls64.h \
  include/asm-generic/bitops/sched.h \
  include/asm-generic/bitops/hweight.h \
  include/asm-generic/bitops/arch_hweight.h \
  include/asm-generic/bitops/const_hweight.h \
  include/asm-generic/bitops/lock.h \
  include/asm-generic/bitops/le.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/byteorder.h \
  include/linux/byteorder/little_endian.h \
  include/uapi/linux/byteorder/little_endian.h \
  include/linux/swab.h \
  include/uapi/linux/swab.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/swab.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/swab.h \
  include/linux/byteorder/generic.h \
  include/asm-generic/bitops/ext2-atomic-setbit.h \
  include/linux/log2.h \
    $(wildcard include/config/arch/has/ilog2/u32.h) \
    $(wildcard include/config/arch/has/ilog2/u64.h) \
  include/linux/printk.h \
    $(wildcard include/config/early/printk.h) \
    $(wildcard include/config/printk.h) \
    $(wildcard include/config/dynamic/debug.h) \
  include/linux/init.h \
    $(wildcard include/config/broken/rodata.h) \
  include/linux/kern_levels.h \
  include/linux/dynamic_debug.h \
  include/linux/string.h \
    $(wildcard include/config/binary/printf.h) \
  include/uapi/linux/string.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/string.h \
  include/linux/errno.h \
  include/uapi/linux/errno.h \
  arch/arm/include/generated/asm/errno.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/errno.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/errno-base.h \
  include/uapi/linux/kernel.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/sysinfo.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/div64.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/compiler.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/bug.h \
    $(wildcard include/config/bug.h) \
    $(wildcard include/config/thumb2/kernel.h) \
    $(wildcard include/config/debug/bugverbose.h) \
    $(wildcard include/config/arm/lpae.h) \
  include/asm-generic/bug.h \
    $(wildcard include/config/generic/bug.h) \
    $(wildcard include/config/generic/bug/relative/pointers.h) \
  include/linux/timer.h \
    $(wildcard include/config/timer/stats.h) \
    $(wildcard include/config/lockdep.h) \
    $(wildcard include/config/debug/objects/timers.h) \
  include/linux/list.h \
    $(wildcard include/config/debug/list.h) \
  include/linux/poison.h \
    $(wildcard include/config/illegal/pointer/value.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/const.h \
  include/linux/ktime.h \
    $(wildcard include/config/ktime/scalar.h) \
  include/linux/time.h \
    $(wildcard include/config/arch/uses/gettimeoffset.h) \
  include/linux/cache.h \
    $(wildcard include/config/arch/has/cache/line/size.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/cache.h \
    $(wildcard include/config/arm/l1/cache/shift.h) \
    $(wildcard include/config/aeabi.h) \
  include/linux/seqlock.h \
  include/linux/spinlock.h \
    $(wildcard include/config/debug/spinlock.h) \
    $(wildcard include/config/generic/lockbreak.h) \
    $(wildcard include/config/preempt.h) \
    $(wildcard include/config/debug/lock/alloc.h) \
  include/linux/preempt.h \
    $(wildcard include/config/debug/preempt.h) \
    $(wildcard include/config/context/tracking.h) \
    $(wildcard include/config/preempt/count.h) \
    $(wildcard include/config/preempt/notifiers.h) \
  include/linux/thread_info.h \
    $(wildcard include/config/compat.h) \
    $(wildcard include/config/debug/stack/usage.h) \
  include/linux/bug.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/thread_info.h \
    $(wildcard include/config/crunch.h) \
    $(wildcard include/config/arm/thumbee.h) \
    $(wildcard include/config/mt/rt/sched.h) \
    $(wildcard include/config/mt/rt/sched/log.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/fpstate.h \
    $(wildcard include/config/vfpv3.h) \
    $(wildcard include/config/iwmmxt.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/domain.h \
    $(wildcard include/config/io/36.h) \
    $(wildcard include/config/cpu/use/domains.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/barrier.h \
    $(wildcard include/config/cpu/32v6k.h) \
    $(wildcard include/config/cpu/xsc3.h) \
    $(wildcard include/config/cpu/fa526.h) \
    $(wildcard include/config/arch/has/barriers.h) \
    $(wildcard include/config/arm/dma/mem/bufferable.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/outercache.h \
    $(wildcard include/config/outer/cache/sync.h) \
    $(wildcard include/config/outer/cache.h) \
  include/linux/bottom_half.h \
  include/linux/spinlock_types.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/spinlock_types.h \
  include/linux/lockdep.h \
    $(wildcard include/config/lock/stat.h) \
    $(wildcard include/config/prove/rcu.h) \
  include/linux/rwlock_types.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/spinlock.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/processor.h \
    $(wildcard include/config/have/hw/breakpoint.h) \
    $(wildcard include/config/mmu.h) \
    $(wildcard include/config/arm/errata/754327.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/hw_breakpoint.h \
  include/linux/rwlock.h \
  include/linux/spinlock_api_smp.h \
    $(wildcard include/config/inline/spin/lock.h) \
    $(wildcard include/config/inline/spin/lock/bh.h) \
    $(wildcard include/config/inline/spin/lock/irq.h) \
    $(wildcard include/config/inline/spin/lock/irqsave.h) \
    $(wildcard include/config/inline/spin/trylock.h) \
    $(wildcard include/config/inline/spin/trylock/bh.h) \
    $(wildcard include/config/uninline/spin/unlock.h) \
    $(wildcard include/config/inline/spin/unlock/bh.h) \
    $(wildcard include/config/inline/spin/unlock/irq.h) \
    $(wildcard include/config/inline/spin/unlock/irqrestore.h) \
  include/linux/rwlock_api_smp.h \
    $(wildcard include/config/inline/read/lock.h) \
    $(wildcard include/config/inline/write/lock.h) \
    $(wildcard include/config/inline/read/lock/bh.h) \
    $(wildcard include/config/inline/write/lock/bh.h) \
    $(wildcard include/config/inline/read/lock/irq.h) \
    $(wildcard include/config/inline/write/lock/irq.h) \
    $(wildcard include/config/inline/read/lock/irqsave.h) \
    $(wildcard include/config/inline/write/lock/irqsave.h) \
    $(wildcard include/config/inline/read/trylock.h) \
    $(wildcard include/config/inline/write/trylock.h) \
    $(wildcard include/config/inline/read/unlock.h) \
    $(wildcard include/config/inline/write/unlock.h) \
    $(wildcard include/config/inline/read/unlock/bh.h) \
    $(wildcard include/config/inline/write/unlock/bh.h) \
    $(wildcard include/config/inline/read/unlock/irq.h) \
    $(wildcard include/config/inline/write/unlock/irq.h) \
    $(wildcard include/config/inline/read/unlock/irqrestore.h) \
    $(wildcard include/config/inline/write/unlock/irqrestore.h) \
  include/linux/atomic.h \
    $(wildcard include/config/arch/has/atomic/or.h) \
    $(wildcard include/config/generic/atomic64.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/atomic.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/cmpxchg.h \
    $(wildcard include/config/cpu/sa1100.h) \
    $(wildcard include/config/cpu/sa110.h) \
    $(wildcard include/config/cpu/v6.h) \
  include/asm-generic/cmpxchg-local.h \
  include/asm-generic/atomic-long.h \
  include/linux/math64.h \
  include/uapi/linux/time.h \
  include/linux/jiffies.h \
    $(wildcard include/config/perfstats/pertask/perfreq.h) \
  include/linux/timex.h \
  include/uapi/linux/timex.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/param.h \
  arch/arm/include/generated/asm/param.h \
  include/asm-generic/param.h \
    $(wildcard include/config/hz.h) \
  include/uapi/asm-generic/param.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/timex.h \
    $(wildcard include/config/arch/multiplatform.h) \
  arch/arm/mach-mt7623/include/mach/timex.h \
  include/linux/debugobjects.h \
    $(wildcard include/config/debug/objects.h) \
    $(wildcard include/config/debug/objects/free.h) \
  include/linux/delay.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/delay.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/memory.h \
    $(wildcard include/config/need/mach/memory/h.h) \
    $(wildcard include/config/page/offset.h) \
    $(wildcard include/config/highmem.h) \
    $(wildcard include/config/dram/size.h) \
    $(wildcard include/config/dram/base.h) \
    $(wildcard include/config/have/tcm.h) \
    $(wildcard include/config/arm/patch/phys/virt.h) \
    $(wildcard include/config/phys/offset.h) \
    $(wildcard include/config/virt/to/bus.h) \
  include/linux/sizes.h \
  arch/arm/mach-mt7623/include/mach/memory.h \
  include/asm-generic/memory_model.h \
    $(wildcard include/config/flatmem.h) \
    $(wildcard include/config/discontigmem.h) \
    $(wildcard include/config/sparsemem/vmemmap.h) \
    $(wildcard include/config/sparsemem.h) \
  include/linux/irq.h \
    $(wildcard include/config/generic/hardirqs.h) \
    $(wildcard include/config/generic/pending/irq.h) \
    $(wildcard include/config/hardirqs/sw/resend.h) \
  include/linux/smp.h \
    $(wildcard include/config/use/generic/smp/helpers.h) \
  include/linux/cpumask.h \
    $(wildcard include/config/cpumask/offstack.h) \
    $(wildcard include/config/hotplug/cpu.h) \
    $(wildcard include/config/debug/per/cpu/maps.h) \
    $(wildcard include/config/disable/obsolete/cpumask/functions.h) \
  include/linux/threads.h \
    $(wildcard include/config/nr/cpus.h) \
    $(wildcard include/config/base/small.h) \
  include/linux/bitmap.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/smp.h \
  include/linux/gfp.h \
    $(wildcard include/config/numa.h) \
    $(wildcard include/config/zone/dma.h) \
    $(wildcard include/config/zone/dma32.h) \
    $(wildcard include/config/pm/sleep.h) \
    $(wildcard include/config/cma.h) \
  include/linux/mmzone.h \
    $(wildcard include/config/force/max/zoneorder.h) \
    $(wildcard include/config/mtkpasr.h) \
    $(wildcard include/config/memory/isolation.h) \
    $(wildcard include/config/memcg.h) \
    $(wildcard include/config/compaction.h) \
    $(wildcard include/config/memory/hotplug.h) \
    $(wildcard include/config/have/memblock/node/map.h) \
    $(wildcard include/config/flat/node/mem/map.h) \
    $(wildcard include/config/no/bootmem.h) \
    $(wildcard include/config/numa/balancing.h) \
    $(wildcard include/config/have/memory/present.h) \
    $(wildcard include/config/have/memoryless/nodes.h) \
    $(wildcard include/config/need/node/memmap/size.h) \
    $(wildcard include/config/need/multiple/nodes.h) \
    $(wildcard include/config/have/arch/early/pfn/to/nid.h) \
    $(wildcard include/config/sparsemem/extreme.h) \
    $(wildcard include/config/have/arch/pfn/valid.h) \
    $(wildcard include/config/nodes/span/other/nodes.h) \
    $(wildcard include/config/holes/in/zone.h) \
    $(wildcard include/config/arch/has/holes/memorymodel.h) \
  include/linux/wait.h \
  arch/arm/include/generated/asm/current.h \
  include/asm-generic/current.h \
  include/uapi/linux/wait.h \
  include/linux/numa.h \
    $(wildcard include/config/nodes/shift.h) \
  include/linux/nodemask.h \
    $(wildcard include/config/movable/node.h) \
  include/linux/pageblock-flags.h \
    $(wildcard include/config/hugetlb/page.h) \
    $(wildcard include/config/hugetlb/page/size/variable.h) \
  include/linux/page-flags-layout.h \
  include/generated/bounds.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/page.h \
    $(wildcard include/config/cpu/copy/v4wt.h) \
    $(wildcard include/config/cpu/copy/v4wb.h) \
    $(wildcard include/config/cpu/copy/feroceon.h) \
    $(wildcard include/config/cpu/copy/fa.h) \
    $(wildcard include/config/cpu/xscale.h) \
    $(wildcard include/config/cpu/copy/v6.h) \
    $(wildcard include/config/kuser/helpers.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/glue.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/pgtable-2level-types.h \
  include/asm-generic/getorder.h \
  include/linux/memory_hotplug.h \
    $(wildcard include/config/memory/hotremove.h) \
    $(wildcard include/config/have/arch/nodedata/extension.h) \
    $(wildcard include/config/have/bootmem/info/node.h) \
  include/linux/notifier.h \
  include/linux/mutex.h \
    $(wildcard include/config/debug/mutexes.h) \
    $(wildcard include/config/mutex/spin/on/owner.h) \
    $(wildcard include/config/mt/debug/mutexes.h) \
    $(wildcard include/config/have/arch/mutex/cpu/relax.h) \
  include/linux/rwsem.h \
    $(wildcard include/config/rwsem/generic/spinlock.h) \
  include/linux/rwsem-spinlock.h \
  include/linux/srcu.h \
  include/linux/rcupdate.h \
    $(wildcard include/config/rcu/torture/test.h) \
    $(wildcard include/config/tree/rcu.h) \
    $(wildcard include/config/tree/preempt/rcu.h) \
    $(wildcard include/config/rcu/trace.h) \
    $(wildcard include/config/preempt/rcu.h) \
    $(wildcard include/config/rcu/user/qs.h) \
    $(wildcard include/config/tiny/rcu.h) \
    $(wildcard include/config/tiny/preempt/rcu.h) \
    $(wildcard include/config/debug/objects/rcu/head.h) \
    $(wildcard include/config/rcu/nocb/cpu.h) \
  include/linux/completion.h \
  include/linux/rcutree.h \
  include/linux/workqueue.h \
    $(wildcard include/config/debug/objects/work.h) \
    $(wildcard include/config/freezer.h) \
    $(wildcard include/config/sysfs.h) \
  include/linux/topology.h \
    $(wildcard include/config/sched/smt.h) \
    $(wildcard include/config/sched/mc.h) \
    $(wildcard include/config/mt/load/balance/enhancement.h) \
    $(wildcard include/config/mtk/sched/cmp/tgs.h) \
    $(wildcard include/config/mtk/sched/cmp/pack/small/task.h) \
    $(wildcard include/config/sched/book.h) \
    $(wildcard include/config/use/percpu/numa/node/id.h) \
  include/linux/percpu.h \
    $(wildcard include/config/need/per/cpu/embed/first/chunk.h) \
    $(wildcard include/config/need/per/cpu/page/first/chunk.h) \
    $(wildcard include/config/have/setup/per/cpu/area.h) \
  include/linux/pfn.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/percpu.h \
  include/asm-generic/percpu.h \
  include/linux/percpu-defs.h \
    $(wildcard include/config/debug/force/weak/per/cpu.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/topology.h \
    $(wildcard include/config/arm/cpu/topology.h) \
    $(wildcard include/config/disable/cpu/sched/domain/balance.h) \
    $(wildcard include/config/hmp/pack/small/task.h) \
  include/asm-generic/topology.h \
  include/linux/mmdebug.h \
    $(wildcard include/config/debug/vm.h) \
    $(wildcard include/config/debug/virtual.h) \
  include/linux/irqreturn.h \
  include/linux/irqnr.h \
  include/uapi/linux/irqnr.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/irq.h \
    $(wildcard include/config/sparse/irq.h) \
    $(wildcard include/config/multi/irq/handler.h) \
  arch/arm/mach-mt7623/include/mach/irqs.h \
    $(wildcard include/config/fiq/glue.h) \
  arch/arm/mach-mt7623/include/mach/mt_irq.h \
    $(wildcard include/config/mt8127/fpga.h) \
  arch/arm/mach-mt7623/include/mach/x_define_irq.h \
  arch/arm/include/generated/asm/irq_regs.h \
  include/asm-generic/irq_regs.h \
  include/linux/irqdesc.h \
    $(wildcard include/config/irq/preflow/fasteoi.h) \
    $(wildcard include/config/proc/fs.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/hw_irq.h \
  include/linux/netdevice.h \
    $(wildcard include/config/dcb.h) \
    $(wildcard include/config/wlan.h) \
    $(wildcard include/config/ax25.h) \
    $(wildcard include/config/mac80211/mesh.h) \
    $(wildcard include/config/net/ipip.h) \
    $(wildcard include/config/net/ipgre.h) \
    $(wildcard include/config/ipv6/sit.h) \
    $(wildcard include/config/ipv6/tunnel.h) \
    $(wildcard include/config/rps.h) \
    $(wildcard include/config/netpoll.h) \
    $(wildcard include/config/xps.h) \
    $(wildcard include/config/bql.h) \
    $(wildcard include/config/rfs/accel.h) \
    $(wildcard include/config/fcoe.h) \
    $(wildcard include/config/net/poll/controller.h) \
    $(wildcard include/config/libfcoe.h) \
    $(wildcard include/config/wireless/ext.h) \
    $(wildcard include/config/vlan/8021q.h) \
    $(wildcard include/config/net/dsa.h) \
    $(wildcard include/config/net/ns.h) \
    $(wildcard include/config/netprio/cgroup.h) \
    $(wildcard include/config/net/dsa/tag/dsa.h) \
    $(wildcard include/config/net/dsa/tag/trailer.h) \
    $(wildcard include/config/netpoll/trap.h) \
  include/linux/pm_qos.h \
    $(wildcard include/config/pm.h) \
    $(wildcard include/config/pm/runtime.h) \
  include/linux/plist.h \
    $(wildcard include/config/debug/pi/list.h) \
  include/linux/miscdevice.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/major.h \
  include/linux/device.h \
    $(wildcard include/config/debug/devres.h) \
    $(wildcard include/config/acpi.h) \
    $(wildcard include/config/pinctrl.h) \
    $(wildcard include/config/devtmpfs.h) \
    $(wildcard include/config/sysfs/deprecated.h) \
  include/linux/ioport.h \
  include/linux/kobject.h \
  include/linux/sysfs.h \
  include/linux/kobject_ns.h \
  include/linux/kref.h \
  include/linux/klist.h \
  include/linux/pinctrl/devinfo.h \
  include/linux/pm.h \
    $(wildcard include/config/vt/console/sleep.h) \
    $(wildcard include/config/pm/clk.h) \
    $(wildcard include/config/pm/generic/domains.h) \
  include/linux/ratelimit.h \
  include/linux/uidgid.h \
    $(wildcard include/config/uidgid/strict/type/checks.h) \
    $(wildcard include/config/user/ns.h) \
  include/linux/highuid.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/device.h \
    $(wildcard include/config/dmabounce.h) \
    $(wildcard include/config/iommu/api.h) \
    $(wildcard include/config/arm/dma/use/iommu.h) \
    $(wildcard include/config/arch/omap.h) \
  include/linux/pm_wakeup.h \
  include/linux/rculist.h \
  include/linux/dmaengine.h \
    $(wildcard include/config/async/tx/enable/channel/switch.h) \
    $(wildcard include/config/rapidio/dma/engine.h) \
    $(wildcard include/config/dma/engine.h) \
    $(wildcard include/config/net/dma.h) \
    $(wildcard include/config/async/tx/dma.h) \
    $(wildcard include/config/splice/net/support.h) \
  include/linux/uio.h \
  include/uapi/linux/uio.h \
  include/linux/scatterlist.h \
    $(wildcard include/config/debug/sg.h) \
  include/linux/mm.h \
    $(wildcard include/config/sysctl.h) \
    $(wildcard include/config/x86.h) \
    $(wildcard include/config/ppc.h) \
    $(wildcard include/config/parisc.h) \
    $(wildcard include/config/metag.h) \
    $(wildcard include/config/ia64.h) \
    $(wildcard include/config/stack/growsup.h) \
    $(wildcard include/config/transparent/hugepage.h) \
    $(wildcard include/config/ksm.h) \
    $(wildcard include/config/debug/vm/rb.h) \
    $(wildcard include/config/arch/uses/numa/prot/none.h) \
    $(wildcard include/config/debug/pagealloc.h) \
    $(wildcard include/config/hibernation.h) \
    $(wildcard include/config/hugetlbfs.h) \
  include/linux/rbtree.h \
  include/linux/debug_locks.h \
    $(wildcard include/config/debug/locking/api/selftests.h) \
  include/linux/mm_types.h \
    $(wildcard include/config/split/ptlock/cpus.h) \
    $(wildcard include/config/have/cmpxchg/double.h) \
    $(wildcard include/config/have/aligned/struct/page.h) \
    $(wildcard include/config/want/page/debug/flags.h) \
    $(wildcard include/config/kmemcheck.h) \
    $(wildcard include/config/aio.h) \
    $(wildcard include/config/mm/owner.h) \
    $(wildcard include/config/mmu/notifier.h) \
  include/linux/auxvec.h \
  include/uapi/linux/auxvec.h \
  arch/arm/include/generated/asm/auxvec.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/auxvec.h \
  include/linux/page-debug-flags.h \
    $(wildcard include/config/page/poisoning.h) \
    $(wildcard include/config/page/guard.h) \
    $(wildcard include/config/page/debug/something/else.h) \
  include/linux/uprobes.h \
    $(wildcard include/config/arch/supports/uprobes.h) \
    $(wildcard include/config/uprobes.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/mmu.h \
    $(wildcard include/config/cpu/has/asid.h) \
  include/linux/range.h \
  include/linux/bit_spinlock.h \
  include/linux/shrinker.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/pgtable.h \
    $(wildcard include/config/highpte.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/proc-fns.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/glue-proc.h \
    $(wildcard include/config/cpu/arm7tdmi.h) \
    $(wildcard include/config/cpu/arm720t.h) \
    $(wildcard include/config/cpu/arm740t.h) \
    $(wildcard include/config/cpu/arm9tdmi.h) \
    $(wildcard include/config/cpu/arm920t.h) \
    $(wildcard include/config/cpu/arm922t.h) \
    $(wildcard include/config/cpu/arm925t.h) \
    $(wildcard include/config/cpu/arm926t.h) \
    $(wildcard include/config/cpu/arm940t.h) \
    $(wildcard include/config/cpu/arm946e.h) \
    $(wildcard include/config/cpu/arm1020.h) \
    $(wildcard include/config/cpu/arm1020e.h) \
    $(wildcard include/config/cpu/arm1022.h) \
    $(wildcard include/config/cpu/arm1026.h) \
    $(wildcard include/config/cpu/mohawk.h) \
    $(wildcard include/config/cpu/feroceon.h) \
    $(wildcard include/config/cpu/v6k.h) \
    $(wildcard include/config/cpu/v7.h) \
    $(wildcard include/config/cpu/pj4b.h) \
  include/asm-generic/pgtable-nopud.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/pgtable-hwdef.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/pgtable-2level-hwdef.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/pgtable-2level.h \
  include/asm-generic/pgtable.h \
  include/linux/page-flags.h \
    $(wildcard include/config/pageflags/extended.h) \
    $(wildcard include/config/arch/uses/pg/uncached.h) \
    $(wildcard include/config/memory/failure.h) \
    $(wildcard include/config/ksm/check/page.h) \
    $(wildcard include/config/swap.h) \
  include/linux/huge_mm.h \
  include/linux/vmstat.h \
    $(wildcard include/config/vm/event/counters.h) \
  include/linux/vm_event_item.h \
    $(wildcard include/config/migration.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/scatterlist.h \
    $(wildcard include/config/arm/has/sg/chain.h) \
  include/asm-generic/scatterlist.h \
    $(wildcard include/config/need/sg/dma/length.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/io.h \
    $(wildcard include/config/need/mach/io/h.h) \
    $(wildcard include/config/pci.h) \
    $(wildcard include/config/pcmcia/soc/common.h) \
    $(wildcard include/config/isa.h) \
    $(wildcard include/config/pccard.h) \
  include/asm-generic/pci_iomap.h \
    $(wildcard include/config/no/generic/pci/ioport/map.h) \
    $(wildcard include/config/generic/pci/iomap.h) \
  arch/arm/mach-mt7623/include/mach/io.h \
  include/linux/dynamic_queue_limits.h \
  include/linux/ethtool.h \
  include/linux/compat.h \
    $(wildcard include/config/compat/old/sigaction.h) \
    $(wildcard include/config/odd/rt/sigaction.h) \
  include/uapi/linux/ethtool.h \
  include/linux/if_ether.h \
  include/linux/skbuff.h \
    $(wildcard include/config/imq.h) \
    $(wildcard include/config/nf/conntrack.h) \
    $(wildcard include/config/bridge/netfilter.h) \
    $(wildcard include/config/nf/defrag/ipv4.h) \
    $(wildcard include/config/nf/defrag/ipv6.h) \
    $(wildcard include/config/xfrm.h) \
    $(wildcard include/config/net/sched.h) \
    $(wildcard include/config/net/cls/act.h) \
    $(wildcard include/config/ipv6/ndisc/nodetype.h) \
    $(wildcard include/config/network/secmark.h) \
    $(wildcard include/config/pppopptp.h) \
    $(wildcard include/config/pppol2tp.h) \
    $(wildcard include/config/network/phy/timestamping.h) \
    $(wildcard include/config/netfilter/xt/target/trace.h) \
  include/linux/kmemcheck.h \
  include/linux/net.h \
  include/linux/random.h \
    $(wildcard include/config/arch/random.h) \
  include/uapi/linux/random.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/ioctl.h \
  arch/arm/include/generated/asm/ioctl.h \
  include/asm-generic/ioctl.h \
  include/uapi/asm-generic/ioctl.h \
  include/linux/fcntl.h \
  include/uapi/linux/fcntl.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/fcntl.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/fcntl.h \
  include/uapi/linux/net.h \
  include/linux/socket.h \
  arch/arm/include/generated/asm/socket.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/socket.h \
  arch/arm/include/generated/asm/sockios.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/sockios.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/sockios.h \
  include/uapi/linux/socket.h \
  include/linux/textsearch.h \
  include/linux/err.h \
  include/linux/slab.h \
    $(wildcard include/config/slab/debug.h) \
    $(wildcard include/config/failslab.h) \
    $(wildcard include/config/slob.h) \
    $(wildcard include/config/slab.h) \
    $(wildcard include/config/slub.h) \
    $(wildcard include/config/debug/slab.h) \
  include/linux/slub_def.h \
    $(wildcard include/config/slub/stats.h) \
    $(wildcard include/config/memcg/kmem.h) \
    $(wildcard include/config/slub/debug.h) \
  include/linux/kmemleak.h \
    $(wildcard include/config/debug/kmemleak.h) \
  include/net/checksum.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/uaccess.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/unified.h \
    $(wildcard include/config/arm/asm/unified.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/checksum.h \
  include/linux/in6.h \
  include/uapi/linux/in6.h \
  include/linux/hrtimer.h \
    $(wildcard include/config/high/res/timers.h) \
    $(wildcard include/config/timerfd.h) \
  include/linux/timerqueue.h \
  include/linux/dma-mapping.h \
    $(wildcard include/config/has/dma.h) \
    $(wildcard include/config/arch/has/dma/set/coherent/mask.h) \
    $(wildcard include/config/have/dma/attrs.h) \
    $(wildcard include/config/need/dma/map/state.h) \
  include/linux/dma-attrs.h \
  include/linux/dma-direction.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/dma-mapping.h \
  include/linux/dma-debug.h \
    $(wildcard include/config/dma/api/debug.h) \
  include/asm-generic/dma-coherent.h \
    $(wildcard include/config/have/generic/dma/coherent.h) \
  include/asm-generic/dma-mapping-common.h \
  include/linux/netdev_features.h \
  include/net/flow_keys.h \
  include/uapi/linux/if_ether.h \
  include/net/net_namespace.h \
    $(wildcard include/config/ip/sctp.h) \
    $(wildcard include/config/ip/dccp.h) \
    $(wildcard include/config/netfilter.h) \
    $(wildcard include/config/wext/core.h) \
  include/linux/sysctl.h \
  include/uapi/linux/sysctl.h \
    $(wildcard include/config/ip/conntrack/limit/control.h) \
    $(wildcard include/config/ip/conntrack/limit/per/ip.h) \
    $(wildcard include/config/forward/speed/up/patch.h) \
    $(wildcard include/config/passthrough/all/chain.h) \
  include/net/netns/core.h \
  include/net/netns/mib.h \
    $(wildcard include/config/xfrm/statistics.h) \
  include/net/snmp.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/snmp.h \
  include/linux/u64_stats_sync.h \
  include/net/netns/unix.h \
  include/net/netns/packet.h \
  include/net/netns/ipv4.h \
    $(wildcard include/config/ip/multiple/tables.h) \
    $(wildcard include/config/ip/route/classid.h) \
    $(wildcard include/config/security.h) \
    $(wildcard include/config/ip/mroute.h) \
    $(wildcard include/config/ip/mroute/multiple/tables.h) \
  include/net/inet_frag.h \
  include/linux/percpu_counter.h \
  include/net/netns/ipv6.h \
    $(wildcard include/config/ipv6/multiple/tables.h) \
    $(wildcard include/config/ipv6/mroute.h) \
    $(wildcard include/config/ipv6/mroute/multiple/tables.h) \
  include/net/dst_ops.h \
  include/net/netns/sctp.h \
  include/net/netns/dccp.h \
  include/net/netns/netfilter.h \
  include/linux/proc_fs.h \
  include/linux/fs.h \
    $(wildcard include/config/fs/posix/acl.h) \
    $(wildcard include/config/quota.h) \
    $(wildcard include/config/fsnotify.h) \
    $(wildcard include/config/ima.h) \
    $(wildcard include/config/epoll.h) \
    $(wildcard include/config/debug/writecount.h) \
    $(wildcard include/config/file/locking.h) \
    $(wildcard include/config/auditsyscall.h) \
    $(wildcard include/config/block.h) \
    $(wildcard include/config/fs/xip.h) \
  include/linux/kdev_t.h \
  include/uapi/linux/kdev_t.h \
  include/linux/dcache.h \
  include/linux/rculist_bl.h \
  include/linux/list_bl.h \
  include/linux/path.h \
  include/linux/stat.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/stat.h \
  include/uapi/linux/stat.h \
  include/linux/radix-tree.h \
  include/linux/pid.h \
  include/linux/capability.h \
  include/uapi/linux/capability.h \
  include/linux/semaphore.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/fiemap.h \
  include/linux/migrate_mode.h \
  include/linux/percpu-rwsem.h \
  include/linux/blk_types.h \
    $(wildcard include/config/blk/cgroup.h) \
    $(wildcard include/config/blk/dev/integrity.h) \
  include/uapi/linux/fs.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/limits.h \
  include/linux/quota.h \
    $(wildcard include/config/quota/netlink/interface.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/dqblk_xfs.h \
  include/linux/dqblk_v1.h \
  include/linux/dqblk_v2.h \
  include/linux/dqblk_qtree.h \
  include/linux/projid.h \
  include/uapi/linux/quota.h \
  include/linux/nfs_fs_i.h \
  include/linux/netfilter.h \
    $(wildcard include/config/jump/label.h) \
    $(wildcard include/config/nf/nat/needed.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/if.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/hdlc/ioctl.h \
  include/linux/in.h \
  include/uapi/linux/in.h \
  include/uapi/linux/netfilter.h \
  include/linux/static_key.h \
  include/linux/jump_label.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/jump_label.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/system.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/switch_to.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/system_info.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/system_misc.h \
  include/net/flow.h \
  include/net/netns/x_tables.h \
    $(wildcard include/config/bridge/nf/ebtables.h) \
  include/net/netns/conntrack.h \
    $(wildcard include/config/nf/conntrack/proc/compat.h) \
    $(wildcard include/config/nf/conntrack/labels.h) \
  include/linux/list_nulls.h \
  include/linux/netfilter/nf_conntrack_tcp.h \
  include/uapi/linux/netfilter/nf_conntrack_tcp.h \
  include/net/netns/xfrm.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/xfrm.h \
  include/linux/seq_file_net.h \
  include/linux/seq_file.h \
  include/linux/sched.h \
    $(wildcard include/config/sched/debug.h) \
    $(wildcard include/config/no/hz/common.h) \
    $(wildcard include/config/lockup/detector.h) \
    $(wildcard include/config/core/dump/default/elf/headers.h) \
    $(wildcard include/config/sched/autogroup.h) \
    $(wildcard include/config/virt/cpu/accounting/native.h) \
    $(wildcard include/config/bsd/process/acct.h) \
    $(wildcard include/config/taskstats.h) \
    $(wildcard include/config/audit.h) \
    $(wildcard include/config/cgroups.h) \
    $(wildcard include/config/inotify/user.h) \
    $(wildcard include/config/fanotify.h) \
    $(wildcard include/config/posix/mqueue.h) \
    $(wildcard include/config/keys.h) \
    $(wildcard include/config/perf/events.h) \
    $(wildcard include/config/schedstats.h) \
    $(wildcard include/config/task/delay/acct.h) \
    $(wildcard include/config/mt/load/balance/profiler.h) \
    $(wildcard include/config/sched/hmp.h) \
    $(wildcard include/config/sched/hmp/enhancement.h) \
    $(wildcard include/config/sched/hmp/prio/filter.h) \
    $(wildcard include/config/hmp/tracer.h) \
    $(wildcard include/config/perfstats/pertask.h) \
    $(wildcard include/config/perfstats/pertask/percore.h) \
    $(wildcard include/config/perfstats/pertask/perfreq/fnum.h) \
    $(wildcard include/config/mtprof/cputime.h) \
    $(wildcard include/config/fair/group/sched.h) \
    $(wildcard include/config/rt/group/sched.h) \
    $(wildcard include/config/mt/sched/notice.h) \
    $(wildcard include/config/mt/sched/debug.h) \
    $(wildcard include/config/cgroup/sched.h) \
    $(wildcard include/config/blk/dev/io/trace.h) \
    $(wildcard include/config/rcu/boost.h) \
    $(wildcard include/config/compat/brk.h) \
    $(wildcard include/config/cc/stackprotector.h) \
    $(wildcard include/config/virt/cpu/accounting/gen.h) \
    $(wildcard include/config/zram.h) \
    $(wildcard include/config/sysvipc.h) \
    $(wildcard include/config/detect/hung/task.h) \
    $(wildcard include/config/rt/mutexes.h) \
    $(wildcard include/config/task/xacct.h) \
    $(wildcard include/config/cpusets.h) \
    $(wildcard include/config/futex.h) \
    $(wildcard include/config/fault/injection.h) \
    $(wildcard include/config/latencytop.h) \
    $(wildcard include/config/function/graph/tracer.h) \
    $(wildcard include/config/bcache.h) \
    $(wildcard include/config/have/unstable/sched/clock.h) \
    $(wildcard include/config/irq/time/accounting.h) \
    $(wildcard include/config/no/hz/full.h) \
    $(wildcard include/config/mt/prio/tracer.h) \
  include/uapi/linux/sched.h \
  arch/arm/include/generated/asm/cputime.h \
  include/asm-generic/cputime.h \
    $(wildcard include/config/virt/cpu/accounting.h) \
  include/asm-generic/cputime_jiffies.h \
  include/linux/sem.h \
  include/uapi/linux/sem.h \
  include/linux/ipc.h \
  include/uapi/linux/ipc.h \
  arch/arm/include/generated/asm/ipcbuf.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/ipcbuf.h \
  arch/arm/include/generated/asm/sembuf.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/sembuf.h \
  include/linux/signal.h \
    $(wildcard include/config/old/sigaction.h) \
  include/uapi/linux/signal.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/signal.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/signal.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/asm-generic/signal-defs.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/uapi/asm/sigcontext.h \
  arch/arm/include/generated/asm/siginfo.h \
  include/asm-generic/siginfo.h \
  include/uapi/asm-generic/siginfo.h \
  include/linux/proportions.h \
  include/linux/seccomp.h \
    $(wildcard include/config/seccomp.h) \
    $(wildcard include/config/seccomp/filter.h) \
  include/uapi/linux/seccomp.h \
  include/linux/rtmutex.h \
    $(wildcard include/config/debug/rt/mutexes.h) \
  include/linux/resource.h \
  include/uapi/linux/resource.h \
  arch/arm/include/generated/asm/resource.h \
  include/asm-generic/resource.h \
  include/uapi/asm-generic/resource.h \
  include/linux/task_io_accounting.h \
    $(wildcard include/config/task/io/accounting.h) \
  include/linux/latencytop.h \
  include/linux/cred.h \
    $(wildcard include/config/debug/credentials.h) \
  include/linux/key.h \
  include/linux/selinux.h \
    $(wildcard include/config/security/selinux.h) \
  include/linux/llist.h \
    $(wildcard include/config/arch/have/nmi/safe/cmpxchg.h) \
  include/linux/rtpm_prio.h \
    $(wildcard include/config/mt/rt/monitor.h) \
  include/linux/nsproxy.h \
  include/net/dsa.h \
  include/net/netprio_cgroup.h \
  include/linux/cgroup.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/cgroupstats.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/taskstats.h \
  include/linux/prio_heap.h \
  include/linux/idr.h \
  include/linux/xattr.h \
  include/uapi/linux/xattr.h \
  include/linux/cgroup_subsys.h \
    $(wildcard include/config/cgroup/debug.h) \
    $(wildcard include/config/cgroup/cpuacct.h) \
    $(wildcard include/config/cgroup/device.h) \
    $(wildcard include/config/cgroup/freezer.h) \
    $(wildcard include/config/net/cls/cgroup.h) \
    $(wildcard include/config/cgroup/perf.h) \
    $(wildcard include/config/cgroup/hugetlb.h) \
    $(wildcard include/config/cgroup/bcache.h) \
  include/linux/hardirq.h \
  include/linux/ftrace_irq.h \
    $(wildcard include/config/ftrace/nmi/enter.h) \
  include/linux/vtime.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/hardirq.h \
  include/linux/irq_cpustat.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/neighbour.h \
  include/linux/netlink.h \
  include/net/scm.h \
    $(wildcard include/config/security/network.h) \
  include/linux/security.h \
    $(wildcard include/config/security/path.h) \
    $(wildcard include/config/security/network/xfrm.h) \
    $(wildcard include/config/securityfs.h) \
    $(wildcard include/config/security/yama.h) \
  include/uapi/linux/netlink.h \
  include/uapi/linux/netdevice.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/if_packet.h \
  include/linux/if_link.h \
  include/uapi/linux/if_link.h \
  include/linux/etherdevice.h \
    $(wildcard include/config/have/efficient/unaligned/access.h) \
  arch/arm/include/generated/asm/unaligned.h \
  include/asm-generic/unaligned.h \
  include/linux/unaligned/le_struct.h \
  include/linux/unaligned/packed_struct.h \
  include/linux/unaligned/be_byteshift.h \
  include/linux/unaligned/generic.h \
  include/linux/wireless.h \
  include/uapi/linux/wireless.h \
  include/linux/if_arp.h \
    $(wildcard include/config/firewire/net.h) \
  include/uapi/linux/if_arp.h \
  include/linux/inetdevice.h \
  include/linux/rtnetlink.h \
  include/uapi/linux/rtnetlink.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/if_addr.h \
  include/linux/ip.h \
  include/uapi/linux/ip.h \
  include/linux/kthread.h \
  include/linux/vmalloc.h \
  include/linux/kfifo.h \
  include/linux/cdev.h \
  include/linux/firmware.h \
    $(wildcard include/config/fw/loader.h) \
  include/linux/mmc/sdio.h \
  include/linux/mmc/sdio_func.h \
  include/linux/mod_devicetable.h \
  include/linux/uuid.h \
  include/uapi/linux/uuid.h \
  include/linux/mmc/pm.h \
  include/net/iw_handler.h \
    $(wildcard include/config/wext/priv.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/version.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/config.h \
    $(wildcard include/config/h.h) \
    $(wildcard include/config/title.h) \
  include/net/cfg80211.h \
    $(wildcard include/config/cfg80211/wext.h) \
  include/linux/debugfs.h \
    $(wildcard include/config/debug/fs.h) \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/nl80211.h \
  include/linux/ieee80211.h \
    $(wildcard include/config/timeout.h) \
  include/net/regulatory.h \
  include/linux/module.h \
    $(wildcard include/config/module/sig.h) \
    $(wildcard include/config/kallsyms.h) \
    $(wildcard include/config/tracepoints.h) \
    $(wildcard include/config/event/tracing.h) \
    $(wildcard include/config/module/unload.h) \
    $(wildcard include/config/constructors.h) \
    $(wildcard include/config/debug/set/module/ronx.h) \
  include/linux/kmod.h \
  include/linux/elf.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/elf.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/user.h \
  include/uapi/linux/elf.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/include/uapi/linux/elf-em.h \
  include/linux/moduleparam.h \
    $(wildcard include/config/alpha.h) \
    $(wildcard include/config/ppc64.h) \
  include/linux/tracepoint.h \
  /home/mt7623/MTKSDK/5.0.2.0/MTK_APSoC_SDK/source/linux-3.10.20.x/arch/arm/include/asm/module.h \
    $(wildcard include/config/arm/unwind.h) \
  include/asm-generic/module.h \
    $(wildcard include/config/have/mod/arch/specific.h) \
    $(wildcard include/config/modules/use/elf/rel.h) \
    $(wildcard include/config/modules/use/elf/rela.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_typedef.h \
    $(wildcard include/config/has/earlysuspend.h) \
  include/linux/earlysuspend.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/typedef.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/queue.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_typedef.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_kal.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_os.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/link.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/mac.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/wlan_def.h \
    $(wildcard include/config/t.h) \
    $(wildcard include/config/802/11abg.h) \
    $(wildcard include/config/802/11bg.h) \
    $(wildcard include/config/802/11g.h) \
    $(wildcard include/config/802/11a.h) \
    $(wildcard include/config/802/11b.h) \
    $(wildcard include/config/802/11abgn.h) \
    $(wildcard include/config/802/11bgn.h) \
    $(wildcard include/config/802/11an.h) \
    $(wildcard include/config/802/11gn.h) \
    $(wildcard include/config/num.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_lib.h \
    $(wildcard include/config/resp/size.h) \
    $(wildcard include/config/type/wo/response.h) \
    $(wildcard include/config/type/mem8.h) \
    $(wildcard include/config/type/mem32.h) \
    $(wildcard include/config/type/ascii.h) \
    $(wildcard include/config/type/binary.h) \
    $(wildcard include/config/type/drv/passthrough.h) \
    $(wildcard include/config/type/end.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/CFG_Wifi_File.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/rlm_domain.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/wlan_typedef.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_oid.h \
    $(wildcard include/config/fh/t.h) \
    $(wildcard include/config/struct/t.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_wext_priv.h \
    $(wildcard include/config/entry.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/bow.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/hif/ahb/include/hif.h \
    $(wildcard include/config/base.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/hif/ahb/include/mtk_porting.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_rst.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/debug.h \
    $(wildcard include/config/xlog.h) \
  include/linux/xlog.h \
    $(wildcard include/config/have/xlog/feature.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_p2p_os.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/debug.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/link.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/queue.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/mac.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/wlan_def.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/swcr.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/cmd_buf.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic_cmd_event.h \
    $(wildcard include/config/pattern/func.h) \
    $(wildcard include/config/bw/20/40m.h) \
    $(wildcard include/config/bw/20m.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/nic.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic_init_cmd_event.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/hif_rx.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/hif_tx.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/nic_tx.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/nic_rx.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/que_mgt.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/p2p_typedef.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/p2p_cmd_buf.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/p2p_nic_cmd_event.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/p2p_mac.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/p2p_nic.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/hem_mbox.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/scan.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/bss.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_lib.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_oid.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_bow.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/bow.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/cmd_buf.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_p2p.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/hal.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/mtreg.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/rlm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/rlm_protection.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/rlm_obss.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/rate.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/aa_fsm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/cnm_timer.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/bow.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/bow_fsm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/pwr_mgt.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/cnm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/cnm_mem.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/cnm_scan.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_rlm_obss.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_bss.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/p2p.h \
    $(wildcard include/config/usba.h) \
    $(wildcard include/config/ethernet.h) \
    $(wildcard include/config/label.h) \
    $(wildcard include/config/display.h) \
    $(wildcard include/config/ext/nfc.h) \
    $(wildcard include/config/int/nfc.h) \
    $(wildcard include/config/nfc.h) \
    $(wildcard include/config/pbc.h) \
    $(wildcard include/config/keypad.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_fsm.h \
    $(wildcard include/config/settings/changed/t.h) \
    $(wildcard include/config/method.h) \
    $(wildcard include/config/method/sel.h) \
    $(wildcard include/config/method/sel/auto.h) \
    $(wildcard include/config/method/sel/user.h) \
    $(wildcard include/config/method/sel/num.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_scan.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_state.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_func.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_rlm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_assoc.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/p2p_ie.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/privacy.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/mib.h \
    $(wildcard include/config/pairwise/ciphers/entry.h) \
    $(wildcard include/config/authentication/suites/entry.h) \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/auth.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/assoc.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/roaming_fsm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/ais_fsm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/adapter.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/rftest.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/rsn.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/mgmt/sec_fsm.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_p2p_kal.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/wlan_p2p.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/os/linux/include/gl_p2p_ioctl.h \
  drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/include/nic/p2p.h \

drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o: $(deps_drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o)

$(deps_drivers/net/wireless/mt_soc/conn_soc/mt_wifi/wlan/mgmt/hs20.o):
