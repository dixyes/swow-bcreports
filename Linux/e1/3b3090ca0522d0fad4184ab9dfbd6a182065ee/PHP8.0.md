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
Linux fv-az275-885 5.8.0-1033-azure #35~20.04.1-Ubuntu SMP Wed May 19 06:46:04 UTC 2021 x86_64 x86_64 x86_64 GNU/Linux
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
cpu MHz		: 2394.454
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
bogomips	: 4788.90
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
cpu MHz		: 2394.454
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
bogomips	: 4788.90
clflush size	: 64
cache_alignment	: 64
address sizes	: 46 bits physical, 48 bits virtual
power management:
```

### cat /proc/meminfo

```plain
MemTotal:        7120800 kB
MemFree:         4428448 kB
MemAvailable:    6223576 kB
Buffers:          253236 kB
Cached:          1452872 kB
SwapCached:            0 kB
Active:          1180732 kB
Inactive:         945788 kB
Active(anon):     312936 kB
Inactive(anon):   119676 kB
Active(file):     867796 kB
Inactive(file):   826112 kB
Unevictable:       26784 kB
Mlocked:           26784 kB
SwapTotal:       4194300 kB
SwapFree:        4194300 kB
Dirty:               184 kB
Writeback:             0 kB
AnonPages:        444116 kB
Mapped:           357600 kB
Shmem:              7524 kB
KReclaimable:     411132 kB
Slab:             473624 kB
SReclaimable:     411132 kB
SUnreclaim:        62492 kB
KernelStack:        3680 kB
PageTables:         5872 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     7754700 kB
Committed_AS:    2497856 kB
VmallocTotal:   34359738367 kB
VmallocUsed:       31172 kB
VmallocChunk:          0 kB
Percpu:             1656 kB
HardwareCorrupted:     0 kB
AnonHugePages:    180224 kB
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
| 16033 | 13864 | 16082 | 0.3047% | 0.3534% |

## Behavior changes

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/ftp/tests/002.php on line 8
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     äöü
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Tue Jun 22 04:06:04 2021 (82843): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Tue Jun 22 04:06:04 2021 (82843): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Tue Jun 22 03:55:08 2021 (28449): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     int(1291)
     int(10)
```

### ext/soap/tests/bug73037.phpt

Test FAILED in experiment beacuse

```patch
     Iteration 0
003+ HTTP/1.1 200 OK
004+ Date: Tue, 22 Jun 2021 04:08:11 GMT
005+ Connection: close
006+ X-Powered-By: PHP/8.0.7
007+ Content-type: text/html; charset=UTF-8
003- Function 'CATALOG' doesn't exist
     
009+ <br />
010+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php:1
011+ Stack trace:
012+ #0 {main}
013+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
005- Function 'CATALOG' doesn't exist
     
007- Iteration 1
016+ HTTP/1.1 200 OK
017+ Date: Tue, 22 Jun 2021 04:08:11 GMT
018+ Connection: close
019+ X-Powered-By: PHP/8.0.7
020+ Content-type: text/html; charset=UTF-8
009- Function 'CATALOG' doesn't exist
     
022+ <br />
023+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php:1
024+ Stack trace:
025+ #0 {main}
026+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
011- Function 'CATALOG' doesn't exist
     
013- Iteration 2
     
029+ Iteration 1
015- Function 'CATALOG' doesn't exist
031+ HTTP/1.1 200 OK
032+ Date: Tue, 22 Jun 2021 04:08:11 GMT
033+ Connection: close
034+ X-Powered-By: PHP/8.0.7
035+ Content-type: text/html; charset=UTF-8
017- Function 'CATALOG' doesn't exist
     
037+ <br />
038+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php:1
039+ Stack trace:
040+ #0 {main}
041+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
019- Iteration 3
     
021- Function 'CATALOG' doesn't exist
044+ HTTP/1.1 200 OK
045+ Date: Tue, 22 Jun 2021 04:08:11 GMT
046+ Connection: close
047+ X-Powered-By: PHP/8.0.7
048+ Content-type: text/html; charset=UTF-8
023- Function 'CATALOG' doesn't exist
     
050+ <br />
051+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php:1
052+ Stack trace:
053+ #0 {main}
054+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
025- Iteration 4
     
027- Function 'CATALOG' doesn't exist
     
057+ Iteration 2
029- Function 'CATALOG' doesn't exist
059+ HTTP/1.1 200 OK
060+ Date: Tue, 22 Jun 2021 04:08:11 GMT
061+ Connection: close
062+ X-Powered-By: PHP/8.0.7
063+ Content-type: text/html; charset=UTF-8
031- Iteration 5
     
065+ <br />
066+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php:1
067+ Stack trace:
068+ #0 {main}
069+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php</b> on line <b>1</b><br />
033- Function 'CATALOG' doesn't exist
     
035- Function 'CATALOG' doesn't exist
072+ HTTP/1.1 200 OK
073+ Date: Tue, 22 Jun 2021 04:08:11 GMT
074+ Connection: close
075+ X-Powered-By: PHP/8.0.7
076+ Content-type: text/html; charset=UTF-8
037- Iteration 6
078+ <br />
079+ <b>Fatal error</b>:  Uncaught Error: Class &quot;SoapServer&quot; not found in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php:1
080+ Stack trace:
081+ #0 {main}
082+   thrown in <b>/home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/sapi/cli/tests/bug73037_server.php</b> on lin
...
```

Test FAILED in both, but outputs is different.

```patch
004+ Date: Tue, 22 Jun 2021 04:08:11 GMT
004- Date: Tue, 22 Jun 2021 03:56:46 GMT
017+ Date: Tue, 22 Jun 2021 04:08:11 GMT
017- Date: Tue, 22 Jun 2021 03:56:46 GMT
032+ Date: Tue, 22 Jun 2021 04:08:11 GMT
032- Date: Tue, 22 Jun 2021 03:56:46 GMT
045+ Date: Tue, 22 Jun 2021 04:08:11 GMT
045- Date: Tue, 22 Jun 2021 03:56:46 GMT
060+ Date: Tue, 22 Jun 2021 04:08:11 GMT
060- Date: Tue, 22 Jun 2021 03:56:46 GMT
073+ Date: Tue, 22 Jun 2021 04:08:11 GMT
073- Date: Tue, 22 Jun 2021 03:56:46 GMT
088+ Date: Tue, 22 Jun 2021 04:08:11 GMT
088- Date: Tue, 22 Jun 2021 03:56:46 GMT
101+ Date: Tue, 22 Jun 2021 04:08:11 GMT
101- Date: Tue, 22 Jun 2021 03:56:46 GMT
116+ Date: Tue, 22 Jun 2021 04:08:11 GMT
116- Date: Tue, 22 Jun 2021 03:56:46 GMT
129+ Date: Tue, 22 Jun 2021 04:08:11 GMT
129- Date: Tue, 22 Jun 2021 03:56:46 GMT
144+ Date: Tue, 22 Jun 2021 04:08:11 GMT
144- Date: Tue, 22 Jun 2021 03:56:46 GMT
157+ Date: Tue, 22 Jun 2021 04:08:11 GMT
157- Date: Tue, 22 Jun 2021 03:56:46 GMT
172+ Date: Tue, 22 Jun 2021 04:08:11 GMT
172- Date: Tue, 22 Jun 2021 03:56:47 GMT
185+ Date: Tue, 22 Jun 2021 04:08:11 GMT
185- Date: Tue, 22 Jun 2021 03:56:47 GMT
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
002+ Segmentation fault (core dumped)
002- string(12) "test message"
003+ 
004+ Termsig=11
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
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(7) {
       [0]=>
--
     
     "
     -- Test: fail after 2 redirections --
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
050+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection --
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
065+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection (2) --
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
076+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     Connection: close
     
     "
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(4) {
       [0]=>
--
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(2) "rb"
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Content-Type: text/plain
     
     ohai"
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: teste@teste.pt
     Host: %s:%d
     Connection: close
     
     "
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: junk@junk.com
     Host: %s:%d
--
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
007+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
012+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
     leak? penultimate iteration: %d, last one: %d
--
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     Third:
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: keep-alive
     
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: keep-alive
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     GET /foo HTTP/1.1
     Host: %s:%d
     Connection: close
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:42899): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
     bool(false)
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     Hello
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(0) ""
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     DONE
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     bool(true)
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Connection: close
     RandomHeader: localhost:8080
--
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug80256.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(4) "1234"
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     array(3) {
       [0]=>
       string(32) "HTTP/1.1 101 Switching Protocols"
--
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(3) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:38427): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/http_response_header_03.php on line 12
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
     bool(false)
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
019+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: HTTP request failed! HTTP/1.1 404 Not found
      in %s on line %d
     bool(false)
--
     Connection: close
     
     "
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
```

### ext/standard/tests/misc/time_sleep_until_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
     bool(true)
002+ Sleep until (before truncation): 1624335197.0213
002- Success
003+ Sleep until: 1624335197
004+ Now: 1624335196.9953
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/network/bindto.php on line 9
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/http/server.inc on line 66
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
004+ Warning: unlink(/tmp/60d16364582c1.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/network/udgloop.php on line 25
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
004+ Warning: unlink(/tmp/60d16364b4e19.sock): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
     stream_socket_server(): socket path exceeded the maximum allowed length of %d bytes and was truncated
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:61040/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/bug73457.php on line 8
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
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
     Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
006+ Warning: opendir(ftps://127.0.0.1:51698/bogusdir): Failed to open directory: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ Warning: opendir(ftps://127.0.0.1:51568/): Failed to open directory: Unable to activate SSL mode in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-004.php:12
010+ Stack trace:
011+ #0 /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-004.php(12): readdir(false)
012+ #1 {main}
013+   thrown in /home/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_232a563b5d9e5e29/ext/standard/tests/streams/opendir-004.php on line 12
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
```
