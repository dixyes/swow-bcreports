# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.20 (cli) (built: Jun  4 2021 21:24:55) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.20, Copyright (c), by Zend Technologies
```

### control php -m

```plain
[PHP Modules]
amqp
apcu
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
FFI
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
PHP 7.4.20 (cli) (built: Jun  4 2021 21:24:55) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.20, Copyright (c), by Zend Technologies
```

### experiment php -m

```plain
[PHP Modules]
amqp
apcu
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
FFI
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
Linux fv-az269-761 5.8.0-1033-azure #35~20.04.1-Ubuntu SMP Wed May 19 06:46:04 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
```

### cat /proc/cpuinfo

```plain
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 79
model name	: Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
stepping	: 1
microcode	: 0xffffffff
cpu MHz		: 2294.689
cache size	: 51200 KB
physical id	: 0
siblings	: 2
core id		: 0
cpu cores	: 2
apicid		: 0
initial apicid	: 0
fpu		: yes
fpu_exception	: yes
cpuid level	: 20
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm rdseed adx smap xsaveopt md_clear
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs taa itlb_multihit
bogomips	: 4589.37
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:

processor	: 1
vendor_id	: GenuineIntel
cpu family	: 6
model		: 79
model name	: Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
stepping	: 1
microcode	: 0xffffffff
cpu MHz		: 2294.689
cache size	: 51200 KB
physical id	: 0
siblings	: 2
core id		: 1
cpu cores	: 2
apicid		: 1
initial apicid	: 1
fpu		: yes
fpu_exception	: yes
cpuid level	: 20
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm 3dnowprefetch invpcid_single pti fsgsbase bmi1 hle avx2 smep bmi2 erms invpcid rtm rdseed adx smap xsaveopt md_clear
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs taa itlb_multihit
bogomips	: 4589.37
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         1492132 kB
MemAvailable:    4782452 kB
Buffers:          285484 kB
Cached:          2925588 kB
SwapCached:          452 kB
Active:          2733348 kB
Inactive:        2338880 kB
Active(anon):    1551564 kB
Inactive(anon):   310736 kB
Active(file):    1181784 kB
Inactive(file):  2028144 kB
Unevictable:       26720 kB
Mlocked:           26720 kB
SwapTotal:       4194300 kB
SwapFree:        4193008 kB
Dirty:               156 kB
Writeback:             0 kB
AnonPages:       1880200 kB
Mapped:           390532 kB
Shmem:              7420 kB
KReclaimable:     390304 kB
Slab:             459580 kB
SReclaimable:     390304 kB
SUnreclaim:        69276 kB
KernelStack:        5120 kB
PageTables:         9252 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    4589420 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       32816 kB
VmallocChunk:          0 kB
Percpu:             1768 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1392640 kB
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
DirectMap4k:      149440 kB
DirectMap2M:     4044800 kB
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
| 15590 | 13952 | 15707 | 0.7449% | 0.8386% |

## Behavior changes

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/ftp/tests/002.php on line 8
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

### ext/libxml/tests/bug51903.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
004+ 
005+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
006+ 
007+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
008+ [003] Connect failed, [2002] 
009+ 
010+ Warning: mysqli::query(): invalid object or resource mysqli
011+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/bug51647.php on line 11
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
014+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
015+ 
016+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
017+ 
018+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
019+ 
020+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
021+ [009] Connect failed, [2002] 
022+ 
023+ Warning: mysqli::query(): invalid object or resource mysqli
024+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/bug51647.php on line 41
025+ [011] [2002] 
026+ done!
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
004+ 
005+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
006+ 
007+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
008+ 
009+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
010+ 
011+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
012+ 
013+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
014+ 
015+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/connect.inc on line 84
001- array(2) {
002-   [0]=>
003-   string(10) "Ssl_cipher"
004-   [1]=>
005-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
006- }
007- array(2) {
008-   [0]=>
009-   string(10) "Ssl_cipher"
010-   [1]=>
011-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
012- }
```

### ext/mysqli/tests/mysqli_fetch_array_large.phpt

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

### ext/mysqli/tests/mysqli_fetch_field_direct.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_field_flags.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_field_types.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_object_no_constructor.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fork.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_free_result.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_charset.phpt

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

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ 
054+ [008] mysqlnd used to be more verbose and used to support SELECT
054- array(1) {
055-   ["id"]=>
056-   string(1) "1"
057- }
057+ [011] Connection should not be gone, [0] 
058+ NULL
```

### ext/mysqli/tests/mysqli_next_result.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [007] Expecting 3 result(s), got 2 result(s)
003+ [010] Expecting 2 result(s), got 1 result(s)
004+ [011] [1146] Table 'test.test' doesn't exist
005+ [013] Expecting 1 result(s), got 0 result(s)
006+ 
```

### ext/mysqli/tests/mysqli_no_reconnect.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_num_fields.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [010] [1146] Table 'test.test' doesn't exist
003+ [020] [1146] Table 'test.test' doesn't exist
001- Warning: mysqli_num_fields(): Couldn't fetch mysqli_result in %s on line %d
```

### ext/mysqli/tests/mysqli_options_int_and_float_native.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_pconn_kill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [012] New persistent connection cannot execute queries, [1146] Table 'test.test' doesn't exist
002+ [014] New regular connection cannot execute queries, [1146] Table 'test.test' doesn't exist
003+ 
004+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_pconn_kill.php on line 73
```

### ext/mysqli/tests/mysqli_pconn_max_links.phpt

Test SKIPPED in control but FAILED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

```patch
016+ [015] 2006/MySQL server has gone away
017+ [017] Expecting boolean/false got boolean/true
018+ [018] Expecting int/0 got integer/1
019+ [020] Error: 2006/MySQL server has gone away
016- 
017- Warning: Error while sending QUERY packet. %s
018- 
019- Warning: mysqli_reap_async_query(): %s
020- 
021- Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
022- [018] Error: %d/%s
```

Test XFAILED in both, but outputs is different.

```patch
005+ Fetching from thread 1141...
005- Fetching from thread 1392...
```

### ext/mysqli/tests/mysqli_poll_mixing_insert_select.phpt

Test FAILED in experiment beacuse

```patch
001+ [006] Expecting true got boolean/true
002+ [006] Expecting true got boolean/true
003+ [006] Expecting true got boolean/true
004+ [003] 'INSERT INTO test(id, label) VALUES (100, 'z')' caused 1146
005+ [006] Expecting true got boolean/true
006+ [006] Expecting true got boolean/true
004- array(2) {
005-   ["id"]=>
006-   string(3) "100"
007-   ["label"]=>
008-   string(1) "z"
009- }
008+ [006] Expecting true got boolean/true
010+ [006] Expecting true got boolean/true
012+ [006] Expecting true got boolean/true
013+ [006] Expecting true got boolean/true
014+ [003] 'DELETE FROM test WHERE id = @a' caused 1146
015+ [006] Expecting true got boolean/true
016+ [003] 'DELETE FROM test WHERE id = 1' caused 1146
017+ [006] Expecting true got boolean/true
018+ [006] Expecting true got boolean/true
019+ NULL
```

Test FAILED in both, but outputs is different.

```patch
001+ [006] Expecting true got boolean/true
002+ [006] Expecting true got boolean/true
003+ [006] Expecting true got boolean/true
004+ [003] 'INSERT INTO test(id, label) VALUES (100, 'z')' caused 1146
005+ [006] Expecting true got boolean/true
006+ [006] Expecting true got boolean/true
007+ [003] 'SELECT' caused 1064
008+ [006] Expecting true got boolean/true
009+ [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1062
010+ [006] Expecting true got boolean/true
011+ [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
012+ [006] Expecting true got boolean/true
013+ [006] Expecting true got boolean/true
014+ [003] 'DELETE FROM test WHERE id = @a' caused 1146
015+ [006] Expecting true got boolean/true
016+ [003] 'DELETE FROM test WHERE id = 1' caused 1146
017+ [006] Expecting true got boolean/true
001- [005] Expecting true got boolean/true
002- 
003- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
019+ NULL
020+ [009] [2014] Commands out of sync; you can't run this command now
021+ done!
005- 
006- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
007- [005] Expecting true got boolean/true
008- 
009- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
010- [006] Expecting true got boolean/true
011- 
012- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
013- [005] Expecting true got boolean/true
014- 
015- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
016- [006] Expecting true got boolean/true
017- 
018- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
019- [005] Expecting true got boolean/true
020- 
021- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
022- [006] Expecting true got boolean/true
023- 
024- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
025- [005] Expecting true got boolean/true
026- 
027- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
028- [006] Expecting true got boolean/true
029- 
030- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
031- [003] 'SELECT' caused 1064
032- [005] Expecting true got boolean/true
033- 
034- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
035- [006] Expecting true got boolean/true
036- 
037- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
038- [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1146
039- [005] Expecting true got boolean/true
040- 
041- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
042- [006] Expecting true got boolean/true
043- 
044- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
045- [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
046- [005] Expecting true got boolean/true
047- 
048- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
049- [006] Expecting true got boolean/true
050- 
051- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
052- [005] Expecting true got boolean/true
053- 
054- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
055- [006] Expecting true got boolean/true
056- 
057- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
058- [003] 'DELETE FROM test WHERE id = @a' caused 1146
059- [005] Expecting true got boolean/true
060- 
061- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
062- [006] Expecting true got boolean/true
063- 
064- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
065- [003] 'DELETE FROM test WHERE id = 1' caused 1146
066- [005] Expecting true got boolean/true
067- 
068- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
069- [006] Expecting true got boolean/true
070- 
071- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
072- [005] Expecting true got boolean/true
073- 
074- Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
075- [006] Expecting true got boolean/true
076- 
077- Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
078- [009] [2014] Commands out of sync; you can't run this command now
079- done!
```

### ext/mysqli/tests/mysqli_prepare.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_ps_select_union.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_query.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_real_escape_string_gb2312.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_real_query.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- array(1) {
002-   ["valid"]=>
003-   string(30) "this is sql but with semicolon"
004- }
005- 
006- Warning: mysqli_real_query(): Couldn't fetch mysqli in %s on line %d
007- done!
```

### ext/mysqli/tests/mysqli_result_references_mysqlnd.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [001] [1146] Table 'test.test' doesn't exist
003+ 
004+ Notice: Undefined variable: res in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 12
005+ 
006+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 12
007+ array(0) refcount(1){
008+ }
009+ 
010+ Notice: Undefined variable: res in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 21
011+ 
012+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 21
013+ [002] [1146] Table 'test.test' doesn't exist
014+ 
015+ Notice: Undefined variable: res in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 29
016+ 
017+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 29
018+ 
019+ Notice: Undefined variable: res in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 29
020+ 
021+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 29
022+ 
023+ Notice: Undefined variable: res in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 37
024+ 
025+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, null given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_result_references_mysqlnd.php on line 37
026+ array(1) refcount(2){
001- array(1) refcount(%d){
002-   [0]=>
003-   array(4) refcount(%d){
004-     ["row_ref"]=>
005-     &NULL
006-     ["row_copy"]=>
007-     array(2) refcount(1){
008-       ["id"]=>
009-       string(1) "1" refcount(%d)
010-       ["label"]=>
011-       string(1) "a" refcount(%d)
012-     }
013-     ["id_ref"]=>
014-     string(1) "1" refcount(%d)
015-     ["id_copy"]=>
016-     string(1) "1" refcount(%d)
017-   }
018- }
019- array(2) refcount(%d){
021-   array(4) refcount(%d){
024-     ["row_copy"]=>
025-     array(2) refcount(%d){
026-       ["id"]=>
027-       string(1) "1" refcount(%d)
028-       ["label"]=>
029-       string(1) "a" refcount(%d)
030-     }
028+   array(5) refcount(1){
030+     &array(1) refcount(1){
031+       ["id"]=>
032+       &NULL
033+     }
034+     ["row_copy"]=>
035+     NULL
036+     ["id_ref"]=>
038+     ["id_copy"]=>
039+     NULL
040+     ["id_copy_mod"]=>
041+     int(0)
042+   }
043+ }
044+ done!
031-     ["id_ref"]=>
032-     string(1) "1" refcount(%d)
033-     ["id_copy"]=>
034-     string(1) "1" refcount(%d)
035-   }
036-   [1]=>
037-   array(5) refcount(%d){
038-     ["row_ref"]=>
039-     &array(2) refcount(%d){
040-       ["id"]=>
041-       &string(1) "2" refcount(%d)
042-       ["label"]=>
043-       string(1) "b" refcount(%d)
044-     }
045-     ["row_copy"]=>
046-     array(2) refcount(%d){
047-       ["id"]=>
048-       string(1) "2" refcount(%d)
049-       ["label"]=>
050-       string(1) "b" refcount(%d)
051-     }
052-     ["id_ref"]=>
053-     &string(1) "2" refcount(%d)
054-     ["id_copy"]=>
055-     string(1) "2" refcount(%d)
056-     ["id_copy_mod"]=>
057-     int(2)
058-   }
059- }
060- done!
```

### ext/mysqli/tests/mysqli_stmt_bind_limits.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ [020 + 04] [1146] Table 'test.test' doesn't exist
010+ bool(false)
009- Statement done
010- bool(true)
```

### ext/mysqli/tests/mysqli_stmt_bind_param.phpt

Test PASSED in control but FAILED in experiment

```patch
012+ [042] [1146] Table 'test.test' doesn't exist
012- done!
013+ [094] [1146] Table 'test.test' doesn't exist
014+ [962] [1146] Table 'test.test' doesn't exist
015+ [412] [1146] Table 'test.test' doesn't exist
016+ [442] [1146] Table 'test.test' doesn't exist
017+ [482] [1146] Table 'test.test' doesn't exist
018+ [702] [1146] Table 'test.test' doesn't exist
019+ [722] [1146] Table 'test.test' doesn't exist
020+ [742] [1146] Table 'test.test' doesn't exist
021+ [802] [1146] Table 'test.test' doesn't exist
022+ [842] [1146] Table 'test.test' doesn't exist
023+ [1146] Table 'test.test' doesn't exist
024+ [2004] [1146] Table 'test.test' doesn't exist
025+ 
026+ Warning: mysqli_stmt::bind_param(): invalid object or resource mysqli_stmt
027+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param.php on line 325
028+ [2005] Expecting boolean/true got boolean/, [1146] Table 'test.test' doesn't exist
029+ 
030+ Warning: mysqli_stmt::execute(): invalid object or resource mysqli_stmt
031+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param.php on line 331
032+ [2006] [1146] Table 'test.test' doesn't exist
033+ [2008] Expecting row, [0] 
034+ 
035+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param.php on line 340
036+ [2009] Row seems wrong, dumping record
037+ NULL
038+ [2013] [1146] Table 'test.test' doesn't exist
039+ 
040+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param.php on line 362
041+ [2014] Cannot find row id = 102
042+ 
043+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param.php on line 367
044+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [002] [1146] Table 'test.test' doesn't exist
002+ 
003+ Warning: mysqli_stmt_bind_param(): invalid object or resource mysqli_stmt
004+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 12
005+ [003] [1146] Table 'test.test' doesn't exist
006+ 
007+ Warning: mysqli_stmt_bind_result(): invalid object or resource mysqli_stmt
008+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 17
009+ [004] [1146] Table 'test.test' doesn't exist
002- int(1)
003- string(1) "a"
004- Call user func, procedural, using references for everything
005- int(1)
006- string(1) "a"
007- Call user func, object oriented, using references for everything
008- int(1)
009- string(1) "a"
010- Call user func, object oriented, using variable for types. using references for bound parameter
011- int(1)
012- string(1) "a"
013- Call user func, object oriented, using constant for types. using references for bound parameter
014- int(1)
015- string(1) "a"
016- Call user func, procedural, using references for everything but using variable for types
017- int(1)
018- string(1) "a"
019- Call user func, procedural, using references for bound parameter, using variables for resource and types
020- int(1)
021- string(1) "a"
022- Call user func, procedural, using references for bound parameter, using variables for resource and types
023- int(1)
024- string(1) "a"
025- Call user func, procedural, using references for bound parameter, using variable for resource, using constant for types
026- int(1)
027- string(1) "a"
028- Call user func, procedural, using references for bound parameter, using variable for resource, using constant for types, array
029- int(1)
030- string(1) "a"
031- done!
011+ NULL
012+ NULL
013+ 
014+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
015+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 25
016+ [006] [1146] Table 'test.test' doesn't exist
017+ 
018+ Warning: mysqli_stmt_bind_param(): invalid object or resource mysqli_stmt
019+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 39
020+ [007] [1146] Table 'test.test' doesn't exist
021+ 
022+ Warning: mysqli_stmt_execute(): invalid object or resource mysqli_stmt
023+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 42
024+ [008] [1146] Table 'test.test' doesn't exist
025+ 
026+ Warning: mysqli_stmt_bind_result(): invalid object or resource mysqli_stmt
027+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 46
028+ [009] [1146] Table 'test.test' doesn't exist
029+ Call user func, procedural, using references for everything
030+ NULL
031+ NULL
032+ 
033+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
034+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_call_user_func.php on line 54
035+ [014] [0] 
036+ Call user func, object oriented, using references for everything
037+ NULL
038+ NULL
039+ [019] [0] 
040+ Call user func, object oriented, using variable for types. using references for bound parameter
041+ NULL
042+ NULL
043+ [024] [0] 
044+ Call user func, object oriented, using constant for types. using references for bound parameter
045+ NULL
046+ NULL
047+ [029] [0] 
048+ Call user func, procedural, using references for everything but using variable for types
049+ NULL
050+ NULL
051+ [029] [0] 
052+ Call user func, procedural, using references for bound parameter, using variables for resource and types
053+ NULL
054+ NULL
055+ Call user func, procedural, using references for bound parameter, using variables for resource and types
056+ int(1)
057+ int(4294967295)
058+ Call user func, procedural, using references for bound parameter, using variable for resource, using constant for types
059+ int(1)
060+ int(4294967295)
061+ Call user func, procedural, using references for bound parameter, using variable for resource, using constant for types, array
062+ int(1)
063+ int(4294967295)
064+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Trying to get property 'id' of non-object in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php on line 55
002+ NULL
003+ 
004+ Fatal error: Uncaught Error: Call to a member function bind_param() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php(63) : eval()'d code:1
001- int(%d)
002- executing
003- bool(true)
004- done!
005+ Stack trace:
006+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php(63): eval()
007+ #1 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php(63) : eval()'d code on line 1
```

### ext/mysqli/tests/mysqli_stmt_bind_result.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ [0142] [1146] Table 'test.test' doesn't exist
011- done!
012+ [0165] [1146] Table 'test.test' doesn't exist
013+ [0262] [1146] Table 'test.test' doesn't exist
014+ [0382] [1146] Table 'test.test' doesn't exist
015+ [0445] [1146] Table 'test.test' doesn't exist
016+ [1806] [1146] Table 'test.test' doesn't exist
017+ [0627] [1146] Table 'test.test' doesn't exist
018+ 
019+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
020+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_result.php on line 96
021+ [0862] [1146] Table 'test.test' doesn't exist
022+ [1002] [1146] Table 'test.test' doesn't exist
023+ [1042] [1146] Table 'test.test' doesn't exist
024+ [1062] [1146] Table 'test.test' doesn't exist
025+ [1222] [1146] Table 'test.test' doesn't exist
026+ [1402] [1146] Table 'test.test' doesn't exist
027+ [1562] [1146] Table 'test.test' doesn't exist
028+ [1762] [1146] Table 'test.test' doesn't exist
029+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_result_bit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [005 - 2] [1146] Table 'test.test' doesn't exist
001- done!
002+ 
003+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
004+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php on line 49
005+ [005 - 3] [1146] Table 'test.test' doesn't exist
006+ 
007+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
008+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php on line 49
009+ [005 - 10] [1146] Table 'test.test' doesn't exist
010+ 
011+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
012+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php on line 49
013+ [009 - 15] [1146] Table 'test.test' doesn't exist
014+ [009 - 18] [0] 
015+ [005 - 21] [1146] Table 'test.test' doesn't exist
016+ 
017+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
018+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php on line 49
019+ [005 - 26] [1146] Table 'test.test' doesn't exist
020+ 
021+ Warning: mysqli_stmt_close(): invalid object or resource mysqli_stmt
022+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php on line 49
023+ [009 - 30] [0] 
024+ [009 - 38] [0] 
025+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_result_format.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [092] Cannot insert data, [1146] Table 'test.test' doesn't exist
001- done!
002+ [101] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
003+ [112] Cannot insert data, [1146] Table 'test.test' doesn't exist
004+ [121] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
005+ [152] Cannot insert data, [1146] Table 'test.test' doesn't exist
006+ [161] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
007+ [172] Cannot insert data, [1146] Table 'test.test' doesn't exist
008+ [181] Cannot prepare PS, [1054] Unknown column 'col1' in 'field list'
009+ [192] Cannot insert data, [1146] Table 'test.test' doesn't exist
010+ [201] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
011+ [212] Cannot insert data, [1146] Table 'test.test' doesn't exist
012+ [221] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
013+ [301] [1146] Table 'test.test' doesn't exist
014+ done!
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:49:51 2021 (86845): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:49:51 2021 (86845): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:35:03 2021 (30108): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pdo_mysql/tests/bug66528.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug70862.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug79375.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_33689.phpt

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

### ext/pdo_mysql/tests/bug_44707.phpt

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

### ext/pdo_mysql/tests/pdo_mysql_attr_fetch_table_names.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ 
003+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_attr_fetch_table_names.php on line 7
004+ 
005+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_attr_fetch_table_names.php:8
006+ Stack trace:
007+ #0 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_attr_fetch_table_names.php on line 8
001- array(1) {
002-   [0]=>
003-   array(1) {
004-     ["test.label"]=>
005-     string(1) "a"
006-   }
007- }
008- array(1) {
009-   [0]=>
010-   array(1) {
011-     ["label"]=>
012-     string(1) "a"
013-   }
014- }
015- done!
```

### ext/pdo_mysql/tests/pdo_mysql_errorinfo.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002- [015] Driver-specific error code not set
003- [015] Driver-specific error message.not set
004- [016] Driver-specific error code not set
005- [016] Driver-specific error message.not set
```

### ext/pdo_mysql/tests/pdo_mysql_exec.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_last_insert_id.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 40
002+ [008] Expecting '0'/string got ''0''/string
003+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 44
004+ 
005+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 46
006+ [009] Expecting at least 102, got 0
007+ 
008+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 60
009+ [011] Expecting at least 1, got 0
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_clear_error.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 11
002+ 
003+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 14
004+ [003] Execute has failed, '42S02' array (
005+   0 => '42S02',
006+   1 => 1146,
007+   2 => 'Table \'test.test\' doesn\'t exist',
008+ )
009+ array(0) {
001- array(1) {
002-   [0]=>
003-   array(2) {
004-     ["id"]=>
005-     string(1) "1"
006-     ["label"]=>
007-     string(4) "row1"
008-   }
011- array(1) {
012-   [0]=>
013-   array(3) {
014-     ["?"]=>
015-     string(2) "id"
016-     ["id"]=>
017-     int(1)
012+ 
013+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 27
014+ 
015+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php:28
016+ Stack trace:
017+ #0 {main}
018+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 28
018-     ["label"]=>
019-     string(4) "row1"
020-   }
021- }
022- done!
```

Test FAILED in both, but outputs is different.

```patch
002+ 
003+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 14
004+ [003] Execute has failed, '42S02' array (
005+   0 => '42S02',
006+   1 => 1146,
007+   2 => 'Table \'test.test\' doesn\'t exist',
008+ )
012+ 
013+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 27
014+ 
005- array(0) {
006- }
007- done!
015+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php:28
016+ Stack trace:
017+ #0 {main}
018+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 28
```

### ext/pdo_mysql/tests/pdo_mysql_rollback.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
002+ 
003+ Warning: PDO::exec(): SQLSTATE[01000]: Warning: 1265 Data truncated for column 'label' at row 1 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
004+ 
005+ Warning: PDO::query(): SQLSTATE[01000]: Warning: 1265 Data truncated for column 'label' at row 1 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_rollback.php on line 11
001- int(1)
002- int(0)
003- int(1)
004- int(0)
005- done!
006+ [001] INSERT has failed, test will fail
007+ 
008+ Warning: PDO::query(): SQLSTATE[01000]: Warning: 1265 Data truncated for column 'label' at row 1 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_rollback.php on line 24
009+ 
010+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_rollback.php on line 29
011+ 
012+ Fatal error: Uncaught Error: Call to a member function fetch() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_rollback.php:29
013+ Stack trace:
014+ #0 {main}
015+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_rollback.php on line 29
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindcolumn.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
001- id = 1 (integer) / label = 'a' (string)
002- id = 2 (integer) / label = 'b' (string)
003- id = 3 (integer) / label = 'c' (string)
004- id = 4 (integer) / label = 'd' (string)
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
003- in = 0 -> id = 1 (integer) / label = 'a' (string)
004- in = 0 -> id = 2 (integer) / label = 'b' (string)
005- Same again...
006- in = 0 -> id = 1 (integer) / label = 'a' (string)
007- in = 0 -> id = 2 (integer) / label = 'b' (string)
004+ Same again...
005+ NULL...
006+ 
007+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.php on line 55
008+ Unbuffered...
009+ 
010+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
011+ Same again...
009- in = 0 -> id = 100 (integer) / label = NULL (NULL)
010- Unbuffered...
011- in = 0 -> id = 1 (integer) / label = 'a' (string)
012- in = 0 -> id = 2 (integer) / label = 'b' (string)
013- Same again...
014- in = 0 -> id = 1 (integer) / label = 'a' (string)
015- in = 0 -> id = 2 (integer) / label = 'b' (string)
016- NULL...
017- in = 0 -> id = 100 (integer) / label = NULL (NULL)
018- Native PS...
019- Buffered...
020- in = 0 -> id = 1 (integer) / label = 'a' (string)
021- in = 0 -> id = 2 (integer) / label = 'b' (string)
022- Same again...
013+ 
014+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.php on line 55
015+ Native PS...
016+ Buffered...
017+ 
018+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
019+ 
020+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.php on line 10
021+ 
022+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.php:12
023+ Stack trace:
024+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.php(96): pdo_mysql_stmt_bindparam(Object(PDO), 5)
025+ #1 {main}
026+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.php on line 12
023- in = 0 -> id = 1 (integer) / label = 'a' (string)
024- in = 0 -> id = 2 (integer) / label = 'b' (string)
025- NULL...
026- in = 0 -> id = 100 (integer) / label = NULL (NULL)
027- Unbuffered...
028- in = 0 -> id = 1 (integer) / label = 'a' (string)
029- in = 0 -> id = 2 (integer) / label = 'b' (string)
030- Same again...
031- in = 0 -> id = 1 (integer) / label = 'a' (string)
032- in = 0 -> id = 2 (integer) / label = 'b' (string)
033- NULL...
034- in = 0 -> id = 100 (integer) / label = NULL (NULL)
035- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 25
001- done!
002+ [005/emulated + 2] array (
003+   0 => '42S02',
004+   1 => 1146,
005+   2 => 'Table \'test.test\' doesn\'t exist',
006+ )
007+ 
008+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 31
009+ 
010+ Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:33
011+ Stack trace:
012+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(87): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 12, false, 'BIGINT', '-1000')
013+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(103): pdo_mysql_stmt_bindparam_types(Object(PDO), 12, 'BIGINT', -1000)
014+ #2 {main}
015+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 33
```

Test FAILED in both, but outputs is different.

```patch
002+ [005/emulated + 2] array (
002- [008/emulated + 2] array (
008+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 31
008- Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 19
010+ Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:33
010- Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:20
012+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(87): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 12, false, 'BIGINT', '-1000')
013+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(103): pdo_mysql_stmt_bindparam_types(Object(PDO), 12, 'BIGINT', -1000)
012- #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 37, true, 'DATETIME', '2008-04-23 16:4...')
013- #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(128): pdo_mysql_stmt_bindparam_types(Object(PDO), 37, 'DATETIME', '2008-04-23 16:4...')
015+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 33
015-   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 20
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 31
001- done!
002+ 
003+ Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php:33
004+ Stack trace:
005+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php(75): test_blob(Object(PDO), 5, 'BLOB', 32767)
006+ #1 {main}
007+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 33
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 19
005- in = 0 -> id = 1 (integer) / label = 'a' (string)
006- in = 0 -> id = 2 (integer) / label = 'b' (string)
007- Unbuffered...
008+ Fatal error: Uncaught Error: Call to a member function fetch() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php:26
009+ Stack trace:
010+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php(108): pdo_mysql_stmt_closecursor(Object(PDO))
011+ #1 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 26
009- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
010- in = 0 -> id = 1 (integer) / label = 'a' (string)
011- in = 0 -> id = 2 (integer) / label = 'b' (string)
012- Testing native PS...
013- Buffered...
014- 
015- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
016- in = 0 -> id = 1 (integer) / label = 'a' (string)
017- in = 0 -> id = 2 (integer) / label = 'b' (string)
018- Unbuffered...
019- 
020- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
021- in = 0 -> id = 1 (integer) / label = 'a' (string)
022- in = 0 -> id = 2 (integer) / label = 'b' (string)
023- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor_empty.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
001- in = 0 -> id = 1 (integer) / label = 'a' (string)
002- in = 0 -> id = 2 (integer) / label = 'b' (string)
003- in = 0 -> id = 1 (integer) / label = 'a' (string)
004- in = 0 -> id = 2 (integer) / label = 'b' (string)
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_columncount.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_errorinfo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
022+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
023+ 
024+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1051 Unknown table 'test.test' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_errorinfo.php on line 19
025+ 
033-   string(5) "00000"
035-   NULL
037-   NULL
038+   string(5) "42S02"
040+   int(1051)
042+   string(25) "Unknown table 'test.test'"
043- array(3) {
044-   [0]=>
045-   string(0) ""
046-   [1]=>
047-   NULL
048-   [2]=>
049-   NULL
050- }
048+ 
049+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
050+ 
051+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_errorinfo.php on line 39
052- Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table '%s.test' doesn't exist in %s on line %d
053- array(3) {
054-   [0]=>
055-   string(5) "42S02"
053+ Fatal error: Uncaught Error: Call to a member function errorInfo() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_errorinfo.php:40
054+ Stack trace:
055+ #0 {main}
056+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_errorinfo.php on line 40
056-   [1]=>
057-   int(1146)
058-   [2]=>
059-   string(%d) "Table '%s.test' doesn't exist"
060- }
061- array(3) {
062-   [0]=>
063-   string(5) "00000"
064-   [1]=>
065-   NULL
066-   [2]=>
067-   NULL
068- }
069- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_non_select.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
001- done!
002+ Native PS (native support: no) and emulated PS returned different data for EXPLAIN: array (
003+   0 => 
004+   array (
005+     'id' => '1',
006+     'select_type' => 'SIMPLE',
007+     'table' => 'test',
008+     'partitions' => NULL,
009+     'type' => 'index',
010+     'possible_keys' => NULL,
011+     'key' => 'PRIMARY',
012+     'key_len' => '4',
013+     'ref' => NULL,
014+     'rows' => '1',
015+     'filtered' => '100.00',
016+     'extra' => 'Using index',
017+   ),
018+ ) vs. array (
019+   0 => 
020+   array (
021+     'id' => 1,
022+     'select_type' => 'SIMPLE',
023+     'table' => 'test',
024+     'partitions' => NULL,
025+     'type' => 'index',
026+     'possible_keys' => NULL,
027+     'key' => 'PRIMARY',
028+     'key_len' => '4',
029+     'ref' => NULL,
030+     'rows' => 2,
031+     'filtered' => 100.0,
032+     'extra' => 'Using index',
033+   ),
034+ )
035+ Native PS (native support: no) and emulated PS returned different data for EXPLAIN: array (
036+   0 => 
037+   array (
038+     'id' => '1',
039+     'select_type' => 'SIMPLE',
040+     'table' => 'test',
041+     'partitions' => NULL,
042+     'type' => 'index',
043+     'possible_keys' => NULL,
044+     'key' => 'PRIMARY',
045+     'key_len' => '4',
046+     'ref' => NULL,
047+     'rows' => '1',
048+     'filtered' => '100.00',
049+     'extra' => 'Using index',
050+   ),
051+ ) vs. array (
052+   0 => 
053+   array (
054+     'id' => 1,
055+     'select_type' => 'SIMPLE',
056+     'table' => 'test',
057+     'partitions' => NULL,
058+     'type' => 'index',
059+     'possible_keys' => NULL,
060+     'key' => 'PRIMARY',
061+     'key_len' => '4',
062+     'ref' => NULL,
063+     'rows' => 2,
064+     'filtered' => 100.0,
065+     'extra' => 'Using index',
066+   ),
067+ )
068+ done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ 
010+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.php on line 37
011+ 
012+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.php on line 40
013+ 
014+ Notice: Undefined offset: 0 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.php on line 42
015+ NULL
016+ 
017+ Warning: PDOStatement::execute(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'myobj' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.php on line 44
018+ 
019+ Notice: Undefined offset: 0 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.php on line 46
020+ NULL
009- myclass::unserialize('Data fetched from DB to be given to unserialize()')
010- object(myclass)#%d (0) {
011- }
012- myclass::unserialize('Data fetched from DB to be given to unserialize()')
013- object(myclass)#%d (0) {
014- }
017- myclass::unserialize('Data fetched from DB to be given to unserialize()')
018- object(myclass)#%d (0) {
019- }
023+ 
024+ Warning: PDOStatement::execute(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'myobj' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize_simple.php on line 51
025+ bool(false)
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetchobject.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ array(0) {
003+ }
004+ done!
001- myclass::__set(id, -'1'-) 1
002- myclass::__set(, -''-) 2
003- myclass::__set(null, -NULL-) 3
004- myclass::__set(, -''-) 4
005- myclass::__construct(0, 1): 4 / 4
006- myclass::__set(id, -'2'-) 1
007- myclass::__set(, -''-) 2
008- myclass::__set(null, -NULL-) 3
009- myclass::__set(, -''-) 4
010- myclass::__construct(1, 2): 8 / 4
011- myclass::__set(id, -'3'-) 1
012- myclass::__set(, -''-) 2
013- myclass::__set(null, -NULL-) 3
014- myclass::__set(, -''-) 4
015- myclass::__construct(2, 3): 12 / 4
016- object(myclass)#%d (4) {
017-   ["set_calls":"myclass":private]=>
018-   int(4)
019-   ["grp":protected]=>
020-   NULL
021-   ["id"]=>
022-   string(1) "3"
023-   ["null"]=>
024-   NULL
025- }
026- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 16
002- done!
003+ 
004+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 40
005+ 
006+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:41
007+ Stack trace:
008+ #0 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 41
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 16
003- Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 63
004- [110] + 1] Insert failed, 42 - array (
005-   0 => '42S02',
006-   1 => 1146,
007-   2 => 'Table \'test.test\' doesn\'t exist',
008- )
004+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 40
006+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:41
007+ Stack trace:
008+ #0 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 41
010- Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 63
011- [180] + 1] Insert failed, 42 - array (
012-   0 => '42S02',
013-   1 => 1146,
014-   2 => 'Table \'test.test\' doesn\'t exist',
015- )
016- 
017- Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 63
018- [390] + 1] Insert failed, 42 - array (
019-   0 => '42S02',
020-   1 => 1146,
021-   2 => 'Table \'test.test\' doesn\'t exist',
022- )
023- 
024- Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 63
025- [570] + 1] Insert failed, 42 - array (
026-   0 => '42S02',
027-   1 => 1146,
028-   2 => 'Table \'test.test\' doesn\'t exist',
029- )
030- 
031- Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 265
032- 
033- Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 266
034- 
035- Fatal error: Uncaught Error: Call to a member function getColumnMeta() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:267
036- Stack trace:
037- #0 {main}
038-   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 267
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
004+ 
005+ Warning: PDO::query(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php on line 6
006+ 
007+ Fatal error: Uncaught Error: Call to a member function errorInfo() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php:7
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php(28): mysql_stmt_multiquery_wrong_usage(Object(PDO))
010+ #1 {main}
011+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php on line 7
002- array(3) {
003-   [0]=>
004-   string(5) "00000"
005-   [1]=>
006-   NULL
007-   [2]=>
008-   NULL
009- }
010- array(1) {
011-   [0]=>
012-   array(1) {
013-     ["label"]=>
014-     string(1) "a"
015-   }
016- }
017- array(3) {
018-   [0]=>
019-   string(5) "00000"
020-   [1]=>
021-   NULL
022-   [2]=>
023-   NULL
024- }
025- array(1) {
026-   [0]=>
027-   array(1) {
028-     ["label"]=>
029-     string(1) "a"
030-   }
031- }
032- array(1) {
033-   [0]=>
034-   array(1) {
035-     ["label"]=>
036-     string(1) "a"
037-   }
038- }
039- Native Prepared Statements...
040- 
041- Warning: PDO::query(): SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your %s server version for the right syntax to use near '%SSELECT label FROM test ORDER BY id ASC LIMIT 1' at line %d in %s on line %d
042- 
043- Fatal error: Uncaught Error: Call to a member function errorInfo() on bool in %s:%d
044- Stack trace:
045- #0 %s(%d): mysql_stmt_multiquery_wrong_usage(Object(PDO))
046- #1 {main}
047-   thrown in %s on line %d
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.phpt

Test XFAILED in experiment beacuse

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
014-     string(1) "1"
017+     string(1) "0"
019-     string(1) "2"
022+     string(12) "947689119239"
024-     string(1) "3"
027+     string(13) "3533871367736"
027- array(3) {
029-   array(2) {
030-     ["id"]=>
031-     string(1) "3"
032-     ["label"]=>
033-     string(1) "c"
030+ 
031+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php on line 39
032+ bool(false)
033+ array(1) {
035+   array(1) {
036+     ["_version"]=>
037+     string(23) "8.0.25-0ubuntu0.20.04.1"
035-   [1]=>
036-   array(2) {
037-     ["id"]=>
038-     string(1) "2"
039-     ["label"]=>
040-     string(1) "b"
041-   }
042-   [2]=>
043-   array(2) {
044-     ["id"]=>
039+ }
040+ bool(false)
041+ 
042+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php on line 36
043+ 
044+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php:38
045+ Stack trace:
046+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php(59): test_proc2(Object(PDO))
047+ #1 {main}
048+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php on line 38
045-     string(1) "1"
046-     ["label"]=>
047-     string(1) "a"
048-   }
049- }
050- bool(false)
051- array(1) {
052-   [0]=>
053-   array(1) {
054-     ["_version"]=>
055-     string(%d) "%s"
056-   }
057- }
058- bool(false)
059- array(3) {
060-   [0]=>
061-   array(1) {
062-     ["id"]=>
063-     string(1) "1"
064-   }
065-   [1]=>
066-   array(1) {
067-     ["id"]=>
068-     string(1) "2"
069-   }
070-   [2]=>
071-   array(1) {
072-     ["id"]=>
073-     string(1) "3"
074-   }
075- }
076- array(3) {
077-   [0]=>
078-   array(2) {
079-     ["id"]=>
080-     string(1) "3"
081-     ["label"]=>
082-     string(1) "c"
083-   }
084-   [1]=>
085-   array(2) {
086-     ["id"]=>
087-     string(1) "2"
088-     ["label"]=>
089-     string(1) "b"
090-   }
091-   [2]=>
092-   array(2) {
093-     ["id"]=>
094-     string(1) "1"
095-     ["label"]=>
096-     string(1) "a"
097-   }
098- }
099- bool(false)
100- Native PS...
101- array(1) {
102-   [0]=>
103-   array(1) {
104-     ["_version"]=>
105-     string(%d) "%s"
106-   }
107- }
108- bool(false)
109- array(3) {
110-   [0]=>
111-   array(1) {
112-     ["id"]=>
113-     string(1) "1"
114-   }
115-   [1]=>
116-   array(1) {
117-     ["id"]=>
118-     string(1) "2"
119-   }
120-   [2]=>
121-   array(1) {
122-     ["id"]=>
123-     string(1) "3"
124-   }
125- }
126- array(3) {
127-   [0]=>
128-   array(2) {
129-     ["id"]=>
130-     string(1) "3"
131-     ["label"]=>
132-     string(1) "c"
133-   }
134-   [1]=>
135-   array(2) {
136-     ["id"]=>
137-     string(1) "2"
138-     ["label"]=>
139-     string(1) "b"
140-   }
141-   [2]=>
142-   array(2) {
143-     ["id"]=>
144-     string(1) "1"
145-     ["label"]=>
146-     string(1) "a"
147-   }
148- }
149- bool(false)
150- array(1) {
151-   [0]=>
152-   array(1) {
153-     ["_version"]=>
154-     string(%d) "%s"
155-   }
156- }
157- bool(false)
158- 
...
```

Test XFAILED in both, but outputs is different.

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
017+     string(1) "0"
014-     string(1) "1"
022+     string(12) "947689119239"
019-     string(1) "2"
027+     string(13) "3533871367736"
024-     string(1) "3"
030+ 
031+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php on line 39
032+ bool(false)
033+ array(1) {
027- array(3) {
029-   array(2) {
030-     ["id"]=>
031-     string(1) "3"
032-     ["label"]=>
033-     string(1) "c"
035+   array(1) {
036+     ["_version"]=>
037+     string(23) "8.0.25-0ubuntu0.20.04.1"
039+ }
040+ bool(false)
041+ 
042+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php on line 36
043+ 
044+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php:38
045+ Stack trace:
046+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php(59): test_proc2(Object(PDO))
047+ #1 {main}
048+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.php on line 38
035-   [1]=>
036-   array(2) {
037-     ["id"]=>
038-     string(1) "2"
039-     ["label"]=>
040-     string(1) "b"
041-   }
042-   [2]=>
043-   array(2) {
044-     ["id"]=>
045-     string(1) "1"
046-     ["label"]=>
047-     string(1) "a"
048-   }
049- }
050- array(0) {
051- }
052- bool(false)
053- array(1) {
054-   [0]=>
055-   array(1) {
056-     ["_version"]=>
057-     string(23) "8.0.25-0ubuntu0.20.04.1"
058-   }
059- }
060- bool(false)
061- array(3) {
062-   [0]=>
063-   array(1) {
064-     ["id"]=>
065-     string(1) "1"
066-   }
067-   [1]=>
068-   array(1) {
069-     ["id"]=>
070-     string(1) "2"
071-   }
072-   [2]=>
073-   array(1) {
074-     ["id"]=>
075-     string(1) "3"
076-   }
077- }
078- array(3) {
079-   [0]=>
080-   array(2) {
081-     ["id"]=>
082-     string(1) "3"
083-     ["label"]=>
084-     string(1) "c"
085-   }
086-   [1]=>
087-   array(2) {
088-     ["id"]=>
089-     string(1) "2"
090-     ["label"]=>
091-     string(1) "b"
092-   }
093-   [2]=>
094-   array(2) {
095-     ["id"]=>
096-     string(1) "1"
097-     ["label"]=>
098-     string(1) "a"
099-   }
100- }
101- array(0) {
102- }
103- bool(false)
104- Native PS...
105- array(1) {
106-   [0]=>
107-   array(1) {
108-     ["_version"]=>
109-     string(23) "8.0.25-0ubuntu0.20.04.1"
110-   }
111- }
112- bool(false)
113- array(3) {
114-   [0]=>
115-   array(1) {
116-     ["id"]=>
117-     string(1) "1"
118-   }
119-   [1]=>
120-   array(1) {
121-     ["id"]=>
122-     string(1) "2"
123-   }
124-   [2]=>
125-   array(1) {
126-     ["id"]=>
127-     string(1) "3"
128-   }
129- }
130- array(3) {
131-   [0]=>
132-   array(2) {
133-     ["id"]=>
134-     string(1) "3"
135-     ["label"]=>
136-     string(1) "c"
137-   }
138-   [1]=>
139-   array(2) {
140-     ["id"]=>
141-     string(1) "2"
142-     ["label"]=>
143-     string(1) "b"
144-   }
145-   [2]=>
146-   array(2) {
147-     ["id"]=>
148-     string(1) "1"
149-     ["label"]=>
150-     string(1) "a"
151-   }
152- }
153- bool(false)
154- array(1) {
155-   [0]=>
156-   array(1) {
157-     ["_version"]=>
158-     string(23) "8.0.25-0ubuntu0.20.04.1"
159-   }
160- }
161- bool(false)
162- array(3) {
163-   [0]=>
164-   array(1) {
165-     ["id"]=>
166-     string(1) "1"
167-   }
168-   [1]=>
169-   array(1) {
170-     ["id"]=>
171-     string(1) "2"
172-   }
173-   [2]=>
174-   array(1) {
175-     ["id"]=>
176-     string(1) "3"
177-   }
178- }
179- array(3) {
180-   [0]=>
181-   array(2) {
182-     ["id"]=>
183-     string(1) "3"
184-     ["label"]=>
185-     string(1) "c"
186-   }
187-   [1]=>
188-   array(2) {
189-     ["id"]=>
190-     string(1) "2"
191-     ["label"]=>
192-     string(1) "b"
193-   }
194-   [2]=>
195-   array(2) {
196-     ["id"]=>
197-     string(1) "1"
198-     ["label"]=>
199-     string(1) "a"
200-   }
201- }
202- bool(false)
203- done!
```

### ext/pdo_mysql/tests/pdo_mysql_subclass.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_subclass.php:49
008+ Stack trace:
009+ #0 {main}
010+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_subclass.php on line 49
006- array(2) {
007-   [0]=>
008-   array(1) {
009-     ["id"]=>
010-     string(1) "1"
011-   }
012-   [1]=>
013-   array(1) {
014-     ["id"]=>
015-     string(1) "2"
016-   }
017- }
018- bool(false)
019- __call('intercept_call', array (
020- ))
021- exec('DROP TABLE IF EXISTS test')
022- done!
```

### ext/pdo_mysql/tests/pdo_mysql_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types.php:14
001- done!
002+ Stack trace:
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types.php(126): test_type(Object(PDO), 340, 'TIME', '14:37:00')
005+ #2 {main}
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types.php on line 14
```

Test FAILED in both, but outputs is different.

```patch
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types.php(126): test_type(Object(PDO), 340, 'TIME', '14:37:00')
004- #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types.php(101): test_type(Object(PDO), 110, 'INT UNSIGNED', 4294967295, 4294967295)
```

### ext/pdo_mysql/tests/pdo_mysql_types_zerofill.phpt

Test FAILED in experiment beacuse

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php:14
001- done!
002+ Stack trace:
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(99): test_type(Object(PDO), 170, 'FLOAT ZEROFILL', 1, NULL, '/^[0]*1$/')
005+ #2 {main}
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php on line 14
```

Test FAILED in both, but outputs is different.

```patch
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(99): test_type(Object(PDO), 170, 'FLOAT ZEROFILL', 1, NULL, '/^[0]*1$/')
004- #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_95f4bc63ab2fd0c9/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(94): test_type(Object(PDO), 130, 'DOUBLE ZEROFILL', -1.01, NULL, '/^[0]*0$/')
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Wed, 30 Jun 2021 01:53:05 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.4.20
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Wed, 30 Jun 2021 01:53:05 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.4.20
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Wed, 30 Jun 2021 01:53:05 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.4.20
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Wed, 30 Jun 2021 01:53:05 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.4.20
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Wed, 30 Jun 2021 01:53:05 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.4.20
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Wed, 30 Jun 2021 01:53:05 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.4.20
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
084+ 
085+ Iteration 3
086+ 
087+ HTTP/1.1 200 OK

...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Wed, 30 Jun 2021 01:53:05 GMT
004- Date: Wed, 30 Jun 2021 01:38:00 GMT
017+ Date: Wed, 30 Jun 2021 01:53:05 GMT
017- Date: Wed, 30 Jun 2021 01:38:00 GMT
032+ Date: Wed, 30 Jun 2021 01:53:05 GMT
032- Date: Wed, 30 Jun 2021 01:38:00 GMT
045+ Date: Wed, 30 Jun 2021 01:53:05 GMT
045- Date: Wed, 30 Jun 2021 01:38:00 GMT
060+ Date: Wed, 30 Jun 2021 01:53:05 GMT
060- Date: Wed, 30 Jun 2021 01:38:00 GMT
073+ Date: Wed, 30 Jun 2021 01:53:05 GMT
073- Date: Wed, 30 Jun 2021 01:38:00 GMT
088+ Date: Wed, 30 Jun 2021 01:53:05 GMT
088- Date: Wed, 30 Jun 2021 01:38:00 GMT
101+ Date: Wed, 30 Jun 2021 01:53:05 GMT
101- Date: Wed, 30 Jun 2021 01:38:00 GMT
116+ Date: Wed, 30 Jun 2021 01:53:05 GMT
116- Date: Wed, 30 Jun 2021 01:38:00 GMT
129+ Date: Wed, 30 Jun 2021 01:53:05 GMT
129- Date: Wed, 30 Jun 2021 01:38:00 GMT
144+ Date: Wed, 30 Jun 2021 01:53:05 GMT
144- Date: Wed, 30 Jun 2021 01:38:00 GMT
157+ Date: Wed, 30 Jun 2021 01:53:05 GMT
157- Date: Wed, 30 Jun 2021 01:38:00 GMT
172+ Date: Wed, 30 Jun 2021 01:53:05 GMT
172- Date: Wed, 30 Jun 2021 01:38:00 GMT
185+ Date: Wed, 30 Jun 2021 01:53:05 GMT
185- Date: Wed, 30 Jun 2021 01:38:00 GMT
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

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/http/server.inc on line 58
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
004+ Warning: unlink(/tmp/60dbcfb282bd7.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/60dbcfb2eaebb.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:61869/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/bug73457.php on line 8
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
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:62438/bogusdir): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:50321/): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_95f4bc63ab2fd0c9/ext/standard/tests/streams/opendir-004.php on line 12
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```
