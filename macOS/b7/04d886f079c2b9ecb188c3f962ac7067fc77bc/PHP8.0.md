# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.7 (cli) (built: Jun  4 2021 03:50:01) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies
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
PHP 8.0.7 (cli) (built: Jun  4 2021 03:50:01) ( NTS )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies
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
Darwin Mac-1623297218164.local 19.6.0 Darwin Kernel Version 19.6.0: Thu May  6 00:48:39 PDT 2021; root:xnu-6153.141.33~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16028 | 13805 | 16082 | 0.3358% | 0.3912% |

## Behavior changes

### ext/curl/tests/bug76675.phpt

Test FAILED in experiment beacuse

```patch
     (Received \d+)+
002+ Termsig=11
```

Test FAILED in both, but outputs is different.

```patch
001+ Received 11851Received 4533Received 4027Received 12357Received 16375Received 9Received 10483
001- Received 3921Received 11860Received 603Received 3244
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/ftp/tests/002.php on line 8
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     äöü
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Thu Jun 10 04:13:07 2021 (88099): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Jun 10 04:13:07 2021 (88099): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Jun 10 04:04:49 2021 (40420): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     int(1291)
     int(10)
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
002+ 
002- string(12) "test message"
003+ Termsig=11
```

### ext/sockets/tests/socket_export_stream-4.phpt

Test PASSED in control but FAILED in experiment

```patch
     normal
     stream_set_blocking 1
003+ socket_set_block
003- socket_set_block 1
004- socket_get_option 2
005- 
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

### ext/standard/tests/file/007_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     line of text
     li"
     
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/007_variation1.php on line 21
009- Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     bool(true)
     string(7) "Unknown"
--
```

### ext/standard/tests/file/007_variation17.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     line of text
     li"
     
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/007_variation17.php on line 21
009- Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     bool(true)
     string(7) "Unknown"
--
```

### ext/standard/tests/file/007_variation9.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     line of text
     li"
     
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/007_variation9.php on line 21
009- Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     bool(true)
     string(7) "Unknown"
--
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
     int(0)
     
003+ Notice: fwrite(): write of 4 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite.php on line 10
003- Notice: fwrite(): Write of 4 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     int(4)
--
```

### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     -- Opening file in r --
     int(0)
     
007+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
007- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
013+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
013- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
023+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
023- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
029+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
029- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
039+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
039- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
045+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
045- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
057+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
057- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
063+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
063- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
073+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
073- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
079+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
079- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
089+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
089- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
095+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
095- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
107+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
107- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
113+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
113- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
123+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
123- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
129+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
129- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
139+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
139- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
145+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
145- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
157+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
157- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
163+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
163- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
173+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
173- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
179+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
179- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
189+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 39
189- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
195+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/file/fwrite_variation1.php on line 46
195- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(7) {
       [0]=>
--
     
     "
     -- Test: fail after 2 redirections --
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
050+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection --
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
065+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection (2) --
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
076+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     Connection: close
     
     "
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(4) {
       [0]=>
--
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(2) "rb"
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Content-Type: text/plain
     
     ohai"
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: teste@teste.pt
     Host: %s:%d
     Connection: close
     
     "
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: junk@junk.com
     Host: %s:%d
--
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
007+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
012+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
     leak? penultimate iteration: %d, last one: %d
--
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     Third:
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: keep-alive
     
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: keep-alive
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     GET /foo HTTP/1.1
     Host: %s:%d
     Connection: close
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:58076): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
     bool(false)
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     Hello
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(0) ""
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     DONE
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     bool(true)
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Connection: close
     RandomHeader: localhost:8080
--
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug80256.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(4) "1234"
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     array(3) {
       [0]=>
       string(32) "HTTP/1.1 101 Switching Protocols"
--
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(3) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:58124): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/http_response_header_03.php on line 12
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
     bool(false)
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
019+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: HTTP request failed! HTTP/1.1 404 Not found
      in %s on line %d
     bool(false)
--
     Connection: close
     
     "
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/http/server.inc on line 66
     ALIVE
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/60c192f7a1d26.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/60c192f7d1f1a.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:59680/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): Failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/bug77680.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mkdir(): connect() failed: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug77680.php on line 7
002+ 
003+ Warning: mkdir(): Unable to connect to ftp://localhost:50705/one/two/three/ in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug77680.php on line 7
004+ 
005+  ** ERROR: process timed out **
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
```

### ext/standard/tests/streams/bug77765.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stat(): connect() failed: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug77765.php on line 7
002+ 
003+ Warning: stat(): stat failed for ftp://localhost:58809/www in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug77765.php on line 7
001- string(11) "SIZE /www
002- "
003- int(16877)
004+ 
005+ Warning: Trying to access array offset on value of type bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/bug77765.php on line 7
006+ NULL
007+ 
008+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-001.php on line 7
002+ 
     Warning: opendir(ftp://localhost:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
003+ Warning: opendir(ftp://localhost:53775/bogusdir): Failed to open directory: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-001.php on line 7
001- Warning: opendir(ftp://localhost:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
     bool(false)
005+ 
006+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): connect() failed: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-002.php on line 7
002+ 
003+ Warning: opendir(ftp://localhost:61417/): Failed to open directory: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-002.php on line 7
004+ bool(false)
005+ 
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-002.php:10
007+ Stack trace:
008+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-002.php(10): readdir(false)
009+ #1 {main}
010+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-002.php on line 10
011+ 
012+  ** ERROR: process timed out **
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
     Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
006+ Warning: opendir(ftps://127.0.0.1:52712/bogusdir): Failed to open directory: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ Warning: opendir(ftps://127.0.0.1:62829/): Failed to open directory: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-004.php:12
010+ Stack trace:
011+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-004.php(12): readdir(false)
012+ #1 {main}
013+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/opendir-004.php on line 12
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
010+ Fatal error: Uncaught TypeError: fread(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/stream_select_preserve_keys.php:10
011+ Stack trace:
012+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/stream_select_preserve_keys.php(10): fread(false, 1)
013+ #1 {main}
014+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_f549f96f59b64e82/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
013- array(2) {
014-   [1]=>
015-   resource(%d) of type (stream)
016-   ["myindex"]=>
017-   resource(%d) of type (stream)
018- }
```
