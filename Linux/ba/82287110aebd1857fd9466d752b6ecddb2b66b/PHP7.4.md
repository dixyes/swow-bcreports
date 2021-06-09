# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.18 (cli) (built: May  3 2021 11:27:06) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.18, Copyright (c), by Zend Technologies
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
PHP 7.4.18 (cli) (built: May  3 2021 11:27:06) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.18, Copyright (c), by Zend Technologies
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
Linux fv-az269-8 5.4.0-1047-azure #49-Ubuntu SMP Thu Apr 22 14:30:37 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
MemTotal:        7121236 kB
MemFree:         4312232 kB
MemAvailable:    6194480 kB
Buffers:          201692 kB
Cached:          1619836 kB
SwapCached:           32 kB
Active:          1258716 kB
Inactive:        1028092 kB
Active(anon):     243196 kB
Inactive(anon):   220172 kB
Active(file):    1015520 kB
Inactive(file):   807920 kB
Unevictable:       26720 kB
Mlocked:           26720 kB
SwapTotal:       4194300 kB
SwapFree:        4193776 kB
Dirty:               208 kB
Writeback:             0 kB
AnonPages:        478612 kB
Mapped:           358044 kB
Shmem:              6648 kB
KReclaimable:     368720 kB
Slab:             437116 kB
SReclaimable:     368720 kB
SUnreclaim:        68396 kB
KernelStack:        3712 kB
PageTables:         5656 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754916 kB
Committed_AS:    2577960 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       27332 kB
VmallocChunk:          0 kB
Percpu:             1704 kB
HardwareCorrupted:     0 kB
AnonHugePages:    198656 kB
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
DirectMap4k:      147392 kB
DirectMap2M:     2998272 kB
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
| 15635 | 13455 | 15692 | 0.3632% | 0.4236% |

## Behavior changes

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/ftp/tests/002.php on line 8
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun  9 02:44:22 2021 (82791): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun  9 02:44:22 2021 (82791): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun  9 02:35:25 2021 (29722): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
003+ HTTP/1.1 200 OK
004+ Date: Wed, 09 Jun 2021 02:45:50 GMT
005+ Connection: close
006+ X-Powered-By: PHP/7.4.18
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
005- Function 'CATALOG' doesn't exist
007- Iteration 1
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
009- Function 'CATALOG' doesn't exist
011- Function 'CATALOG' doesn't exist
013- Iteration 2
015- Function 'CATALOG' doesn't exist
016+ HTTP/1.1 200 OK
017+ Date: Wed, 09 Jun 2021 02:45:50 GMT
018+ Connection: close
019+ X-Powered-By: PHP/7.4.18
020+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
019- Iteration 3
021- Function 'CATALOG' doesn't exist
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
023- Function 'CATALOG' doesn't exist
025- Iteration 4
027- Function 'CATALOG' doesn't exist
029+ Iteration 1
029- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Wed, 09 Jun 2021 02:45:50 GMT
033+ Connection: close
034+ X-Powered-By: PHP/7.4.18
035+ Content-type: text/html; charset=UTF-8
031- Iteration 5
033- Function 'CATALOG' doesn't exist
035- Function 'CATALOG' doesn't exist
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
037- Iteration 6
039- Function 'CATALOG' doesn't exist
041- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Wed, 09 Jun 2021 02:45:50 GMT
046+ Connection: close
047+ X-Powered-By: PHP/7.4.18
048+ Content-type: text/html; charset=UTF-8
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
057+ Iteration 2
059+ HTTP/1.1 200 OK
060+ Date: Wed, 09 Jun 2021 02:45:50 GMT
061+ Connection: close
062+ X-Powered-By: PHP/7.4.18
063+ Content-type: text/html; charset=UTF-8
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
072+ HTTP/1.1 200 OK
073+ Date: Wed, 09 Jun 2021 02:45:50 GMT
074+ Connection: close
075+ X-Powered-By: PHP/7.4.18
076+ Content-type: text/html; charset=UTF-8
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class 'SoapServer' not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
084+ 
085+ Iteration 3
086+ 
087+ HTTP/1.1 200 OK

...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Wed, 09 Jun 2021 02:45:50 GMT
004- Date: Wed, 09 Jun 2021 02:36:38 GMT
017+ Date: Wed, 09 Jun 2021 02:45:50 GMT
017- Date: Wed, 09 Jun 2021 02:36:38 GMT
032+ Date: Wed, 09 Jun 2021 02:45:50 GMT
032- Date: Wed, 09 Jun 2021 02:36:38 GMT
045+ Date: Wed, 09 Jun 2021 02:45:50 GMT
045- Date: Wed, 09 Jun 2021 02:36:38 GMT
060+ Date: Wed, 09 Jun 2021 02:45:50 GMT
060- Date: Wed, 09 Jun 2021 02:36:38 GMT
073+ Date: Wed, 09 Jun 2021 02:45:50 GMT
073- Date: Wed, 09 Jun 2021 02:36:38 GMT
088+ Date: Wed, 09 Jun 2021 02:45:50 GMT
088- Date: Wed, 09 Jun 2021 02:36:38 GMT
101+ Date: Wed, 09 Jun 2021 02:45:50 GMT
101- Date: Wed, 09 Jun 2021 02:36:38 GMT
116+ Date: Wed, 09 Jun 2021 02:45:50 GMT
116- Date: Wed, 09 Jun 2021 02:36:38 GMT
129+ Date: Wed, 09 Jun 2021 02:45:50 GMT
129- Date: Wed, 09 Jun 2021 02:36:38 GMT
144+ Date: Wed, 09 Jun 2021 02:45:50 GMT
144- Date: Wed, 09 Jun 2021 02:36:38 GMT
157+ Date: Wed, 09 Jun 2021 02:45:50 GMT
157- Date: Wed, 09 Jun 2021 02:36:38 GMT
172+ Date: Wed, 09 Jun 2021 02:45:50 GMT
172- Date: Wed, 09 Jun 2021 02:36:38 GMT
185+ Date: Wed, 09 Jun 2021 02:45:50 GMT
185- Date: Wed, 09 Jun 2021 02:36:38 GMT
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
009+ Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/007_variation1.php on line 32
009- Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/007_variation17.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/007_variation17.php on line 32
009- Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/007_variation9.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/007_variation9.php on line 32
009- Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/fputcsv_variation14.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fputcsv(): Write of 12 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
009- Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in %s on line %d
021+ Notice: fputcsv(): Write of 12 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
021- Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in %s on line %d
033+ Notice: fputcsv(): Write of 12 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
033- Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in %s on line %d
045+ Notice: fputcsv(): Write of 15 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
045- Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in %s on line %d
057+ Notice: fputcsv(): Write of 15 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
057- Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in %s on line %d
069+ Notice: fputcsv(): Write of 15 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
069- Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in %s on line %d
081+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
081- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
093+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
093- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
105+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
105- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
117+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
117- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
129+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
129- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
141+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
141- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
153+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
153- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
165+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
165- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
177+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
177- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
189+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
189- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
201+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
201- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
213+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
213- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
225+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
225- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
237+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
237- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
249+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
249- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
261+ Notice: fputcsv(): Write of 22 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
261- Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in %s on line %d
273+ Notice: fputcsv(): Write of 22 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
273- Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in %s on line %d
285+ Notice: fputcsv(): Write of 22 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
285- Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in %s on line %d
297+ Notice: fputcsv(): Write of 24 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
297- Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in %s on line %d
309+ Notice: fputcsv(): Write of 24 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
309- Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in %s on line %d
321+ Notice: fputcsv(): Write of 24 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fputcsv_variation14.php on line 64
321- Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/file/fwrite.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ Notice: fwrite(): Write of 4 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite.php on line 11
007- Notice: fwrite(): write of 4 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
007- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
013+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
013- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
023+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
023- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
029+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
029- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
039+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
039- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
045+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
045- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
057+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
057- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
063+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
063- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
073+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
073- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
079+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
079- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
089+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
089- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
095+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
095- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
107+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
107- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
113+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
113- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
123+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
123- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
129+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
129- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
139+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
139- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
145+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
145- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
157+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
157- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
163+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
163- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
173+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
173- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
179+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
179- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
189+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 48
189- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
195+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/file/fwrite_variation1.php on line 55
195- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/http/server.inc on line 58
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
004+ Warning: unlink(/tmp/60c02c8aadb42.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/60c02c8b01a78.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:58551/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug73457.php on line 8
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
001+ Warning: mkdir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug77680.php on line 7
002+ 
003+ Warning: mkdir(): Unable to connect to ftp://localhost:62221/one/two/three/ in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug77680.php on line 7
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
001+ Warning: stat(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug77765.php on line 7
002+ 
003+ Warning: stat(): stat failed for ftp://localhost:64808/www in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug77765.php on line 7
004+ 
005+ Notice: Trying to access array offset on value of type bool in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/bug77765.php on line 7
006+ NULL
001- string(11) "SIZE /www
002- "
003- int(16877)
008+ 
009+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-001.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:56915/bogusdir): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-001.php on line 7
001- Warning: opendir(ftp://localhost:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
006+ 
007+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-002.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:62351/): failed to open dir: operation failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-002.php on line 7
004+ bool(false)
005+ 
006+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-002.php on line 10
007+ 
008+ Warning: closedir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-002.php on line 14
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
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:51781/bogusdir): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/ftp/tests/server.inc on line 114
002+ 
003+ Warning: opendir(): this stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-004.php on line 10
004+ SSLv23 handshake failed.
005+ 
006+ Warning: opendir(ftps://127.0.0.1:57593/): failed to open dir: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_76654a6db018a5f4/ext/standard/tests/streams/opendir-004.php on line 12
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
