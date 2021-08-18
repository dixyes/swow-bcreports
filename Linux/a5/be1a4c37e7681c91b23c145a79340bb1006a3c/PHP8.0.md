# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.9 (cli) (built: Jul 30 2021 13:03:39) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.9, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.9, Copyright (c), by Zend Technologies
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
PHP 8.0.9 (cli) (built: Jul 30 2021 13:03:39) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.9, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.9, Copyright (c), by Zend Technologies
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
Linux fv-az193-801 5.8.0-1039-azure #42~20.04.1-Ubuntu SMP Thu Jul 15 14:11:07 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
```

### cat /proc/cpuinfo

```plain
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 85
model name	: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
stepping	: 4
microcode	: 0xffffffff
cpu MHz		: 2095.197
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
bogomips	: 4190.39
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:

processor	: 1
vendor_id	: GenuineIntel
cpu family	: 6
model		: 85
model name	: Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
stepping	: 4
microcode	: 0xffffffff
cpu MHz		: 2095.197
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
bogomips	: 4190.39
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         3868288 kB
MemAvailable:    4345552 kB
Buffers:          134444 kB
Cached:           538844 kB
SwapCached:         3760 kB
Active:          2229552 kB
Inactive:         758256 kB
Active(anon):    1667132 kB
Inactive(anon):   662444 kB
Active(file):     562420 kB
Inactive(file):    95812 kB
Unevictable:       26720 kB
Mlocked:           26720 kB
SwapTotal:       4194300 kB
SwapFree:        4176780 kB
Dirty:               224 kB
Writeback:             0 kB
AnonPages:       2322752 kB
Mapped:           336112 kB
Shmem:              7460 kB
KReclaimable:      88956 kB
Slab:             159024 kB
SReclaimable:      88956 kB
SUnreclaim:        70068 kB
KernelStack:        6240 kB
PageTables:        13404 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    5677548 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       33900 kB
VmallocChunk:          0 kB
Percpu:             1672 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1595392 kB
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
DirectMap4k:      135104 kB
DirectMap2M:     4059136 kB
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
| 16069 | 14392 | 16122 | 0.3287% | 0.3683% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/curl/tests/bug78775.php:19
006+ Stack trace:
007+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/curl/tests/bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/curl/tests/bug78775.php on line 19
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ SSLv23 handshake failed.
002+ 
003+ Warning: ftp_login(): SSL read failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/ftp/tests/002.php on line 8
004+ bool(false)
005+ 
006+ Warning: ftp_raw(): SSL write failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/ftp/tests/002.php on line 9
007+ NULL
008+ 
009+ Warning: ftp_raw(): SSL write failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/ftp/tests/002.php on line 10
010+ NULL
011+ 
     array(1) {
       [0]=>
       string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
012+ Warning: ftp_close(): SSL write failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/ftp/tests/002.php on line 12
001- bool(true)
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
     bool(true)
014+ 
015+ Warning: Unknown: SSL_shutdown failed in Unknown on line 0
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
005+ Fetching from thread 905...
005- Fetching from thread 1462...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Aug 18 04:04:34 2021 (86789): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Aug 18 04:04:34 2021 (86789): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Aug 18 03:52:13 2021 (28681): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
     Running bug48182
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
010+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
011+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
012+ #3 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
014+ PHP Fatal error:  Uncaught TypeError: fread(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:12
015+ Stack trace:
016+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(12): fread()
017+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
018+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
019+ #3 {main}
020+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
     
003- Warning: file_get_contents(): Failed to enable crypto in %s on line %d
004- 
005- Warning: file_get_contents(%s): Failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
002+ resource(15) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
009- 
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
015- bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
002+ resource(15) of type (stream)
003+ resource(17) of type (stream)
004+ resource(19) of type (stream)
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

### ext/openssl/tests/bug72333.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: fwrite(): Send of 4000000 bytes failed with errno=0  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
     done
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ stream_socket_enable_crypto(): SSL/TLS already set-up for this stream
001- Written 1048575 bytes
002- DONE
```

### ext/openssl/tests/bug77390.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:7
001- string(0) ""
002- string(12) "hello, world"
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(7): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ NULL
```

### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
001+ resource(13) of type (stream)
     resource(%d) of type (stream)
```

### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(12) of type (stream)
     bool(false)
002+ resource(14) of type (stream)
001- bool(false)
002- bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
```

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
002+ resource(14) of type (stream)
002- 
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
001+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
002+ 
003+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
007+ 
008+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
009+ NULL
010+ 
011+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
012+ 
013+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- string(7) "TLSv1.3"
002+ 
003+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
008+ bool(false)
```

### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Hello World!
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
002+ 
003+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
003- resource(%d) of type (stream)
     bool(false)
006+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:13
007+ Stack trace:
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
008+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(13): stream_socket_accept()
009+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
010+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
011+ #3 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
013+ 
014+  ** ERROR: process timed out **
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
006+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
007+ Stack trace:
008+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
009+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
010+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
011+ #3 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
013+ 
014+  ** ERROR: process timed out **
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
006+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
007+ Stack trace:
008+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
009+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
010+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007- resource(%d) of type (stream)
011+ #3 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
013+ 
014+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
006+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
007+ Stack trace:
008+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
009+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
010+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
011+ #3 {main}
012+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
013+ 
014+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.1://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.2://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.3://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
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

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
     Iteration 0
003+ HTTP/1.1 200 OK
004+ Date: Wed, 18 Aug 2021 04:09:06 GMT
005+ Connection: close
006+ X-Powered-By: PHP/8.0.9
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
     
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
005- Function 'CATALOG' doesn't exist
     
007- Iteration 1
016+ HTTP/1.1 200 OK
017+ Date: Wed, 18 Aug 2021 04:09:06 GMT
018+ Connection: close
019+ X-Powered-By: PHP/8.0.9
020+ Content-type: text/html; charset=UTF-8
009- Function 'CATALOG' doesn't exist
     
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
011- Function 'CATALOG' doesn't exist
     
013- Iteration 2
     
029+ Iteration 1
015- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Wed, 18 Aug 2021 04:09:06 GMT
033+ Connection: close
034+ X-Powered-By: PHP/8.0.9
035+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
     
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
019- Iteration 3
     
021- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Wed, 18 Aug 2021 04:09:06 GMT
046+ Connection: close
047+ X-Powered-By: PHP/8.0.9
048+ Content-type: text/html; charset=UTF-8
023- Function 'CATALOG' doesn't exist
     
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
025- Iteration 4
     
027- Function 'CATALOG' doesn't exist
     
057+ Iteration 2
029- Function 'CATALOG' doesn't exist
059+ HTTP/1.1 200 OK
060+ Date: Wed, 18 Aug 2021 04:09:06 GMT
061+ Connection: close
062+ X-Powered-By: PHP/8.0.9
063+ Content-type: text/html; charset=UTF-8
031- Iteration 5
     
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
033- Function 'CATALOG' doesn't exist
     
035- Function 'CATALOG' doesn't exist
072+ HTTP/1.1 200 OK
073+ Date: Wed, 18 Aug 2021 04:09:06 GMT
074+ Connection: close
075+ X-Powered-By: PHP/8.0.9
076+ Content-type: text/html; charset=UTF-8
037- Iteration 6
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/sapi/cli/tests/bug73037_server.php</b> on lin
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Wed, 18 Aug 2021 04:09:06 GMT
004- Date: Wed, 18 Aug 2021 03:54:54 GMT
017+ Date: Wed, 18 Aug 2021 04:09:06 GMT
017- Date: Wed, 18 Aug 2021 03:54:54 GMT
032+ Date: Wed, 18 Aug 2021 04:09:06 GMT
032- Date: Wed, 18 Aug 2021 03:54:54 GMT
045+ Date: Wed, 18 Aug 2021 04:09:06 GMT
045- Date: Wed, 18 Aug 2021 03:54:54 GMT
060+ Date: Wed, 18 Aug 2021 04:09:06 GMT
060- Date: Wed, 18 Aug 2021 03:54:54 GMT
073+ Date: Wed, 18 Aug 2021 04:09:06 GMT
073- Date: Wed, 18 Aug 2021 03:54:54 GMT
088+ Date: Wed, 18 Aug 2021 04:09:06 GMT
088- Date: Wed, 18 Aug 2021 03:54:54 GMT
101+ Date: Wed, 18 Aug 2021 04:09:06 GMT
101- Date: Wed, 18 Aug 2021 03:54:54 GMT
116+ Date: Wed, 18 Aug 2021 04:09:06 GMT
116- Date: Wed, 18 Aug 2021 03:54:54 GMT
129+ Date: Wed, 18 Aug 2021 04:09:06 GMT
129- Date: Wed, 18 Aug 2021 03:54:54 GMT
144+ Date: Wed, 18 Aug 2021 04:09:06 GMT
144- Date: Wed, 18 Aug 2021 03:54:54 GMT
157+ Date: Wed, 18 Aug 2021 04:09:06 GMT
157- Date: Wed, 18 Aug 2021 03:54:54 GMT
172+ Date: Wed, 18 Aug 2021 04:09:06 GMT
172- Date: Wed, 18 Aug 2021 03:54:54 GMT
185+ Date: Wed, 18 Aug 2021 04:09:06 GMT
185- Date: Wed, 18 Aug 2021 03:54:54 GMT
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

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/network/bug80067.php on line 3
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
004+ Warning: unlink(/tmp/611c8931808b3.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/611c8931c8081.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
     stream_socket_server(): socket path exceeded the maximum allowed length of %d bytes and was truncated
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:50154/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/bug73457.php on line 8
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
001+ SSLv23 handshake failed.
002+ 
003+ Notice: opendir(): Send of 8 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-003.php on line 10
004+ 
005+ Notice: opendir(): Send of 16 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-003.php on line 10
006+ 
007+ Warning: opendir(ftps://127.0.0.1:65395/bogusdir): Failed to open directory: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ SSLv23 handshake failed.
002+ 
003+ Notice: opendir(): Send of 8 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-004.php on line 10
004+ 
005+ Notice: opendir(): Send of 16 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-004.php on line 10
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ 
007+ Warning: opendir(ftps://127.0.0.1:53458/): Failed to open directory: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-004.php on line 10
008+ bool(false)
009+ 
010+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-004.php:12
011+ Stack trace:
012+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-004.php(12): readdir(false)
013+ #1 {main}
014+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_81383c2067f12a3f/ext/standard/tests/streams/opendir-004.php on line 12
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
```
