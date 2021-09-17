# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.10 (cli) (built: Aug 26 2021 15:50:07) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.10, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.10, Copyright (c), by Zend Technologies
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
PHP 8.0.10 (cli) (built: Aug 26 2021 15:50:07) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.10, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.10, Copyright (c), by Zend Technologies
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
Linux fv-az231-568 5.8.0-1041-azure #44~20.04.1-Ubuntu SMP Fri Aug 20 20:41:09 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2294.684
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
cpu MHz		: 2294.684
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
MemTotal:        7120796 kB
MemFree:         4258532 kB
MemAvailable:    4736420 kB
Buffers:          137028 kB
Cached:           537276 kB
SwapCached:         7492 kB
Active:          1722720 kB
Inactive:         885296 kB
Active(anon):    1174796 kB
Inactive(anon):   773840 kB
Active(file):     547924 kB
Inactive(file):   111456 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4170860 kB
Dirty:               396 kB
Writeback:             0 kB
AnonPages:       1939012 kB
Mapped:           333740 kB
Shmem:              7472 kB
KReclaimable:      88208 kB
Slab:             153836 kB
SReclaimable:      88208 kB
SUnreclaim:        65628 kB
KernelStack:        5424 kB
PageTables:        10128 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754696 kB
Committed_AS:    4990432 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       32972 kB
VmallocChunk:          0 kB
Percpu:             1736 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1329152 kB
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
DirectMap4k:      145344 kB
DirectMap2M:     3000320 kB
DirectMap1G:     6291456 kB
```

### cat /etc/os-release

```plain
NAME="Ubuntu"
VERSION="20.04.3 LTS (Focal Fossa)"
ID=ubuntu
ID_LIKE=debian
PRETTY_NAME="Ubuntu 20.04.3 LTS"
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
| 16079 | 14417 | 16147 | 0.4211% | 0.4717% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/curl/tests/bug78775.php:19
006+ Stack trace:
007+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/curl/tests/bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/curl/tests/bug78775.php on line 19
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     array(1) {
       [0]=>
       string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
016+ 
017+ Warning: ftp_close(): SSL read failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/ftp/tests/002.php on line 12
     bool(true)
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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
013- done
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
005+ Fetching from thread 964...
005- Fetching from thread 1273...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Fri Sep 17 04:06:47 2021 (85693): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Fri Sep 17 04:06:47 2021 (85693): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Fri Sep 17 03:52:52 2021 (28801): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug46127.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Sending bug 46127
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
     Running bug48182
002+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003+ 
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
005+ 
006+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
007+ 
008+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
009+ Stack trace:
010+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
011+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
012+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
013+ #3 {main}
014+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
015+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
016+ Stack trace:
017+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
018+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
019+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
020+ #3 {main}
021+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
--
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(12) "Hello World!"
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
002- 
003- Warning: file_get_contents(): Failed to enable crypto in %s on line %d
004- 
005- Warning: file_get_contents(%s): Failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65538_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(12) "Hello World!"
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:12
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(12): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
014+ 
015+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
016+ bool(false)
017+ 
018+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
     resource(%d) of type (stream)
019+ bool(false)
007- resource(%d) of type (stream)
008- resource(%d) of type (stream)
     
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
021+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
     bool(false)
```

### ext/openssl/tests/bug68265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
006- bool(false)
007- 
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
009- 
010- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
011- 
012- Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
013- bool(false)
014- 
015- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
016- 
017- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
018- 
019- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
020- 
021- Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
022- bool(false)
023- 
024- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
025- 
026- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
027- 
028- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
029- 
030- Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
031- bool(false)
```

### ext/openssl/tests/bug69215.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:14
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(14): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/bug72333.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- done
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Written 1048575 bytes
002- DONE
```

### ext/openssl/tests/bug76705.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

### ext/openssl/tests/bug77390.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(0) ""
002- string(12) "hello, world"
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(%d) "capture_peer_cert_001"
```

### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
     bool(false)
014+ 
007- resource(%d) of type (stream)
015+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
016+ bool(false)
```

### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- bool(false)
002- bool(false)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
```

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- resource(%d) of type (stream)
     
010+  ** ERROR: process timed out **
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
004- 
005- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
006- 
007- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
008- bool(false)
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Fatal error: Uncaught TypeError: stream_get_meta_data(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:14
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(14): stream_get_meta_data(false)
010+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
011+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/session_meta_capture.php(56): ServerClientTestCase->run('    $serverUri ...', Array)
012+ #3 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
014+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
015+ Stack trace:
016+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
017+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
018+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
019+ #3 {main}
020+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
001- string(7) "TLSv1.3"
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
006+ 
007+ Fatal error: Uncaught TypeError: stream_get_meta_data(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): stream_get_meta_data(false)
010+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
011+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/session_meta_capture_tlsv13.php(44): ServerClientTestCase->run('    $serverUri ...', Array)
012+ #3 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
014+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
015+ Stack trace:
016+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
017+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
018+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
019+ #3 {main}
020+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_crypto_flags_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
013+ bool(false)
014+ 
015+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
016+ 
017+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
018+ bool(false)
019+ 
020+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
021+ bool(false)
022+ 
023+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
024+ bool(false)
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:12
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(12): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
009+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
012+ 
004- resource(%d) of type (stream)
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
014+ bool(false)
```

### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:1416F086:SSL routines:tls_process_server_certificate:certificate verify failed in %s : eval()'d code on line %d
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in %s : eval()'d code on line %d
005- 
006- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
007- bool(false)
```

### ext/openssl/tests/stream_server_reneg_limit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_verify_peer_name_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
013+ bool(false)
```

### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
     
010+  ** ERROR: process timed out **
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/streams_crypto_method.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Hello World!
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:13
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(13): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
012+ bool(false)
013+ bool(false)
014+ bool(false)
015+ bool(false)
003- resource(%d) of type (stream)
     bool(false)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
005+  ** ERROR: process timed out **
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
012+ bool(false)
013+ bool(false)
014+ bool(false)
015+ bool(false)
016+ bool(false)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007- resource(%d) of type (stream)
017+ bool(false)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
004+ 
005+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.1://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
011+ 
012+ Warning: stream_socket_client(): Unable to connect to tlsv1.1://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002- bool(false)
     bool(false)
014+ bool(false)
015+ bool(false)
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
```

### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.3://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
011+ 
012+ Warning: stream_socket_client(): Unable to connect to tlsv1.3://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
001- resource(%d) of type (stream)
002- bool(false)
     bool(false)
014+ bool(false)
015+ bool(false)
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
--
     [005] PDO::__construct(): Argument #1 ($dsn) must be a valid data source name, [n/a] n/a
     [006] PDO::__construct(): Argument #1 ($dsn) must be a valid data source name, [n/a] n/a
     [007] could not find driver, [n/a] n/a
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
     [017] DSN=%s, SQLSTATE[%s] [%d] %s
     done!
```

Test FAILED in both, but outputs is different.

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
009+ [017] DSN=mysql:host=- ;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service
008- [015] DSN=mysql:host=localhostinvalid;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] No such file or directory
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: Name or service not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///tmp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=/tmp/pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
     done!
```

### ext/phar/tests/bug72321.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: PharData::extractTo(): %s in %sbug72321.php on line %d
     Extraction from phar "%s72321_2.zip" failed: Cannot extract "AAAAAAAAxxxxBBBBCCCCCCCCxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/b/c", could not create directory "test72321/AAAAAAAAxxxxBBBBCCCCCCCCxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/b"
     DONE
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
     Iteration 0
003+ HTTP/1.1 200 OK
004+ Date: Fri, 17 Sep 2021 04:11:22 GMT
005+ Connection: close
006+ X-Powered-By: PHP/8.0.10
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
     
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
005- Function 'CATALOG' doesn't exist
     
007- Iteration 1
016+ HTTP/1.1 200 OK
017+ Date: Fri, 17 Sep 2021 04:11:22 GMT
018+ Connection: close
019+ X-Powered-By: PHP/8.0.10
020+ Content-type: text/html; charset=UTF-8
009- Function 'CATALOG' doesn't exist
     
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
011- Function 'CATALOG' doesn't exist
     
013- Iteration 2
     
029+ Iteration 1
015- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Fri, 17 Sep 2021 04:11:22 GMT
033+ Connection: close
034+ X-Powered-By: PHP/8.0.10
035+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
     
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
019- Iteration 3
     
021- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Fri, 17 Sep 2021 04:11:22 GMT
046+ Connection: close
047+ X-Powered-By: PHP/8.0.10
048+ Content-type: text/html; charset=UTF-8
023- Function 'CATALOG' doesn't exist
     
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
025- Iteration 4
     
027- Function 'CATALOG' doesn't exist
     
057+ Iteration 2
029- Function 'CATALOG' doesn't exist
059+ HTTP/1.1 200 OK
060+ Date: Fri, 17 Sep 2021 04:11:22 GMT
061+ Connection: close
062+ X-Powered-By: PHP/8.0.10
063+ Content-type: text/html; charset=UTF-8
031- Iteration 5
     
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
033- Function 'CATALOG' doesn't exist
     
035- Function 'CATALOG' doesn't exist
072+ HTTP/1.1 200 OK
073+ Date: Fri, 17 Sep 2021 04:11:22 GMT
074+ Connection: close
075+ X-Powered-By: PHP/8.0.10
076+ Content-type: text/html; charset=UTF-8
037- Iteration 6
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/sapi/cli/tests/bug73037_server.php</b> 
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Fri, 17 Sep 2021 04:11:22 GMT
004- Date: Fri, 17 Sep 2021 03:55:58 GMT
017+ Date: Fri, 17 Sep 2021 04:11:22 GMT
017- Date: Fri, 17 Sep 2021 03:55:58 GMT
032+ Date: Fri, 17 Sep 2021 04:11:22 GMT
032- Date: Fri, 17 Sep 2021 03:55:58 GMT
045+ Date: Fri, 17 Sep 2021 04:11:22 GMT
045- Date: Fri, 17 Sep 2021 03:55:58 GMT
060+ Date: Fri, 17 Sep 2021 04:11:22 GMT
060- Date: Fri, 17 Sep 2021 03:55:58 GMT
073+ Date: Fri, 17 Sep 2021 04:11:22 GMT
073- Date: Fri, 17 Sep 2021 03:55:58 GMT
088+ Date: Fri, 17 Sep 2021 04:11:22 GMT
088- Date: Fri, 17 Sep 2021 03:55:58 GMT
101+ Date: Fri, 17 Sep 2021 04:11:22 GMT
101- Date: Fri, 17 Sep 2021 03:55:58 GMT
116+ Date: Fri, 17 Sep 2021 04:11:22 GMT
116- Date: Fri, 17 Sep 2021 03:55:58 GMT
129+ Date: Fri, 17 Sep 2021 04:11:22 GMT
129- Date: Fri, 17 Sep 2021 03:55:58 GMT
144+ Date: Fri, 17 Sep 2021 04:11:22 GMT
144- Date: Fri, 17 Sep 2021 03:55:58 GMT
157+ Date: Fri, 17 Sep 2021 04:11:22 GMT
157- Date: Fri, 17 Sep 2021 03:55:58 GMT
172+ Date: Fri, 17 Sep 2021 04:11:22 GMT
172- Date: Fri, 17 Sep 2021 03:55:58 GMT
185+ Date: Fri, 17 Sep 2021 04:11:22 GMT
185- Date: Fri, 17 Sep 2021 03:55:58 GMT
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

### sapi/cli/tests/upload_2G.phpt

Test SKIPPED in control but PASSED in experiment

```patch
not generated
```

### ext/soap/tests/bugs/bug44811.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- SOAP-ERROR: Parsing WSDL: Couldn't load from 'https://php.net' : %s
002- 
003- ok
```

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug74764.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/standard/tests/network/bug80067.php on line 3
001- bool(true)
002+ bool(false)
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
004+ Warning: unlink(/tmp/6144170e8be99.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/6144170ec11be.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
     stream_socket_server(): socket path exceeded the maximum allowed length of %d bytes and was truncated
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:57682/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_73bd7e5e94024d9a/ext/standard/tests/streams/bug73457.php on line 8
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
001+ ** ERROR: process timed out **
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
003- bool(false)
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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
     bool(true)
```
