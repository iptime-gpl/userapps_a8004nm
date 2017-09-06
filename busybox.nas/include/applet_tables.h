/* This is a generated file, don't edit */

#define NUM_APPLETS 107

const char applet_names[] ALIGN1 = ""
"[" "\0"
"[[" "\0"
"addgroup" "\0"
"adduser" "\0"
"ar" "\0"
"arp" "\0"
"ash" "\0"
"awk" "\0"
"basename" "\0"
"bunzip2" "\0"
"bzcat" "\0"
"bzip2" "\0"
"cat" "\0"
"chmod" "\0"
"chpasswd" "\0"
"cp" "\0"
"cpio" "\0"
"cut" "\0"
"date" "\0"
"dd" "\0"
"delgroup" "\0"
"deluser" "\0"
"df" "\0"
"dirname" "\0"
"dmesg" "\0"
"du" "\0"
"echo" "\0"
"egrep" "\0"
"env" "\0"
"expr" "\0"
"fgrep" "\0"
"find" "\0"
"free" "\0"
"grep" "\0"
"gunzip" "\0"
"gzip" "\0"
"halt" "\0"
"hexdump" "\0"
"hostname" "\0"
"id" "\0"
"ifconfig" "\0"
"init" "\0"
"init" "\0"
"insmod" "\0"
"ip" "\0"
"ipaddr" "\0"
"iplink" "\0"
"iproute" "\0"
"iprule" "\0"
"iptunnel" "\0"
"kill" "\0"
"killall" "\0"
"klogd" "\0"
"ln" "\0"
"logger" "\0"
"login" "\0"
"ls" "\0"
"lsmod" "\0"
"lzmacat" "\0"
"mdev" "\0"
"mkdir" "\0"
"mknod" "\0"
"mount" "\0"
"mv" "\0"
"netstat" "\0"
"passwd" "\0"
"pidof" "\0"
"ping" "\0"
"ping6" "\0"
"poweroff" "\0"
"printf" "\0"
"ps" "\0"
"pwd" "\0"
"realpath" "\0"
"reboot" "\0"
"rm" "\0"
"rmmod" "\0"
"route" "\0"
"sed" "\0"
"sh" "\0"
"sleep" "\0"
"stat" "\0"
"sync" "\0"
"syslogd" "\0"
"tar" "\0"
"taskset" "\0"
"telnetd" "\0"
"test" "\0"
"tftp" "\0"
"time" "\0"
"top" "\0"
"touch" "\0"
"tr" "\0"
"udhcpc" "\0"
"udhcpd" "\0"
"udpsvd" "\0"
"umount" "\0"
"uname" "\0"
"uncompress" "\0"
"unlzma" "\0"
"unzip" "\0"
"uptime" "\0"
"vconfig" "\0"
"vi" "\0"
"wc" "\0"
"wget" "\0"
"zcat" "\0"
;

int (*const applet_main[])(int argc, char **argv) = {
test_main,
test_main,
addgroup_main,
adduser_main,
ar_main,
arp_main,
ash_main,
awk_main,
basename_main,
bunzip2_main,
bunzip2_main,
bzip2_main,
cat_main,
chmod_main,
chpasswd_main,
cp_main,
cpio_main,
cut_main,
date_main,
dd_main,
deluser_main,
deluser_main,
df_main,
dirname_main,
dmesg_main,
du_main,
echo_main,
grep_main,
env_main,
expr_main,
grep_main,
find_main,
free_main,
grep_main,
gunzip_main,
gzip_main,
halt_main,
hexdump_main,
hostname_main,
id_main,
ifconfig_main,
init_main,
init_main,
insmod_main,
ip_main,
ipaddr_main,
iplink_main,
iproute_main,
iprule_main,
iptunnel_main,
kill_main,
kill_main,
klogd_main,
ln_main,
logger_main,
login_main,
ls_main,
lsmod_main,
unlzma_main,
mdev_main,
mkdir_main,
mknod_main,
mount_main,
mv_main,
netstat_main,
passwd_main,
pidof_main,
ping_main,
ping6_main,
halt_main,
printf_main,
ps_main,
pwd_main,
realpath_main,
halt_main,
rm_main,
rmmod_main,
route_main,
sed_main,
ash_main,
sleep_main,
stat_main,
sync_main,
syslogd_main,
tar_main,
taskset_main,
telnetd_main,
test_main,
tftp_main,
time_main,
top_main,
touch_main,
tr_main,
udhcpc_main,
udhcpd_main,
tcpudpsvd_main,
umount_main,
uname_main,
uncompress_main,
unlzma_main,
unzip_main,
uptime_main,
vconfig_main,
vi_main,
wc_main,
wget_main,
gunzip_main,
};
const uint16_t applet_nameofs[] ALIGN2 = {
0x0000,
0x0002,
0x0005,
0x000e,
0x0016,
0x0019,
0x001d,
0x0021,
0x0025,
0x002e,
0x0036,
0x003c,
0x0042,
0x0046,
0x004c,
0x0055,
0x0058,
0x005d,
0x0061,
0x0066,
0x0069,
0x0072,
0x007a,
0x007d,
0x0085,
0x008b,
0x008e,
0x0093,
0x0099,
0x009d,
0x00a2,
0x00a8,
0x00ad,
0x00b2,
0x00b7,
0x00be,
0x00c3,
0x00c8,
0x00d0,
0x00d9,
0x00dc,
0x00e5,
0x00ea,
0x00ef,
0x00f6,
0x00f9,
0x0100,
0x0107,
0x010f,
0x0116,
0x011f,
0x0124,
0x012c,
0x0132,
0x0135,
0x813c,
0x0142,
0x0145,
0x014b,
0x0153,
0x0158,
0x015e,
0x0164,
0x016a,
0x016d,
0x8175,
0x017c,
0x4182,
0x0187,
0x018d,
0x0196,
0x019d,
0x01a0,
0x01a4,
0x01ad,
0x01b4,
0x01b7,
0x01bd,
0x01c3,
0x01c7,
0x01ca,
0x01d0,
0x01d5,
0x01da,
0x01e2,
0x01e6,
0x01ee,
0x01f6,
0x01fb,
0x0200,
0x0205,
0x0209,
0x020f,
0x0212,
0x0219,
0x0220,
0x0227,
0x022e,
0x0234,
0x023f,
0x0246,
0x024c,
0x0253,
0x025b,
0x025e,
0x0261,
0x0266,
};
#define MAX_APPLET_NAME_LEN 10
