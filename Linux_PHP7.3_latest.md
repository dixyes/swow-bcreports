# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.28-2+ubuntu20.04.1+deb.sury.org+1 (cli) (built: Jun  4 2021 21:23:38) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.28, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.28-2+ubuntu20.04.1+deb.sury.org+1, Copyright (c) 1999-2018, by Zend Technologies
```

### control php -m

```plain
[PHP Modules]
amqp
apcu
ast
bcmath
bz2
calendar
Core
ctype
curl
date
dba
dom
enchant
exif
fileinfo
filter
ftp
gd
gettext
gmp
hash
iconv
igbinary
imagick
imap
interbase
intl
json
ldap
libxml
mbstring
memcache
memcached
mongodb
msgpack
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_dblib
PDO_Firebird
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
pgsql
Phar
posix
pspell
readline
recode
redis
Reflection
session
shmop
SimpleXML
snmp
soap
sockets
sodium
SPL
sqlite3
standard
sysvmsg
sysvsem
sysvshm
tidy
tokenizer
wddx
xml
xmlreader
xmlrpc
xmlwriter
xsl
yaml
Zend OPcache
zip
zlib
zmq

[Zend Modules]
Zend OPcache
```

### experiment php -v

```plain
PHP 7.3.28-2+ubuntu20.04.1+deb.sury.org+1 (cli) (built: Jun  4 2021 21:23:38) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.28, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.28-2+ubuntu20.04.1+deb.sury.org+1, Copyright (c) 1999-2018, by Zend Technologies
```

### experiment php -m

```plain
[PHP Modules]
amqp
apcu
ast
bcmath
bz2
calendar
Core
ctype
curl
date
dba
dom
enchant
exif
fileinfo
filter
ftp
gd
gettext
gmp
hash
iconv
igbinary
imagick
imap
interbase
intl
json
ldap
libxml
mbstring
memcache
memcached
mongodb
msgpack
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_dblib
PDO_Firebird
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
pgsql
Phar
posix
pspell
readline
recode
redis
Reflection
session
shmop
SimpleXML
snmp
soap
sockets
sodium
SPL
sqlite3
standard
Swow
sysvmsg
sysvsem
sysvshm
tidy
tokenizer
wddx
xml
xmlreader
xmlrpc
xmlwriter
xsl
yaml
Zend OPcache
zip
zlib
zmq

[Zend Modules]
Zend OPcache
```

### uname -a

```plain
Linux fv-az182-470 5.8.0-1033-azure #35~20.04.1-Ubuntu SMP Wed May 19 06:46:04 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
```

### cat /proc/cpuinfo

```plain
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 85
model name	: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
stepping	: 7
microcode	: 0xffffffff
cpu MHz		: 2593.907
cache size	: 36608 KB
physical id	: 0
siblings	: 2
core id		: 0
cpu cores	: 2
apicid		: 0
initial apicid	: 0
fpu		: yes
fpu_exception	: yes
cpuid level	: 21
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx avx512f avx512dq rdseed adx smap clflushopt avx512cd avx512bw avx512vl xsaveopt xsavec xsaves md_clear
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs taa itlb_multihit
bogomips	: 5187.81
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:

processor	: 1
vendor_id	: GenuineIntel
cpu family	: 6
model		: 85
model name	: Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
stepping	: 7
microcode	: 0xffffffff
cpu MHz		: 2593.907
cache size	: 36608 KB
physical id	: 0
siblings	: 2
core id		: 1
cpu cores	: 2
apicid		: 1
initial apicid	: 1
fpu		: yes
fpu_exception	: yes
cpuid level	: 21
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm mpx avx512f avx512dq rdseed adx smap clflushopt avx512cd avx512bw avx512vl xsaveopt xsavec xsaves md_clear
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs taa itlb_multihit
bogomips	: 5187.81
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         1459776 kB
MemAvailable:    4817236 kB
Buffers:          289988 kB
Cached:          2984616 kB
SwapCached:            0 kB
Active:          2867916 kB
Inactive:        2226024 kB
Active(anon):    1591352 kB
Inactive(anon):   228304 kB
Active(file):    1276564 kB
Inactive(file):  1997720 kB
Unevictable:       26780 kB
Mlocked:           26780 kB
SwapTotal:       4194300 kB
SwapFree:        4194300 kB
Dirty:               144 kB
Writeback:             0 kB
AnonPages:       1836644 kB
Mapped:           406768 kB
Shmem:              7524 kB
KReclaimable:     393088 kB
Slab:             466724 kB
SReclaimable:     393088 kB
SUnreclaim:        73636 kB
KernelStack:        5520 kB
PageTables:        10820 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    4797396 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       33184 kB
VmallocChunk:          0 kB
Percpu:             1784 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1165312 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      128960 kB
DirectMap2M:     4065280 kB
DirectMap1G:     5242880 kB
```

### cat /etc/os-release

```plain
NAME="Ubuntu"
VERSION="20.04.2 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.2 LTS"
VERSION_ID="20.04"
HOME_URL="https://www.ubuntu.com/"
SUPPORT_URL="https://help.ubuntu.com/"
BUG_REPORT_URL="https://bugs.launchpad.net/ubuntu/"
PRIVACY_POLICY_URL="https://www.ubuntu.com/legal/terms-and-policies/privacy-policy"
VERSION_CODENAME=focal
UBUNTU_CODENAME=focal
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16264 | 14533 | 16355 | 0.5564% | 0.6262% |

## Behavior changes

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### tests/basic/timeout_variation_10.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_9.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/curl/tests/bug48203_multi.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ * Server doesn't support multiplex (yet)
006+ * Closing connection 0
007+ * Closing connection 1
015- Hello World!
016- Hello World!Hello World!
017- Hello World!Ok for CURLOPT_FILE
018+ Ok for CURLOPT_FILE
```

### ext/curl/tests/curl_basic_017.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- string(75) "Hello World!
003- Hello World!Hello World!
004- Hello World!Hello World!
005- Hello World!"
```

### ext/curl/tests/curl_basic_018.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- string(75) "Hello World!
003- Hello World!Hello World!
004- Hello World!Hello World!
005- Hello World!"
```

### ext/curl/tests/curl_multi_getcontent_basic3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ CURL2
001- array(2) {
002-   ["test"]=>
003-   string(7) "getpost"
004-   ["get_param"]=>
005-   string(11) "Hello World"
006- }
007- array(0) {
008- }
009- CURL2
```

### ext/curl/tests/curl_multi_info_read.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- bool(true)
002- bool(true)
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ftp/tests/002.php on line 8
007+ bool(false)
008+ NULL
009+ NULL
002- array(4) {
003-   [0]=>
004-   string(55) "214-There is help available for the following commands:"
005-   [1]=>
006-   string(5) " USER"
007-   [2]=>
008-   string(5) " HELP"
009-   [3]=>
010-   string(15) "214 end of list"
011- }
012- array(1) {
013-   [0]=>
014-   string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
015- }
016- bool(true)
```

### ext/ldap/tests/bug76248.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: ldap_bind(): Unable to bind to server: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 14
002+ 
003+ Warning: ldap_search(): Search: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 16
004+ 
005+ Warning: ldap_get_entries() expects parameter 2 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 17
006+ NULL
007+ 
008+ Warning: stream_socket_accept(): accept failed: Socket accept wait failed, reason: Timed out for 3000 ms in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 7
009+ 
010+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 8
011+ 
001- array(2) {
002-   ["count"]=>
003-   int(1)
004-   [0]=>
005-   array(2) {
006-     ["count"]=>
007-     int(0)
008-     ["dn"]=>
009-     NULL
010-   }
011- }
012+ Warning: fflush() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 9
```

Test FAILED in both, but outputs is different.

```patch
008+ Warning: stream_socket_accept(): accept failed: Socket accept wait failed, reason: Timed out for 3000 ms in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 7
008- Warning: stream_socket_accept(): accept failed: Connection timed out in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/ldap/tests/bug76248.php on line 7
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
004+ 
005+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
006+ 
007+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
008+ [003] Connect failed, [2002] 
009+ 
010+ Warning: mysqli::query(): invalid object or resource mysqli
011+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/bug51647.php on line 11
012+ [004] [2002] 
013+ 
001- array(2) {
002-   ["Variable_name"]=>
003-   string(10) "Ssl_cipher"
004-   ["Value"]=>
005-   string(%d) "%S"
006- }
007- array(2) {
008-   ["Variable_name"]=>
009-   string(10) "Ssl_cipher"
010-   ["Value"]=>
011-   string(%d) "%S"
012- }
013- done!
014+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
015+ 
016+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
017+ 
018+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
019+ 
020+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
021+ [009] Connect failed, [2002] 
022+ 
023+ Warning: mysqli::query(): invalid object or resource mysqli
024+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/bug51647.php on line 41
025+ [011] [2002] 
026+ done!
```

### ext/mysqli/tests/bug55283.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
004+ 
005+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
006+ 
007+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
008+ 
009+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
010+ 
011+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
012+ 
013+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
014+ 
015+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
001- array(2) {
002-   [0]=>
003-   string(10) "Ssl_cipher"
004-   [1]=>
005-   string(7) "RC4-MD5"
006- }
007- array(2) {
008-   [0]=>
009-   string(10) "Ssl_cipher"
010-   [1]=>
011-   string(7) "RC4-MD5"
012- }
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
002+ 
009+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 113
010+ 
```

### ext/mysqli/tests/mysqli_change_user_new.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_array_many_rows.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_array_oo.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_assoc_bit.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_assoc_zerofill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_field_flags.phpt

Test FAILED in experiment beacuse

```patch
001+ [006] Found unexpected flags 'NO_DEFAULT_VALUE ' for TIMESTAMP NOT NULL, found 'NO_DEFAULT_VALUE BINARY NOT_NULL ' with MySQL 80025'
001- done!
002+ [007] The flags 'ON_UPDATE_NOW TIMESTAMP   ON_UPDATE_NOW' have not been reported for TIMESTAMP NOT NULL, found 'NO_DEFAULT_VALUE BINARY NOT_NULL '
003+ string(50) "CREATE TABLE test(id INT, col1 TIMESTAMP NOT NULL)"
004+ int(80025)
005+ ON_UPDATE_NOW TIMESTAMP   ON_UPDATE_NOW
```

Test FAILED in both, but outputs is different.

```patch
001- [003] Can't select from table, INT NOT NULL [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_fetch_field_types.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_lengths.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_client_stats.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_insert_packet_overflow.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_kill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_mysqli_result_invalid_mode.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_options_int_and_float_native.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_pconn_max_links.phpt

Test FAILED in experiment beacuse

```patch
025+ [005] Cannot change PW of second DB user, [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PASSWORD("newpass")' at line 1
026+ [006] Cannot change PW of second DB user, [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PASSWORD("newpass")' at line 1
039+ [010] Can connect using the old password, [0] 
040-   ["active_plinks"]=>
041-   int(0)
042+   int(2)
043+   ["active_plinks"]=>
048-   ["active_plinks"]=>
049-   int(0)
050+   int(2)
051+   ["active_plinks"]=>
053- array(2) {
054-   ["id"]=>
055-   string(1) "1"
056-   ["label"]=>
057-   string(1) "a"
058- }
059- [015] Can open more persistent connections than allowed, [0] 
060- array(3) {
061-   ["total"]=>
062-   int(3)
063-   ["active_plinks"]=>
064-   int(2)
065-   ["cached_plinks"]=>
066-   int(0)
067- }
056+ 
057+ Warning: mysqli_connect(): (HY000/1045): Access denied for user 'pcontest'@'localhost' (using password: YES) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 96
058+ [012] Cannot connect using the new password, [1045] Access denied for user 'pcontest'@'localhost' (using password: YES)
059+ 
060+ Warning: mysqli_query() expects parameter 1 to be mysqli, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 109
061+ 
062+ Warning: mysqli_errno() expects parameter 1 to be mysqli, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 111
063+ 
064+ Warning: mysqli_error() expects parameter 1 to be mysqli, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 111
065+ [013] Cannot run query on persistent connection of second DB user, [0] 
066+ 
067+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 113
068+ 
069+ Warning: mysqli_errno() expects parameter 1 to be mysqli, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 115
070+ 
071+ Warning: mysqli_error() expects parameter 1 to be mysqli, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 115
072+ [014] Cannot run fetch result, [0] 
073+ 
074+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 116
075+ NULL
076+ 
077+ Warning: mysqli_connect(): (HY000/1045): Access denied for user 'pcontest'@'localhost' (using password: YES) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/connect.inc on line 96
```

Test FAILED in both, but outputs is different.

```patch
019+ array(2) {
020+   ["id"]=>
021+   string(1) "1"
022+   ["label"]=>
023+   string(1) "a"
024+ }
019- [003] Cannot run query on persistent connection of second DB user, [1054] Unknown column 'id' in 'field list'
020- 
021- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 42
022- [004] Cannot run fetch result, [1054] Unknown column 'id' in 'field list'
023- 
024- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_pconn_max_links.php on line 45
025- NULL
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

```patch
016+ [017] Expecting boolean/false got boolean/true
017+ [018] Expecting int/0 got integer/1
017- Warning: Error while sending QUERY packet. %s
018- 
022+ [020] Error: 2006/MySQL server has gone away
022- [018] Error: %d/%s
```

Test XFAILED in both, but outputs is different.

```patch
005+ Fetching from thread 887...
005- Fetching from thread 1420...
```

### ext/mysqli/tests/mysqli_report_new.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_change_user(): The server requested authentication method unknown to the client [caching_sha2_password] in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_report_new.php on line 14
002+ 
003+ Warning: mysqli_change_user(): (HY000/2054): The server requested authentication method unknown to the client in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/mysqli/tests/mysqli_report_new.php on line 14
001- Warning: mysqli_change_user(): (%d/%d): Access denied for user '%s'@'%s' (using password: %s) in %s on line %d
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:43:52 2021 (89995): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:43:52 2021 (89995): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:33:04 2021 (30770): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug46127.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/bug46127.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Sending bug 46127
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ 
004+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
009+ 
010+ Warning: fgets() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
011+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
012+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

Test FAILED in both, but outputs is different.

```patch
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004- PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
011+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
012+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/bug48182.phpt

Test FAILED in experiment beacuse

```patch
002+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
008+ 
009+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
010+ 
011+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
012+ 
013+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
```

Test FAILED in both, but outputs is different.

```patch
002+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
012- PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
013- PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
```

### ext/openssl/tests/bug68879.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/bug68879.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004+ 
005+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ 
007+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
008+ 
009+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
010+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
010- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/bug68920.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004+ 
005+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
011+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
012+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
013+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
015+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
015- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
017- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
021+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
022+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
023+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
025+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
027+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
029+ Warning: stream_socket_
...
```

Test FAILED in both, but outputs is different.

```patch
025+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
025- Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
```

### ext/openssl/tests/bug72333.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
001- done
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
007+ 
008+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/bug72333.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
008+  ** ERROR: process timed out **
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
005- 
006- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
007- 
008- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:10011 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
009- 
010- Warning: stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 5
011- 
012- Warning: stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
013- 
014- Warning: stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
015- donePHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
016- PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
017- PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
018- PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
019- PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
```

### ext/openssl/tests/bug74159.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- Written 1048575 bytes
002- DONE
003+ 
004+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ 
004+  ** ERROR: process timed out **
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/bug74159.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004- stream_socket_enable_crypto(): SSL: Connection reset by peer
```

### ext/openssl/tests/bug77390.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(0) ""
002- string(12) "hello, world"
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
006+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
007+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
008+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
010+ 
011+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/bug77390.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
004+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
006+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
007+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
008+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
```

### ext/openssl/tests/peer_verification.phpt

Test FAILED in experiment beacuse

```patch
003+ 
004+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
009+ bool(false)
010+ 
011+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
012+ 
013+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
014+ 
015+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
016+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
011+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
011- Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002+ error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
007+ bool(false)
008+ 
009+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
010+ 
011+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
012+ 
013+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
014+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
009+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
009- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_5f7ec589b9517262/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
```

### ext/pdo_mysql/tests/bug70862.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_38546.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_42499.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_44454.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
```

Test FAILED in both, but outputs is different.

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
009+ [017] DSN=mysql:host=- ;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service
008- [015] DSN=mysql:host=localhostinvalid;port=3406;dbname=test;host=localhost, SQLSTATE[HY000] [2002] No such file or directory
009- [017] DSN=mysql:host=- ;port=3406;dbname=test;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: Name or service not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///tmp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=test, File=/tmp/pdomuri.tst (72 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=test'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetchobject.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_types_zerofill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Wed, 30 Jun 2021 01:47:33 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Wed, 30 Jun 2021 01:47:33 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Wed, 30 Jun 2021 01:47:33 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Wed, 30 Jun 2021 01:47:33 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Wed, 30 Jun 2021 01:47:33 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Wed, 30 Jun 2021 01:47:33 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/sapi/cli/tests/bug730
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Wed, 30 Jun 2021 01:47:33 GMT
004- Date: Wed, 30 Jun 2021 01:35:01 GMT
017+ Date: Wed, 30 Jun 2021 01:47:33 GMT
017- Date: Wed, 30 Jun 2021 01:35:01 GMT
032+ Date: Wed, 30 Jun 2021 01:47:33 GMT
032- Date: Wed, 30 Jun 2021 01:35:01 GMT
045+ Date: Wed, 30 Jun 2021 01:47:33 GMT
045- Date: Wed, 30 Jun 2021 01:35:01 GMT
060+ Date: Wed, 30 Jun 2021 01:47:33 GMT
060- Date: Wed, 30 Jun 2021 01:35:01 GMT
073+ Date: Wed, 30 Jun 2021 01:47:33 GMT
073- Date: Wed, 30 Jun 2021 01:35:01 GMT
088+ Date: Wed, 30 Jun 2021 01:47:33 GMT
088- Date: Wed, 30 Jun 2021 01:35:01 GMT
101+ Date: Wed, 30 Jun 2021 01:47:33 GMT
101- Date: Wed, 30 Jun 2021 01:35:01 GMT
116+ Date: Wed, 30 Jun 2021 01:47:33 GMT
116- Date: Wed, 30 Jun 2021 01:35:01 GMT
129+ Date: Wed, 30 Jun 2021 01:47:33 GMT
129- Date: Wed, 30 Jun 2021 01:35:01 GMT
144+ Date: Wed, 30 Jun 2021 01:47:33 GMT
144- Date: Wed, 30 Jun 2021 01:35:01 GMT
157+ Date: Wed, 30 Jun 2021 01:47:33 GMT
157- Date: Wed, 30 Jun 2021 01:35:01 GMT
172+ Date: Wed, 30 Jun 2021 01:47:33 GMT
172- Date: Wed, 30 Jun 2021 01:35:01 GMT
185+ Date: Wed, 30 Jun 2021 01:47:33 GMT
185- Date: Wed, 30 Jun 2021 01:35:01 GMT
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Segmentation fault (core dumped)
002- string(12) "test message"
003+ 
004+ Termsig=11
```

### ext/sockets/tests/socket_export_stream-3.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Segmentation fault (core dumped)
006+ 
005- string(10) "my message"
006- Done.
007+ Termsig=11
```

### ext/sockets/tests/socket_export_stream-4.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ socket_set_block Segmentation fault (core dumped)
003- socket_set_block 1
004- socket_get_option 2
005+ Termsig=11
006- 
007- unset stream
008- socket_set_block 1
009- socket_get_option 2
010- 
011- 
012- unset socket
013- stream_set_blocking 1
014- 
015- 
016- close stream
017- stream_set_blocking 
018- Warning: stream_set_blocking(): supplied resource is not a valid stream resource in %s on line %d
019- 
020- socket_set_block 
021- Warning: socket_set_block(): unable to set blocking mode [%d]: %s in %s on line %d
022- 
023- socket_get_option 
024- Warning: socket_get_option(): unable to retrieve socket option [%d]: %s in %s on line %d
025- 
026- 
027- 
028- close socket
029- stream_set_blocking 
030- Warning: stream_set_blocking(): supplied resource is not a valid stream resource in %s on line %d
031- 
032- socket_set_block 
033- Warning: socket_set_block(): supplied resource is not a valid Socket resource in %s on line %d
034- 
035- socket_get_option 
036- Warning: socket_get_option(): supplied resource is not a valid Socket resource in %s on line %d
037- 
038- 
039- Done.
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+  ** ERROR: process timed out **
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug74764.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/tcp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60dbce3c5f1f0.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/udp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60dbce3caae16.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug72075.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 1
001- 0
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:54769/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:60270/bogusdir): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:62283/): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/opendir-004.php on line 12
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
```

### ext/standard/tests/streams/proc_open_bug69900.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ fgets() took more than 1 ms
004- fgets() took less than %d ms
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```

### ext/standard/tests/streams/stream_socket_enable_crypto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5f7ec589b9517262/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
```
