# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.23 (cli) (built: Aug 26 2021 00:15:18) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.23, Copyright (c), by Zend Technologies
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
PHP 7.4.23 (cli) (built: Aug 26 2021 00:15:18) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.23, Copyright (c), by Zend Technologies
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
Darwin Mac-1631680264521.local 19.6.0 Darwin Kernel Version 19.6.0: Tue Jun 22 19:49:55 PDT 2021; root:xnu-6153.141.35~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15653 | 13923 | 15749 | 0.6096% | 0.6895% |

## Behavior changes

### Zend/tests/bug54585.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
004+ 
```

### Zend/tests/bug67858.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
004+ 
```

### Zend/tests/php_errormsg_misoptimization.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
004+ 
```

### Zend/tests/require_parse_exception.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
```

### tests/basic/025.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: [Warning in main] Unknown: POST Content-Length of 2050 bytes exceeds the limit of 1024 bytes in Unknown on line 0
004+ 
007+ Warning: [Warning in main] Cannot modify header information - headers already sent in Unknown on line 0
008+ 
```

### tests/basic/027.phpt

Test PASSED in control but FAILED in experiment

```patch
017+ string(133) "[Warning in main] Unknown: Input variable nesting level exceeded 10. To increase the limit change max_input_nesting_level in php.ini."
017- string(115) "Unknown: Input variable nesting level exceeded 10. To increase the limit change max_input_nesting_level in php.ini."
```

### tests/basic/rfc1867_garbled_mime_headers.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] File Upload Mime headers garbled in Unknown on line 0
```

### tests/basic/rfc1867_invalid_boundary.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Invalid boundary in multipart/form-data POST data in Unknown on line 0
```

### tests/basic/rfc1867_missing_boundary.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Missing boundary in multipart/form-data POST data in Unknown on line 0
```

### tests/basic/rfc1867_post_max_size.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] POST Content-Length of 168 bytes exceeds the limit of 1 bytes in Unknown on line 0
```

### tests/run-test/test005.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
```

### tests/run-test/test008a.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
```

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/curl/tests/bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/curl/tests/bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ SSLv23 handshake failed.
002+ 
003+ Warning: ftp_login(): SSL read failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/ftp/tests/002.php on line 8
004+ bool(false)
005+ 
006+ Warning: ftp_raw(): SSL read failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/ftp/tests/002.php on line 9
007+ array(0) {
001- bool(true)
002- array(4) {
003-   [0]=>
004-   string(55) "214-There is help available for the following commands:"
005-   [1]=>
006-   string(5) " USER"
007-   [2]=>
008-   string(5) " HELP"
009-   [3]=>
010-   string(15) "214 end of list"
009+ 
010+ Warning: ftp_raw(): SSL write failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/ftp/tests/002.php on line 10
011+ NULL
012+ 
013+ Warning: ftp_close(): SSL write failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/ftp/tests/002.php on line 12
014+ 
015+ Warning: ftp_close(): SSL_shutdown failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/ftp/tests/002.php on line 12
012- array(1) {
013-   [0]=>
014-   string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
015- }
```

### ext/libxml/tests/bug61367-read.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: DOMDocument::loadXML(): I/O warning : failed to load external entity "file:////Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/test_bug_61367-read/bad" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/libxml/tests/bug61367-read.php on line 14
009+ 
012+ Warning: DOMDocument::loadXML(): Failure to process entity file in Entity, line: 4 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/libxml/tests/bug61367-read.php on line 14
013+ 
015+ 
016+ Warning: DOMDocument::loadXML(): Entity 'file' not defined in Entity, line: 4 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/libxml/tests/bug61367-read.php on line 14
```

### ext/libxml/tests/bug61367-write.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: DOMDocument::save(): open_basedir restriction in effect. File(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/test_bug_61367-write/bad) is not within the allowed path(s): (.) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/libxml/tests/bug61367-write.php on line 7
009+ 
011+ 
012+ Warning: DOMDocument::save(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/test_bug_61367-write/bad): failed to open stream: Operation not permitted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/libxml/tests/bug61367-write.php on line 7
```

### ext/mbstring/tests/bug52931.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] The mbstring.func_overload directive is deprecated in Unknown on line 0
```

### ext/mbstring/tests/bug63447_001.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Unknown: Input variables exceeded 5. To increase the limit change max_input_vars in php.ini. in Unknown on line 0
```

### ext/mbstring/tests/bug63447_002.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Unknown: Input variables exceeded 4. To increase the limit change max_input_vars in php.ini. in Unknown on line 0
```

### ext/mbstring/tests/mb_get_info.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] The mbstring.func_overload directive is deprecated in Unknown on line 0
```

### ext/mbstring/tests/overload01.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] The mbstring.func_overload directive is deprecated in Unknown on line 0
```

### ext/mbstring/tests/overload02.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] The mbstring.func_overload directive is deprecated in Unknown on line 0
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Termsig=4
001- array(2) {
002-   ["Variable_name"]=>
003-   string(10) "Ssl_cipher"
004-   ["Value"]=>
005-   string(%d) "%S"
006- }
007- array(2) {
008-   ["Variable_name"]=>
009-   string(10) "Ssl_cipher"
010-   ["Value"]=>
011-   string(%d) "%S"
012- }
013- done!
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Termsig=4
001- array(2) {
002-   [0]=>
003-   string(10) "Ssl_cipher"
004-   [1]=>
005-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
006- }
007- array(2) {
008-   [0]=>
009-   string(10) "Ssl_cipher"
010-   [1]=>
011-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
012- }
013- done
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

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
005+ Fetching from thread 908...
005- Fetching from thread 1481...
```

### ext/opcache/tests/bug64353.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
```

### ext/opcache/tests/bug65510.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
```

### ext/opcache/tests/bug68644.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] The mbstring.func_overload directive is deprecated in Unknown on line 0
```

### ext/opcache/tests/bug75729.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] The mbstring.func_overload directive is deprecated in Unknown on line 0
```

### ext/opcache/tests/bug75893.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
004+ 
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Sep 15 06:20:09 2021 (93287): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Sep 15 06:20:09 2021 (93287): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Sep 15 06:10:10 2021 (44003): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug46127.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Sending bug 46127
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003+ PHP Warning:  fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ PHP Warning:  fwrite() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
005+ 
006+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
007+ 
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
009+ 
010+ Warning: fwrite() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
011+ 
012+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ 
003+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(12) "Hello World!"
002+ 
003+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
004+ 
005+ Warning: file_get_contents(https://127.0.0.1:64321/): failed to open stream: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
006+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
002- 
003- Warning: file_get_contents(): Failed to enable crypto in %s on line %d
004- 
005- Warning: file_get_contents(%s): failed to open stream: operation failed in %s on line %d
```

### ext/openssl/tests/bug65538_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(12) "Hello World!"
```

### ext/openssl/tests/bug65729.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
003+  ** ERROR: process timed out **
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
007- resource(%d) of type (stream)
008- resource(%d) of type (stream)
009- 
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
015- bool(false)
```

### ext/openssl/tests/bug68265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

### ext/openssl/tests/bug68879.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
003+ 
004+  ** ERROR: process timed out **
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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

### ext/openssl/tests/bug69215.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Warning:  stream_socket_accept() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
003+ 
004+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
005+ 
006+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
007+ bool(false)
```

### ext/openssl/tests/bug72333.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- done
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Written 1048575 bytes
002- DONE
```

### ext/openssl/tests/bug76705.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
```

### ext/openssl/tests/bug77390.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(0) ""
002- string(12) "hello, world"
```

### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(%d) "capture_peer_cert_001"
```

### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
007+ 
007- resource(%d) of type (stream)
008+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
009+ bool(false)
```

### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- bool(false)
002- bool(false)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
```

### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
003+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
006+ bool(false)
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ 
003+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 15
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ 
005+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
006+ NULL
007+ 
008+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 20
009+ 
010+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 21
011+ NULL
012+ 
013+ Notice: Undefined index: session_meta in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
014+ 
015+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
016+ NULL
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- string(7) "TLSv1.3"
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002+ 
003+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
006+ 
007+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ NULL
018+ 
019+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
020+ 
021+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ 
023+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 20
002+ 
003+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
006+ 
007+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
010+ NULL
011+ 
012+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
013+ 
014+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ 
016+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
017+ NULL
018+ 
019+ Notice: Undefined index: peer_certificate in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
020+ 
021+ Notice: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ 
023+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
024+ NULL
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ 
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_crypto_flags_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ bool(false)
007+ bool(false)
008+ bool(false)
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: stream_socket_client(): SSL operation failed with code 1. OpenSSL Error messages:
002- error:1416F086:SSL routines:tls_process_server_certificate:certificate verify failed in %s : eval()'d code on line %d
003- 
004- Warning: stream_socket_client(): Failed to enable crypto in %s : eval()'d code on line %d
005- 
006- Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
007- bool(false)
```

### ext/openssl/tests/stream_server_reneg_limit.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/streams_crypto_method.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

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

### ext/session/tests/bug60634.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
006+ 
008+ 
009+ Warning: Unknown: Failed to write session data using user defined save handler. (session.save_path: ) in Unknown on line 0
```

### ext/session/tests/bug60634_error_3.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ 
011+ Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
```

### ext/session/tests/bug60634_error_4.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ 
011+ Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
```

### ext/session/tests/rfc1867_sid_invalid.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: [Warning in main] Unknown: The session id is too long or contains illegal characters, valid characters are a-z, A-Z, 0-9 and '-,' in Unknown on line 0
004+ 
007+ Warning: [Warning in main] Unknown: Failed to read session data: files (path: ) in Unknown on line 0
008+ 
011+ Warning: [Warning in main] Unknown: Failed to write session data (files). Please verify that the current setting of session.save_path is correct () in Unknown on line 0
012+ 
015+ Warning: [Warning in main] Unknown: The session id is too long or contains illegal characters, valid characters are a-z, A-Z, 0-9 and '-,' in Unknown on line 0
016+ 
019+ Warning: [Warning in main] Unknown: Failed to read session data: files (path: ) in Unknown on line 0
020+ 
022+ 
023+ Warning: [Warning in main] Unknown: Failed to write session data (files). Please verify that the current setting of session.save_path is correct () in Unknown on line 0
```

### sapi/cgi/tests/bug69487.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: [Warning in main] Unknown: Unable to create temporary file, Check permissions in temporary files directory. in Unknown on line 0
004+ 
007+ Warning: [Warning in main] Unknown: POST data can't be buffered; all data discarded in Unknown on line 0
008+ 
010+ 
011+ Warning: [Warning in main] Cannot modify header information - headers already sent in Unknown on line 0
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+  ** ERROR: process timed out **
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
```

### ext/soap/tests/bugs/bug44811.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- SOAP-ERROR: Parsing WSDL: Couldn't load from 'https://php.net' : %s
002- 
003- ok
```

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/file/include_userstream_003.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
004+ 
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/network/bug80067.php on line 3
001- bool(true)
002+ bool(false)
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/614192f8b9936.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/614192f8e7d35.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:56226/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
003- bool(false)
004- ==DONE==
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006- ==DONE==
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
010+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
011+ 
012+ Warning: stream_select(): No stream arrays were passed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_d779b68e926b6f01/ext/standard/tests/streams/stream_select_preserve_keys.php on line 11
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

### ext/standard/tests/strings/highlight_file.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
004+ 
```
