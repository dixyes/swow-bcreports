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
Linux fv-az190-125 5.8.0-1033-azure #35~20.04.1-Ubuntu SMP Wed May 19 06:46:04 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2095.076
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
bogomips	: 4190.15
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
cpu MHz		: 2095.076
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
bogomips	: 4190.15
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         4332132 kB
MemAvailable:    6095780 kB
Buffers:          177836 kB
Cached:          1545184 kB
SwapCached:          824 kB
Active:          1166704 kB
Inactive:        1106968 kB
Active(anon):     184172 kB
Inactive(anon):   364184 kB
Active(file):     982532 kB
Inactive(file):   742784 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4191460 kB
Dirty:               116 kB
Writeback:             0 kB
AnonPages:        570424 kB
Mapped:           379248 kB
Shmem:              7460 kB
KReclaimable:     348244 kB
Slab:             420232 kB
SReclaimable:     348244 kB
SUnreclaim:        71988 kB
KernelStack:        4224 kB
PageTables:         7620 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    2929980 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       31904 kB
VmallocChunk:          0 kB
Percpu:             1664 kB
HardwareCorrupted:     0 kB
AnonHugePages:    192512 kB
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
DirectMap4k:      116672 kB
DirectMap2M:     4077568 kB
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
| 16289 | 14063 | 16355 | 0.4035% | 0.4693% |

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
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ftp/tests/002.php on line 8
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
001+ Warning: ldap_bind(): Unable to bind to server: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 14
002+ 
003+ Warning: ldap_search(): Search: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 16
004+ 
005+ Warning: ldap_get_entries() expects parameter 2 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 17
006+ NULL
007+ 
008+ Warning: stream_socket_accept(): accept failed: Socket accept wait failed, reason: Timed out for 3000 ms in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 7
009+ 
010+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 8
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
012+ Warning: fflush() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 9
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: ldap_bind(): Unable to bind to server: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 14
002+ 
007+ 
008+ Warning: stream_socket_accept(): accept failed: Socket accept wait failed, reason: Timed out for 3000 ms in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 7
009+ 
010+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 8
011+ 
012+ Warning: fflush() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/ldap/tests/bug76248.php on line 9
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Sat Jun 12 04:08:15 2021 (85396): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Sat Jun 12 04:08:15 2021 (85396): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Sat Jun 12 03:57:13 2021 (29784): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug68265.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/bug68265.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004+ 
005+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ 
007+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
008+ 
009+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
010+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
010- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/bug68920.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004+ 
005+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
011+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
012+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
013+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
015+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
015- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
017- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
021+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
022+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
023+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
025+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
027+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
029+ Warning: stream_socket_
...
```

Test FAILED in both, but outputs is different.

```patch
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
010- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
013+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
020- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
023+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
030- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
033+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
040- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
```

### ext/openssl/tests/bug72333.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
001- done
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
007+ 
008+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/bug72333.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
008+  ** ERROR: process timed out **
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
005- 
006- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
007- 
008- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:10011 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
009- 
010- Warning: stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 5
011- 
012- Warning: stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
013- 
014- Warning: stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
015- donePHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
016- PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
017- PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
018- PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
019- PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
```

### ext/openssl/tests/bug74159.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- Written 1048575 bytes
002- DONE
003+ 
004+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ 
004+  ** ERROR: process timed out **
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/bug74159.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004- stream_socket_enable_crypto(): SSL: Connection reset by peer
```

### ext/openssl/tests/bug77390.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(0) ""
002- string(12) "hello, world"
003+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
006+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
007+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
008+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
010+ 
011+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/bug77390.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
006+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
007+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
```

### ext/openssl/tests/peer_verification.phpt

Test FAILED in experiment beacuse

```patch
003+ 
004+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
009+ bool(false)
010+ 
011+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
012+ 
013+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
014+ 
015+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
016+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
011+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
011- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
```

### ext/openssl/tests/san_peer_matching.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ bool(false)
007+ 
008+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
006+ bool(false)
007+ bool(false)
008+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ 
005+ Warning: stream_socket_client(): unable to connect to tlsv1.2://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ bool(false)
001- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_b7b20aa470a46d97/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Sat, 12 Jun 2021 04:11:17 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Sat, 12 Jun 2021 04:11:17 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Sat, 12 Jun 2021 04:11:17 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Sat, 12 Jun 2021 04:11:17 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Sat, 12 Jun 2021 04:11:17 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Sat, 12 Jun 2021 04:11:17 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.3.28-2+ubuntu20.04.1+deb.sury.org+1
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/sapi/cli/tests/bug730
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Sat, 12 Jun 2021 04:11:17 GMT
004- Date: Sat, 12 Jun 2021 03:58:51 GMT
017+ Date: Sat, 12 Jun 2021 04:11:17 GMT
017- Date: Sat, 12 Jun 2021 03:58:51 GMT
032+ Date: Sat, 12 Jun 2021 04:11:17 GMT
032- Date: Sat, 12 Jun 2021 03:58:51 GMT
045+ Date: Sat, 12 Jun 2021 04:11:17 GMT
045- Date: Sat, 12 Jun 2021 03:58:51 GMT
060+ Date: Sat, 12 Jun 2021 04:11:17 GMT
060- Date: Sat, 12 Jun 2021 03:58:51 GMT
073+ Date: Sat, 12 Jun 2021 04:11:17 GMT
073- Date: Sat, 12 Jun 2021 03:58:51 GMT
088+ Date: Sat, 12 Jun 2021 04:11:17 GMT
088- Date: Sat, 12 Jun 2021 03:58:51 GMT
101+ Date: Sat, 12 Jun 2021 04:11:17 GMT
101- Date: Sat, 12 Jun 2021 03:58:51 GMT
116+ Date: Sat, 12 Jun 2021 04:11:17 GMT
116- Date: Sat, 12 Jun 2021 03:58:51 GMT
129+ Date: Sat, 12 Jun 2021 04:11:17 GMT
129- Date: Sat, 12 Jun 2021 03:58:51 GMT
144+ Date: Sat, 12 Jun 2021 04:11:17 GMT
144- Date: Sat, 12 Jun 2021 03:58:51 GMT
157+ Date: Sat, 12 Jun 2021 04:11:17 GMT
157- Date: Sat, 12 Jun 2021 03:58:51 GMT
172+ Date: Sat, 12 Jun 2021 04:11:17 GMT
172- Date: Sat, 12 Jun 2021 03:58:51 GMT
185+ Date: Sat, 12 Jun 2021 04:11:17 GMT
185- Date: Sat, 12 Jun 2021 03:58:51 GMT
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
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/http/server.inc on line 58
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
004+ Warning: unlink(/tmp/60c435109c885.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/60c4351103239.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:56194/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/bug77680.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mkdir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/bug77680.php on line 7
002+ 
003+ Warning: mkdir(): Unable to connect to ftp://localhost:64276/one/two/three/ in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/bug77680.php on line 7
004+ ==DONE==
005+ 
006+  ** ERROR: process timed out **
001- string(20) "CWD /one/two/three
002- "
003- string(14) "CWD /one/two
004- "
005- string(10) "CWD /one
006- "
007- string(7) "CWD /
008- "
009- string(7) "MKD /
010- "
011- string(10) "MKD /one
012- "
013- string(14) "MKD /one/two
014- "
015- string(20) "MKD /one/two/three
016- "
017- ==DONE==
```

### ext/standard/tests/streams/bug77765.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stat(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/bug77765.php on line 7
002+ 
003+ Warning: stat(): stat failed for ftp://localhost:56298/www in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/bug77765.php on line 7
004+ NULL
001- string(11) "SIZE /www
002- "
003- int(16877)
006+ 
007+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-001.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:62118/bogusdir): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-001.php on line 7
001- Warning: opendir(ftp://localhost:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
006+ 
007+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-002.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:57967/): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-002.php on line 7
004+ bool(false)
005+ 
006+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-002.php on line 10
007+ 
008+ Warning: closedir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-002.php on line 14
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
010+ 
011+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:64520/bogusdir): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:62307/): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/opendir-004.php on line 12
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

### ext/standard/tests/streams/stream_socket_enable_crypto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_b7b20aa470a46d97/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
```
