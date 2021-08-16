# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.22 (cli) (built: Jul 30 2021 13:08:17) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.22, Copyright (c), by Zend Technologies
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
PHP 7.4.22 (cli) (built: Jul 30 2021 13:08:17) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.22, Copyright (c), by Zend Technologies
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
Linux fv-az275-571 5.8.0-1039-azure #42~20.04.1-Ubuntu SMP Thu Jul 15 14:11:07 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
```

### cat /proc/cpuinfo

```plain
processor	: 0
vendor_id	: GenuineIntel
cpu family	: 6
model		: 63
model name	: Intel(R) Xeon(R) CPU E5-2673 v3 @ 2.40GHz
stepping	: 2
microcode	: 0xffffffff
cpu MHz		: 2397.224
cache size	: 30720 KB
physical id	: 0
siblings	: 2
core id		: 0
cpu cores	: 2
apicid		: 0
initial apicid	: 0
fpu		: yes
fpu_exception	: yes
cpuid level	: 15
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm invpcid_single pti fsgsbase bmi1 avx2 smep bmi2 erms invpcid xsaveopt md_clear
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit
bogomips	: 4794.44
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:

processor	: 1
vendor_id	: GenuineIntel
cpu family	: 6
model		: 63
model name	: Intel(R) Xeon(R) CPU E5-2673 v3 @ 2.40GHz
stepping	: 2
microcode	: 0xffffffff
cpu MHz		: 2397.224
cache size	: 30720 KB
physical id	: 0
siblings	: 2
core id		: 1
cpu cores	: 2
apicid		: 1
initial apicid	: 1
fpu		: yes
fpu_exception	: yes
cpuid level	: 15
wp		: yes
flags		: fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm invpcid_single pti fsgsbase bmi1 avx2 smep bmi2 erms invpcid xsaveopt md_clear
bugs		: cpu_meltdown spectre_v1 spectre_v2 spec_store_bypass l1tf mds swapgs itlb_multihit
bogomips	: 4794.44
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         4108316 kB
MemAvailable:    4599892 kB
Buffers:          119376 kB
Cached:           566908 kB
SwapCached:         5068 kB
Active:          1861888 kB
Inactive:         886956 kB
Active(anon):    1290612 kB
Inactive(anon):   785728 kB
Active(file):     571276 kB
Inactive(file):   101228 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4177820 kB
Dirty:               192 kB
Writeback:             0 kB
AnonPages:       2078312 kB
Mapped:           360144 kB
Shmem:              7468 kB
KReclaimable:      89036 kB
Slab:             159292 kB
SReclaimable:      89036 kB
SUnreclaim:        70256 kB
KernelStack:        6176 kB
PageTables:        12296 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    5580736 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       33848 kB
VmallocChunk:          0 kB
Percpu:             1680 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1327104 kB
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
DirectMap4k:      131008 kB
DirectMap2M:     4063232 kB
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
| 15683 | 13977 | 15736 | 0.3368% | 0.3792% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/curl/tests/bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/curl/tests/bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ SSLv23 handshake failed.
002+ 
003+ Warning: ftp_login(): SSL read failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/ftp/tests/002.php on line 8
004+ bool(false)
005+ 
006+ Warning: ftp_raw(): SSL write failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/ftp/tests/002.php on line 9
007+ NULL
008+ 
009+ Warning: ftp_raw(): SSL write failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/ftp/tests/002.php on line 10
010+ NULL
011+ 
012+ Warning: ftp_close(): SSL write failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/ftp/tests/002.php on line 12
013+ 
014+ Warning: ftp_close(): SSL_shutdown failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/ftp/tests/002.php on line 12
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
005+ Fetching from thread 908...
005- Fetching from thread 1473...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Mon Aug 16 04:04:19 2021 (86153): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Aug 16 04:04:19 2021 (86153): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Aug 16 03:52:49 2021 (29723): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
010+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
011+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(19) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
003- Warning: file_get_contents(): Failed to enable crypto in %s on line %d
004- 
005- Warning: file_get_contents(%s): failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(19) of type (stream)
002+ resource(21) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
009- 
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
015- bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(19) of type (stream)
002+ resource(21) of type (stream)
003+ resource(23) of type (stream)
004+ resource(25) of type (stream)
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to %s (Unknown error) in %s on line %d
006- bool(false)
007- 
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
009- 
010- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
011- 
012- Warning: stream_socket_client(): unable to connect to %s (Unknown error) in %s on line %d
013- bool(false)
014- 
015- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
016- 
017- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
018- 
019- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
020- 
021- Warning: stream_socket_client(): unable to connect to %s (Unknown error) in %s on line %d
022- bool(false)
023- 
024- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
025- 
026- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
027- 
028- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
029- 
030- Warning: stream_socket_client(): unable to connect to %s (Unknown error) in %s on line %d
031- bool(false)
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ stream_socket_enable_crypto(): SSL/TLS already set-up for this stream
001- Written 1048575 bytes
002- DONE
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ NULL
```

### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(19) of type (stream)
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(18) of type (stream)
002+ resource(20) of type (stream)
001- bool(false)
002- bool(false)
```

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ resource(20) of type (stream)
002- 
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
004- 
005- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
006- 
007- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
008- bool(false)
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
002+ 
003+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 20
007+ 
008+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
009+ NULL
010+ 
011+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
012+ 
013+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(7) "TLSv1.3"
002+ 
003+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- resource(%d) of type (stream)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
008+ bool(false)
```

### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(19) of type (stream)
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:1416F086:SSL routines:tls_process_server_certificate:certificate verify failed in %s : eval()'d code on line %d
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in %s : eval()'d code on line %d
005- 
006- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
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
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
003+  ** ERROR: process timed out **
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/streams_crypto_method.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Hello World!
002+ 
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
002+ 
003+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
003- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
006+ 
007+  ** ERROR: process timed out **
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
001- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
006+ 
007+  ** ERROR: process timed out **
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
001- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
006+ 
007+  ** ERROR: process timed out **
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007- resource(%d) of type (stream)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tlsv1.0://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
006+ 
007+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tlsv1.1://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ 
003+  ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tlsv1.2://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ 
003+  ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
```

### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tlsv1.3://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ 
003+  ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
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
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Mon, 16 Aug 2021 04:08:32 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.4.22
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Mon, 16 Aug 2021 04:08:32 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.4.22
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Mon, 16 Aug 2021 04:08:32 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.4.22
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Mon, 16 Aug 2021 04:08:32 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.4.22
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Mon, 16 Aug 2021 04:08:32 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.4.22
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Mon, 16 Aug 2021 04:08:32 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.4.22
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
084+ 
085+ Iteration 3
086+ 
087+ HTTP/1.1 200 OK

...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Mon, 16 Aug 2021 04:08:32 GMT
004- Date: Mon, 16 Aug 2021 03:55:18 GMT
017+ Date: Mon, 16 Aug 2021 04:08:32 GMT
017- Date: Mon, 16 Aug 2021 03:55:18 GMT
032+ Date: Mon, 16 Aug 2021 04:08:32 GMT
032- Date: Mon, 16 Aug 2021 03:55:18 GMT
045+ Date: Mon, 16 Aug 2021 04:08:32 GMT
045- Date: Mon, 16 Aug 2021 03:55:18 GMT
060+ Date: Mon, 16 Aug 2021 04:08:32 GMT
060- Date: Mon, 16 Aug 2021 03:55:18 GMT
073+ Date: Mon, 16 Aug 2021 04:08:32 GMT
073- Date: Mon, 16 Aug 2021 03:55:18 GMT
088+ Date: Mon, 16 Aug 2021 04:08:32 GMT
088- Date: Mon, 16 Aug 2021 03:55:18 GMT
101+ Date: Mon, 16 Aug 2021 04:08:32 GMT
101- Date: Mon, 16 Aug 2021 03:55:18 GMT
116+ Date: Mon, 16 Aug 2021 04:08:32 GMT
116- Date: Mon, 16 Aug 2021 03:55:18 GMT
129+ Date: Mon, 16 Aug 2021 04:08:32 GMT
129- Date: Mon, 16 Aug 2021 03:55:18 GMT
144+ Date: Mon, 16 Aug 2021 04:08:32 GMT
144- Date: Mon, 16 Aug 2021 03:55:18 GMT
157+ Date: Mon, 16 Aug 2021 04:08:32 GMT
157- Date: Mon, 16 Aug 2021 03:55:18 GMT
172+ Date: Mon, 16 Aug 2021 04:08:32 GMT
172- Date: Mon, 16 Aug 2021 03:55:18 GMT
185+ Date: Mon, 16 Aug 2021 04:08:32 GMT
185- Date: Mon, 16 Aug 2021 03:55:18 GMT
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
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

### ext/standard/tests/file/bug69442.phpt

Test FAILED in experiment beacuse

```patch
001+ type 0 string(3) "foo"
002+ type 1 string(2) "
001- type 0 string(5) "foo
003- type 1 string(0) ""
004- type 2 string(0) ""
004+ 
005+ Notice: fread(): read of 8192 bytes failed with errno=5 Input/output error in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/file/bug69442.php on line 9
006+ type 2 bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001+ type 0 string(3) "foo"
002+ type 1 string(2) "
001- type 0 string(5) "foo
005- type 1 bool(false)
006- 
007- Notice: fread(): read of 8192 bytes failed with errno=5 Input/output error in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_a5660978c77d9991/ext/standard/tests/file/bug69442.php on line 9
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
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug74764.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/network/bug80067.php on line 3
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
003+ 
004+ Warning: unlink(/tmp/6119e60e47332.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/6119e60ea1d17.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:50235/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/bug73457.php on line 8
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
001+ SSLv23 handshake failed.
002+ 
003+ Notice: opendir(): Send of 8 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-003.php on line 10
004+ 
005+ Notice: opendir(): Send of 16 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-003.php on line 10
006+ 
007+ Warning: opendir(ftps://127.0.0.1:63828/bogusdir): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ SSLv23 handshake failed.
002+ 
003+ Notice: opendir(): Send of 8 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-004.php on line 10
004+ 
005+ Notice: opendir(): Send of 16 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-004.php on line 10
006+ 
007+ Warning: opendir(ftps://127.0.0.1:59180/): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-004.php on line 10
008+ bool(false)
009+ 
010+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a5660978c77d9991/ext/standard/tests/streams/opendir-004.php on line 12
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
