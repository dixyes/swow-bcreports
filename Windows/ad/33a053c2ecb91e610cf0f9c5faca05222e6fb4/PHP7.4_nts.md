# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.22 (cli) (built: Jul 28 2021 09:44:14) ( NTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.22, Copyright (c), by Zend Technologies
```

### control php -m

```plain
[PHP Modules]
bcmath
bz2
calendar
com_dotnet
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
intl
json
libxml
mbstring
mysqli
mysqlnd
openssl
pcre
PDO
pdo_mysql
pgsql
Phar
readline
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
standard
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
PHP 7.4.22 (cli) (built: Jul 28 2021 09:44:14) ( NTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.22, Copyright (c), by Zend Technologies
```

### experiment php -m

```plain
[PHP Modules]
bcmath
bz2
calendar
com_dotnet
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
intl
json
libxml
mbstring
mysqli
mysqlnd
openssl
pcre
PDO
pdo_mysql
pgsql
Phar
readline
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
standard
Swow
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

### wmic os get Caption,CSDVersion,OSArchitecture,OSLanguage,TotalVisibleMemorySize,Version /value

```plain
Caption=Microsoft Windows Server 2016 Datacenter
CSDVersion=
OSArchitecture=64-bit
OSLanguage=1033
TotalVisibleMemorySize=7339572
Version=10.0.14393
```

### wmic cpu get Caption,Name,NumberOfCores,NumberOfLogicalProcessors,Architecture /value

```plain
Architecture=9
Caption=Intel64 Family 6 Model 85 Stepping 4
Name=Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15634 | 13512 | 15689 | 0.3506% | 0.4070% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\curl\tests\bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\curl\tests\bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/mysqli/tests/mysqli_mysqlnd_read_timeout_long.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: mysqli_connect(): (HY000/2002): Socket connect wait failed, reason: Timed out for 1000 ms in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\connect.inc on line 67
002+ [001] Connect failed, [2002] Socket connect wait failed, reason: Timed out for 1000 ms
003+ 
004+ Warning: mysqli_query() expects parameter 1 to be mysqli, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 9
005+ 
001- array(1) {
002-   ["SLEEP(6)"]=>
003-   string(1) "0"
004- }
005- done!
006+ Warning: mysqli_errno() expects parameter 1 to be mysqli, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 10
007+ 
008+ Warning: mysqli_error() expects parameter 1 to be mysqli, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 10
009+ [002] [0] 
010+ 
011+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php:12
012+ Stack trace:
013+ #0 {main}
014+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 12
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: mysqli_connect(): (HY000/2002): Socket connect wait failed, reason: Timed out for 1000 ms in D:\a\swow-bcreports\swow-bcreports\phpbc_ctrl_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\connect.inc on line 67
002+ [001] Connect failed, [2002] Socket connect wait failed, reason: Timed out for 1000 ms
001- Warning: mysqli_connect(): (HY000/2002): A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.
002-  in D:\a\swow-bcreports\swow-bcreports\phpbc_ctrl_phpsrc_ce621c39b1a0fd3c\ext\mysqli\tests\connect.inc on line 67
003- [001] Connect failed, [2002] A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.
005- 
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Fri Aug 13 04:14:21 2021 (5196): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Fri Aug 13 04:14:21 2021 (5196): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Fri Aug 13 03:54:30 2021 (5264): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
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
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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

### ext/openssl/tests/bug77390.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- string(0) ""
002- string(12) "hello, world"
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
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
001+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 15
002+ 
003+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 16
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 20
007+ 
008+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 21
009+ NULL
010+ 
011+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
012+ 
013+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(7) "TLSv1.3"
002+ 
003+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 15
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- resource(%d) of type (stream)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
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

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(19) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
004- bool(false)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
007- resource(%d) of type (stream)
008+ bool(false)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
```

Test FAILED in both, but outputs is different.

```patch
001- [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3406;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3406;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it.
002- 
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
016+ Warning: opendir(foo/hi): failed to open dir: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_ce621c39b1a0fd3c/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): failed to open dir: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ Child 4432 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specified. (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): failed to open dir: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): failed to open dir: Filename too long in %s on line %d
```

### ext/standard/tests/file/bug81145.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- Identical
```

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
072+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub/parseIniFileVar私はガラスを食べられます.ini): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 54
073+ 
074+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 56
075+ 
076+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 57
077+ 
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug20134.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- bool(false)
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_ce621c39b1a0fd3c\ext\standard\tests\network\bug80067.php on line 3
001- bool(true)
002+ bool(false)
```

### ext/standard/tests/network/tcp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/udp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/bug49936_win32.phpt

Test PASSED in control but FAILED in experiment

```patch
002-  in %s on line %d
008-  in %s on line %d
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

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in experiment beacuse

```patch
001+ expected 'gef��', got 'gefäß'
```

Test FAILED in both, but outputs is different.

```patch
005+ gef��
005- gefäß
```
