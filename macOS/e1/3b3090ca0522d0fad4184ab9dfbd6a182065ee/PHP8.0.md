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
Darwin Mac-1625015593797.local 19.6.0 Darwin Kernel Version 19.6.0: Thu May  6 00:48:39 PDT 2021; root:xnu-6153.141.33~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15980 | 14301 | 16082 | 0.6342% | 0.7132% |

## Behavior changes

### ext/curl/tests/bug76675.phpt

Test FAILED in experiment beacuse

```patch
     (Received \d+)+
002+ Termsig=11
```

Test FAILED in both, but outputs is different.

```patch
001+ Received 15821
001- Received 4027Received 11794
```

### ext/curl/tests/bug77535.phpt

Test FAILED in experiment beacuse

```patch
     Start handle request.
002+ 
003+ Termsig=11
```

Test FAILED in both, but outputs is different.

```patch
001+ Start handle request.
002+ 
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/ftp/tests/002.php on line 8
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
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     äöü
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/connect.inc on line 84
004+ 
005+ Termsig=4
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
001+ Warning: mysqli_real_connect(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/connect.inc on line 84
004+ 
005+ Termsig=4
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

### ext/mysqli/tests/mysqli_fetch_array_large.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_array_many_rows.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_array_oo.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_assoc_bit.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_field_flags.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_field_types.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_object_no_constructor.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_object_no_object.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_field_seek.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_field_tell.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fork.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_client_stats.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_client_stats_implicit_free.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_connection_stats.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_multi_query.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_options_init_command.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_options_int_and_float_native.phpt

Test FAILED in experiment beacuse

```patch
001+ [005] [1146] Table 'test.test' doesn't exist
     done!
```

Test FAILED in both, but outputs is different.

```patch
002- [005] [1146] Table 'test.test' doesn't exist
003- [005] [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_pconn_kill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli object is already closed
003+ [012] New persistent connection cannot execute queries, [1146] Table 'test.test' doesn't exist
002- done!
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_free_result(): Argument #1 ($result) must be of type mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_pconn_kill.php:65
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_pconn_kill.php(65): mysqli_free_result(false)
008+ #1 {main}
009+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_pconn_kill.php on line 65
```

### ext/mysqli/tests/mysqli_pconn_max_links.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       ["cached_plinks"]=>
       int(0)
     }
048+ [013] Cannot run query on persistent connection of second DB user, [1146] Table 'test.test' doesn't exist
049+ 
050+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_pconn_max_links.php:119
051+ Stack trace:
052+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_pconn_max_links.php(119): mysqli_fetch_assoc(false)
053+ #1 {main}
054+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_pconn_max_links.php on line 119
048- array(2) {
049-   ["id"]=>
050-   string(1) "1"
051-   ["label"]=>
052-   string(1) "a"
053- }
054- [015] Can open more persistent connections than allowed, [0] 
055- array(3) {
056-   ["total"]=>
057-   int(3)
058-   ["active_plinks"]=>
059-   int(2)
060-   ["cached_plinks"]=>
061-   int(0)
062- }
063- done!
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
005+ Fetching from thread 1376...
005- Fetching from thread 1496...
```

### ext/mysqli/tests/mysqli_poll_mixing_insert_select.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [005] Expecting true got boolean/true
002+ 
003+ Fatal error: Uncaught TypeError: mysqli_fetch_row(): Argument #1 ($result) must be of type mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php:115
004+ Stack trace:
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php(115): mysqli_fetch_row(false)
006+ #1 {main}
007+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
001- [003] 'SELECT' caused 1064
002- [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1062
003- [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
004- array(2) {
005-   ["id"]=>
006-   string(3) "100"
007-   ["label"]=>
008-   string(1) "z"
009- }
010- [009] [2014] %s
011- done!
```

### ext/mysqli/tests/mysqli_prepare.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [004] [1146] Table 'test.test' doesn't exist, next test will fail
002+ 
001- bool(false)
002- done!
003+ Fatal error: Uncaught TypeError: mysqli_free_result(): Argument #1 ($result) must be of type mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_prepare.php:15
004+ Stack trace:
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_prepare.php(15): mysqli_free_result(false)
006+ #1 {main}
007+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_prepare.php on line 15
```

### ext/mysqli/tests/mysqli_query.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       string(1) "a"
     }
     string(1) "a"
011+ [011] [1146] Table 'test.test' doesn't exist
012+ 
013+ Fatal error: Uncaught TypeError: mysqli_free_result(): Argument #1 ($result) must be of type mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_query.php:73
011- mysqli_query(): Argument #3 ($result_mode) must be either MYSQLI_USE_RESULT or MYSQLI_STORE_RESULT%S
012- mysqli object is already closed
013- done!
014+ Stack trace:
015+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_query.php(73): mysqli_free_result(false)
016+ #1 {main}
017+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/mysqli/tests/mysqli_query.php on line 73
```

### ext/mysqli/tests/mysqli_query_stored_proc.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- array(2) {
002-   ["id"]=>
003-   string(1) "1"
004-   ["label"]=>
005-   string(1) "a"
006- }
007- array(2) {
008-   ["id"]=>
009-   string(1) "1"
010-   ["label"]=>
011-   string(1) "a"
012- }
013- array(2) {
014-   ["id"]=>
015-   string(1) "1"
016-   ["label"]=>
017-   string(1) "a"
018- }
019- array(2) {
020-   ["id"]=>
021-   string(1) "1"
022-   ["label"]=>
023-   string(1) "a"
024- }
025- array(1) {
026-   ["id"]=>
027-   string(1) "1"
028- }
029- done!
```

### ext/mysqli/tests/mysqli_real_connect_compression_error.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ array(1) {
002+   [0]=>
003+   array(3) {
004+     ["errno"]=>
005+     int(1146)
006+     ["sqlstate"]=>
007+     string(5) "42S02"
008+     ["error"]=>
009+     string(31) "Table 'test.test' doesn't exist"
010+   }
001- array(0) {
     }
012+ array(1) {
013+   [0]=>
014+   array(3) {
015+     ["errno"]=>
016+     int(1146)
017+     ["sqlstate"]=>
018+     string(5) "42S02"
019+     ["error"]=>
020+     string(31) "Table 'test.test' doesn't exist"
021+   }
003- array(0) {
     }
```

### ext/mysqli/tests/mysqli_real_query.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- array(1) {
002-   ["valid"]=>
003-   string(30) "this is sql but with semicolon"
004- }
005- mysqli object is already closed
006- done!
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:41:46 2021 (90598): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:41:46 2021 (90598): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:32:01 2021 (40347): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pdo_mysql/tests/bug66528.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug78152.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug79375.phpt

Test FAILED in experiment beacuse

```patch
--
     SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
     
     Running query on first connection
007- Got 1 for first connection
008- Running query on second connection
009- SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
     
008+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php:35
009+ Stack trace:
010+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php(35): PDO->prepare('SELECT first FR...')
011+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php(69): testPrepareExecute(Object(PDO), 'first connectio...')
011- Running query on first connection
012- Got 1 for first connection
013- Running query on second connection
014- SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
012+ #2 {main}
013+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php on line 35
```

Test FAILED in both, but outputs is different.

```patch
001+ Running query on first connection
002+ Got 1 for first connection
003+ Running query on second connection
004+ SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
005+ 
006+ Running query on first connection
007+ 
008+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php:35
001- Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php:15
010+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php(35): PDO->prepare('SELECT first FR...')
011+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php(69): testPrepareExecute(Object(PDO), 'first connectio...')
012+ #2 {main}
003- #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php(15): PDO->query('INSERT INTO tes...')
004- #1 {main}
005-   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php on line 15
013+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/bug79375.php on line 35
```

### ext/pdo_mysql/tests/bug80458.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_38546.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_41698.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_42499.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_44454.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_44707.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/change_column_count.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
--
     [005] PDO::__construct(): Argument #1 ($dsn) must be a valid data source name, [n/a] n/a
     [006] PDO::__construct(): Argument #1 ($dsn) must be a valid data source name, [n/a] n/a
     [007] could not find driver, [n/a] n/a
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
     [017] DSN=%s, SQLSTATE[%s] [%d] %s
     done!
```

Test FAILED in both, but outputs is different.

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
009+ [017] DSN=mysql:host=- ;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service
008- [015] DSN=mysql:host=localhostinvalid;port=3406;dbname=test;host=localhost, SQLSTATE[HY000] [2002] No such file or directory
009- [017] DSN=mysql:host=- ;port=3406;dbname=test;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=test, File=/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst (72 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=test'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_commit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
001- done!
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
004+ 
005+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_commit.php on line 33
006+ 
007+ Warning: PDO::query(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_commit.php on line 40
008+ 
009+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_commit.php:41
010+ Stack trace:
011+ #0 {main}
012+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_commit.php on line 41
```

### ext/pdo_mysql/tests/pdo_mysql_last_insert_id.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 40
002+ [008] Expecting '0'/string got ''0''/string
003+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'col1' in 'test' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 44
004+ 
005+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'col1' in 'field list' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 46
006+ [009] Expecting at least 102, got 0
007+ 
008+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'col1' in 'field list' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_last_insert_id.php on line 60
009+ [011] Expecting at least 1, got 0
010+ [014] SQLSTATE[42S22]: Column not found: 1054 Unknown column 'col1' in 'field list', [42S22} 42S22 1054 Unknown column 'col1' in 'field list'
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_rollback.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [002] ROLLBACK has failed
     int(1)
     int(0)
     int(1)
--
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 19
001- done!
002+ 
003+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:20
004+ Stack trace:
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 45, true, 'BLOB', 'bbbbbbbbbbbbbbb...')
006+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(136): pdo_mysql_stmt_bindparam_types(Object(PDO), 45, 'BLOB', 'bbbbbbbbbbbbbbb...')
007+ #2 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 20
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 19
001- Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 31
003+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:20
003- Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:33
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 45, true, 'BLOB', 'bbbbbbbbbbbbbbb...')
006+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(136): pdo_mysql_stmt_bindparam_types(Object(PDO), 45, 'BLOB', 'bbbbbbbbbbbbbbb...')
005- #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 33, true, 'NUMERIC ZEROFIL...', '000000001000')
006- #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(124): pdo_mysql_stmt_bindparam_types(Object(PDO), 33, 'NUMERIC ZEROFIL...', '000000001000')
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 20
008-   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 33
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     Binding value and not variable...
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
025+ 
     in = 0 -> id = 1 (integer) / label = 'a' (string)
026+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 205
025- in = 0 -> id = 1 (integer) / label = 'a' (string)
026- in = 0 -> id = 2 (integer) / label = 'b' (string)
028+ 
     in = 0 -> id = 1 (integer) / label = 'a' (string)
029+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 234
028- in = 0 -> id = 1 (integer) / label = 'a' (string)
029- in = 0 -> id = 2 (integer) / label = 'b' (string)
031+ 
     in = 2 -> id = 1 (integer) / label = 'a' (string)
032+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.php on line 264
031- in = 2 -> id = 1 (integer) / label = 'a' (string)
032- in = 2 -> id = 2 (integer) / label = 'b' (string)
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 22
001- done!
002+ 
003+ Fatal error: Uncaught Error: Call to a member function bindValue() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php:23
004+ Stack trace:
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php(77): test_blob(Object(PDO), 6, 'BLOB', 32767)
006+ #1 {main}
007+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.php on line 23
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     Unbuffered...
     
     Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
021+ 
022+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 39
023+ Expecting array(id => 1, label => z) got false
021- in = 0 -> id = 1 (integer) / label = 'a' (string)
022- in = 0 -> id = 2 (integer) / label = 'b' (string)
023- done!
024+ 
025+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 46
026+ 
027+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 48
028+ 
029+ Fatal error: Uncaught Error: Call to a member function closeCursor() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php:49
030+ Stack trace:
031+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php(128): pdo_mysql_stmt_closecursor(Object(PDO))
032+ #1 {main}
033+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 49
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     myclass::__construct(Creating object)
     myclass::serialize()
     
006- Unserializing the previously serialized object...
007- myclass::unserialize('Data from serialize')
008- object(myclass)#4 (1) {
009-   ["myprotected":protected]=>
010-   string(20) "a protected property"
011- }
006+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.php on line 79
     
008+ Fatal error: Uncaught Error: Call to a member function bindValue() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.php:80
009+ Stack trace:
010+ #0 {main}
011+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.php on line 80
013- Using PDO::FETCH_CLASS|PDO::FETCH_SERIALIZE to fetch the object from DB and unserialize it...
014- myclass::unserialize('C:7:"myclass":19:{Data from serialize}')
015- object(myclass)#%d (1) {
016-   ["myprotected":protected]=>
017-   string(20) "a protected property"
018- }
019- 
020- Using PDO::FETCH_CLASS to fetch the object from DB and unserialize it...
021- myclass::__set(myobj, 'C:7:"myclass":19:{Data from serialize}')
022- myclass::__construct(PDO shall call __construct())
023- object(myclass)#%d (2) {
024-   ["myprotected":protected]=>
025-   string(20) "a protected property"
026-   ["myobj"]=>
027-   string(38) "C:7:"myclass":19:{Data from serialize}"
028- }
029- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetchobject.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
002+ 
003+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_fetchobject.php on line 42
004+ array(0) {
005+ }
006+ PDOStatement::fetchObject(): Argument #1 ($class) must be a valid class name, class_does_not_exist given
007+ done!
001- myclass::__set(id, -'1'-) 1
002- myclass::__set(, -''-) 2
003- myclass::__set(null, -NULL-) 3
004- myclass::__set(, -''-) 4
005- myclass::__construct(0, 1): 4 / 4
006- myclass::__set(id, -'2'-) 1
007- myclass::__set(, -''-) 2
008- myclass::__set(null, -NULL-) 3
009- myclass::__set(, -''-) 4
010- myclass::__construct(1, 2): 8 / 4
011- myclass::__set(id, -'3'-) 1
012- myclass::__set(, -''-) 2
013- myclass::__set(null, -NULL-) 3
014- myclass::__set(, -''-) 4
015- myclass::__construct(2, 3): 12 / 4
016- object(myclass)#%d (4) {
017-   ["set_calls":"myclass":private]=>
018-   int(4)
019-   ["grp":protected]=>
020-   NULL
021-   ["id"]=>
022-   string(1) "3"
023-   ["null"]=>
024-   NULL
025- }
026- PDOStatement::fetchObject(): Argument #1 ($class) must be a valid class name, class_does_not_exist given
027- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test PASSED in control but FAILED in experiment

```patch
     PDOStatement::getColumnMeta(): Argument #1 ($column) must be greater than or equal to 0
     Testing native PS...
003+ 
003- done!
004+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 61
005+ 
006+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:62
007+ Stack trace:
008+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php(127): test_meta(Object(PDO), 20, 'BIT(8)', 1, 'BIT', 1)
009+ #1 {main}
010+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 62
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
     array(3) {
       [0]=>
       string(5) "00000"
--
       [2]=>
       NULL
     }
010- array(1) {
011-   [0]=>
012-   array(1) {
013-     ["label"]=>
014-     string(1) "a"
015-   }
012+ array(0) {
     }
     array(3) {
       [0]=>
--
       NULL
       [2]=>
       NULL
022+ array(0) {
023+ }
     array(1) {
       [0]=>
       array(1) {
         ["label"]=>
028+     string(3) "권"
029-     string(1) "a"
       }
     }
031+ Native Prepared Statements...
032+ 
       array(1) {
         ["label"]=>
         string(1) "a"
       }
     }
033+ Warning: PDO::query(): SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELECT label FROM test ORDER BY id ASC LIMIT 1' at line 1 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.php on line 6
032- array(1) {
033-   [0]=>
034-   array(1) {
035-     ["label"]=>
036-     string(1) "a"
037-   }
038- }
039- Native Prepared Statements...
     
041- Warning: PDO::query(): SQLSTATE[42000]: Syntax error or access violation: 1064 You have an error in your SQL syntax; check the manual that corresponds to your %s server version for the right syntax to use near '%SSELECT label FROM test ORDER BY id ASC LIMIT 1' at line %d in %s on line %d
042- 
     Fatal error: Uncaught Error: Call to a member function errorInfo() on bool in %s:%d
     Stack trace:
     #0 %s(%d): mysql_stmt_multiquery_wrong_usage(Object(PDO))
--
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_nextrowset.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 40
     Emulated PS...
     array(1) {
       [0]=>
--
```

### ext/pdo_mysql/tests/pdo_mysql_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types.php:14
001- done!
002+ Stack trace:
003+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types.php(104): test_type(Object(PDO), 120, 'BIGINT', 1, 1)
005+ #2 {main}
006+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types.php on line 14
```

Test FAILED in both, but outputs is different.

```patch
004+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types.php(104): test_type(Object(PDO), 120, 'BIGINT', 1, 1)
004- #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types.php(95): test_type(Object(PDO), 90, 'MEDIUMINT UNSIG...', 16777215, 16777215)
```

### ext/pdo_mysql/tests/pdo_mysql_types_zerofill.phpt

Test FAILED in experiment beacuse

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php:14
001- done!
002+ Stack trace:
003+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(103): test_type(Object(PDO), 200, 'DECIMAL ZEROFIL...', 1.01, NULL, '/^[0]*1$/')
005+ #2 {main}
006+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php on line 14
```

Test FAILED in both, but outputs is different.

```patch
004+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(103): test_type(Object(PDO), 200, 'DECIMAL ZEROFIL...', 1.01, NULL, '/^[0]*1$/')
004- #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_eb29f28ad84a6977/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(106): test_type(Object(PDO), 220, 'NUMERIC ZEROFIL...', -1, NULL, '/^[0]*0$/')
```

### ext/pdo_mysql/tests/pecl_bug_5200.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pecl_bug_5780.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
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
004+ Termsig=11
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
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(7) {
       [0]=>
--
     
     "
     -- Test: fail after 2 redirections --
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
050+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection --
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
065+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     
     "
     -- Test: fail at first redirection (2) --
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
076+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: Redirection limit reached, aborting in %s
     bool(false)
     string(%d) "GET /foo/bar HTTP/1.1
--
     Connection: close
     
     "
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(4) {
       [0]=>
--
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(2) "rb"
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Type='text/plain'
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Size=5
     World
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Content-Type: text/plain
     
     ohai"
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(%d) "POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: teste@teste.pt
     Host: %s:%d
     Connection: close
     
     "
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(%d) "GET / HTTP/1.1
     From: junk@junk.com
     Host: %s:%d
--
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
007+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
012+ 
     Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
      in %s on line %d
     leak? penultimate iteration: %d, last one: %d
--
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     First:1
     Second:2
     Third:
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     Connection: close
     First:1
     Second:2
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: close
     
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.0
     Host: %s:%d
     Connection: keep-alive
     
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
     
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: keep-alive
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
     GET /foo HTTP/1.1
     Host: %s:%d
     Connection: close
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     POST / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:63447): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
     bool(false)
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     Hello
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(0) ""
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     DONE
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     bool(true)
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Connection: close
     RandomHeader: localhost:8080
--
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     GET / HTTP/1.1
     Host: %s:%d
     Connection: close
--
```

### ext/standard/tests/http/bug80256.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(4) "1234"
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     array(3) {
       [0]=>
       string(32) "HTTP/1.1 101 Switching Protocols"
--
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(3) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
004+ 
005+ Warning: file_get_contents(http://[::1]:63493): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/http_response_header_03.php on line 12
001- Warning: file_get_contents(http://%s:%d): Failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
     bool(false)
     array(5) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     string(4) "Body"
     array(2) {
       [0]=>
--
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
019+ 
     Warning: fopen(http://%s:%d/foo/bar): Failed to open stream: HTTP request failed! HTTP/1.1 404 Not found
      in %s on line %d
     bool(false)
--
     Connection: close
     
     "
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Connection: close
     
     "
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
     Host: %s:%d
     Connection: close
     
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     resource(%d) of type (stream)
     array(2) {
       [0]=>
--
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/http/server.inc on line 66
     ALIVE
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/60dbcd70d1f62.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
     string(10) "ABCdef123
     "
003+ 
004+ Warning: unlink(/tmp/60dbcd710ea6a.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:51904/bug73457): Failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): Failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
     Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
006+ Warning: opendir(ftps://127.0.0.1:63726/bogusdir): Failed to open directory: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): Failed to open directory: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
     bool(false)
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): This stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
006+ Warning: opendir(ftps://127.0.0.1:57157/): Failed to open directory: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Fatal error: Uncaught TypeError: readdir(): Argument #1 ($dir_handle) must be of type resource or null, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-004.php:12
010+ Stack trace:
011+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-004.php(12): readdir(false)
012+ #1 {main}
013+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/opendir-004.php on line 12
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
010+ Fatal error: Uncaught TypeError: fread(): Argument #1 ($stream) must be of type resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/stream_select_preserve_keys.php:10
011+ Stack trace:
012+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/stream_select_preserve_keys.php(10): fread(false, 1)
013+ #1 {main}
014+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_eb29f28ad84a6977/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
013- array(2) {
014-   [1]=>
015-   resource(%d) of type (stream)
016-   ["myindex"]=>
017-   resource(%d) of type (stream)
018- }
```
