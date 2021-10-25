# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.25 (cli) (built: Oct 20 2021 09:29:27) ( NTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.25, Copyright (c), by Zend Technologies
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
PHP 7.4.25 (cli) (built: Oct 20 2021 09:29:27) ( NTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.25, Copyright (c), by Zend Technologies
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

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 14900 | 13607 | 15616 | 4.5850% | 5.2620% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\curl\tests\bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\curl\tests\bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
005+   string(27) "ECDHE-RSA-AES256-GCM-SHA384"
005-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
011+   string(27) "ECDHE-RSA-AES256-GCM-SHA384"
011-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
```

### ext/mysqli/tests/mysqli_mysqlnd_read_timeout_long.phpt

Test FAILED in experiment because

```patch
001+ Warning: mysqli_connect(): (HY000/2002): Socket connect wait failed, reason: Timed out for 1000 ms in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\mysqli\tests\connect.inc on line 67
002+ [001] Connect failed, [2002] Socket connect wait failed, reason: Timed out for 1000 ms
003+ 
004+ Warning: mysqli_query() expects parameter 1 to be mysqli, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 9
005+ 
001- array(1) {
002-   ["SLEEP(6)"]=>
003-   string(1) "0"
004- }
005- done!
006+ Warning: mysqli_errno() expects parameter 1 to be mysqli, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 10
007+ 
008+ Warning: mysqli_error() expects parameter 1 to be mysqli, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 10
009+ [002] [0] 
010+ 
011+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php:12
012+ Stack trace:
013+ #0 {main}
014+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\mysqli\tests\mysqli_mysqlnd_read_timeout_long.php on line 12
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: mysqli_connect(): (HY000/2002): Socket connect wait failed, reason: Timed out for 1000 ms in D:\a\swow-bcreports\swow-bcreports\phpbc_ctrl_phpsrc_37b9602e44212af8\ext\mysqli\tests\connect.inc on line 67
002+ [001] Connect failed, [2002] Socket connect wait failed, reason: Timed out for 1000 ms
001- Warning: mysqli_connect(): (HY000/2002): A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.
002-  in D:\a\swow-bcreports\swow-bcreports\phpbc_ctrl_phpsrc_37b9602e44212af8\ext\mysqli\tests\connect.inc on line 67
003- [001] Connect failed, [2002] A connection attempt failed because the connected party did not properly respond after a period of time, or established connection failed because connected host has failed to respond.
005- 
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
005+ Fetching from thread 1478...
005- Fetching from thread 1479...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Mon Oct 25 04:18:07 2021 (3060): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Oct 25 04:18:07 2021 (3060): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Oct 25 03:56:04 2021 (1992): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
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
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 8
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
001+ Warning: file_get_contents(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 8
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
001+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 7
004+ bool(false)
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
011+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 15
012+ 
013+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 15
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
001+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
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
001+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 15
002+ 
003+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 16
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 20
007+ 
008+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 21
009+ NULL
010+ 
011+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
012+ 
013+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: Undefined index: session_meta in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(7) "TLSv1.3"
002+ 
003+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 15
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Notice: Undefined index: peer_certificate in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Notice: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Notice: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- resource(%d) of type (stream)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
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
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
002- 
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
004- bool(false)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
007- resource(%d) of type (stream)
008+ bool(false)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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

Test FAILED in experiment because

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

### ext/phar/tests/bug72321.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: PharData::extractTo(): %s in %sbug72321.php on line %d
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
016+ Warning: opendir(foo/hi): failed to open dir: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_37b9602e44212af8/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): failed to open dir: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specified. (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): failed to open dir: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): failed to open dir: Filename too long in %s on line %d
```

### ext/standard/tests/file/bug60120.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug61961.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug63512.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug65272.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug65701.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug66509.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug68335.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug68532.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug69100.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug69442.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug69628.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug71287.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug71882.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug72035.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug72330.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug74719.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug75679.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug76735.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug77552.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug78241.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug78296.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug78386.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug79099.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug81145.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug81223.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chgrp.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chown.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chroot_001.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/clearstatcache_001.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation12-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation12.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation15.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation16-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation16.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/directory_wrapper_fstat_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/dirname_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/dirname_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/dirname_no_path_normalization-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fclose_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/feof_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation19.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation20.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation21.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation22.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation23.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation24.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation25.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation26.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation27.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation28.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation29.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation30.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation31.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_socket_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_socket_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation4-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_exists_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_basic001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_error001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_error002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation7-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation5-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileperms_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileperms_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileperms_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filestat.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_variation.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fnmatch_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fnmatch_maxpathlen.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fnmatch_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_unlink.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation10-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation11-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation14-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation14.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation15-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation15.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation19.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopencookie.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fpassthru_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fpassthru_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_fwrite_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation3-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation19.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation20.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation21.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation22.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation23.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation24.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation25.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation26.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation27.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation28.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation29.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation30.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation31.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation33.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation34.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation35.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation36.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation37.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation38.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation39.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation40.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation41.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation42.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation43.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation44.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation45.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation46.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation47.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation48.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation49.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation50.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation51.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation52.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation53.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation54.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation55.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_dir_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_error3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fstat.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fstat_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fstat_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_bug76422.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_bug76803.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_bug77081.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/get_current_user.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_error_002-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_streams.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_userstream_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_userstream_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_userstream_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_uploaded_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lchgrp_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lchown_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lchown_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/link_win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation16.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation17.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation19.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation20.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation21.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation22.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-002.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-005.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-006.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/move_uploaded_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/open_basedir_cwd_resolve.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_variaton.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_01.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_02.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_03.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_04.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_error-sunos.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/proc_open01.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation10-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation10.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation8-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_bug77484.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_cache.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_cache_win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_variation-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation12.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation13.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rmdir_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rmdir_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/statcache-corruption.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/statpage.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_copy_to_stream.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_enclosed.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_get_line.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_005.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_006.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_007.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_supports_lock.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_basic2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_to_symlink.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation4-0.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation4-1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/umask_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/umask_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/umask_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation10.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation9-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userdirstream.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userfilters.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_005.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_006.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_007.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userwrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\standard\tests\network\bindto.php on line 9
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
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_37b9602e44212af8\ext\standard\tests\network\bug80067.php on line 3
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

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
