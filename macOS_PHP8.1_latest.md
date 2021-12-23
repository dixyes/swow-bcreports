# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.1.1 (cli) (built: Dec 17 2021 23:49:52) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.1, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.1, Copyright (c), by Zend Technologies
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
PHP 8.1.1 (cli) (built: Dec 17 2021 23:49:52) (NTS)
Copyright (c) The PHP Group
Zend Engine v4.1.1, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.1, Copyright (c), by Zend Technologies
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
Darwin Mac-1640230911709.local 20.6.0 Darwin Kernel Version 20.6.0: Wed Nov 10 22:23:07 PST 2021; root:xnu-7195.141.14~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16930 | 15145 | 16990 | 0.3531% | 0.3962% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/curl/tests/bug78775.php:19
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/curl/tests/bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/curl/tests/bug78775.php on line 19
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     array(1) {
       [0]=>
       string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
016+ 
017+ Warning: ftp_close(): SSL read failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/ftp/tests/002.php on line 12
     bool(true)
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Thu Dec 23 04:31:23 2021 (88274): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Dec 23 04:31:23 2021 (88274): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Dec 23 04:22:30 2021 (40880): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
     Running bug48182
002+ PHP Warning:  fwrite(): SSL operation failed with code 1. OpenSSL Error messages:
003+ error:1420C0CF:SSL routines:ssl_write_internal:protocol is shutdown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
008+ 
009+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
010+ Stack trace:
011+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
012+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
013+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
014+ #3 {main}
015+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
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
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): Failed to open stream: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
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
001+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(https://127.0.0.1:64321/): Failed to open stream: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ bool(false)
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
004+ bool(false)
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
     bool(false)
007- resource(%d) of type (stream)
008- resource(%d) of type (stream)
011+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
012+ 
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
014+ bool(false)
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
--
```

### ext/openssl/tests/bug68265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
004+ bool(false)
001- Warning: stream_socket_client(): Expected peer fingerprint must be a string or an array in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to %s (Unknown error) in %s on line %d
     bool(false)
011+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
012+ 
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
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

### ext/openssl/tests/bug69215.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ bool(false)
```

### ext/openssl/tests/bug72333.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
001- done
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:10011 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 4
004+ 
005+ Fatal error: Uncaught TypeError: stream_set_blocking(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:5
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(5): stream_set_blocking(false, false)
008+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
009+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/bug72333.php(65): ServerClientTestCase->run('    $context = ...', Array)
010+ #3 {main}
011+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 5
012+ PHP Warning:  fread(): SSL: Connection reset by peer in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ fwrite(): Send of 1048575 bytes failed with errno=-9754 Socket enable crypto failed, reason: SSL certificate not found
001- Written 1048575 bytes
002- DONE
```

### ext/openssl/tests/bug76705.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64323 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ bool(false)
```

### ext/openssl/tests/bug77390.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
002+ 
001- string(0) ""
002- string(12) "hello, world"
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:10012 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 7
004+ 
005+ Fatal error: Uncaught TypeError: stream_set_blocking(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:8
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(8): stream_set_blocking(false, false)
008+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
009+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/bug77390.php(112): ServerClientTestCase->run('    $context = ...', Array)
010+ #3 {main}
011+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
012+ PHP Notice:  fwrite(): Send of 89 bytes failed with errno=32 Broken pipe in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 23
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- string(%d) "capture_peer_cert_001"
002+ 
003+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
004+ 
005+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
006+ 
007+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
008+ NULL
```

### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ bool(false)
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
     bool(false)
007- resource(%d) of type (stream)
```

### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but FAILED in experiment

```patch
     bool(false)
     bool(false)
     resource(%d) of type (stream)
004+ 
004- resource(%d) of type (stream)
005+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
006+ 
007+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 28
008+ bool(false)
```

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
--
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ 
005+ Fatal error: Uncaught TypeError: stream_get_meta_data(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:14
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(14): stream_get_meta_data(false)
008+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
009+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/session_meta_capture.php(56): ServerClientTestCase->run('    $serverUri ...', Array)
010+ #3 {main}
011+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(7) "TLSv1.3"
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
004+ 
005+ Fatal error: Uncaught TypeError: stream_get_meta_data(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): stream_get_meta_data(false)
008+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
009+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/session_meta_capture_tlsv13.php(44): ServerClientTestCase->run('    $serverUri ...', Array)
010+ #3 {main}
011+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ 
018+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
019+ NULL
020+ 
021+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
022+ 
023+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ 
025+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
026+ 
027+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
028+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ 
018+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
019+ NULL
020+ 
021+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
022+ 
023+ Deprecated: openssl_x509_parse(): Passing null to parameter #1 ($certificate) of type OpenSSLCertificate|string is deprecated in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ 
025+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
026+ 
027+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
028+ NULL
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002+ 
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ bool(false)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
007+ 
008+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
009+ bool(false)
```

### ext/openssl/tests/stream_crypto_flags_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
004+ bool(false)
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
007+ 
008+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
009+ bool(false)
010+ 
011+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
012+ 
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
014+ bool(false)
015+ 
016+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
017+ 
018+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
019+ bool(false)
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004+ bool(false)
005+ bool(false)
006+ bool(false)
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
005+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
006+ 
007+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
013+ bool(false)
```

### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
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
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
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
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
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
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
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
001+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
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
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo for - failed: nodename nor servname provided, or not known
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

### sapi/phpdbg/tests/clean_001.phpt

Test FAILED in experiment because

```patch
002+ [Breakpoint #0 added at /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/sapi/phpdbg/tests/clean_001.php:4]
003+ [Breakpoint #1 added at foo]
     prompt> [Breakpoint #0 added at %s:4]
     prompt> [Breakpoint #1 added at foo]
004+ 1
002- prompt> [Breakpoint #0 added at %s:4]
003- prompt> [Breakpoint #1 added at foo]
004- prompt> 1
     [Breakpoint #0 at %s:4, hits: 1]
     >00004: echo 2;
      00005: echo 3;
      00006: foo();
009+ 23
009- prompt> 23
     [Breakpoint #1 in foo() at %s:9, hits: 1]
     >00009: 	echo 4;
      00010: }
      00011: 
014+ Do you really want to clean your current environment? (type y or n): Cleaning Execution Environment
014- prompt> Do you really want to clean your current environment? (type y or n): Cleaning Execution Environment
     Classes    %d
     Functions  %d
     Constants  %d
     Includes   0
019- prompt> [Not running]
020- prompt> 1
021- [Breakpoint #0 at %s:4, hits: 1]
022- >00004: echo 2;
023-  00005: echo 3;
024-  00006: foo();
025- prompt> 23
026- [Breakpoint #1 in foo() at %s:9, hits: 1]
027- >00009: 	echo 4;
028-  00010: }
029-  00011: 
030- prompt> 4
031- [Script ended normally]
032- prompt>
```

Test FAILED in both, but outputs is different.

```patch
015+ Classes    270
016+ Functions  2085
017+ Constants  2902
015- Classes    240
016- Functions  2076
017- Constants  2790
```

### sapi/phpdbg/tests/info_001.phpt

Test FAILED in experiment because

```patch
     [Successful compilation of %s]
002+ [User Classes (1)]
002- prompt> [User Classes (1)]
     User Class Foo\Bar (2)
     |---- in %s on line 4
005+ [User Functions (1)]
005- prompt> [User Functions (1)]
007+ [Breakpoint #0 added at foo]
     prompt> [Breakpoint #0 added at foo]
008+ string(4) "test"
007- prompt> [Breakpoint #0 added at foo]
008- prompt> string(4) "test"
     [Breakpoint #0 in foo() at %s:15, hits: 1]
     >00015: 		var_dump(strrev($baz));
      00016: 	}
      00017: 
013+ [Variables in foo() (1)]
013- prompt> [Variables in foo() (1)]
     Address            Refs    Type      Variable
     %s %d       string    $baz
     string (4) "test"
017+ [Superglobal variables (7)]
017- prompt> [Superglobal variables (7)]
     Address            Refs    Type      Variable
     %s 2       array     $_GET
     %s 2       array     $_POST
--
     %s 2       array     $_ENV
     %s 1       array     $_REQUEST
     %s 2       array     $_FILES
026+ ------------------------------------------------
026- prompt> ------------------------------------------------
     Function Breakpoints:
     #0		foo
029+ [User-defined constants (0)]
030+ [Included files: 0]
031+ [No error found!]
     prompt> [Included files: %d]%A
     prompt> [No error found!]
032+ [Literal Constants in foo() (2)]
029- prompt> [User-defined constants (0)]
030- prompt> [Included files: %d]%A
031- prompt> [No error found!]
032- prompt> [Literal Constants in foo() (2)]
     |-------- C0 -------> [var_dump]
     |-------- C1 -------> [strrev]
035+ string(4) "tset"
035- prompt> string(4) "tset"
     [Script ended normally]
037+ [No active op array!]
037- prompt> [No active op array!]
038- prompt>
```

Test FAILED in both, but outputs is different.

```patch
015+ 0x10f01a100        1       string    $baz
015- 0x10fe1a100        1       string    $baz
019+ 0x10f06be00        2       array     $_GET
020+ 0x10f06be20        2       array     $_POST
021+ 0x10f06be40        2       array     $_COOKIE
022+ 0x10f06be60        2       array     $_SERVER
023+ 0x10f06be80        2       array     $_ENV
024+ 0x10f06bea0        1       array     $_REQUEST
025+ 0x10f06bec0        2       array     $_FILES
019- 0x10fe6bcc0        2       array     $_GET
020- 0x10fe6bce0        2       array     $_POST
021- 0x10fe6bd00        2       array     $_COOKIE
022- 0x10fe6bd20        2       array     $_SERVER
023- 0x10fe6bd40        2       array     $_ENV
024- 0x10fe6bd60        1       array     $_REQUEST
025- 0x10fe6bd80        2       array     $_FILES
```

### sapi/phpdbg/tests/info_002.phpt

Test FAILED in experiment because

```patch
002+ [Breakpoint #0 added at /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/sapi/phpdbg/tests/info_002.php:10]
     prompt> [Breakpoint #0 added at %s:10]
003+ [Breakpoint #0 at /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/sapi/phpdbg/tests/info_002.php:10, hits: 1]
002- prompt> [Breakpoint #0 added at %s:10]
003- prompt> [Breakpoint #0 at %s:10, hits: 1]
     >00010: print B;
      00011: 
006+ [User-defined constants (2)]
006- prompt> [User-defined constants (2)]
     Address            Refs    Type      Constant
     %s 1       int       A
     int (10)
     %s 1       int       B
     int (100)
012- prompt>
```

Test FAILED in both, but outputs is different.

```patch
008+ 0x111407060        1       int       A
008- 0x112007060        1       int       A
010+ 0x111407078        1       int       B
010- 0x112007078        1       int       B
```

### sapi/phpdbg/tests/phpdbg_break_next.phpt

Test FAILED in experiment because

```patch
     [Successful compilation of %s]
002+ A
002- prompt> A
     [Breakpoint #0 added at %s]
     [Breakpoint #0 in %s at %s:5, hits: 1]
     >00005: echo 'B';
      00006: 
007+ B
007- prompt> B
     [Script ended normally]
009- prompt>
```

Test FAILED in both, but outputs is different.

```patch
003+ [Breakpoint #0 added at #4555442016]
004+ [Breakpoint #0 in #4555442016 at /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_0ab626426c6c72d4/sapi/phpdbg/tests/phpdbg_break_next.php:5, hits: 1]
003- [Breakpoint #0 added at #4473648992]
004- [Breakpoint #0 in #4473648992 at /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_0ab626426c6c72d4/sapi/phpdbg/tests/phpdbg_break_next.php:5, hits: 1]
```

### ext/standard/tests/file/bug36365.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- int(70002)
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo for www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo for %s failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/network/bug80067.php on line 3
001- bool(true)
002+ 
003+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/network/bug80067.php on line 3
004+ bool(false)
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/61c3fcf74a1f6.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/61c3fcf7acf18.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug53427.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       ["myindex"]=>
       resource(%d) of type (stream)
     }
007- array(2) {
008-   [1]=>
009-   resource(%d) of type (stream)
010-   ["myindex"]=>
011-   resource(%d) of type (stream)
007+ array(0) {
     }
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
     stream_socket_server(): socket path exceeded the maximum allowed length of %d bytes and was truncated
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
001+ Warning: opendir(ftps://127.0.0.1:61730/bogusdir): Failed to open directory: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/opendir-003.php on line 10
     bool(false)
003+ string(0) ""
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(ftps://127.0.0.1:61732/): Failed to open directory: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/opendir-004.php on line 10
002+ bool(false)
003+ 
004+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/opendir-004.php:12
005+ Stack trace:
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/opendir-004.php(12): readdir(false)
007+ #1 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/opendir-004.php on line 12
009+ string(0) ""
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

### ext/standard/tests/streams/stream_select_preserve_keys.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       ["myindex"]=>
       resource(%d) of type (stream)
     }
007- array(2) {
008-   [1]=>
009-   resource(%d) of type (stream)
010-   ["myindex"]=>
011-   resource(%d) of type (stream)
007+ array(0) {
     }
009+ 
010+ Fatal error: Uncaught TypeError: fread(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/stream_select_preserve_keys.php:10
011+ Stack trace:
012+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/stream_select_preserve_keys.php(10): fread(false, 1)
013+ #1 {main}
014+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_0ab626426c6c72d4/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
013- array(2) {
014-   [1]=>
015-   resource(%d) of type (stream)
016-   ["myindex"]=>
017-   resource(%d) of type (stream)
018- }
```
