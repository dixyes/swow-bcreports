# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.26 (cli) (built: Nov 28 2021 14:24:35) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.26, Copyright (c), by Zend Technologies
```

### control php -m

```plain
[PHP Modules]
bcmath
bz2
calendar
Core
ctype
curl
date
dba
dom
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
intl
json
ldap
libxml
mbstring
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_dblib
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
pgsql
Phar
phpdbg_webhelper
posix
pspell
readline
Reflection
session
shmop
SimpleXML
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
Zend OPcache
zip
zlib

[Zend Modules]
Zend OPcache
```

### experiment php -v

```plain
PHP 7.4.26 (cli) (built: Nov 28 2021 14:24:35) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.26, Copyright (c), by Zend Technologies
```

### experiment php -m

```plain
[PHP Modules]
bcmath
bz2
calendar
Core
ctype
curl
date
dba
dom
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
intl
json
ldap
libxml
mbstring
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_dblib
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
pgsql
Phar
phpdbg_webhelper
posix
pspell
readline
Reflection
session
shmop
SimpleXML
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
Zend OPcache
zip
zlib

[Zend Modules]
Zend OPcache
```

### uname -a

```plain
Darwin Mac-1638502711254.local 20.6.0 Darwin Kernel Version 20.6.0: Tue Oct 12 18:33:42 PDT 2021; root:xnu-7195.141.8~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15683 | 13896 | 15729 | 0.2925% | 0.3310% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/curl/tests/bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/curl/tests/bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
016+ 
017+ Warning: ftp_close(): SSL read failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/ftp/tests/002.php on line 12
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment because

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
005+ Fetching from thread 1265...
005- Fetching from thread 1482...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Fri Dec  3 04:05:51 2021 (12220): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Fri Dec  3 04:05:51 2021 (12220): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Fri Dec  3 03:53:22 2021 (48016): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
002- 
```

### ext/openssl/tests/bug65538_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
002- 
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
```

### ext/openssl/tests/bug68265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
004+ bool(false)
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
011+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
012+ 
013+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
014+ bool(false)
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

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
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

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
004- 
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
002+ 
003+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 20
007+ 
008+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
009+ NULL
010+ 
011+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
012+ 
013+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(7) "TLSv1.3"
002+ 
003+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- resource(%d) of type (stream)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
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
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ bool(false)
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
002- 
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
004- bool(false)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
007- resource(%d) of type (stream)
008+ bool(false)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ resource(20) of type (stream)
003- bool(false)
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ resource(20) of type (stream)
003- bool(false)
```

### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ resource(20) of type (stream)
003- bool(false)
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
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
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

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/network/bug80067.php on line 3
001- bool(true)
002+ bool(false)
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/61a999118ef12.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/61a99911cc6b3.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug53427.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ array(0) {
007- array(2) {
008-   [1]=>
009-   resource(%d) of type (stream)
010-   ["myindex"]=>
011-   resource(%d) of type (stream)
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:54952/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```

### ext/standard/tests/streams/stream_select_preserve_keys.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ array(0) {
008+ }
009+ 
010+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
011+ 
012+ Warning: stream_select(): No stream arrays were passed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a93e9fdfb518e76d/ext/standard/tests/streams/stream_select_preserve_keys.php on line 11
013+ array(0) {
007- array(2) {
008-   [1]=>
009-   resource(%d) of type (stream)
010-   ["myindex"]=>
011-   resource(%d) of type (stream)
013- array(2) {
014-   [1]=>
015-   resource(%d) of type (stream)
016-   ["myindex"]=>
017-   resource(%d) of type (stream)
018- }
```
