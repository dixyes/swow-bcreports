# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.7 (cli) (built: Jun  4 2021 21:26:10) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies
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
PHP 8.0.7 (cli) (built: Jun  4 2021 21:26:10) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies
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
Linux fv-az199-877 5.8.0-1033-azure #35~20.04.1-Ubuntu SMP Wed May 19 06:46:04 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2294.683
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
bogomips	: 4589.36
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
cpu MHz		: 2294.683
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
bogomips	: 4589.36
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         1316764 kB
MemAvailable:    4627084 kB
Buffers:          292556 kB
Cached:          2868852 kB
SwapCached:            0 kB
Active:          3004704 kB
Inactive:        2164676 kB
Active(anon):    1954304 kB
Inactive(anon):    63948 kB
Active(file):    1050400 kB
Inactive(file):  2100728 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4194300 kB
Dirty:               156 kB
Writeback:             0 kB
AnonPages:       2024676 kB
Mapped:           382968 kB
Shmem:              7524 kB
KReclaimable:     469104 kB
Slab:             536788 kB
SReclaimable:     469104 kB
SUnreclaim:        67684 kB
KernelStack:        5088 kB
PageTables:         9480 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    4486492 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       32740 kB
VmallocChunk:          0 kB
Percpu:             1760 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1515520 kB
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
DirectMap4k:      155584 kB
DirectMap2M:     5087232 kB
DirectMap1G:     4194304 kB
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
| 15959 | 14357 | 16082 | 0.7648% | 0.8567% |

## Behavior changes

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/ftp/tests/002.php on line 8
007+ bool(false)
008+ NULL
009+ NULL
     bool(true)
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     äöü
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
004+ 
005+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
006+ 
007+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
008+ [003] Connect failed, [2002] 
009+ 
010+ Fatal error: Uncaught Error: mysqli object is not fully initialized in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/bug51647.php:11
011+ Stack trace:
012+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/bug51647.php(11): mysqli->query('SHOW STATUS lik...')
013+ #1 {main}
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
014+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/bug51647.php on line 11
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
004+ 
005+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
006+ 
007+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
008+ 
009+ Warning: mysqli_real_connect(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
010+ 
011+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
012+ 
013+ Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
014+ 
       string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
015+ Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/connect.inc on line 84
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
     done
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

### ext/mysqli/tests/mysqli_fetch_assoc_oo.phpt

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

### ext/mysqli/tests/mysqli_fetch_fields.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_object_oo.phpt

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

### ext/mysqli/tests/mysqli_get_client_stats.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_server_version.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_info.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_insert_id.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_max_links.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_num_fields.phpt

Test FAILED in experiment beacuse

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- mysqli_result object is already closed
002- mysqli_result object is already closed
003- mysqli_result object is already closed
004- mysqli_result object is already closed
005- done!
```

Test FAILED in both, but outputs is different.

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- [1146] Table 'test.test' doesn't exist
002- mysqli_result object is already closed
003- [010] [1146] Table 'test.test' doesn't exist
004- mysqli_result object is already closed
005- [020] [1146] Table 'test.test' doesn't exist
006- done!
```

### ext/mysqli/tests/mysqli_num_rows.phpt

Test PASSED in control but FAILED in experiment

```patch
     mysqli_result object is already closed
003+ [020] [1146] Table 'test.test' doesn't exist
004+ [030] [1146] Table 'test.test' doesn't exist
005+ run_tests.php don't fool me with your 'ungreedy' expression '.+?'!
     mysqli_result object is already closed
     mysqli_result object is already closed
     run_tests.php don't fool me with your 'ungreedy' expression '.+?'!
006+ [032] [1146] Table 'test.test' doesn't exist
003- mysqli_result object is already closed
004- mysqli_result object is already closed
005- run_tests.php don't fool me with your 'ungreedy' expression '.+?'!
006- mysqli_num_rows() cannot be used in MYSQLI_USE_RESULT mode
     done!
```

### ext/mysqli/tests/mysqli_options_int_and_float_native.phpt

Test FAILED in experiment beacuse

```patch
001+ [005] [1146] Table 'test.test' doesn't exist
002+ [005] [1146] Table 'test.test' doesn't exist
     done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [005] [1146] Table 'test.test' doesn't exist
002+ [005] [1146] Table 'test.test' doesn't exist
001- [010] [1146] Table 'test.test' doesn't exist
002- [010] [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_pconn_limits.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     Regular connection 1 - 'works..'
     Regular connection 2 - 'works...'
     Persistent connection 1 - 'works...'
--
```

### ext/mysqli/tests/mysqli_pconn_max_links.phpt

Test SKIPPED in control but FAILED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_ping.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

```patch
--
     Warning: mysqli_reap_async_query(): RSET_HEADER %s
     
     Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
016+ [015] 2006/MySQL server has gone away
017+ [017] Expecting boolean/false got boolean/true
018+ [018] Expecting int/0 got integer/1
     Warning: mysqli_reap_async_query(): %s
     
     Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
019+ [020] Error: 2006/MySQL server has gone away
016- 
017- Warning: Error while sending QUERY packet. %s
018- 
019- Warning: mysqli_reap_async_query(): %s
020- 
021- Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
022- [018] Error: %d/%s
     done!
```

Test XFAILED in both, but outputs is different.

```patch
005+ Fetching from thread 1144...
005- Fetching from thread 1466...
```

### ext/mysqli/tests/mysqli_poll_mixing_insert_select.phpt

Test FAILED in experiment beacuse

```patch
001+ [005] Expecting true got boolean/true
002+ 
003+ Fatal error: Uncaught TypeError: mysqli_fetch_row(): Argument #1 ($result) must be of type mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php:115
004+ Stack trace:
005+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php(115): mysqli_fetch_row(false)
006+ #1 {main}
007+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
001- [003] 'SELECT' caused 1064
002- [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1062
003- [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
004- array(2) {
005-   ["id"]=>
006-   string(3) "100"
007-   ["label"]=>
008-   string(1) "z"
009- }
010- [009] [2014] %s
011- done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [005] Expecting true got boolean/true
002+ 
003+ Fatal error: Uncaught TypeError: mysqli_fetch_row(): Argument #1 ($result) must be of type mysqli_result, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php:115
004+ Stack trace:
005+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php(115): mysqli_fetch_row(false)
006+ #1 {main}
007+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
001- [1146] Table 'test.test' doesn't exist
002- [006] Expecting true got boolean/true
003- [006] Expecting true got boolean/true
004- [003] 'SELECT * FROM test ORDER BY id ASC LIMIT 2' caused 1146
005- [006] Expecting true got boolean/true
006- [003] 'INSERT INTO test(id, label) VALUES (100, 'z')' caused 1146
007- [006] Expecting true got boolean/true
008- [003] 'SELECT * FROM test ORDER BY id ASC LIMIT 2' caused 1146
009- [006] Expecting true got boolean/true
010- [003] 'SELECT' caused 1064
011- [006] Expecting true got boolean/true
012- [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1146
013- [006] Expecting true got boolean/true
014- [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
015- [006] Expecting true got boolean/true
016- [006] Expecting true got boolean/true
017- [003] 'DELETE FROM test WHERE id = @a' caused 1146
018- [006] Expecting true got boolean/true
019- [003] 'DELETE FROM test WHERE id = 1' caused 1146
020- [006] Expecting true got boolean/true
021- [006] Expecting true got boolean/true
022- [009] [2014] Commands out of sync; you can't run this command now
023- done!
```

### ext/mysqli/tests/mysqli_real_connect_compression_error.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ array(1) {
002+   [0]=>
003+   array(3) {
004+     ["errno"]=>
005+     int(1146)
006+     ["sqlstate"]=>
007+     string(5) "42S02"
008+     ["error"]=>
009+     string(31) "Table 'test.test' doesn't exist"
010+   }
001- array(0) {
     }
012+ array(1) {
013+   [0]=>
014+   array(3) {
015+     ["errno"]=>
016+     int(1146)
017+     ["sqlstate"]=>
018+     string(5) "42S02"
019+     ["error"]=>
020+     string(31) "Table 'test.test' doesn't exist"
021+   }
003- array(0) {
     }
```

### ext/mysqli/tests/mysqli_real_escape_string.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli object is already closed
     done!
```

### ext/mysqli/tests/mysqli_real_escape_string_gb2312.phpt

Test PASSED in control but FAILED in experiment

```patch
     bool(true)
002+ bool(false)
002- bool(true)
     done!
```

### ext/mysqli/tests/mysqli_result_invalid_mode.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli_result::__construct(): Argument #2 ($result_mode) must be either MYSQLI_STORE_RESULT or MYSQLI_USE_RESULT
     mysqli_result::__construct(): Argument #2 ($result_mode) must be either MYSQLI_STORE_RESULT or MYSQLI_USE_RESULT
```

### ext/mysqli/tests/mysqli_savepoint.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ [011] [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_stmt_attr_set.phpt

Test PASSED in control but FAILED in experiment

```patch
     Error: mysqli_stmt object is not fully initialized
002+ 
003+ Fatal error: Uncaught Error: mysqli_stmt object is not fully initialized in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_attr_set.php:25
004+ Stack trace:
005+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_attr_set.php(25): mysqli_stmt_attr_set(Object(mysqli_stmt), -1, 0)
006+ #1 {main}
007+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_attr_set.php on line 25
002- mysqli_stmt_attr_set(): Argument #2 ($attribute) must be one of MYSQLI_STMT_ATTR_UPDATE_MAX_LENGTH, MYSQLI_STMT_ATTR_PREFETCH_ROWS, or STMT_ATTR_CURSOR_TYPE
003- mysqli_stmt::attr_set(): Argument #2 ($value) must be 0 or 1 for attribute MYSQLI_STMT_ATTR_UPDATE_MAX_LENGTH
004- bool(true)
005- mysqli_stmt::attr_set(): Argument #2 ($value) must be one of the MYSQLI_CURSOR_TYPE_* constants for attribute MYSQLI_STMT_ATTR_CURSOR_TYPE
006- mysqli_stmt::attr_set(): Argument #2 ($value) must be greater than 0 for attribute MYSQLI_STMT_ATTR_PREFETCH_ROWS
007- done!
```

### ext/mysqli/tests/mysqli_stmt_bind_limits.phpt

Test PASSED in control but FAILED in experiment

```patch
     Testing 273 columns with 240 rows...
003+ [010 + 02] [1146] Table 'test.test' doesn't exist
     ... statement with 65520 parameters prepared
     Statement done
004+ bool(false)
003- ... statement with 65520 parameters prepared
004- Statement done
005- bool(true)
     Testing 273 columns with 240 rows...
     ... table created
008+ [020 + 04] [1146] Table 'test.test' doesn't exist
     Statement done
009+ bool(false)
009- Statement done
010- bool(true)
     done!
```

### ext/mysqli/tests/mysqli_stmt_bind_param.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     The number of elements in the type definition string must match the number of bind variables
     mysqli_stmt_bind_param(): Argument #2 ($types) must only contain the "b", "d", "i", "s" type specifiers
     mysqli_stmt_bind_param(): Argument #2 ($types) must only contain the "b", "d", "i", "s" type specifiers
010+ [062] [1146] Table 'test.test' doesn't exist
010- done!
011+ [115] [1146] Table 'test.test' doesn't exist
012+ [165] [1146] Table 'test.test' doesn't exist
013+ [222] [1146] Table 'test.test' doesn't exist
014+ [274] [1146] Table 'test.test' doesn't exist
015+ [312] [1146] Table 'test.test' doesn't exist
016+ [964] [1146] Table 'test.test' doesn't exist
017+ [392] [1146] Table 'test.test' doesn't exist
018+ [494] [1146] Table 'test.test' doesn't exist
019+ [542] [1146] Table 'test.test' doesn't exist
020+ [595] [1146] Table 'test.test' doesn't exist
021+ [692] [1146] Table 'test.test' doesn't exist
022+ [754] [1062] Duplicate entry '1' for key 'test.PRIMARY'
023+ [812] [1146] Table 'test.test' doesn't exist
024+ [864] [1146] Table 'test.test' doesn't exist
025+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Attempt to read property "id" on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php on line 55
002+ NULL
003+ 
004+ Fatal error: Uncaught Error: Call to a member function bind_param() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php(63) : eval()'d code:1
001- int(%d)
002- executing
003- bool(true)
004- done!
005+ Stack trace:
006+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php(63): eval()
007+ #1 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_param_many_columns.php(63) : eval()'d code on line 1
```

### ext/mysqli/tests/mysqli_stmt_bind_param_references.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
001- done!
002+ [004 + 4] Expecting string/v got string/0
003+ [007 + 1] SELECT id, label FROM test WHERE id = '101' AND label = 'w' failed, [1146] Table 'test.test' doesn't exist
004+ [008] [1146] Table 'test.test' doesn't exist
005+ [009 + 2] fetch for SELECT id, label FROM test WHERE id = '102' AND label = 'x' failed, [0] 
006+ [012 + 1] SELECT id, label FROM test WHERE id = '9' AND label = '9' failed, [1146] Table 'test.test' doesn't exist
007+ [014] [1146] Table 'test.test' doesn't exist
008+ [015 + 1] SELECT id, label FROM test WHERE id = '9' AND label = '9' failed, [1146] Table 'test.test' doesn't exist
009+ [019] [1146] Table 'test.test' doesn't exist
010+ [020 + 1] SELECT id, label FROM test WHERE id = '9' AND label = '9' failed, [1146] Table 'test.test' doesn't exist
011+ [023 + 1] SELECT id, label FROM test WHERE id = '9' AND label = '9' failed, [1146] Table 'test.test' doesn't exist
012+ [025] [1146] Table 'test.test' doesn't exist
013+ [026 + 1] SELECT id, label FROM test WHERE id = '9' AND label = '9' failed, [1146] Table 'test.test' doesn't exist
014+ [028] [1146] Table 'test.test' doesn't exist
015+ [029 + 2] fetch for SELECT id, label FROM test WHERE id = '102' AND label = 'y' failed, [0] 
016+ [032 + 1] SELECT id, label FROM test WHERE id = '103' AND label = 'z' failed, [1146] Table 'test.test' doesn't exist
017+ [034] [1146] Table 'test.test' doesn't exist
018+ [035 + 2] fetch for SELECT id, label FROM test WHERE id = '104' AND label = 'v' failed, [0] 
019+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_param_type_juggling.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [030 + 9] [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_stmt_bind_result.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     Number of bind variables doesn't match number of fields in prepared statement
     int(1)
     %s(1) "a"
006+ [0022] [1146] Table 'test.test' doesn't exist
006- done!
007+ [0184] [1146] Table 'test.test' doesn't exist
008+ [0202] [1146] Table 'test.test' doesn't exist
009+ [0366] [1146] Table 'test.test' doesn't exist
010+ [1862] [1146] Table 'test.test' doesn't exist
011+ [0645] [1146] Table 'test.test' doesn't exist
012+ [0742] [1146] Table 'test.test' doesn't exist
013+ [0862] [1146] Table 'test.test' doesn't exist
014+ [1116] [1146] Table 'test.test' doesn't exist
015+ [1186] [1146] Table 'test.test' doesn't exist
016+ [1422] [1146] Table 'test.test' doesn't exist
017+ [1442] [1146] Table 'test.test' doesn't exist
018+ [1462] [1146] Table 'test.test' doesn't exist
019+ [1486] [1146] Table 'test.test' doesn't exist
020+ [1562] [1146] Table 'test.test' doesn't exist
021+ [1647] [1146] Table 'test.test' doesn't exist
022+ 
023+ Fatal error: Uncaught Error: mysqli_stmt object is not fully initialized in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result.php:92
024+ Stack trace:
025+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result.php(92): mysqli_stmt_close(Object(mysqli_stmt))
026+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result.php(267): func_mysqli_stmt_bind_result(Object(mysqli), 'InnoDB', 'b', 'MEDIUMTEXT', '', 1640, 'string')
027+ #2 {main}
028+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result.php on line 92
```

### ext/mysqli/tests/mysqli_stmt_bind_result_bit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [005 - 3] [1146] Table 'test.test' doesn't exist
001- done!
002+ 
003+ Fatal error: Uncaught Error: mysqli_stmt object is not fully initialized in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php:49
004+ Stack trace:
005+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php(49): mysqli_stmt_close(Object(mysqli_stmt))
006+ #1 {main}
007+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/mysqli/tests/mysqli_stmt_bind_result_bit.php on line 49
```

### ext/mysqli/tests/mysqli_stmt_bind_result_format.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [092] Cannot insert data, [1146] Table 'test.test' doesn't exist
001- done!
002+ [101] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
003+ [112] Cannot insert data, [1146] Table 'test.test' doesn't exist
004+ [121] Cannot prepare PS, [1054] Unknown column 'col1' in 'field list'
005+ [132] Cannot insert data, [1146] Table 'test.test' doesn't exist
006+ [141] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
007+ [152] Cannot insert data, [1146] Table 'test.test' doesn't exist
008+ [161] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
009+ [172] Cannot insert data, [1146] Table 'test.test' doesn't exist
010+ [181] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
011+ [192] Cannot insert data, [1146] Table 'test.test' doesn't exist
012+ [201] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
013+ [212] Cannot insert data, [1146] Table 'test.test' doesn't exist
014+ [221] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
015+ [232] Cannot insert data, [1146] Table 'test.test' doesn't exist
016+ [241] Cannot prepare PS, [1146] Table 'test.test' doesn't exist
017+ [301] [1146] Table 'test.test' doesn't exist
018+ done!
```

### ext/mysqli/tests/mysqli_stmt_bind_result_zerofill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     done!
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:41:54 2021 (86702): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:41:54 2021 (86702): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:31:34 2021 (28734): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
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

Test FAILED in experiment beacuse

```patch
--
     SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
     
     Running query on first connection
012+ 
013+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php:50
014+ Stack trace:
012- Got 1 for first connection
013- Running query on second connection
014- SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
015+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php(50): PDO->prepare('SELECT first FR...')
016+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php(77): testUnbuffered(Object(PDO), 'first connectio...')
017+ #2 {main}
018+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php on line 50
```

Test FAILED in both, but outputs is different.

```patch
007+ Got 1 for first connection
008+ Running query on second connection
009+ SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
011+ Running query on first connection
012+ 
013+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php:50
008- Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php:35
015+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php(50): PDO->prepare('SELECT first FR...')
016+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php(77): testUnbuffered(Object(PDO), 'first connectio...')
010- #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php(35): PDO->prepare('SELECT first FR...')
011- #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php(69): testPrepareExecute(Object(PDO), 'first connectio...')
018+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php on line 50
013-   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/bug79375.php on line 35
```

### ext/pdo_mysql/tests/bug_38546.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_41698.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_61207.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/change_column_count.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
--
     [005] PDO::__construct(): Argument #1 ($dsn) must be a valid data source name, [n/a] n/a
     [006] PDO::__construct(): Argument #1 ($dsn) must be a valid data source name, [n/a] n/a
     [007] could not find driver, [n/a] n/a
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
     [017] DSN=%s, SQLSTATE[%s] [%d] %s
     done!
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
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_attr_case.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     string(15) "PDO::CASE_LOWER"
003+ array(0) {
004+ }
005+ array(1) {
002- array(2) {
       [0]=>
007+   array(10) {
004-   array(6) {
         ["id"]=>
009+     string(3) "100"
006-     string(1) "1"
         [0]=>
011+     string(3) "100"
008-     string(1) "1"
         ["id_upper"]=>
013+     string(3) "100"
010-     string(1) "1"
         [1]=>
015+     string(3) "100"
012-     string(1) "1"
         ["label"]=>
017+     string(3) "找"
014-     string(1) "a"
         [2]=>
019+     string(3) "找"
020+     ["mixed"]=>
021+     NULL
022+     [3]=>
023+     NULL
024+     ["myupper"]=>
025+     NULL
026+     [4]=>
027+     NULL
016-     string(1) "a"
       }
018-   [1]=>
019-   array(6) {
020-     ["id"]=>
021-     string(1) "2"
029+ }
030+ array(1) {
031+   [0]=>
032+   array(10) {
033+     ["ID"]=>
034+     string(3) "100"
036+     string(3) "100"
037+     ["LABEL"]=>
         string(1) "2"
         ["id_upper"]=>
038+     string(3) "找"
023-     string(1) "2"
024-     ["id_upper"]=>
025-     string(1) "2"
040+     string(3) "找"
041+     ["MIXED"]=>
         string(1) "2"
         ["label"]=>
042+     NULL
027-     string(1) "2"
028-     ["label"]=>
029-     string(1) "b"
         [2]=>
044+     NULL
045+     ["MYUPPER"]=>
046+     NULL
047+     [3]=>
048+     NULL
049+     ["LOWER"]=>
050+     NULL
051+     [4]=>
052+     NULL
031-     string(1) "b"
       }
     }
055+ array(1) {
034- array(2) {
       [0]=>
       array(10) {
         ["id"]=>
059+     string(3) "100"
038-     string(1) "1"
061+     string(3) "100"
062+     ["label"]=>
         string(1) "1"
         ["id_upper"]=>
063+     string(3) "找"
040-     string(1) "1"
041-     ["id_upper"]=>
042-     string(1) "1"
065+     string(3) "找"
066+     ["MiXeD"]=>
067+     NULL
068+     [2]=>
069+     NULL
         string(1) "a"
         [2]=>
         string(1) "a"
070+     ["MYUPPER"]=>
044-     string(1) "1"
045-     ["label"]=>
046-     string(1) "a"
047-     [2]=>
048-     string(1) "a"
049-     ["mixed"]=>
         NULL
         [3]=>
074+     ["ID"]=>
075+     string(3) "100"
076+     [4]=>
         ["myupper"]=>
         NULL
         [4]=>
077+     string(3) "100"
053-     ["myupper"]=>
054-     NULL
055-     [4]=>
056-     NULL
       }
079+ }
080+ done!
058-   [1]=>
059-   array(10) {
060-     ["id"]=>
061-     string(1) "2"
062-     [0]=>
063-     string(1) "2"
064-     ["id_upper"]=>
065-     string(1) "2"
066-     [1]=>
067-     string(1) "2"
068-     ["label"]=>
069-     string(1) "b"
070-     [2]=>
071-     string(1) "b"
072-     ["mixed"]=>
073-     NULL
074-     [3]=>
075-     NULL
076-     ["myupper"]=>
077-     NULL
078-     [4]=>
079-     NULL
080-   }
081- }
082- array(1) {
083-   [0]=>
084-   array(10) {
085-     ["ID"]=>
086-     string(1) "1"
087-     [0]=>
088-     string(1) "1"
089-     ["LABEL"]=>
090-     string(1) "a"
091-     [1]=>
092-     string(1) "a"
093-     ["MIXED"]=>
094-     NULL
095-     [2]=>
096-     NULL
097-     ["MYUPPER"]=>
098-     NULL
099-     [3]=>
100-     NULL
101-     ["LOWER"]=>
102-     NULL
103-     [4]=>
104-     NULL
105-   }
106- }
107- array(1) {
108-   [0]=>
109-   array(10) {
110-     ["id"]=>
111-     string(1) "1"
112-     [0]=>
113-     string(1) "1"
114-     ["label"]=>
115-     string(1) "a"
116-     [1]=>
117-     string(1) "a"
118-     ["MiXeD"]=>
119-     NULL
120-     [2]=>
121-     NULL
122-     ["MYUPPER"]=>
123-     NULL
124-     [3]=>
125-     NULL
126-     ["ID"]=>
127-     string(1) "1"
128-     [4]=>
129-     string(1) "1"
130-   }
131- }
132- done!
```

### ext/pdo_mysql/tests/pdo_mysql_errorcode.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
001- done!
002+ 
003+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_errorcode.php on line 44
004+ 
005+ Fatal error: Uncaught Error: Call to a member function errorCode() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_errorcode.php:8
006+ Stack trace:
007+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_errorcode.php(46): check_error(9, false)
008+ #1 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_errorcode.php on line 8
```

### ext/pdo_mysql/tests/pdo_mysql_exec_ddl.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_clear_error.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_clear_error.php on line 16
002+ 
     Warning: PDOStatement::execute(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'unknown_column' in 'field list' in %s on line %d
     [003] Execute has failed, '42S22' array (
       0 => '42S22',
       1 => 1054,
       2 => 'Unknown column \'unknown_column\' in \'field list\'',
     )
009+ array(0) {
010+ }
011+ 
         ["id"]=>
         string(1) "1"
         ["label"]=>
         string(4) "row1"
       }
012+ Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'unknown_column' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_clear_error.php on line 38
007- array(1) {
008-   [0]=>
009-   array(2) {
010-     ["id"]=>
011-     string(1) "1"
012-     ["label"]=>
013-     string(4) "row1"
014-   }
015- }
     
017- Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'unknown_column' in 'field list' in %s on line %d
018- 
     Fatal error: Uncaught Error: Call to a member function execute() on bool in %s:%d
     Stack trace:
     #0 {main}
--
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_column.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
       [0]=>
       array(1) {
         ["?"]=>
         string(2) "id"
002+ array(0) {
001- array(1) {
002-   [0]=>
003-   array(1) {
004-     ["?"]=>
005-     string(2) "id"
006-   }
     }
     
     Warning: PDOStatement::execute(): SQLSTATE[HY093]: Invalid parameter number: parameter was not defined in %s on line %d
--
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_dup_named_placeholder.phpt

Test PASSED in control but FAILED in experiment

```patch
     Native...
     
003+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_dup_named_placeholder.php on line 16
004+ 
005+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_dup_named_placeholder.php:18
006+ Stack trace:
007+ #0 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_dup_named_placeholder.php on line 18
003- Warning: PDOStatement::execute(): SQLSTATE[HY093]: Invalid parameter number in %s on line %d
004- [003] Execute has failed, 'HY093' array (
005-   0 => 'HY093',
006-   1 => NULL,
007-   2 => NULL,
008- )
009- array(0) {
010- }
011- Emulated...
012- array(1) {
013-   [0]=>
014-   array(3) {
015-     ["id"]=>
016-     string(1) "2"
017-     ["label1"]=>
018-     string(4) "row2"
019-     ["label2"]=>
020-     string(4) "row2"
021-   }
022- }
023- array(1) {
024-   [0]=>
025-   array(2) {
026-     ["id"]=>
027-     string(1) "1"
028-     ["label1"]=>
029-     string(4) "row1"
030-   }
031- }
032- Native...
033- 
034- Warning: PDOStatement::execute(): SQLSTATE[HY093]: Invalid parameter number in %s on line %d
035- [008] Execute has failed, 'HY093' array (
036-   0 => 'HY093',
037-   1 => NULL,
038-   2 => NULL,
039- )
040- array(0) {
041- }
042- done!
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_mixed_style.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
001- Warning: PDO::prepare(): SQLSTATE[HY093]: Invalid parameter number: mixed named and positional parameters in %s on line %d
003+ Warning: PDO::exec(): SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect date value: 'a' for column 'label' at row 1 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
004+ 
005+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_mixed_style.php on line 11
003- Warning: PDO::prepare(): SQLSTATE[HY093]: Invalid parameter number in %s on line %d
     
     Fatal error: Uncaught Error: Call to a member function execute() on bool in %s:%d
     Stack trace:
--
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_named_placeholder.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_named_placeholder.php on line 15
002+ 
003+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_named_placeholder.php:21
004+ Stack trace:
005+ #0 {main}
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_named_placeholder.php on line 21
001- Warning: PDOStatement::execute(): SQLSTATE[HY093]: Invalid parameter number in %s on line %d
002- [003] Execute has failed, 'HY093' array (
003-   0 => 'HY093',
004-   1 => NULL,
005-   2 => NULL,
006- )
007- array(0) {
008- }
009- 
010- Warning: PDOStatement::execute(): SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens in %s on line %d
011- [005] Execute has failed, 'HY093' array (
012-   0 => 'HY093',
013-   1 => NULL,
014-   2 => NULL,
015- )
016- array(0) {
017- }
018- done!
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 10
     array(1) {
       [0]=>
       array(2) {
--
       }
     }
     now the same with native PS
012+ 
013+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 27
014+ 
015+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php:28
016+ Stack trace:
017+ #0 {main}
018+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.php on line 28
011- array(1) {
012-   [0]=>
013-   array(3) {
014-     ["?"]=>
015-     string(2) "id"
016-     ["id"]=>
017-     int(1)
018-     ["label"]=>
019-     string(4) "row1"
020-   }
021- }
022- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 25
001- done!
002+ [003/emulated + 2] array (
003+   0 => '42S02',
004+   1 => 1146,
005+   2 => 'Table \'test.test\' doesn\'t exist',
006+ )
007+ [004/native + 6] Got '0' expecting '255' - please check manually
008+ [004/native + 8] Got 0 expecting '255' - please check manually
009+ [005/native + 6] Got '9' expecting '1' - please check manually
010+ [005/native + 8] Got 9 expecting '1' - please check manually
011+ 
012+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 31
013+ 
014+ Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:33
015+ Stack trace:
016+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(87): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 6, false, 'SMALLINT', '-32768')
017+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(97): pdo_mysql_stmt_bindparam_types(Object(PDO), 6, 'SMALLINT', -32768)
018+ #2 {main}
019+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 33
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 25
002+ [003/emulated + 2] array (
003+   0 => '42S02',
004+   1 => 1146,
005+   2 => 'Table \'test.test\' doesn\'t exist',
006+ )
007+ [004/native + 6] Got '0' expecting '255' - please check manually
008+ [004/native + 8] Got 0 expecting '255' - please check manually
009+ [005/native + 6] Got '9' expecting '1' - please check manually
010+ [005/native + 8] Got 9 expecting '1' - please check manually
001- Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 19
012+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 31
013+ 
014+ Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:33
003- Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:20
016+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(87): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 6, false, 'SMALLINT', '-32768')
017+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(97): pdo_mysql_stmt_bindparam_types(Object(PDO), 6, 'SMALLINT', -32768)
005- #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 11, true, 'INT UNSIGNED', 4294967295)
006- #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(102): pdo_mysql_stmt_bindparam_types(Object(PDO), 11, 'INT UNSIGNED', 4294967295)
019+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 33
008-   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 20
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     Testing native PS...
     Binding variable...
004+ 
005+ Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'id' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 13
006+ 
007+ Fatal error: Uncaught Error: Call to a member function bindValue() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php:15
008+ Stack trace:
009+ #0 {main}
010+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 15
003- in = 0 -> id = 1 (integer) / label = 'a' (string)
004- in = 0 -> id = 2 (integer) / label = 'b' (string)
005- Binding value and not variable...
006- in = 0 -> id = 1 (integer) / label = 'a' (string)
007- in = 0 -> id = 2 (integer) / label = 'b' (string)
008- Binding variable which references another variable...
009- in = 0 -> id = 1 (integer) / label = 'a' (string)
010- in = 0 -> id = 2 (integer) / label = 'b' (string)
011- Binding a variable and a value...
012- in = 0 -> id = 1 (integer) / label = 'a' (string)
013- in = 0 -> id = 2 (integer) / label = 'b' (string)
014- Binding a variable to two placeholders and changing the variable value in between the binds...
015- in = 2 -> id = 1 (integer) / label = 'a' (string)
016- in = 2 -> id = 2 (integer) / label = 'b' (string)
017- Testing emulated PS...
018- Binding variable...
019- in = 0 -> id = 1 (integer) / label = 'a' (string)
020- in = 0 -> id = 2 (integer) / label = 'b' (string)
021- Binding value and not variable...
022- in = 0 -> id = 1 (integer) / label = 'a' (string)
023- in = 0 -> id = 2 (integer) / label = 'b' (string)
024- Binding variable which references another variable...
025- in = 0 -> id = 1 (integer) / label = 'a' (string)
026- in = 0 -> id = 2 (integer) / label = 'b' (string)
027- Binding a variable and a value...
028- in = 0 -> id = 1 (integer) / label = 'a' (string)
029- in = 0 -> id = 2 (integer) / label = 'b' (string)
030- Binding a variable to two placeholders and changing the variable value in between the binds...
031- in = 2 -> id = 1 (integer) / label = 'a' (string)
032- in = 2 -> id = 2 (integer) / label = 'b' (string)
033- done!
```

Test FAILED in both, but outputs is different.

```patch
005+ Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'id' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 13
005- Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 13
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 25
001- done!
002+ [001 + 1] 42 array (
003+   0 => '42S02',
004+   1 => 1146,
005+   2 => 'Table \'test.test\' doesn\'t exist',
006+ )
007+ 
008+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 22
009+ 
010+ Fatal error: Uncaught Error: Call to a member function bindValue() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php:23
011+ Stack trace:
012+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php(77): test_blob(Object(PDO), 2, 'TINYBLOB', 255)
013+ #1 {main}
014+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 23
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.phpt

Test PASSED in control but FAILED in experiment

```patch
     Testing emulated PS...
     Buffered...
     
004+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
005+ 
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
006+ Warning: PDO::exec(): SQLSTATE[HY000]: General error: 1366 Incorrect integer value: 'a' for column 'label' at row 1 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
004- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
005- in = 0 -> id = 1 (integer) / label = 'a' (string)
006- in = 0 -> id = 2 (integer) / label = 'b' (string)
007- Unbuffered...
     
009+ 
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
     Testing native PS...
010+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 19
010- in = 0 -> id = 1 (integer) / label = 'a' (string)
011- in = 0 -> id = 2 (integer) / label = 'b' (string)
012- Testing native PS...
013- Buffered...
     
012+ Fatal error: Uncaught Error: Call to a member function fetch() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php:26
013+ Stack trace:
014+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php(108): pdo_mysql_stmt_closecursor(Object(PDO))
015+ #1 {main}
016+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 26
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
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor_empty.php on line 15
002+ 
003+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor_empty.php:17
004+ Stack trace:
005+ #0 {main}
001- in = 0 -> id = 1 (integer) / label = 'a' (string)
002- in = 0 -> id = 2 (integer) / label = 'b' (string)
003- in = 0 -> id = 1 (integer) / label = 'a' (string)
004- in = 0 -> id = 2 (integer) / label = 'b' (string)
005- done!
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor_empty.php on line 17
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_columncount.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
002+ 
003+ Warning: PDO::exec(): SQLSTATE[22007]: Invalid datetime format: 1292 Incorrect time value: 'a' for column 'label' at row 1 in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     Testing emulated PS...
     int(3)
     int(2)
--
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_errorinfo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     Testing emulated PS...
     array(3) {
       [0]=>
--
       [2]=>
       string(%d) "Table '%s.ihopeitdoesnotexist' doesn't exist"
     }
022+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
023+ 
     Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table '%s.test' doesn't exist in %s on line %d
     bool(false)
     array(3) {
--
     Testing native PS...
     
     Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table '%s.ihopeitdoesnotexist' doesn't exist in %s on line %d
046+ 
047+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
048+ 
049+ Warning: PDO::exec(): SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry '1' for key 'test.PRIMARY' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     array(3) {
       [0]=>
       string(0) ""
--
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_non_select.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
001- done!
002+ 
003+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_non_select.php on line 13
004+ [003] Emulated PS, DESCRIBE failed, array (
005+   0 => '42S02',
006+   1 => 1146,
007+   2 => 'Table \'test.test\' doesn\'t exist',
008+ )
009+ 
010+ Fatal error: Uncaught Error: Call to a member function fetch() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_non_select.php:18
011+ Stack trace:
012+ #0 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_non_select.php on line 18
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetchobject.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ array(0) {
003+ }
004+ PDOStatement::fetchObject(): Argument #1 ($class) must be a valid class name, class_does_not_exist given
005+ done!
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
026- PDOStatement::fetchObject(): Argument #1 ($class) must be a valid class name, class_does_not_exist given
027- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetchobject_ctor_args.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ bool(false)
003+ bool(false)
004+ bool(false)
005+ User-supplied statement does not accept constructor arguments
001- Too few arguments to function Foo::__construct(), 0 passed and exactly 1 expected
002- Too few arguments to function Foo::__construct(), 0 passed and exactly 1 expected
003- object(Foo)#%d (2) {
004-   ["a"]=>
005-   int(123)
006-   ["id"]=>
007-   int(1)
008- }
009- object(Bar)#%d (1) {
010-   ["id"]=>
011-   int(1)
012- }
013- object(Bar)#%d (1) {
014-   ["id"]=>
015-   int(1)
016- }
017- User-supplied statement does not accept constructor arguments
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ 
003+ Warning: PDOStatement::execute(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'id' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 16
     PDOStatement::getColumnMeta(): Argument #1 ($column) must be greater than or equal to 0
     Testing native PS...
006+ 
003- done!
007+ Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'id' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 32
008+ 
009+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:33
010+ Stack trace:
011+ #0 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 33
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ 
003+ Warning: PDOStatement::execute(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'id' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 16
007+ Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'id' in 'field list' in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 32
008+ 
009+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:33
010+ Stack trace:
011+ #0 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 33
004- Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 55
005- [110] + 1] Insert failed, 42 - array (
006-   0 => '42S02',
007-   1 => 1146,
008-   2 => 'Table \'test.test\' doesn\'t exist',
009- )
010- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.phpt

Test PASSED in control but FAILED in experiment

```patch
     Emulated Prepared Statements...
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
004+ 
005+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php on line 6
006+ 
007+ Fatal error: Uncaught Error: Call to a member function errorInfo() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php:7
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php(28): mysql_stmt_multiquery_wrong_usage(Object(PDO))
010+ #1 {main}
011+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php on line 7
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

### ext/pdo_mysql/tests/pdo_mysql_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types.php:14
001- done!
002+ Stack trace:
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types.php(91): test_type(Object(PDO), 60, 'SMALLINT', -32768, -32768)
005+ #2 {main}
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types.php on line 14
```

Test FAILED in both, but outputs is different.

```patch
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types.php(91): test_type(Object(PDO), 60, 'SMALLINT', -32768, -32768)
004- #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types.php(94): test_type(Object(PDO), 80, 'MEDIUMINT', -8388608, -8388608)
```

### ext/pdo_mysql/tests/pdo_mysql_types_zerofill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php:14
001- done!
002+ Stack trace:
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(90): test_type(Object(PDO), 100, 'REAL ZEROFILL', -1.01, NULL, '/^[0]*0$/')
005+ #2 {main}
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php on line 14
```

### ext/pdo_mysql/tests/pecl_bug_5200.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pecl_bug_5200.php on line 7
002+ 
003+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pecl_bug_5200.php:7
004+ Stack trace:
005+ #0 {main}
006+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/pdo_mysql/tests/pecl_bug_5200.php on line 7
001- Array
002- (
003-     [field] => phase
004-     [type] => enum('please_select','I','II','IIa','IIb','III','IV')
005-     [null] => YES
006-     [key] => 
007-     [default] => 
008-     [extra] => 
009- )
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     int(1291)
     int(10)
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
     Iteration 0
003+ HTTP/1.1 200 OK
004+ Date: Wed, 30 Jun 2021 01:44:48 GMT
005+ Connection: close
006+ X-Powered-By: PHP/8.0.7
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
     
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
005- Function 'CATALOG' doesn't exist
     
007- Iteration 1
016+ HTTP/1.1 200 OK
017+ Date: Wed, 30 Jun 2021 01:44:48 GMT
018+ Connection: close
019+ X-Powered-By: PHP/8.0.7
020+ Content-type: text/html; charset=UTF-8
009- Function 'CATALOG' doesn't exist
     
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
011- Function 'CATALOG' doesn't exist
     
013- Iteration 2
     
029+ Iteration 1
015- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Wed, 30 Jun 2021 01:44:48 GMT
033+ Connection: close
034+ X-Powered-By: PHP/8.0.7
035+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
     
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
019- Iteration 3
     
021- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Wed, 30 Jun 2021 01:44:48 GMT
046+ Connection: close
047+ X-Powered-By: PHP/8.0.7
048+ Content-type: text/html; charset=UTF-8
023- Function 'CATALOG' doesn't exist
     
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
025- Iteration 4
     
027- Function 'CATALOG' doesn't exist
     
057+ Iteration 2
029- Function 'CATALOG' doesn't exist
059+ HTTP/1.1 200 OK
060+ Date: Wed, 30 Jun 2021 01:44:48 GMT
061+ Connection: close
062+ X-Powered-By: PHP/8.0.7
063+ Content-type: text/html; charset=UTF-8
031- Iteration 5
     
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
033- Function 'CATALOG' doesn't exist
     
035- Function 'CATALOG' doesn't exist
072+ HTTP/1.1 200 OK
073+ Date: Wed, 30 Jun 2021 01:44:48 GMT
074+ Connection: close
075+ X-Powered-By: PHP/8.0.7
076+ Content-type: text/html; charset=UTF-8
037- Iteration 6
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/sapi/cli/tests/bug73037_server.php</b> on lin
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Wed, 30 Jun 2021 01:44:48 GMT
004- Date: Wed, 30 Jun 2021 01:33:49 GMT
017+ Date: Wed, 30 Jun 2021 01:44:48 GMT
017- Date: Wed, 30 Jun 2021 01:33:49 GMT
032+ Date: Wed, 30 Jun 2021 01:44:48 GMT
032- Date: Wed, 30 Jun 2021 01:33:49 GMT
045+ Date: Wed, 30 Jun 2021 01:44:48 GMT
045- Date: Wed, 30 Jun 2021 01:33:49 GMT
060+ Date: Wed, 30 Jun 2021 01:44:48 GMT
060- Date: Wed, 30 Jun 2021 01:33:49 GMT
073+ Date: Wed, 30 Jun 2021 01:44:48 GMT
073- Date: Wed, 30 Jun 2021 01:33:49 GMT
088+ Date: Wed, 30 Jun 2021 01:44:48 GMT
088- Date: Wed, 30 Jun 2021 01:33:49 GMT
101+ Date: Wed, 30 Jun 2021 01:44:48 GMT
101- Date: Wed, 30 Jun 2021 01:33:49 GMT
116+ Date: Wed, 30 Jun 2021 01:44:48 GMT
116- Date: Wed, 30 Jun 2021 01:33:49 GMT
129+ Date: Wed, 30 Jun 2021 01:44:48 GMT
129- Date: Wed, 30 Jun 2021 01:33:49 GMT
144+ Date: Wed, 30 Jun 2021 01:44:48 GMT
144- Date: Wed, 30 Jun 2021 01:33:49 GMT
157+ Date: Wed, 30 Jun 2021 01:44:48 GMT
157- Date: Wed, 30 Jun 2021 01:33:49 GMT
172+ Date: Wed, 30 Jun 2021 01:44:48 GMT
172- Date: Wed, 30 Jun 2021 01:33:49 GMT
185+ Date: Wed, 30 Jun 2021 01:44:48 GMT
185- Date: Wed, 30 Jun 2021 01:33:49 GMT
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
002+ Segmentation fault (core dumped)
002- string(12) "test message"
```

### ext/sockets/tests/socket_export_stream-3.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     object(Socket)#%d (0) {
     }
     int(10)
006+ Segmentation fault (core dumped)
007+ 
006- string(10) "my message"
007- Done.
008+ Termsig=11
```

### ext/sockets/tests/socket_export_stream-4.phpt

Test PASSED in control but FAILED in experiment

```patch
     normal
     stream_set_blocking 1
003- socket_set_block 1
004- socket_get_option 2
003+ socket_set_block Segmentation fault (core dumped)
     
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
017- stream_set_blocking TypeError: stream_set_blocking(): supplied resource is not a valid stream resource
018- 
019- socket_set_block 
020- Warning: socket_set_block(): unable to set blocking mode [%d]: %s in %s on line %d
021- 
022- socket_get_option 
023- Warning: socket_get_option(): Unable to retrieve socket option [%d]: %s in %s on line %d
024- 
025- 
026- 
027- close socket
028- stream_set_blocking TypeError: stream_set_blocking(): supplied resource is not a valid stream resource
029- 
030- socket_set_block Error: socket_set_block(): Argument #1 ($socket) has already been closed
031- 
032- socket_get_option Error: socket_get_option(): Argument #1 ($socket) has already been closed
033- 
034- 
035- Done.
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
     resource(%d) of type (process)
     resource(%d) of type (stream)
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
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(7) {
       [0]=>
--
     
     "
     -- Test: fail after 2 redirections --
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
050+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection --
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
065+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection (2) --
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
076+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     Connection: close
     
     "
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(4) {
       [0]=>
--
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(2) "rb"
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Content-Type: text/plain
     
     ohai"
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: teste@teste.pt
     Host: %s:%d
     Connection: close
     
     "
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: junk@junk.com
     Host: %s:%d
--
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
007+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
012+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
     leak? penultimate iteration: %d, last one: %d
--
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     Third:
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: keep-alive
     
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: keep-alive
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     GET /foo HTTP/1.1
     Host: %s:%d
     Connection: close
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:34463): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
     bool(false)
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     Hello
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(0) ""
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     DONE
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     bool(true)
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Connection: close
     RandomHeader: localhost:8080
--
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug80256.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(4) "1234"
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     array(3) {
       [0]=>
       string(32) "HTTP/1.1 101 Switching Protocols"
--
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(3) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:41677): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/http_response_header_03.php on line 12
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
     bool(false)
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
019+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: HTTP request failed! HTTP/1.1 404 Not found
      in %s on line %d
     bool(false)
--
     Connection: close
     
     "
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug74764.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/http/server.inc on line 66
     ALIVE
```

### ext/standard/tests/network/tcp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/60dbcd9c8f5df.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/udp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/60dbcd9cd36d0.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
     stream_socket_server(): socket path exceeded the maximum allowed length of %d bytes and was truncated
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:54489/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): Failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
     Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
006+ Warning: opendir(ftps://127.0.0.1:56015/bogusdir): Failed to open directory: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ Warning: opendir(ftps://127.0.0.1:61752/): Failed to open directory: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-004.php:12
010+ Stack trace:
011+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-004.php(12): readdir(false)
012+ #1 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e7eb91418b09a418/ext/standard/tests/streams/opendir-004.php on line 12
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
```
