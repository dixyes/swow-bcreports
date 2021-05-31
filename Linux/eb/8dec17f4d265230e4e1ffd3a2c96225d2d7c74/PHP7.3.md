# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.28-1+ubuntu20.04.1+deb.sury.org+1 (cli) (built: May  1 2021 11:54:39) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.28, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.28-1+ubuntu20.04.1+deb.sury.org+1, Copyright (c) 1999-2018, by Zend Technologies
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
PHP 7.3.28-1+ubuntu20.04.1+deb.sury.org+1 (cli) (built: May  1 2021 11:54:39) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.28, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.28-1+ubuntu20.04.1+deb.sury.org+1, Copyright (c) 1999-2018, by Zend Technologies
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
Linux fv-az275-774 5.4.0-1047-azure #49-Ubuntu SMP Thu Apr 22 14:30:37 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2294.686
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
cpu MHz		: 2294.686
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
MemTotal:        7121232 kB
MemFree:         4321900 kB
MemAvailable:    6111876 kB
Buffers:          144232 kB
Cached:          1604200 kB
SwapCached:           20 kB
Active:          1306480 kB
Inactive:         985412 kB
Active(anon):     325384 kB
Inactive(anon):   215600 kB
Active(file):     981096 kB
Inactive(file):   769812 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4193776 kB
Dirty:               212 kB
Writeback:             0 kB
AnonPages:        566384 kB
Mapped:           378220 kB
Shmem:              6648 kB
KReclaimable:     349136 kB
Slab:             419036 kB
SReclaimable:     349136 kB
SUnreclaim:        69900 kB
KernelStack:        4064 kB
PageTables:         7740 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754916 kB
Committed_AS:    2881092 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       27572 kB
VmallocChunk:          0 kB
Percpu:             1584 kB
HardwareCorrupted:     0 kB
AnonHugePages:    212992 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
FileHugePages:         0 kB
FilePmdMapped:         0 kB
CmaTotal:              0 kB
CmaFree:               0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      126912 kB
DirectMap2M:     3018752 kB
DirectMap1G:     6291456 kB
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
| 16253 | 14063 | 16355 | 0.6237% | 0.7253% |

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

### ext/fileinfo/tests/bug61964-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: finfo_open(): read of 8192 bytes failed with errno=21 Is a directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/fileinfo/tests/bug61964-mb.php on line 16
008+ Notice: finfo_open(): read of 8192 bytes failed with errno=21 Is a directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/fileinfo/tests/bug61964-mb.php on line 30
009+ 
```

### ext/fileinfo/tests/bug61964.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: finfo_open(): read of 8192 bytes failed with errno=21 Is a directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/fileinfo/tests/bug61964.php on line 16
008+ Notice: finfo_open(): read of 8192 bytes failed with errno=21 Is a directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/fileinfo/tests/bug61964.php on line 30
009+ 
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/ftp/tests/002.php on line 8
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
001+ Warning: ldap_bind(): Unable to bind to server: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/ldap/tests/bug76248.php on line 14
```

Test FAILED in both, but outputs is different.

```patch
002+ array(2) {
003+   ["count"]=>
004+   int(1)
005+   [0]=>
006+   array(2) {
007+     ["count"]=>
008+     int(0)
009+     ["dn"]=>
010+     NULL
011+   }
012+ }
002- 
003- Warning: ldap_search(): Search: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/ldap/tests/bug76248.php on line 16
004- 
005- Warning: ldap_get_entries() expects parameter 2 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/ldap/tests/bug76248.php on line 17
006- NULL
007- 
008- Warning: stream_socket_accept(): accept failed: Connection timed out in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/ldap/tests/bug76248.php on line 7
009- 
010- Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/ldap/tests/bug76248.php on line 8
011- 
012- Warning: fflush() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/ldap/tests/bug76248.php on line 9
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Mon May 31 10:41:35 2021 (85646): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon May 31 10:41:35 2021 (85646): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon May 31 10:30:19 2021 (30018): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug46127.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/bug46127.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Sending bug 46127
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ 
004+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
009+ 
010+ Warning: fgets() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
011+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
012+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

Test FAILED in both, but outputs is different.

```patch
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004- PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
011+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
012+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/bug48182.phpt

Test FAILED in experiment beacuse

```patch
002+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
008+ 
009+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
010+ 
011+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
012+ 
013+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
```

Test FAILED in both, but outputs is different.

```patch
002+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
005+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
003- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
012- PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
013- PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
```

### ext/openssl/tests/bug69215.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/bug69215-server.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/bug69215-client.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
004+ 
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
006+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
009+ bool(false)
010+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/bug69215-server.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
002+ 
006+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
007- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/bug69215-server.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
008- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
```

### ext/openssl/tests/bug72333.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
001- done
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
007+ 
008+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/bug72333.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
008+  ** ERROR: process timed out **
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
005- 
006- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
007- 
008- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:10011 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
009- 
010- Warning: stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 5
011- 
012- Warning: stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
013- 
014- Warning: stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
015- donePHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
016- PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
017- PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
018- PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
019- PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
```

### ext/openssl/tests/bug74159.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- Written 1048575 bytes
002- DONE
003+ 
004+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ 
004+  ** ERROR: process timed out **
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/bug74159.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004- stream_socket_enable_crypto(): SSL: Success
```

### ext/openssl/tests/bug77390.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(0) ""
002- string(12) "hello, world"
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
006+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
007+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
008+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
010+ 
011+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/bug77390.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
004+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
006+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
007+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
008+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
```

### ext/openssl/tests/san_peer_matching.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ bool(false)
007+ 
008+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
```

### ext/openssl/tests/stream_verify_peer_name_001.phpt

Test FAILED in experiment beacuse

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ 
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
008+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
003+ Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
003- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
```

### ext/pcntl/tests/001.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ Exited With: 0
004- Exited With: 255
```

### ext/pcntl/tests/bug47566.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ int(0)
001- int(128)
```

### ext/pcntl/tests/pcntl_wait.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ int(0)
004- int(42)
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Mon, 31 May 2021 10:44:45 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.3.28-1+ubuntu20.04.1+deb.sury.org+1
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Mon, 31 May 2021 10:44:45 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.3.28-1+ubuntu20.04.1+deb.sury.org+1
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Mon, 31 May 2021 10:44:45 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.3.28-1+ubuntu20.04.1+deb.sury.org+1
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Mon, 31 May 2021 10:44:45 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.3.28-1+ubuntu20.04.1+deb.sury.org+1
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Mon, 31 May 2021 10:44:45 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.3.28-1+ubuntu20.04.1+deb.sury.org+1
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Mon, 31 May 2021 10:44:45 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.3.28-1+ubuntu20.04.1+deb.sury.org+1
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/sapi/cli/tests/bug730
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Mon, 31 May 2021 10:44:45 GMT
004- Date: Mon, 31 May 2021 10:31:56 GMT
017+ Date: Mon, 31 May 2021 10:44:45 GMT
017- Date: Mon, 31 May 2021 10:31:56 GMT
032+ Date: Mon, 31 May 2021 10:44:45 GMT
032- Date: Mon, 31 May 2021 10:31:56 GMT
045+ Date: Mon, 31 May 2021 10:44:45 GMT
045- Date: Mon, 31 May 2021 10:31:56 GMT
060+ Date: Mon, 31 May 2021 10:44:45 GMT
060- Date: Mon, 31 May 2021 10:31:56 GMT
073+ Date: Mon, 31 May 2021 10:44:45 GMT
073- Date: Mon, 31 May 2021 10:31:56 GMT
088+ Date: Mon, 31 May 2021 10:44:45 GMT
088- Date: Mon, 31 May 2021 10:31:56 GMT
101+ Date: Mon, 31 May 2021 10:44:45 GMT
101- Date: Mon, 31 May 2021 10:31:56 GMT
116+ Date: Mon, 31 May 2021 10:44:45 GMT
116- Date: Mon, 31 May 2021 10:31:57 GMT
129+ Date: Mon, 31 May 2021 10:44:45 GMT
129- Date: Mon, 31 May 2021 10:31:57 GMT
144+ Date: Mon, 31 May 2021 10:44:45 GMT
144- Date: Mon, 31 May 2021 10:31:57 GMT
157+ Date: Mon, 31 May 2021 10:44:45 GMT
157- Date: Mon, 31 May 2021 10:31:57 GMT
172+ Date: Mon, 31 May 2021 10:44:45 GMT
172- Date: Mon, 31 May 2021 10:31:57 GMT
185+ Date: Mon, 31 May 2021 10:44:45 GMT
185- Date: Mon, 31 May 2021 10:31:57 GMT
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

### ext/standard/tests/file/007_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation1.php on line 32
```

### ext/standard/tests/file/007_variation11.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation11.php on line 35
```

### ext/standard/tests/file/007_variation13.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation13.php on line 32
```

### ext/standard/tests/file/007_variation15.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation15.php on line 32
```

### ext/standard/tests/file/007_variation17.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation17.php on line 32
```

### ext/standard/tests/file/007_variation19.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation19.php on line 35
```

### ext/standard/tests/file/007_variation21.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation21.php on line 32
```

### ext/standard/tests/file/007_variation23.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation23.php on line 32
```

### ext/standard/tests/file/007_variation3.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation3.php on line 35
```

### ext/standard/tests/file/007_variation5.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation5.php on line 32
```

### ext/standard/tests/file/007_variation7.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation7.php on line 32
```

### ext/standard/tests/file/007_variation9.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/007_variation9.php on line 32
```

### ext/standard/tests/file/bug35781.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: fpassthru(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/bug35781.php on line 9
```

### ext/standard/tests/file/bug69442.phpt

Test FAILED in experiment beacuse

```patch
001+ type 0 string(3) "foo"
002+ type 1 string(2) "
001- type 0 string(5) "foo
003- type 1 string(0) ""
004+ 
005+ Notice: fread(): read of 8192 bytes failed with errno=5 Input/output error in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/bug69442.php on line 9
```

Test FAILED in both, but outputs is different.

```patch
004+ 
005+ Notice: fread(): read of 8192 bytes failed with errno=5 Input/output error in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_31c34821841eb467/ext/standard/tests/file/bug69442.php on line 9
```

### ext/standard/tests/file/fgetc_variation3.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
015+ 
016+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
024+ 
025+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
033+ 
034+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
042+ 
043+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
051+ 
052+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
060+ 
061+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
069+ 
070+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
078+ 
079+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetc_variation3.php on line 36
```

### ext/standard/tests/file/fgetcsv_variation26.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
011+ 
012+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
018+ 
019+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
025+ 
026+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
032+ 
033+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
039+ 
040+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
046+ 
047+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
053+ 
054+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
060+ 
061+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
067+ 
068+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
074+ 
075+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
081+ 
082+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
088+ 
089+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
095+ 
096+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
102+ 
103+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
109+ 
110+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
116+ 
117+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
123+ 
124+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
130+ 
131+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
137+ 
138+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
144+ 
145+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
151+ 
152+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
158+ 
159+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
165+ 
166+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
172+ 
173+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
179+ 
180+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
186+ 
187+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
193+ 
194+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
200+ 
201+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
207+ 
208+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
214+ 
215+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
221+ 
222+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
228+ 
229+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
235+ 
236+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
242+ 
243+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
249+ 
250+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
256+ 
257+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
263+ 
264+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
270+ 
271+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
277+ 
278+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
284+ 
285+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
291+ 
292+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
298+ 
299+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
305+ 
306+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
312+ 
313+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
319+ 
320+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
326+ 
327+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
333+ 
334+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
340+ 
341+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
347+ 
348+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
354+ 
355+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
361+ 
362+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
368+ 
369+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
375+ 
376+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
382+ 
383+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
389+ 
390+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
396+ 
397+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
403+ 
404+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
410+ 
411+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
417+ 
418+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
424+ 
425+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
431+ 
432+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
438+ 
439+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
445+ 
446+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
452+ 
453+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
459+ 
460+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
466+ 
467+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
473+ 
474+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
480+ 
481+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
487+ 
488+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
494+ 
495+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
501+ 
502+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetcsv_variation26.php on line 62
```

### ext/standard/tests/file/fgets_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
015+ 
016+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
024+ 
025+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
033+ 
034+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
042+ 
043+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
051+ 
052+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
060+ 
061+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
069+ 
070+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
078+ 
079+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgets_variation1.php on line 35
```

### ext/standard/tests/file/fgetss_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ 
010+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
021+ 
022+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
033+ 
034+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
045+ 
046+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
057+ 
058+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
069+ 
070+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
081+ 
082+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
093+ 
094+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
105+ 
106+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fgetss_variation1.php on line 56
```

### ext/standard/tests/file/fputcsv_variation14.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
020+ 
021+ Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
032+ 
033+ Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
044+ 
045+ Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
056+ 
057+ Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
068+ 
069+ Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
080+ 
081+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
092+ 
093+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
104+ 
105+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
116+ 
117+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
128+ 
129+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
140+ 
141+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
152+ 
153+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
164+ 
165+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
176+ 
177+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
188+ 
189+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
200+ 
201+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
212+ 
213+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
224+ 
225+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
236+ 
237+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
248+ 
249+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
260+ 
261+ Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
272+ 
273+ Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
284+ 
285+ Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
296+ 
297+ Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
308+ 
309+ Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
320+ 
321+ Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fputcsv_variation14.php on line 64
```

### ext/standard/tests/file/fread_variation2.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Reading 1024 bytes from file, expecting 0 bytes ... 
009+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
010+ OK
008- Reading 1024 bytes from file, expecting 0 bytes ... OK
015- Reading 1000 bytes from file, expecting 0 bytes ... OK
017+ Reading 1000 bytes from file, expecting 0 bytes ... 
018+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
019+ OK
023- Reading 1024 bytes from file, expecting 0 bytes ... OK
027+ Reading 1024 bytes from file, expecting 0 bytes ... 
028+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
029+ OK
030- Reading 1000 bytes from file, expecting 0 bytes ... OK
036+ Reading 1000 bytes from file, expecting 0 bytes ... 
037+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
038+ OK
038- Reading 1024 bytes from file, expecting 0 bytes ... OK
045- Reading 1000 bytes from file, expecting 0 bytes ... OK
046+ Reading 1024 bytes from file, expecting 0 bytes ... 
047+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
048+ OK
053- Reading 1024 bytes from file, expecting 0 bytes ... OK
055+ Reading 1000 bytes from file, expecting 0 bytes ... 
056+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
057+ OK
060- Reading 1000 bytes from file, expecting 0 bytes ... OK
065+ Reading 1024 bytes from file, expecting 0 bytes ... 
066+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
067+ OK
068- Reading 1024 bytes from file, expecting 0 bytes ... OK
074+ Reading 1000 bytes from file, expecting 0 bytes ... 
075+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
076+ OK
075- Reading 1000 bytes from file, expecting 0 bytes ... OK
083- Reading 1024 bytes from file, expecting 0 bytes ... OK
084+ Reading 1024 bytes from file, expecting 0 bytes ... 
085+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
086+ OK
090- Reading 1000 bytes from file, expecting 0 bytes ... OK
093+ Reading 1000 bytes from file, expecting 0 bytes ... 
094+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
095+ OK
098- Reading 1024 bytes from file, expecting 0 bytes ... OK
103+ Reading 1024 bytes from file, expecting 0 bytes ... 
104+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
105+ OK
105- Reading 1000 bytes from file, expecting 0 bytes ... OK
112+ Reading 1000 bytes from file, expecting 0 bytes ... 
113+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
114+ OK
113- Reading 1024 bytes from file, expecting 0 bytes ... OK
120- Reading 1000 bytes from file, expecting 0 bytes ... OK
122+ Reading 1024 bytes from file, expecting 0 bytes ... 
123+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
124+ OK
128- Reading 1024 bytes from file, expecting 0 bytes ... OK
131+ Reading 1000 bytes from file, expecting 0 bytes ... 
132+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
133+ OK
135- Reading 1000 bytes from file, expecting 0 bytes ... OK
141+ Reading 1024 bytes from file, expecting 0 bytes ... 
142+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
143+ OK
145- Reading 1024 bytes from file, expecting 0 bytes ... OK
150+ Reading 1000 bytes from file, expecting 0 bytes ... 
151+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
152+ OK
152- Reading 1000 bytes from file, expecting 0 bytes ... OK
160+ Reading 1024 bytes from file, expecting 0 bytes ... 
161+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
162+ OK
160- Reading 1024 bytes from file, expecting 0 bytes ... OK
167- Reading 1000 bytes from file, expecting 0 bytes ... OK
169+ Reading 1000 bytes from file, expecting 0 bytes ... 
170+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
171+ OK
175- Reading 1024 bytes from file, expecting 0 bytes ... OK
181+ Reading 1024 bytes from file, expecting 0 bytes ... 
182+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
183+ OK
182- Reading 1000 bytes from file, expecting 0 bytes ... OK
190+ Reading 1000 bytes from file, expecting 0 bytes ... 
191+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
192+ OK
190- Reading 1024 bytes from file, expecting 0 bytes ... OK
197- Reading 1000 bytes from file, expecting 0 bytes ... OK
200+ Reading 1024 bytes from file, expecting 0 bytes ... 
201+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
202+ OK
205- Reading 1024 bytes from file, expecting 0 bytes ... OK
209+ Reading 1000 bytes from file, expecting 0 bytes ... 
210+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
211+ OK
212- Reading 1000 bytes from file, expecting 0 bytes ... OK
219+ Reading 1024 bytes from file, expecting 0 bytes ... 
220+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
221+ OK
220- Reading 1024 bytes from file, expecting 0 bytes ... OK
227- Reading 1000 bytes from file, expecting 0 bytes ... OK
228+ Reading 1000 bytes from file, expecting 0 bytes ... 
229+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
230+ OK
235- Reading 1024 bytes from file, expecting 0 bytes ... OK
238+ Reading 1024 bytes from file, expecting 0 bytes ... 
239+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
240+ OK
242- Reading 1000 bytes from file, expecting 0 bytes ... OK
247+ Reading 1000 bytes from file, expecting 0 bytes ... 
248+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
249+ OK
250- Reading 1024 bytes from file, expecting 0 bytes ... OK
257+ Reading 1024 bytes from file, expecting 0 bytes ... 
258+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
259+ OK
257- Reading 1000 bytes from file, expecting 0 bytes ... OK
265- Reading 1024 bytes from file, expecting 0 bytes ... OK
266+ Reading 1000 bytes from file, expecting 0 bytes ... 
267+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
268+ OK
272- Reading 1000 bytes from file, expecting 0 bytes ... OK
276+ Reading 1024 bytes from file, expecting 0 bytes ... 
277+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
278+ OK
282- Reading 1024 bytes from file, expecting 0 bytes ... OK
285+ Reading 1000 bytes from file, expecting 0 bytes ... 
286+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
287+ OK
289- Reading 1000 bytes from file, expecting 0 bytes ... OK
295+ Reading 1024 bytes from file, expecting 0 bytes ... 
296+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
297+ OK
297- Reading 1024 bytes from file, expecting 0 bytes ... OK
304+ Reading 1000 bytes from file, expecting 0 bytes ... 
305+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
306+ OK
304- Reading 1000 bytes from file, expecting 0 bytes ... OK
312- Reading 1024 bytes from file, expecting 0 bytes ... OK
314+ Reading 1024 bytes from file, expecting 0 bytes ... 
315+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
316+ OK
319- Reading 1000 bytes from file, expecting 0 bytes ... OK
323+ Reading 1000 bytes from file, expecting 0 bytes ... 
324+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
325+ OK
327- Reading 1024 bytes from file, expecting 0 bytes ... OK
333+ Reading 1024 bytes from file, expecting 0 bytes ... 
334+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
335+ OK
334- Reading 1000 bytes from file, expecting 0 bytes ... OK
342+ Reading 1000 bytes from file, expecting 0 bytes ... 
343+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
344+ OK
342- Reading 1024 bytes from file, expecting 0 bytes ... OK
349- Reading 1000 bytes from file, expecting 0 bytes ... OK
354+ Reading 1024 bytes from file, expecting 0 bytes ... 
355+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
356+ OK
357- Reading 1024 bytes from file, expecting 0 bytes ... OK
363+ Reading 1000 bytes from file, expecting 0 bytes ... 
364+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
365+ OK
364- Reading 1000 bytes from file, expecting 0 bytes ... OK
372- Reading 1024 bytes from file, expecting 0 bytes ... OK
373+ Reading 1024 bytes from file, expecting 0 bytes ... 
374+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
375+ OK
379- Reading 1000 bytes from file, expecting 0 bytes ... OK
382+ Reading 1000 bytes from file, expecting 0 bytes ... 
383+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
384+ OK
387- Reading 1024 bytes from file, expecting 0 bytes ... OK
392+ Reading 1024 bytes from file, expecting 0 bytes ... 
393+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
394+ OK
394- Reading 1000 bytes from file, expecting 0 bytes ... OK
401+ Reading 1000 bytes from file, expecting 0 bytes ... 
402+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
403+ OK
402- Reading 1024 bytes from file, expecting 0 bytes ... OK
409- Reading 1000 bytes from file, expecting 0 bytes ... OK
411+ Reading 1024 bytes from file, expecting 0 bytes ... 
412+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
413+ OK
419- Reading 1024 bytes from file, expecting 0 bytes ... OK
420+ Reading 1000 bytes from file, expecting 0 bytes ... 
421+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
422+ OK
426- Reading 1000 bytes from file, expecting 0 bytes ... OK
430+ Reading 1024 bytes from file, expecting 0 bytes ... 
431+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
432+ OK
434- Reading 1024 bytes from file, expecting 0 bytes ... OK
439+ Reading 1000 bytes from file, expecting 0 bytes ... 
440+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
441+ OK
441- Reading 1000 bytes from file, expecting 0 bytes ... OK
449+ Reading 1024 bytes from file, expecting 0 bytes ... 
450+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
451+ OK
449- Reading 1024 bytes from file, expecting 0 bytes ... OK
456- Reading 1000 bytes from file, expecting 0 bytes ... OK
458+ Reading 1000 bytes from file, expecting 0 bytes ... 
459+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
460+ OK
464- Reading 1024 bytes from file, expecting 0 bytes ... OK
468+ Reading 1024 bytes from file, expecting 0 bytes ... 
469+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
470+ OK
471- Reading 1000 bytes from file, expecting 0 bytes ... OK
477+ Reading 1000 bytes from file, expecting 0 bytes ... 
478+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
479+ OK
479- Reading 1024 bytes from file, expecting 0 bytes ... OK
486- Reading 1000 bytes from file, expecting 0 bytes ... OK
487+ Reading 1024 bytes from file, expecting 0 bytes ... 
488+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
489+ OK
494- Reading 1024 bytes from file, expecting 0 bytes ... OK
496+ Reading 1000 bytes from file, expecting 0 bytes ... 
497+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
498+ OK
501- Reading 1000 bytes from file, expecting 0 bytes ... OK
506+ Reading 1024 bytes from file, expecting 0 bytes ... 
507+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
508+ OK
509- Reading 1024 bytes from file, expecting 0 bytes ... OK
515+ Reading 1000 bytes from file, expecting 0 bytes ... 
516+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
517+ OK
516- Reading 1000 bytes from file, expecting 0 bytes ... OK
524- Reading 1024 bytes from file, expecting 0 bytes ... OK
527+ Reading 1024 bytes from file, expecting 0 bytes ... 
528+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
529+ OK
531- Reading 1000 bytes from file, expecting 0 bytes ... OK
536+ Reading 1000 bytes from file, expecting 0 bytes ... 
537+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
538+ OK
539- Reading 1024 bytes from file, expecting 0 bytes ... OK
546+ Reading 1024 bytes from file, expecting 0 bytes ... 
547+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
548+ OK
546- Reading 1000 bytes from file, expecting 0 bytes ... OK
555+ Reading 1000 bytes from file, expecting 0 bytes ... 
556+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
557+ OK
565+ Reading 1024 bytes from file, expecting 0 bytes ... 
566+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
567+ OK
574+ Reading 1000 bytes from file, expecting 0 bytes ... 
575+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
576+ OK
584+ Reading 1024 bytes from file, expecting 0 bytes ... 
585+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
586+ OK
593+ Reading 1000 bytes from file, expecting 0 bytes ... 
594+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
595+ OK
603+ Reading 1024 bytes from file, expecting 0 bytes ... 
604+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
605+ OK
612+ Reading 1000 bytes from file, expecting 0 bytes ... 
613+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
614+ OK
622+ Reading 1024 bytes from file, expecting 0 bytes ... 
623+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
624+ OK
631+ Reading 1000 bytes from file, expecting 0 bytes ... 
632+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
633+ OK
641+ Reading 1024 bytes from file, expecting 0 bytes ... 
642+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
643+ OK
650+ Reading 1000 bytes from file, expecting 0 bytes ... 
651+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
652+ OK
660+ Reading 1024 bytes from file, expecting 0 bytes ... 
661+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
662+ OK
669+ Reading 1000 bytes from file, expecting 0 bytes ... 
670+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
671+ OK
679+ Reading 1024 bytes from file, expecting 0 bytes ... 
680+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
681+ OK
688+ Reading 1000 bytes from file, expecting 0 bytes ... 
689+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation2.php on line 30
690+ OK
```

### ext/standard/tests/file/fread_variation4.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Reading 1030 bytes from file, expecting 0 bytes ... 
009+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
010+ OK
008- Reading 1030 bytes from file, expecting 0 bytes ... OK
014- Reading 10 bytes from file, expecting 0 bytes ... OK
016+ Reading 10 bytes from file, expecting 0 bytes ... 
017+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
018+ OK
021- Reading 1030 bytes from file, expecting 0 bytes ... OK
025+ Reading 1030 bytes from file, expecting 0 bytes ... 
026+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
027+ OK
027- Reading 10 bytes from file, expecting 0 bytes ... OK
033+ Reading 10 bytes from file, expecting 0 bytes ... 
034+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
035+ OK
034- Reading 1030 bytes from file, expecting 0 bytes ... OK
040- Reading 10 bytes from file, expecting 0 bytes ... OK
042+ Reading 1030 bytes from file, expecting 0 bytes ... 
043+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
044+ OK
047- Reading 1030 bytes from file, expecting 0 bytes ... OK
050+ Reading 10 bytes from file, expecting 0 bytes ... 
051+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
052+ OK
053- Reading 10 bytes from file, expecting 0 bytes ... OK
059+ Reading 1030 bytes from file, expecting 0 bytes ... 
060+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
061+ OK
060- Reading 1030 bytes from file, expecting 0 bytes ... OK
066- Reading 10 bytes from file, expecting 0 bytes ... OK
067+ Reading 10 bytes from file, expecting 0 bytes ... 
068+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
069+ OK
073- Reading 1030 bytes from file, expecting 0 bytes ... OK
076+ Reading 1030 bytes from file, expecting 0 bytes ... 
077+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
078+ OK
079- Reading 10 bytes from file, expecting 0 bytes ... OK
084+ Reading 10 bytes from file, expecting 0 bytes ... 
085+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
086+ OK
086- Reading 1030 bytes from file, expecting 0 bytes ... OK
092- Reading 10 bytes from file, expecting 0 bytes ... OK
093+ Reading 1030 bytes from file, expecting 0 bytes ... 
094+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
095+ OK
099- Reading 1030 bytes from file, expecting 0 bytes ... OK
101+ Reading 10 bytes from file, expecting 0 bytes ... 
102+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
103+ OK
105- Reading 10 bytes from file, expecting 0 bytes ... OK
110+ Reading 1030 bytes from file, expecting 0 bytes ... 
111+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
112+ OK
112- Reading 1030 bytes from file, expecting 0 bytes ... OK
118+ Reading 10 bytes from file, expecting 0 bytes ... 
119+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
120+ OK
118- Reading 10 bytes from file, expecting 0 bytes ... OK
127+ Reading 1030 bytes from file, expecting 0 bytes ... 
128+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
129+ OK
127- Reading 1030 bytes from file, expecting 0 bytes ... OK
133- Reading 10 bytes from file, expecting 0 bytes ... OK
135+ Reading 10 bytes from file, expecting 0 bytes ... 
136+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
137+ OK
140- Reading 1030 bytes from file, expecting 0 bytes ... OK
144+ Reading 1030 bytes from file, expecting 0 bytes ... 
145+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
146+ OK
146- Reading 10 bytes from file, expecting 0 bytes ... OK
152+ Reading 10 bytes from file, expecting 0 bytes ... 
153+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
154+ OK
153- Reading 1030 bytes from file, expecting 0 bytes ... OK
159- Reading 10 bytes from file, expecting 0 bytes ... OK
163+ Reading 1030 bytes from file, expecting 0 bytes ... 
164+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
165+ OK
166- Reading 1030 bytes from file, expecting 0 bytes ... OK
171+ Reading 10 bytes from file, expecting 0 bytes ... 
172+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
173+ OK
172- Reading 10 bytes from file, expecting 0 bytes ... OK
179- Reading 1030 bytes from file, expecting 0 bytes ... OK
180+ Reading 1030 bytes from file, expecting 0 bytes ... 
181+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
182+ OK
185- Reading 10 bytes from file, expecting 0 bytes ... OK
188+ Reading 10 bytes from file, expecting 0 bytes ... 
189+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
190+ OK
192- Reading 1030 bytes from file, expecting 0 bytes ... OK
197+ Reading 1030 bytes from file, expecting 0 bytes ... 
198+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
199+ OK
198- Reading 10 bytes from file, expecting 0 bytes ... OK
205+ Reading 10 bytes from file, expecting 0 bytes ... 
206+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
207+ OK
205- Reading 1030 bytes from file, expecting 0 bytes ... OK
211- Reading 10 bytes from file, expecting 0 bytes ... OK
214+ Reading 1030 bytes from file, expecting 0 bytes ... 
215+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
216+ OK
218- Reading 1030 bytes from file, expecting 0 bytes ... OK
222+ Reading 10 bytes from file, expecting 0 bytes ... 
223+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
224+ OK
224- Reading 10 bytes from file, expecting 0 bytes ... OK
231+ Reading 1030 bytes from file, expecting 0 bytes ... 
232+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
233+ OK
231- Reading 1030 bytes from file, expecting 0 bytes ... OK
237- Reading 10 bytes from file, expecting 0 bytes ... OK
239+ Reading 10 bytes from file, expecting 0 bytes ... 
240+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
241+ OK
246- Reading 1030 bytes from file, expecting 0 bytes ... OK
248+ Reading 1030 bytes from file, expecting 0 bytes ... 
249+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
250+ OK
252- Reading 10 bytes from file, expecting 0 bytes ... OK
256+ Reading 10 bytes from file, expecting 0 bytes ... 
257+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
258+ OK
259- Reading 1030 bytes from file, expecting 0 bytes ... OK
265+ Reading 1030 bytes from file, expecting 0 bytes ... 
266+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
267+ OK
265- Reading 10 bytes from file, expecting 0 bytes ... OK
272- Reading 1030 bytes from file, expecting 0 bytes ... OK
273+ Reading 10 bytes from file, expecting 0 bytes ... 
274+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
275+ OK
278- Reading 10 bytes from file, expecting 0 bytes ... OK
282+ Reading 1030 bytes from file, expecting 0 bytes ... 
283+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
284+ OK
285- Reading 1030 bytes from file, expecting 0 bytes ... OK
290+ Reading 10 bytes from file, expecting 0 bytes ... 
291+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
292+ OK
291- Reading 10 bytes from file, expecting 0 bytes ... OK
298- Reading 1030 bytes from file, expecting 0 bytes ... OK
299+ Reading 1030 bytes from file, expecting 0 bytes ... 
300+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
301+ OK
304- Reading 10 bytes from file, expecting 0 bytes ... OK
307+ Reading 10 bytes from file, expecting 0 bytes ... 
308+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
309+ OK
311- Reading 1030 bytes from file, expecting 0 bytes ... OK
317- Reading 10 bytes from file, expecting 0 bytes ... OK
318+ Reading 1030 bytes from file, expecting 0 bytes ... 
319+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
320+ OK
324- Reading 1030 bytes from file, expecting 0 bytes ... OK
326+ Reading 10 bytes from file, expecting 0 bytes ... 
327+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
328+ OK
330- Reading 10 bytes from file, expecting 0 bytes ... OK
335+ Reading 1030 bytes from file, expecting 0 bytes ... 
336+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
337+ OK
337- Reading 1030 bytes from file, expecting 0 bytes ... OK
343+ Reading 10 bytes from file, expecting 0 bytes ... 
344+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
345+ OK
343- Reading 10 bytes from file, expecting 0 bytes ... OK
350- Reading 1030 bytes from file, expecting 0 bytes ... OK
352+ Reading 1030 bytes from file, expecting 0 bytes ... 
353+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
354+ OK
356- Reading 10 bytes from file, expecting 0 bytes ... OK
360+ Reading 10 bytes from file, expecting 0 bytes ... 
361+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
362+ OK
369+ Reading 1030 bytes from file, expecting 0 bytes ... 
370+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
371+ OK
377+ Reading 10 bytes from file, expecting 0 bytes ... 
378+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
379+ OK
386+ Reading 1030 bytes from file, expecting 0 bytes ... 
387+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
388+ OK
394+ Reading 10 bytes from file, expecting 0 bytes ... 
395+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
396+ OK
403+ Reading 1030 bytes from file, expecting 0 bytes ... 
404+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
405+ OK
411+ Reading 10 bytes from file, expecting 0 bytes ... 
412+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
413+ OK
420+ Reading 1030 bytes from file, expecting 0 bytes ... 
421+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
422+ OK
428+ Reading 10 bytes from file, expecting 0 bytes ... 
429+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
430+ OK
437+ Reading 1030 bytes from file, expecting 0 bytes ... 
438+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
439+ OK
445+ Reading 10 bytes from file, expecting 0 bytes ... 
446+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
447+ OK
454+ Reading 1030 bytes from file, expecting 0 bytes ... 
455+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
456+ OK
462+ Reading 10 bytes from file, expecting 0 bytes ... 
463+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fread_variation4.php on line 28
464+ OK
```

### ext/standard/tests/file/fscanf_variation51.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
007+ 
008+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
007- bool(false)
010+ 
011+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
013+ 
014+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
016+ 
017+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
016- bool(false)
019+ 
020+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
023+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
024+ bool(false)
025+ 
025- bool(false)
027+ 
028+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
030+ 
031+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
033+ 
034+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
034- bool(false)
036+ 
037+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
039+ 
040+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
042+ 
043+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
043- bool(false)
046+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
047+ bool(false)
048+ 
050+ 
051+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
052- bool(false)
053+ 
054+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
056+ 
057+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
059+ 
060+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
061- bool(false)
062+ 
063+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
065+ 
066+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
069+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
070+ bool(false)
071+ 
070- bool(false)
073+ 
074+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
076+ 
077+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
079+ 
080+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
079- bool(false)
082+ 
083+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
085+ 
086+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
088+ 
089+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
092+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
093+ bool(false)
094+ 
096+ 
097+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
099+ 
100+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
102+ 
103+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
105+ 
106+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
108+ 
109+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
111+ 
112+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
115+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
116+ bool(false)
117+ 
119+ 
120+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
122+ 
123+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
125+ 
126+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
128+ 
129+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
131+ 
132+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
134+ 
135+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
138+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
139+ bool(false)
140+ 
142+ 
143+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
145+ 
146+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
148+ 
149+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
151+ 
152+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
154+ 
155+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
157+ 
158+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
161+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
162+ bool(false)
163+ 
165+ 
166+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
168+ 
169+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
171+ 
172+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
174+ 
175+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
177+ 
178+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
180+ 
181+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
184+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
185+ bool(false)
186+ 
188+ 
189+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
191+ 
192+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
194+ 
195+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
197+ 
198+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
200+ 
201+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
203+ 
204+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
207+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fscanf_variation51.php on line 47
208+ bool(false)
209+ 
```

### ext/standard/tests/file/fwrite.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fwrite(): write of 4 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite.php on line 11
```

### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
012+ 
013+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
022+ 
023+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
028+ 
029+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
038+ 
039+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
044+ 
045+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
056+ 
057+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
062+ 
063+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
072+ 
073+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
078+ 
079+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
088+ 
089+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
094+ 
095+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
106+ 
107+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
112+ 
113+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
122+ 
123+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
128+ 
129+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
138+ 
139+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
144+ 
145+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
156+ 
157+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
162+ 
163+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
172+ 
173+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
178+ 
179+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
188+ 
189+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 48
194+ 
195+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/file/fwrite_variation1.php on line 55
```

### ext/standard/tests/filters/bug35916.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/filters/bug35916.php on line 30
```

### ext/standard/tests/general_functions/sleep_error.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Fatal error: Uncaught ArgumentCountError: sleep() expects exactly 1 parameter, 0 given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/general_functions/sleep_error.php:11
006+ Stack trace:
007+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/general_functions/sleep_error.php(11): sleep()
008+ #1 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/general_functions/sleep_error.php on line 11
005- Warning: sleep() expects exactly 1 parameter, 0 given in %s on line %d
006- bool(false)
007- 
008- -- Testing sleep() function with more than expected no. of arguments --
009- 
010- Warning: sleep() expects exactly 1 parameter, 2 given in %s on line %d
011- bool(false)
012- 
013- -- Testing sleep() function with negative interval --
014- 
015- Warning: sleep(): Number of seconds must be greater than or equal to 0 in %s on line %d
016- bool(false)
017- ===DONE===
```

### ext/standard/tests/general_functions/usleep_error.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Fatal error: Uncaught ArgumentCountError: usleep() expects exactly 1 parameter, 0 given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/general_functions/usleep_error.php:12
006+ Stack trace:
007+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/general_functions/usleep_error.php(12): usleep()
008+ #1 {main}
009+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/general_functions/usleep_error.php on line 12
005- Warning: usleep() expects exactly 1 parameter, 0 given in %s on line %d
006- NULL
007- 
008- -- Testing usleep() function with more than expected no. of arguments --
009- 
010- Warning: usleep() expects exactly 1 parameter, 2 given in %s on line %d
011- NULL
012- 
013- -- Testing usleep() function with negative interval --
014- 
015- Warning: usleep(): Number of microseconds must be greater than or equal to 0 in %s on line %d
016- bool(false)
017- ===DONE===
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/misc/time_nanosleep_error1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught TypeError: time_nanosleep() expects parameter 1 to be int, string given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_nanosleep_error1.php:3
001- Warning: time_nanosleep() expects parameter 1 to be int, string given in %s.php on line %d
002+ Stack trace:
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_nanosleep_error1.php(3): time_nanosleep('A', 100000)
004+ #1 {main}
005+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_nanosleep_error1.php on line 3
```

### ext/standard/tests/misc/time_nanosleep_error2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught TypeError: time_nanosleep() expects parameter 2 to be int, string given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_nanosleep_error2.php:3
001- Warning: time_nanosleep() expects parameter 2 to be int, string given in %s.php on line %d
002+ Stack trace:
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_nanosleep_error2.php(3): time_nanosleep(2, 'B')
004+ #1 {main}
005+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_nanosleep_error2.php on line 3
```

### ext/standard/tests/misc/time_sleep_until_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ bool(false)
002- bool(true)
```

### ext/standard/tests/misc/time_sleep_until_error2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught TypeError: time_sleep_until() expects parameter 1 to be float, string given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_sleep_until_error2.php:2
002+ Stack trace:
001- Warning: time_sleep_until() expects parameter 1 to be float, string given in %s on line 2
002- NULL
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_sleep_until_error2.php(2): time_sleep_until('goofy')
004+ #1 {main}
005+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_sleep_until_error2.php on line 2
```

### ext/standard/tests/misc/time_sleep_until_error3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught ArgumentCountError: time_sleep_until() expects exactly 1 parameter, 0 given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_sleep_until_error3.php:2
002+ Stack trace:
001- Warning: time_sleep_until() expects exactly 1 parameter, 0 given in %s on line 2
002- NULL
003+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_sleep_until_error3.php(2): time_sleep_until()
004+ #1 {main}
005+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/misc/time_sleep_until_error3.php on line 2
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/http/server.inc on line 58
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
004+ Warning: unlink(/tmp/60b4bf72c9b96.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/60b4bf734f9d8.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug54946.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_get_contents(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug54946.php on line 4
003+ 
004+ Notice: stream_get_contents(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug54946.php on line 14
006+ 
007+ Notice: stream_get_contents(): read of 8192 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug54946.php on line 25
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:52614/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug73457.php on line 8
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
001+ Warning: mkdir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug77680.php on line 7
002+ 
003+ Warning: mkdir(): Unable to connect to ftp://localhost:53821/one/two/three/ in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug77680.php on line 7
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
001+ Warning: stat(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug77765.php on line 7
002+ 
003+ Warning: stat(): stat failed for ftp://localhost:63205/www in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/bug77765.php on line 7
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
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-001.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:56253/bogusdir): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-001.php on line 7
001- Warning: opendir(ftp://localhost:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
006+ 
007+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-002.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:55892/): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-002.php on line 7
004+ bool(false)
005+ 
006+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-002.php on line 10
007+ 
008+ Warning: closedir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-002.php on line 14
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
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:53323/bogusdir): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:60388/): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/opendir-004.php on line 12
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
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_31c34821841eb467/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
```
