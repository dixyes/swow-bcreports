# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.23 (cli) (built: Aug 26 2021 15:51:37) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.23, Copyright (c), by Zend Technologies
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
PHP 7.4.23 (cli) (built: Aug 26 2021 15:51:37) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.23, Copyright (c), by Zend Technologies
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
Linux fv-az278-660 5.8.0-1041-azure #44~20.04.1-Ubuntu SMP Fri Aug 20 20:41:09 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2294.682
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
cpu MHz		: 2294.682
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
MemFree:         4015000 kB
MemAvailable:    4539052 kB
Buffers:          120420 kB
Cached:           596780 kB
SwapCached:         3260 kB
Active:          1989308 kB
Inactive:         851744 kB
Active(anon):    1412932 kB
Inactive(anon):   726232 kB
Active(file):     576376 kB
Inactive(file):   125512 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4174236 kB
Dirty:               200 kB
Writeback:             0 kB
AnonPages:       2127088 kB
Mapped:           361260 kB
Shmem:              7444 kB
KReclaimable:      95220 kB
Slab:             163360 kB
SReclaimable:      95220 kB
SUnreclaim:        68140 kB
KernelStack:        5456 kB
PageTables:        10188 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    4985196 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       33032 kB
VmallocChunk:          0 kB
Percpu:             1760 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1609728 kB
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
DirectMap4k:      143296 kB
DirectMap2M:     5099520 kB
DirectMap1G:     4194304 kB
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
| 15682 | 13988 | 15749 | 0.4254% | 0.4790% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/curl/tests/bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/curl/tests/bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
016+ 
017+ Warning: ftp_close(): SSL read failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/ftp/tests/002.php on line 12
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
005- Fetching from thread 1475...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Fri Sep 17 04:14:27 2021 (85677): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Fri Sep 17 04:14:27 2021 (85677): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Fri Sep 17 04:02:35 2021 (30022): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
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
002+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003+ 
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
007+ 
008+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
009+ 
010+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
011+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
012+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
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
005- Warning: file_get_contents(%s): failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65538_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ 
005+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
006+ bool(false)
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
007- resource(%d) of type (stream)
008- resource(%d) of type (stream)
009- 
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
015- bool(false)
```

### ext/openssl/tests/bug68265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
007+ bool(false)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
007+ bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
010- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
012+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
013+ bool(false)
012- Warning: stream_socket_client(): unable to connect to %s (Unknown error) in %s on line %d
015+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
016+ bool(false)
018+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
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

### ext/openssl/tests/bug69215.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
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
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
007+ 
007- resource(%d) of type (stream)
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
009+ bool(false)
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
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
006+ bool(false)
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ 
003+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ 
005+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
006+ NULL
007+ 
008+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 20
009+ 
010+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
011+ NULL
012+ 
013+ Notice: Undefined index: session_meta in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
014+ 
015+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
016+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(7) "TLSv1.3"
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002+ 
003+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
006+ 
007+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ NULL
018+ 
019+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
020+ 
021+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ 
023+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 20
002+ 
003+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
006+ 
007+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ NULL
018+ 
019+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
020+ 
021+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ 
023+ Notice: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ NULL
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ 
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_crypto_flags_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ bool(false)
007+ bool(false)
008+ bool(false)
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004- resource(%d) of type (stream)
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
006- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
007- bool(false)
```

### ext/openssl/tests/stream_server_reneg_limit.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/streams_crypto_method.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


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

### ext/phar/tests/bug72321.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: PharData::extractTo(): %s in %sbug72321.php on line %d
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Fri, 17 Sep 2021 04:19:09 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.4.23
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Fri, 17 Sep 2021 04:19:09 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.4.23
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Fri, 17 Sep 2021 04:19:09 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.4.23
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Fri, 17 Sep 2021 04:19:09 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.4.23
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Fri, 17 Sep 2021 04:19:09 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.4.23
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Fri, 17 Sep 2021 04:19:09 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.4.23
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
084+ 
085+ Iteration 3
086+ 
087+ HTTP/1.1 200 OK

...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Fri, 17 Sep 2021 04:19:09 GMT
004- Date: Fri, 17 Sep 2021 04:05:09 GMT
017+ Date: Fri, 17 Sep 2021 04:19:09 GMT
017- Date: Fri, 17 Sep 2021 04:05:09 GMT
032+ Date: Fri, 17 Sep 2021 04:19:09 GMT
032- Date: Fri, 17 Sep 2021 04:05:09 GMT
045+ Date: Fri, 17 Sep 2021 04:19:09 GMT
045- Date: Fri, 17 Sep 2021 04:05:09 GMT
060+ Date: Fri, 17 Sep 2021 04:19:09 GMT
060- Date: Fri, 17 Sep 2021 04:05:09 GMT
073+ Date: Fri, 17 Sep 2021 04:19:09 GMT
073- Date: Fri, 17 Sep 2021 04:05:09 GMT
088+ Date: Fri, 17 Sep 2021 04:19:09 GMT
088- Date: Fri, 17 Sep 2021 04:05:09 GMT
101+ Date: Fri, 17 Sep 2021 04:19:09 GMT
101- Date: Fri, 17 Sep 2021 04:05:09 GMT
116+ Date: Fri, 17 Sep 2021 04:19:09 GMT
116- Date: Fri, 17 Sep 2021 04:05:09 GMT
129+ Date: Fri, 17 Sep 2021 04:19:09 GMT
129- Date: Fri, 17 Sep 2021 04:05:09 GMT
144+ Date: Fri, 17 Sep 2021 04:19:09 GMT
144- Date: Fri, 17 Sep 2021 04:05:09 GMT
157+ Date: Fri, 17 Sep 2021 04:19:09 GMT
157- Date: Fri, 17 Sep 2021 04:05:09 GMT
172+ Date: Fri, 17 Sep 2021 04:19:09 GMT
172- Date: Fri, 17 Sep 2021 04:05:09 GMT
185+ Date: Fri, 17 Sep 2021 04:19:09 GMT
185- Date: Fri, 17 Sep 2021 04:05:09 GMT
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+  ** ERROR: process timed out **
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
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
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/standard/tests/network/bug80067.php on line 3
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
004+ Warning: unlink(/tmp/614418ba75ba6.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/614418baa0cd0.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:53782/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_54d515362d78b276/ext/standard/tests/streams/bug73457.php on line 8
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
001+ ** ERROR: process timed out **
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
003- bool(false)
004- ==DONE==
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
006- ==DONE==
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```
