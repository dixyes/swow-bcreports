# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.31-2+ubuntu20.04.1+deb.sury.org+1 (cli) (built: Oct 22 2021 12:34:45) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.31, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.31-2+ubuntu20.04.1+deb.sury.org+1, Copyright (c) 1999-2018, by Zend Technologies
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
PHP 7.3.31-2+ubuntu20.04.1+deb.sury.org+1 (cli) (built: Oct 22 2021 12:34:45) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.31, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.31-2+ubuntu20.04.1+deb.sury.org+1, Copyright (c) 1999-2018, by Zend Technologies
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
Linux fv-az190-816 5.11.0-1020-azure #21~20.04.1-Ubuntu SMP Mon Oct 11 18:54:28 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2095.078
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
cpu MHz		: 2095.078
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
MemTotal:        7118772 kB
MemFree:         1479152 kB
MemAvailable:    4863796 kB
Buffers:          316036 kB
Cached:          2989544 kB
SwapCached:        17496 kB
Active:          1164916 kB
Inactive:        3907544 kB
Active(anon):       1620 kB
Inactive(anon):  1774328 kB
Active(file):    1163296 kB
Inactive(file):  2133216 kB
Unevictable:       26812 kB
Mlocked:           26812 kB
SwapTotal:       4194300 kB
SwapFree:        4117300 kB
Dirty:               268 kB
Writeback:             0 kB
AnonPages:       1749164 kB
Mapped:           425188 kB
Shmem:              9552 kB
KReclaimable:     398052 kB
Slab:             462872 kB
SReclaimable:     398052 kB
SUnreclaim:        64820 kB
KernelStack:        5488 kB
PageTables:        11512 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7753684 kB
Committed_AS:    5266832 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       34916 kB
VmallocChunk:          0 kB
Percpu:             1800 kB
HardwareCorrupted:     0 kB
AnonHugePages:   1206272 kB
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
DirectMap4k:      167872 kB
DirectMap2M:     7172096 kB
DirectMap1G:     2097152 kB
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
| 16285 | 14535 | 16357 | 0.4402% | 0.4954% |

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

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/curl/tests/bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/curl/tests/bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
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
016+ 
017+ Warning: ftp_close(): SSL read failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ftp/tests/002.php on line 12
```

### ext/ldap/tests/bug76248.phpt

Test FAILED in experiment because

```patch
001+ Warning: ldap_bind(): Unable to bind to server: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 14
002+ 
003+ Warning: ldap_search(): Search: Can't contact LDAP server in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 16
004+ 
005+ Warning: ldap_get_entries() expects parameter 2 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 17
006+ NULL
007+ 
008+ Warning: stream_socket_accept(): accept failed: Socket accept wait failed, reason: Timed out for 3000 ms in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 7
009+ 
010+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 8
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
012+ Warning: fflush() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 9
```

Test FAILED in both, but outputs is different.

```patch
008+ Warning: stream_socket_accept(): accept failed: Socket accept wait failed, reason: Timed out for 3000 ms in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 7
008- Warning: stream_socket_accept(): accept failed: Connection timed out in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/ldap/tests/bug76248.php on line 7
```

### ext/mysqli/tests/bug55283.phpt

Test FAILED in experiment because

```patch
005+   string(22) "TLS_AES_256_GCM_SHA384"
005-   string(7) "RC4-MD5"
011+   string(22) "TLS_AES_256_GCM_SHA384"
011-   string(7) "RC4-MD5"
```

Test FAILED in both, but outputs is different.

```patch
001+ array(2) {
002+   [0]=>
003+   string(10) "Ssl_cipher"
004+   [1]=>
005+   string(22) "TLS_AES_256_GCM_SHA384"
006+ }
007+ array(2) {
008+   [0]=>
009+   string(10) "Ssl_cipher"
010+   [1]=>
011+   string(22) "TLS_AES_256_GCM_SHA384"
012+ }
001- Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/mysqli/tests/connect.inc on line 113
002- 
003- Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/mysqli/tests/connect.inc on line 113
004- 
005- Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/mysqli/tests/connect.inc on line 113
006- 
007- Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/mysqli/tests/connect.inc on line 113
008- 
009- Warning: mysqli_real_connect(): [2002]  (trying to connect via (null)) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/mysqli/tests/connect.inc on line 113
010- 
011- Warning: mysqli_real_connect(): (HY000/2002):  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/mysqli/tests/connect.inc on line 113
```

### ext/mysqli/tests/mysqli_change_user_new.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_connect.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_connect_oo.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_driver.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment because

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
005+ Fetching from thread 1178...
005- Fetching from thread 1423...
```

### ext/mysqli/tests/mysqli_real_connect.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_real_connect_pconn.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_report.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Tue Nov  9 04:08:35 2021 (91261): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Tue Nov  9 04:08:35 2021 (91261): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Tue Nov  9 03:54:39 2021 (31996): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug46127.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug46127.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Sending bug 46127
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
009+ 
010+ Warning: fgets() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
```

Test FAILED in both, but outputs is different.

```patch
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
004+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
005- 
011- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
012- PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/bug48182.phpt

Test FAILED in experiment because

```patch
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
010+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
011+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
```

Test FAILED in both, but outputs is different.

```patch
003- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004- 
```

### ext/openssl/tests/bug54992.phpt

Test FAILED in experiment because

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002- 
```

### ext/openssl/tests/bug65538_001.phpt

Test FAILED in experiment because

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: file_get_contents(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
002- 
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
002- 
```

### ext/openssl/tests/bug65538_003.phpt

Test FAILED in experiment because

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: file_get_contents(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
002- 
```

### ext/openssl/tests/bug65729.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
004+ bool(false)
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
007- resource(%d) of type (stream)
008- resource(%d) of type (stream)
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
012+ 
013+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
014+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
004+ bool(false)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
009+ bool(false)
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
008- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
009- 
014- 
015- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
016- 
017- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
018- 
019- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
020- bool(false)
021- 
022- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
023- 
024- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
025- 
026- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
027- bool(false)
```

### ext/openssl/tests/bug68265.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug68265.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004+ 
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
008+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
003+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
005- 
010- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

### ext/openssl/tests/bug68879.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug68879.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
007+ bool(false)
008+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
```

Test FAILED in both, but outputs is different.

```patch
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
005- 
```

### ext/openssl/tests/bug68920.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
008+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
010+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
012+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
013+ 
014+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
015+ bool(false)
016+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
017+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
018+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
014- 
015- Warning: stream_socket_client(): Invalid peer_fingerprint array; [algo => fingerprint] form required in %s on line %d
017- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
018- 
023- 
024+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
025+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/san-cert.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119)
...
```

Test FAILED in both, but outputs is different.

```patch
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
005- 
014- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
015- 
024- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
025- 
034- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
035- 
```

### ext/openssl/tests/bug69215.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug69215-server.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
007+ bool(false)
008+ PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug69215-server.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
002+ PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
001- Warning: stream_socket_client(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug69215-client.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
007- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug69215-server.pem'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
008- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 15
```

### ext/openssl/tests/bug72333.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
001- done
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
007+ 
008+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
005+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
006+ PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug72333.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
008+  ** ERROR: process timed out **
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
005- 
006- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
007- 
008- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:10011 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
009- 
010- Warning: stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 5
011- 
012- Warning: stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
013- 
014- Warning: stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
015- donePHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
016- PHP Warning:  fread() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
017- PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
018- PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
019- PHP Warning:  stream_select(): No stream arrays were passed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
```

### ext/openssl/tests/bug74159.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- Written 1048575 bytes
002- DONE
003+ 
004+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003+ 
004+  ** ERROR: process timed out **
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug74159.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
004- stream_socket_enable_crypto(): SSL: Connection reset by peer
```

### ext/openssl/tests/bug77390.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(0) ""
002- string(12) "hello, world"
003+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
004+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
006+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
007+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
008+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
010+ 
011+  ** ERROR: process timed out **
```

Test FAILED in both, but outputs is different.

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:10011 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 4
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- PHP Warning:  stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/bug77390.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002- PHP Warning:  stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003- PHP Warning:  stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
004+ PHP Warning:  stream_socket_server(): unable to connect to tcp://127.0.0.1:10012 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
005+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
006+ PHP Warning:  stream_set_blocking() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
007+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
008+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ PHP Warning:  stream_select(): supplied argument is not a valid stream resource in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
```

### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ bool(false)
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
007- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002- 
008- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
009- 
```

### ext/openssl/tests/peer_verification.phpt

Test FAILED in experiment because

```patch
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
007+ bool(false)
008+ 
009+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
010+ 
011+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
012+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
004- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
005- 
011- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
012- 
```

### ext/openssl/tests/san_peer_matching.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002- 
008- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
009- 
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ NULL
005+ 
006+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
007+ NULL
008+ 
009+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
010+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ NULL
005+ 
006+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
007+ NULL
008+ 
009+ Notice: Undefined index: peer_certificate in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
010+ NULL
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
002+ 
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
004+ bool(false)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
009+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
003- 
009- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
010- 
```

### ext/openssl/tests/stream_crypto_flags_002.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
004+ bool(false)
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
009+ bool(false)
010+ 
011+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
012+ 
013+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
014+ bool(false)
015+ 
016+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
017+ 
018+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
019+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
003- 
009- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
010- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
011- 
017- Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
018- 
024- Warning: stream_socket_client(): SSL: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
025- 
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004+ bool(false)
005+ bool(false)
006+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
002- 
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test FAILED in experiment because

```patch
001+ bool(false)
001- resource(%d) of type (stream)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
008+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
005- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
006- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
007- 
```

### ext/openssl/tests/stream_security_level.phpt

Test FAILED in experiment because

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:1416F086:SSL routines:tls_process_server_certificate:certificate verify failed in %s : eval()'d code on line %d
003- 
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002- 
```

### ext/openssl/tests/stream_server_reneg_limit.phpt

Test FAILED in experiment because

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001+ ** ERROR: process timed out **
001- Warning: stream_socket_accept(): Unable to set local cert chain file `/home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/stream_server_reneg_limit.pem.tmp'; Check that your cafile/capath settings include details of your certificate and its issuer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 27
002- 
003- Warning: stream_socket_accept(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 27
004- 
005- Warning: stream_socket_accept(): accept failed: Success in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 27
006- 
007-  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_001.phpt

Test FAILED in experiment because

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
003- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004- 
```

### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002- 
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test FAILED in experiment because

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
002- 
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002- 
```

### ext/openssl/tests/streams_crypto_method.phpt

Test FAILED in experiment because

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- Hello World!
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: file_get_contents(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002- 
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002+ bool(false)
003+ bool(false)
004+ bool(false)
005+ bool(false)
001- resource(%d) of type (stream)
003- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
005- 
```

### ext/openssl/tests/tls_wrapper.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002+ bool(false)
003+ bool(false)
004+ bool(false)
005+ bool(false)
006+ bool(false)
001- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
005- 
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002+ bool(false)
001- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
005- 
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002+ 
003+ Warning: stream_socket_client(): unable to connect to tlsv1.1://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ bool(false)
001- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:141E70BF:SSL routines:tls_construct_client_hello:no protocols available in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
003- 
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test FAILED in experiment because

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002+ 
003+ Warning: stream_socket_client(): unable to connect to tlsv1.2://127.0.0.1:64321 (Unknown error) in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ bool(false)
001- resource(%d) of type (stream)
```

Test FAILED in both, but outputs is different.

```patch
001- Warning: stream_socket_client(): SSL: Connection reset by peer in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fd4f88400e704d06/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
002- 
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment because

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

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+  ** ERROR: process timed out **
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
```

### ext/standard/tests/file/bug69442.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/standard/tests/network/bug80067.php on line 3
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
004+ Warning: unlink(/tmp/6189f5e034cc3.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/6189f5e075c60.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:51414/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fd4f88400e704d06/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
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
```

### ext/standard/tests/streams/stream_socket_enable_crypto.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ bool(false)
006+ bool(false)
007+ bool(false)
008+ bool(false)
009+ bool(false)
010+ bool(false)
011+ bool(false)
005- 
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
008- 
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010- bool(false)
011- 
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013- bool(false)
014- 
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016- bool(false)
017- 
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019- bool(false)
020- 
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022- bool(false)
023- 
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025- bool(false)
026- 
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028- bool(false)
```
