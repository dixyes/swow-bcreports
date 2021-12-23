# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.1.0 (cli) (built: Nov 25 2021 20:22:03) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.0, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.0, Copyright (c), by Zend Technologies
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
PHP 8.1.0 (cli) (built: Nov 25 2021 20:22:03) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.0, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.0, Copyright (c), by Zend Technologies
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
Linux fv-az173-662 5.11.0-1022-azure #23~20.04.1-Ubuntu SMP Fri Nov 19 10:20:52 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
MemTotal:        7118764 kB
MemFree:         4289944 kB
MemAvailable:    4760600 kB
Buffers:          139416 kB
Cached:           528264 kB
SwapCached:        10028 kB
Active:           550200 kB
Inactive:        2040360 kB
Active(anon):       7768 kB
Inactive(anon):  1928456 kB
Active(file):     542432 kB
Inactive(file):   111904 kB
Unevictable:       26732 kB
Mlocked:           26732 kB
SwapTotal:       4194300 kB
SwapFree:        4097480 kB
Dirty:              6064 kB
Writeback:             0 kB
AnonPages:       1910468 kB
Mapped:           328260 kB
Shmem:              9544 kB
KReclaimable:      83544 kB
Slab:             135804 kB
SReclaimable:      83544 kB
SUnreclaim:        52260 kB
KernelStack:        5168 kB
PageTables:        10884 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7753680 kB
Committed_AS:    4932792 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       34192 kB
VmallocChunk:          0 kB
Percpu:             1648 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1107968 kB
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
DirectMap4k:      120768 kB
DirectMap2M:     3024896 kB
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

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16926 | 15187 | 16974 | 0.2828% | 0.3161% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/curl/tests/bug78775.php:19
006+ Stack trace:
007+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/curl/tests/bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/curl/tests/bug78775.php on line 19
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     array(1) {
       [0]=>
       string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
016+ 
017+ Warning: ftp_close(): SSL read failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/ftp/tests/002.php on line 12
     bool(true)
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment because

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
005+ Fetching from thread 1119...
005- Fetching from thread 1118...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Thu Dec 23 04:31:25 2021 (69052): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Dec 23 04:31:25 2021 (69052): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Dec 23 04:22:02 2021 (23495): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
     Running bug48182
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
010+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
011+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
012+ #3 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
014+ PHP Fatal error:  Uncaught TypeError: fread(): Argument #1 ($stream) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:12
015+ Stack trace:
016+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(12): fread()
017+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
018+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
019+ #3 {main}
020+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
--
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): Failed to open stream: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
002- 
     Warning: file_get_contents(): Failed to enable crypto in %s on line %d
     
     Warning: file_get_contents(%s): Failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65538_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): Failed to open stream: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
002- 
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
--
     resource(%d) of type (stream)
     resource(%d) of type (stream)
     
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
--
```

### ext/openssl/tests/bug68265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
004+ bool(false)
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
     bool(false)
011+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
012+ 
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
014+ bool(false)
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
     bool(false)
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
001+ Notice: fwrite(): Send of 4000000 bytes failed with errno=0  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
     done
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/bug77390.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:7
001- string(0) ""
002- string(12) "hello, world"
003+ Stack trace:
004+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(7): stream_socket_accept()
005+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ 
007+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
008+ NULL
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

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
     
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
004- 
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
--
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
002+ 
003+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
007+ 
008+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
009+ NULL
010+ 
011+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
012+ 
013+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "crypto" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- string(7) "TLSv1.3"
002+ 
003+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ 
018+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
019+ NULL
020+ 
021+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
022+ 
023+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ 
025+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
026+ 
027+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
028+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ 
018+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
019+ NULL
020+ 
021+ Warning: Undefined array key "peer_certificate" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
022+ 
023+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ 
025+ Warning: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
026+ 
027+ Warning: Trying to access array offset on value of type null in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
028+ NULL
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
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
008+ bool(false)
```

### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:%s:SSL routines:%S:certificate verify failed in %s : eval()'d code on line %d
003- 
     Warning: stream_socket_client(): Failed to enable crypto in %s : eval()'d code on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
--
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ bool(false)
007+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
008+ Stack trace:
009+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept()
010+ #1 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
011+ #2 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
012+ #3 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
002- 
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
--
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
003+ bool(false)
004+ bool(false)
005+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
003- resource(%d) of type (stream)
     bool(false)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
007+ bool(false)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
008+ bool(false)
007- resource(%d) of type (stream)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ 
003+ Warning: stream_socket_client(): Unable to connect to tlsv1.1://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
     bool(false)
003+ resource(14) of type (stream)
003- bool(false)
```

### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
     bool(false)
003+ resource(14) of type (stream)
003- bool(false)
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment because

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
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo for - failed: Name or service not known
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

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo for www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo for %s failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug74764.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
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
004+ Warning: unlink(/tmp/61c3fce3b9163.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/61c3fce421e11.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
     stream_socket_server(): socket path exceeded the maximum allowed length of %d bytes and was truncated
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ec61b1a41cc610f0/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
```

### ext/standard/tests/streams/stream_select_null_usec.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       [0]=>
       resource(%d) of type (stream)
     }
006+ 8192 stream_select(): Argument #5 ($microseconds) should be null instead of 0 when argument #4 ($seconds) is null
     
     Fatal error: Uncaught ValueError: stream_select(): Argument #5 ($microseconds) must be null when argument #4 ($seconds) is null in %s
     Stack trace:
--
```
