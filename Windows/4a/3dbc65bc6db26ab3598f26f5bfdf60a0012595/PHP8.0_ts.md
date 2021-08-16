# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.9 (cli) (built: Jul 29 2021 14:12:19) ( ZTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.9, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.9, Copyright (c), by Zend Technologies
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
PHP 8.0.9 (cli) (built: Jul 29 2021 14:12:19) ( ZTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.9, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.9, Copyright (c), by Zend Technologies
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
Caption=Microsoft Windows Server 2019 Datacenter
CSDVersion=
OSArchitecture=64-bit
OSLanguage=1033
TotalVisibleMemorySize=7339572
Version=10.0.17763
```

### wmic cpu get Caption,Name,NumberOfCores,NumberOfLogicalProcessors,Architecture /value

```plain
Architecture=9
Caption=Intel64 Family 6 Model 79 Stepping 1
Name=Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15899 | 13836 | 15956 | 0.3572% | 0.4120% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\curl\tests\bug78775.php:19
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\curl\tests\bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\curl\tests\bug78775.php on line 19
```

### ext/enchant/tests/broker_dict_exists.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\enchant\tests\broker_dict_exists.php on line 5
001- OK
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\enchant\tests\broker_dict_exists.php on line 5
004+ 
005+ ** (php.exe:4372): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
006+ dicts dont exist failed
```

Test FAILED in both, but outputs is different.

```patch
005+ ** (php.exe:4372): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
005- ** (php.exe:1748): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
```

### ext/enchant/tests/broker_set_ordering.phpt

Test FAILED in experiment beacuse

```patch
002+ 
003+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\enchant\tests\broker_set_ordering.php on line 8
004+ 
005+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\enchant\tests\broker_set_ordering.php on line 8
006+ 
007+ ** (php.exe:2316): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
     OK
     OK
```

Test FAILED in both, but outputs is different.

```patch
007+ ** (php.exe:2316): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
007- ** (php.exe:7132): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Mon Aug 16 04:08:32 2021 (5044): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Aug 16 04:08:32 2021 (5044): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Aug 16 03:54:01 2021 (5916): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
     Running bug48182
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code:13
008+ Stack trace:
009+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
010+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130): eval()
011+ #2 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
012+ #3 {main}
013+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
     
003- Warning: file_get_contents(): Failed to enable crypto in %s on line %d
004- 
005- Warning: file_get_contents(%s): Failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
002+ resource(15) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
009- 
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
015- bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
002+ resource(15) of type (stream)
003+ resource(17) of type (stream)
004+ resource(19) of type (stream)
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
006- bool(false)
007- 
008- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
009- 
010- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
011- 
012- Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
013- bool(false)
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
001+ Termsig=-1073741819
001- done
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
001+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ NULL
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

### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(12) of type (stream)
     bool(false)
002+ resource(14) of type (stream)
001- bool(false)
002- bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
```

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
002+ resource(14) of type (stream)
002- 
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
004- 
005- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
006- 
007- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
008- bool(false)
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "crypto" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ NULL
005+ 
006+ Warning: Undefined array key "crypto" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
007+ 
008+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
009+ NULL
010+ 
011+ Warning: Undefined array key "crypto" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 22
012+ 
013+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 22
014+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "crypto" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
001- string(7) "TLSv1.3"
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ NULL
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
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
005+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 26
008+ bool(false)
```

### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:1416F086:SSL routines:tls_process_server_certificate:certificate verify failed in %s : eval()'d code on line %d
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in %s : eval()'d code on line %d
005- 
006- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
007- bool(false)
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ resource(13) of type (stream)
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
002- 
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
003+ bool(false)
     resource(%d) of type (stream)
004- bool(false)
     resource(%d) of type (stream)
     resource(%d) of type (stream)
007+ bool(false)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
     bool(false)
003+ resource(14) of type (stream)
003- bool(false)
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

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
     done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3406;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3406;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 2336 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
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

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     -- Iteration 2 --
     
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation-win32.php on line 29
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect (code: 123) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Iteration 5 --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation11-win32.php on line 43
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation11-win32.php on line 43
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation11-win32.php on line 43
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 12 --
--
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Iteration 5 --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation12-win32.php on line 41
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation12-win32.php on line 41
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation12-win32.php on line 41
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     *** Done ***
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     -- 0 testing '-1' integer --
     bool(true)
     
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 1 testing '1' boolean --
     bool(true)
     
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 2 testing '' boolean --
     
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 36
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 3 testing '' NULL --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 36
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 4 testing '' string --
     
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 36
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 5 testing ' ' string --
     
--
     bool(false)
     -- 6 testing '/no/such/file/dir' string --
     
042+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 36
042- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
045+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
045- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 7 testing 'php/php' string --
     
049+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 36
049- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
052+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation13-win32.php on line 44
052- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Renaming existing file to existing directory name --
     
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation3-win32.php on line 28
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied (code: 5) in %s on line %d
     bool(false)
     bool(true)
     bool(true)
--
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
     *** Testing rename() on non-existing file ***
     
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation8-win32.php on line 8
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
     
     *** Testing rename() on non-existing directory ***
     
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\rename_variation8-win32.php on line 28
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlink_error-win32-mb.php on line 37
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlink_error-win32.php on line 35
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     -- Unlinking file without write permission, its dir having default permission --
010+ bool(true)
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 50
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 52
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     -- Unlinking file without write permission, its dir having default permission --
010+ bool(true)
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlink_variation1-win32.php on line 49
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\file\unlink_variation1-win32.php on line 51
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/general_functions/usleep_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
     *** Testing usleep() : basic functionality ***
002+ TEST FAILED: Thread slept for 947325.94490051 micro-seconds
002- TEST PASSED: Thread slept for %f micro-seconds
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug20134.phpt

Test PASSED in control but FAILED in experiment

```patch
     int(1)
002+ string(0) ""
002- bool(false)
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_fd290b746b6dcf24\ext\standard\tests\network\bug80067.php on line 3
001- bool(true)
002+ bool(false)
```

### ext/standard/tests/network/shutdown.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- Client 1
002- Client 2
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

### ext/standard/tests/streams/stream_get_meta_data_socket_variation2.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     Read some data from the client:
     array(7) {
       ["timed_out"]=>
060+   bool(true)
060-   bool(false)
       ["blocked"]=>
       bool(true)
       ["eof"]=>
--
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_to_utf8_0.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
