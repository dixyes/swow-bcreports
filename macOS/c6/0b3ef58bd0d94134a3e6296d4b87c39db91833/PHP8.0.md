# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.10 (cli) (built: Aug 26 2021 15:34:04) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.10, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.10, Copyright (c), by Zend Technologies
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
PHP 8.0.10 (cli) (built: Aug 26 2021 15:34:04) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.10, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.10, Copyright (c), by Zend Technologies
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
Darwin Mac-1631684877871.local 19.6.0 Darwin Kernel Version 19.6.0: Tue Jun 22 19:49:55 PDT 2021; root:xnu-6153.141.35~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16064 | 14356 | 16147 | 0.5140% | 0.5782% |

## Behavior changes

### Zend/tests/require_parse_exception.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
     Unclosed '{' on line 2
     Unclosed '{' on line 3
     syntax error, unexpected end of file, expecting "(" on line 2
--
```

### tests/basic/025.phpt

Test PASSED in control but FAILED in experiment

```patch
     Warning: Unknown: POST Content-Length of 2050 bytes exceeds the limit of 1024 bytes in Unknown on line 0
003+ Warning: [Warning in main] Unknown: POST Content-Length of 2050 bytes exceeds the limit of 1024 bytes in Unknown on line 0
004+ 
     Warning: Cannot modify header information - headers already sent in Unknown on line 0
007+ Warning: [Warning in main] Cannot modify header information - headers already sent in Unknown on line 0
008+ 
     Warning: Undefined variable $HTTP_RAW_POST_DATA in %s on line %d
     array(0) {
     }
--
```

### tests/basic/rfc1867_garbled_mime_headers.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] File Upload Mime headers garbled in Unknown on line 0
     array(0) {
     }
     array(0) {
--
```

### tests/basic/rfc1867_invalid_boundary.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Invalid boundary in multipart/form-data POST data in Unknown on line 0
     array(0) {
     }
     array(0) {
--
```

### tests/basic/rfc1867_missing_boundary.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Missing boundary in multipart/form-data POST data in Unknown on line 0
     array(0) {
     }
     array(0) {
--
```

### tests/basic/rfc1867_post_max_size.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] POST Content-Length of 168 bytes exceeds the limit of 1 bytes in Unknown on line 0
     array(0) {
     }
     array(0) {
--
```

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/curl/tests/bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/curl/tests/bug78775.php:19
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/curl/tests/bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/curl/tests/bug78775.php on line 19
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ SSLv23 handshake failed.
002+ 
003+ Warning: ftp_login(): SSL read failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/ftp/tests/002.php on line 8
004+ bool(false)
005+ 
006+ Warning: ftp_raw(): SSL read failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/ftp/tests/002.php on line 9
       [2]=>
       string(5) " HELP"
       [3]=>
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
     }
009+ 
010+ Warning: ftp_raw(): SSL write failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/ftp/tests/002.php on line 10
011+ NULL
012+ 
       [0]=>
       string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
013+ Warning: ftp_close(): SSL write failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/ftp/tests/002.php on line 12
012- array(1) {
013-   [0]=>
014-   string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
015- }
     bool(true)
015+ 
016+ Warning: Unknown: SSL_shutdown failed in Unknown on line 0
017+ 
018+ Warning: Unknown: SSL_shutdown failed in Unknown on line 0
```

### ext/libxml/tests/bug61367-read.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     Warning: DOMDocument::loadXML(): I/O warning : failed to load external entity "file:///%s/test_bug_61367-read/bad" in %s on line %d
008+ Warning: DOMDocument::loadXML(): I/O warning : failed to load external entity "file:////Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/test_bug_61367-read/bad" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-read.php on line 14
009+ 
     Warning: DOMDocument::loadXML(): Failure to process entity file in Entity, line: 4 in %s on line %d
012+ Warning: DOMDocument::loadXML(): Failure to process entity file in Entity, line: 4 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-read.php on line 14
013+ 
     Warning: DOMDocument::loadXML(): Entity 'file' not defined in Entity, line: 4 in %s on line %d
016+ Warning: DOMDocument::loadXML(): Entity 'file' not defined in Entity, line: 4 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-read.php on line 14
017+ 
     Warning: Attempt to read property "firstChild" on null in %s on line %d
020+ Warning: Attempt to read property "firstChild" on null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-read.php on line 19
021+ 
     Warning: Attempt to read property "nodeValue" on null in %s on line %d
023+ 
024+ Warning: Attempt to read property "nodeValue" on null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-read.php on line 19
```

### ext/libxml/tests/bug61367-write.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     Warning: DOMDocument::save(): open_basedir restriction in effect. File(%s) is not within the allowed path(s): (.) in %s on line %d
008+ Warning: DOMDocument::save(): open_basedir restriction in effect. File(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/test_bug_61367-write/bad) is not within the allowed path(s): (.) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-write.php on line 7
009+ 
011+ 
012+ Warning: DOMDocument::save(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/test_bug_61367-write/bad): Failed to open stream: Operation not permitted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/libxml/tests/bug61367-write.php on line 7
     bool(false)
```

### ext/mbstring/tests/bug63447_001.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Unknown: Input variables exceeded 5. To increase the limit change max_input_vars in php.ini. in Unknown on line 0
     array(0) {
     }
```

### ext/mbstring/tests/bug63447_002.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: [Warning in main] Unknown: Input variables exceeded 4. To increase the limit change max_input_vars in php.ini. in Unknown on line 0
     array(0) {
     }
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/mysqli/tests/connect.inc on line 84
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
001+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/mysqli/tests/connect.inc on line 84
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
--
     Warning: mysqli_reap_async_query(): RSET_HEADER %s
     
     Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
016+ [015] 2006/MySQL server has gone away
017+ [017] Expecting boolean/false got boolean/true
018+ [018] Expecting int/0 got integer/1
     Warning: mysqli_reap_async_query(): %s
     
     Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
019+ [020] Error: 2006/MySQL server has gone away
016- 
017- Warning: Error while sending QUERY packet. %s
018- 
019- Warning: mysqli_reap_async_query(): %s
020- 
021- Warning: mysqli_reap_async_query(): Error reading result set's header in %s on line %d
022- [018] Error: %d/%s
     done!
```

Test XFAILED in both, but outputs is different.

```patch
005+ Fetching from thread 906...
005- Fetching from thread 1510...
```

### ext/opcache/tests/bug64353.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
     OK
```

### ext/opcache/tests/bug65510.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
     ok
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Sep 15 06:16:58 2021 (2702): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Sep 15 06:16:58 2021 (2702): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Sep 15 06:07:32 2021 (46334): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
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
     Running bug48182
002+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
003+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ Stack trace:
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
006+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
007+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
008+ #3 {main}
009+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
010+ 
011+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
012+ 
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 9
014+ 
015+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
016+ Stack trace:
017+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
018+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
019+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
020+ #3 {main}
021+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:9
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(9): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
011+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- string(12) "Hello World!"
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+ Warning: file_get_contents(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
011+ 
012+ Warning: file_get_contents(https://127.0.0.1:64321/): Failed to open stream: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 8
013+ bool(false)
```

### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: remote cafile streams are disabled for security purposes in %s on line %d
002- 
003- Warning: file_get_contents(): Failed to enable crypto in %s on line %d
004- 
005- Warning: file_get_contents(%s): Failed to open stream: operation failed in %s on line %d
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:12
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(12): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
001- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.test.com.sg' in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
014+ 
015+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
016+ bool(false)
017+ 
018+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
     resource(%d) of type (stream)
019+ bool(false)
007- resource(%d) of type (stream)
008- resource(%d) of type (stream)
     
010- Warning: stream_socket_client(): Peer certificate CN=`*.test.com' did not match expected CN=`foo.bar.test.com' in %s on line %d
011- 
012- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
013- 
014- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
021+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
     bool(false)
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 30)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
013+ bool(false)
```

### ext/openssl/tests/bug68920.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
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

### ext/openssl/tests/bug69215.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:14
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(14): stream_socket_accept(false, 30)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 14
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
013+ bool(false)
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Warning: stream_socket_client(): peer_fingerprint match failure in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
     bool(false)
014+ 
007- resource(%d) of type (stream)
015+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
016+ bool(false)
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- resource(%d) of type (stream)
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
013+ bool(false)
003- Warning: stream_socket_client(): Unable to locate peer certificate CN in %s on line %d
     
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
--
```

### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
001- string(5) "TLSv1"
002- string(7) "TLSv1.1"
003- string(7) "TLSv1.2"
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
013+ 
014+ Fatal error: Uncaught TypeError: stream_get_meta_data(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:14
015+ Stack trace:
016+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(14): stream_get_meta_data(false)
017+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
018+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/session_meta_capture.php(56): ServerClientTestCase->run('    $serverUri ...', Array)
019+ #3 {main}
020+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 14
```

### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
001- string(7) "TLSv1.3"
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
013+ 
014+ Fatal error: Uncaught TypeError: stream_get_meta_data(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code:13
015+ Stack trace:
016+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code(13): stream_get_meta_data(false)
017+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130): eval()
018+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/session_meta_capture_tlsv13.php(44): ServerClientTestCase->run('    $serverUri ...', Array)
019+ #3 {main}
020+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
```

### ext/openssl/tests/sni_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 11
002+ 
003+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 12
001- string(%d) "cs.php.net"
002- string(%d) "uk.php.net"
003- string(%d) "us.php.net"
004+ 
005+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
006+ 
007+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ NULL
009+ 
010+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 18
011+ 
012+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
013+ 
014+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
015+ NULL
016+ 
017+ Warning: Undefined array key "peer_certificate" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 24
018+ 
019+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
020+ 
021+ Warning: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 25
022+ NULL
```

### ext/openssl/tests/stream_crypto_flags_001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_crypto_flags_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 8
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 1)
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
011+ 
012+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 13
013+ bool(false)
014+ 
015+ Warning: stream_socket_client(): Failed to enable crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
016+ 
017+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 16
018+ bool(false)
019+ 
020+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 19
021+ bool(false)
022+ 
023+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 22
024+ bool(false)
```

### ext/openssl/tests/stream_crypto_flags_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- resource(%d) of type (stream)
002- resource(%d) of type (stream)
003- resource(%d) of type (stream)
```

### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:12
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(12): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 12
009+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
012+ 
004- resource(%d) of type (stream)
013+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Socket connect failed, reason: Connection refused) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 26
014+ bool(false)
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
006- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64322 (Unknown error) in %s : eval()'d code on line %d
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
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- resource(%d) of type (stream)
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 1)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
001- Warning: stream_socket_client(): Peer certificate CN=`stream_verify_peer_name_003' did not match expected CN=`127.0.0.1' in %s on line %d
     
010+  ** ERROR: process timed out **
003- Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
004- 
005- Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
006- bool(false)
```

### ext/openssl/tests/streams_crypto_method.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to ssl://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
001- Hello World!
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 9
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:13
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(13): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 13
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
003- resource(%d) of type (stream)
     bool(false)
013+ 
014+  ** ERROR: process timed out **
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
012+ bool(false)
013+ 
014+  ** ERROR: process timed out **
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
```

### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tls://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
012+ bool(false)
013+ 
014+  ** ERROR: process timed out **
003- resource(%d) of type (stream)
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
006- resource(%d) of type (stream)
007- resource(%d) of type (stream)
```

### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+ Warning: stream_socket_client(): Unable to connect to tlsv1.0://127.0.0.1:64321 (Unknown error) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
     bool(false)
     bool(false)
013+ 
014+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.1://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 7
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:11
003+ Stack trace:
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(11): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.2://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ PHP Warning:  stream_socket_server(): Unable to connect to tlsv1.3://127.0.0.1:64321 (Address already in use) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 6
002+ PHP Fatal error:  Uncaught TypeError: stream_socket_accept(): Argument #1 ($socket) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code:10
003+ Stack trace:
001- resource(%d) of type (stream)
002- bool(false)
003- bool(false)
004+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code(10): stream_socket_accept(false, 3)
005+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119): eval()
006+ #2 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(163): ServerClientTestCase->runWorker()
007+ #3 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 10
009+ 
010+  ** ERROR: process timed out **
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

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
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
     done!
```

### ext/phar/tests/bug72321.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: PharData::extractTo(): %s in %sbug72321.php on line %d
     Extraction from phar "%s72321_2.zip" failed: Cannot extract "AAAAAAAAxxxxBBBBCCCCCCCCxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/b/c", could not create directory "test72321/AAAAAAAAxxxxBBBBCCCCCCCCxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx/b"
     DONE
```

### ext/session/tests/bug60634_error_3.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     #0 [internal function]: write(%s, '')
     #1 {main}
       thrown in %s on line %d
009+ Fatal error: Uncaught Error: Call to undefined function undefined_function() in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/session/tests/bug60634_error_3.php:20
010+ Stack trace:
011+ #0 [internal function]: write('8j2hgssuvdfh032...', '')
012+ #1 {main}
013+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/session/tests/bug60634_error_3.php on line 20
014+ 
     Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
016+ 
017+ Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
```

### ext/session/tests/bug60634_error_4.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     #0 [internal function]: write('%s', '')
     #1 {main}
       thrown in %s on line %d
009+ Fatal error: Uncaught Exception in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/session/tests/bug60634_error_4.php:20
010+ Stack trace:
011+ #0 [internal function]: write('i9bofv7qq4rlfja...', '')
012+ #1 {main}
013+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/session/tests/bug60634_error_4.php on line 20
014+ 
     Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
016+ 
017+ Warning: Unknown: Cannot call session save handler in a recursive manner in Unknown on line 0
```

### ext/session/tests/rfc1867_sid_invalid.phpt

Test PASSED in control but FAILED in experiment

```patch
     Warning: Unknown: Session ID is too long or contains illegal characters. Only the A-Z, a-z, 0-9, "-", and "," characters are allowed in Unknown on line 0
003+ Warning: [Warning in main] Unknown: Session ID is too long or contains illegal characters. Only the A-Z, a-z, 0-9, "-", and "," characters are allowed in Unknown on line 0
004+ 
     Warning: Unknown: Failed to read session data: files (path: ) in Unknown on line 0
007+ Warning: [Warning in main] Unknown: Failed to read session data: files (path: ) in Unknown on line 0
008+ 
     Warning: Unknown: Failed to write session data (files). Please verify that the current setting of session.save_path is correct () in Unknown on line 0
011+ Warning: [Warning in main] Unknown: Failed to write session data (files). Please verify that the current setting of session.save_path is correct () in Unknown on line 0
012+ 
     Warning: Unknown: Session ID is too long or contains illegal characters. Only the A-Z, a-z, 0-9, "-", and "," characters are allowed in Unknown on line 0
015+ Warning: [Warning in main] Unknown: Session ID is too long or contains illegal characters. Only the A-Z, a-z, 0-9, "-", and "," characters are allowed in Unknown on line 0
016+ 
     Warning: Unknown: Failed to read session data: files (path: ) in Unknown on line 0
019+ Warning: [Warning in main] Unknown: Failed to read session data: files (path: ) in Unknown on line 0
020+ 
022+ 
023+ Warning: [Warning in main] Unknown: Failed to write session data (files). Please verify that the current setting of session.save_path is correct () in Unknown on line 0
     string(%d) ""
     bool(true)
     array(2) {
--
```

### ext/session/tests/session_set_save_handler_iface_002.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     good handler writing
     
     Deprecated: Unknown: Session callback must have a return value of type bool, int returned in Unknown on line 0
007+ 
008+ Deprecated: Unknown: Session callback must have a return value of type bool, int returned in Unknown on line 0
```

### sapi/cgi/tests/bug69487.phpt

Test PASSED in control but FAILED in experiment

```patch
     Warning: Unknown: Unable to create temporary file, Check permissions in temporary files directory. in Unknown on line 0
003+ Warning: [Warning in main] Unknown: Unable to create temporary file, Check permissions in temporary files directory. in Unknown on line 0
004+ 
     Warning: Unknown: POST data can't be buffered; all data discarded in Unknown on line 0
007+ Warning: [Warning in main] Unknown: POST data can't be buffered; all data discarded in Unknown on line 0
008+ 
010+ 
011+ Warning: [Warning in main] Cannot modify header information - headers already sent in Unknown on line 0
     bool(false)
     int(0)
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
     Deprecated: Directive 'allow_url_include' is deprecated in Unknown on line 0
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
004+ 
     Warning: file_get_contents(): test1:// wrapper is disabled in the server configuration by allow_url_fopen=0 in %sinclude_userstream_003.php on line 86
     
     Warning: file_get_contents(test1://hello): Failed to open stream: no suitable wrapper could be found in %sinclude_userstream_003.php on line 86
--
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/network/bug80067.php on line 3
001- bool(true)
002+ bool(false)
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/61419271adedf.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/61419271e7bba.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:54624/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): Failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ ** ERROR: process timed out **
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
003- bool(false)
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
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
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
010+ Fatal error: Uncaught TypeError: fread(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/streams/stream_select_preserve_keys.php:10
011+ Stack trace:
012+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/streams/stream_select_preserve_keys.php(10): fread(false, 1)
013+ #1 {main}
014+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a62e6939d6b7ff7c/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
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
     Deprecated: Directive 'allow_url_include' is deprecated in Unknown on line 0
003+ Deprecated: [Deprecated in main] Directive 'allow_url_include' is deprecated in Unknown on line 0
004+ 
     Warning: highlight_file(%shighlight_file.dat): Failed to open stream: No such file or directory in %s on line %d
     
     Warning: highlight_file(): Failed opening '%shighlight_file.dat' for highlighting in %s on line %d
--
```
