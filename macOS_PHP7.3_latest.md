# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.29 (cli) (built: Jun 29 2021 22:20:56) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.29, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.29, Copyright (c) 1999-2018, by Zend Technologies
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
wddx
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
PHP 7.3.29 (cli) (built: Jun 29 2021 22:20:56) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.29, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.29, Copyright (c) 1999-2018, by Zend Technologies
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
wddx
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
Darwin Mac-1625016348790.local 19.6.0 Darwin Kernel Version 19.6.0: Thu May  6 00:48:39 PDT 2021; root:xnu-6153.141.33~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16269 | 14467 | 16360 | 0.5562% | 0.6290% |

## Behavior changes

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### tests/basic/timeout_variation_4.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_5.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_9.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/lang/045.phpt

Test FAILED in experiment beacuse

```patch
001+ Failed!===DONE===
001- Fatal error: Maximum execution time of 1 second exceeded in %s on line %d
```

Test FAILED in both, but outputs is different.

```patch
003+ Fatal error: Maximum execution time of 1 second exceeded in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/tests/lang/045.php on line 8
003- Fatal error: Maximum execution time of 1 second exceeded in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/tests/lang/045.php on line 7
```

### ext/curl/tests/bug48203_multi.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ * Connected to localhost (::1) port 8964 (#0)
006+ > GET / HTTP/1.1
007+ Host: localhost:8964
008+ Accept: */*
005- Ok for CURLOPT_STDERR
010+ * Found bundle for host localhost: 0x7fa9ce0113d0 [serially]
011+ * Server doesn't support multiplex (yet)
012+ * Hostname localhost was found in DNS cache
013+ *   Trying ::1:8964...
014+ * Connected to localhost (::1) port 8964 (#1)
015+ > GET / HTTP/1.1
016+ Host: localhost:8964
017+ Accept: */*
018+ 
019+ * Closing connection 0
020+ * Closing connection 1
021+ Ok for CURLOPT_STDERR
022+ 
015- Hello World!
016- Hello World!Hello World!
017- Hello World!Ok for CURLOPT_FILE
031+ Ok for CURLOPT_FILE
```

### ext/curl/tests/bug76675.phpt

Test FAILED in experiment beacuse

```patch
002+ Termsig=11
```

Test FAILED in both, but outputs is different.

```patch
001+ Received 3939Received 6544
001- Received 3921Received 10674Received 1789Received 3244
```

### ext/curl/tests/bug77535.phpt

Test FAILED in experiment beacuse

```patch
002+ Termsig=11
```

Test FAILED in both, but outputs is different.

```patch
001+ Start handle request.
```

### ext/curl/tests/curl_basic_017.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- string(75) "Hello World!
003- Hello World!Hello World!
004- Hello World!Hello World!
005- Hello World!"
```

### ext/curl/tests/curl_basic_018.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(25) "Hello World!
002- string(75) "Hello World!
003- Hello World!Hello World!
004- Hello World!Hello World!
```

### ext/curl/tests/curl_multi_getcontent_basic3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ CURL2
001- array(2) {
002-   ["test"]=>
003-   string(7) "getpost"
004-   ["get_param"]=>
005-   string(11) "Hello World"
006- }
007- array(0) {
008- }
009- CURL2
```

### ext/curl/tests/curl_multi_info_read.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- bool(true)
002- bool(true)
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/ftp/tests/002.php on line 8
007+ bool(false)
008+ NULL
009+ NULL
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

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/connect.inc on line 113
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

Test FAILED in experiment beacuse

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/connect.inc on line 113
004+ 
005+ Termsig=4
001- array(2) {
002-   [0]=>
003-   string(10) "Ssl_cipher"
004-   [1]=>
005-   string(7) "RC4-MD5"
006- }
007- array(2) {
008-   [0]=>
009-   string(10) "Ssl_cipher"
010-   [1]=>
011-   string(7) "RC4-MD5"
012- }
013- done
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/connect.inc on line 113
002+ 
```

### ext/mysqli/tests/mysqli_fetch_array_large.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_array_many_rows.phpt

Test FAILED in experiment beacuse

```patch
001+ [1146] Table 'test.test' doesn't exist
001- done!
002+ [001] INSERT INTO test(id, label) VALUES (100, 'W') failed: [1146] Table 'test.test' doesn't exist
003+ [002] SELECT failed: [1146] 1146
004+ 
005+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 18
006+ 
007+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 22
008+ [003] SELECT failed: [1146] 1146
009+ 
010+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 30
011+ 
012+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 62
013+ [008] SELECT failed: [1146] 1146
014+ 
015+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 68
016+ 
017+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 72
018+ [009] SELECT failed: [1146] 1146
019+ 
020+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 77
021+ 
022+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 79
023+ [010] SELECT failed: [1146] 1146
024+ 
025+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 86
026+ 
027+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 91
028+ done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [001] INSERT INTO test(id, label) VALUES (100, 'W') failed: [1146] Table 'test.test' doesn't exist
001- [001] INSERT INTO test(id, label) VALUES (116, 'M') failed: [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_fetch_array_oo.phpt

Test FAILED in experiment beacuse

```patch
077+ [0441s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30 01:46:34')
078+ [0511s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021')
079+ [0691s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'b')
080+ [0771] [1146] Table 'test.test' doesn't exist
081+ [0841s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, ' a')
```

Test FAILED in both, but outputs is different.

```patch
001- [004] [1146] Table 'test.test' doesn't exist
002+ array(4) {
003+   [0]=>
004+   string(1) "1"
005+   ["id"]=>
006+   string(1) "1"
003- 
004- Fatal error: Uncaught Error: Call to a member function fetch_array() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_oo.php:17
005- Stack trace:
006- #0 {main}
007-   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_oo.php on line 17
007+   [1]=>
008+   string(1) "a"
009+   ["label"]=>
010+   string(1) "a"
011+ }
012+ [006]
013+ array(2) {
014+   [0]=>
015+   string(1) "2"
016+   [1]=>
017+   string(1) "b"
018+ }
019+ [007]
020+ array(4) {
021+   [0]=>
022+   string(1) "3"
023+   ["id"]=>
024+   string(1) "3"
025+   [1]=>
026+   string(1) "c"
027+   ["label"]=>
028+   string(1) "c"
029+ }
030+ [008]
031+ array(2) {
032+   ["id"]=>
033+   string(1) "4"
034+   ["label"]=>
035+   string(1) "d"
036+ }
037+ [009]
038+ array(4) {
039+   [0]=>
040+   string(1) "5"
041+   ["id"]=>
042+   string(1) "5"
043+   [1]=>
044+   string(1) "e"
045+   ["label"]=>
046+   string(1) "e"
047+ }
048+ [011]
049+ array(11) {
050+   [0]=>
051+   string(1) "1"
052+   ["a"]=>
053+   string(1) "2"
054+   [1]=>
055+   string(1) "2"
056+   [2]=>
057+   string(1) "3"
058+   ["c"]=>
059+   string(1) "3"
060+   [3]=>
061+   string(1) "4"
062+   ["C"]=>
063+   string(1) "4"
064+   [4]=>
065+   NULL
066+   ["d"]=>
067+   NULL
068+   [5]=>
069+   string(1) "1"
070+   ["e"]=>
071+   string(1) "1"
072+ }
073+ 
074+ Warning: mysqli_result::fetch_array(): The result type should be either MYSQLI_NUM, MYSQLI_ASSOC or MYSQLI_BOTH in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_oo.php on line 50
075+ 
076+ Warning: mysqli_result::fetch_array(): The result type should be either MYSQLI_NUM, MYSQLI_ASSOC or MYSQLI_BOTH in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_oo.php on line 55
077+ [0441s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30 01:46:34')
078+ [0511s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021')
079+ [0691s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'b')
080+ [0771] [1146] Table 'test.test' doesn't exist
081+ [0841s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, ' a')
082+ 
083+ Warning: mysqli_result::fetch_array(): Couldn't fetch mysqli_result in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_array_oo.php on line 265
084+ done!
```

### ext/mysqli/tests/mysqli_fetch_assoc_bit.phpt

Test FAILED in experiment beacuse

```patch
001+ [004 - 9] [1146] Table 'test.test' doesn't exist
001- done!
002+ 
003+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
004+ [005 - 9] [1146] Table 'test.test' doesn't exist
005+ NULL
006+ [006 - 9] Insert of 446 in BIT(9) column might have failed. id = , bin =  (110111110/110111110)
007+ [003 - 14] [1146] Table 'test.test' doesn't exist
008+ [004 - 14] [1054] Unknown column 'bit_value' in 'field list'
009+ 
010+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
011+ [005 - 14] [1054] Unknown column 'bit_value' in 'field list'
012+ [003 - 14] [1054] Unknown column 'bit_value' in 'field list'
013+ [004 - 14] [1054] Unknown column 'bit_value' in 'field list'
014+ 
015+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
016+ [005 - 14] [1054] Unknown column 'bit_value' in 'field list'
017+ NULL
018+ [006 - 14] Insert of 16383 in BIT(14) column might have failed. id = , bin =  (11111111111111/11111111111111)
019+ [004 - 19] [1146] Table 'test.test' doesn't exist
020+ 
021+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
022+ [005 - 19] [1146] Table 'test.test' doesn't exist
023+ NULL
024+ [006 - 19] Insert of 524287 in BIT(19) column might have failed. id = , bin =  (1111111111111111111/1111111111111111111)
025+ [004 - 24] [1146] Table 'test.test' doesn't exist
026+ 
027+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
028+ [005 - 24] [1146] Table 'test.test' doesn't exist
029+ [003 - 24] [1146] Table 'test.test' doesn't exist
030+ [004 - 24] [1146] Table 'test.test' doesn't exist
031+ 
032+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
033+ [005 - 24] [1146] Table 'test.test' doesn't exist
034+ NULL
035+ [006 - 24] Insert of 16777215 in BIT(24) column might have failed. id = , bin =  (111111111111111111111111/111111111111111111111111)
036+ [004 - 33] [1146] Table 'test.test' doesn't exist
037+ 
038+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
039+ [005 - 33] [1146] Table 'test.test' doesn't exist
040+ NULL
041+ [006 - 33] Insert of 623411490 in BIT(33) column might have failed. id = , bin =  (0000100101001010001000000100100010/100101001010001000000100100010)
042+ [003 - 43] [1146] Table 'test.test' doesn't exist
043+ [004 - 43] [1146] Table 'test.test' doesn't exist
044+ 
045+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
046+ [005 - 43] [1146] Table 'test.test' doesn't exist
047+ [003 - 43] [1146] Table 'test.test' doesn't exist
048+ [004 - 43] [1146] Table 'test.test' doesn't exist
049+ 
050+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fet
...
```

Test FAILED in both, but outputs is different.

```patch
001+ [004 - 9] [1146] Table 'test.test' doesn't exist
002+ 
003+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
004+ [005 - 9] [1146] Table 'test.test' doesn't exist
005+ NULL
006+ [006 - 9] Insert of 446 in BIT(9) column might have failed. id = , bin =  (110111110/110111110)
007+ [003 - 14] [1146] Table 'test.test' doesn't exist
008+ [004 - 14] [1054] Unknown column 'bit_value' in 'field list'
009+ 
010+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
011+ [005 - 14] [1054] Unknown column 'bit_value' in 'field list'
012+ [003 - 14] [1054] Unknown column 'bit_value' in 'field list'
013+ [004 - 14] [1054] Unknown column 'bit_value' in 'field list'
014+ 
015+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
016+ [005 - 14] [1054] Unknown column 'bit_value' in 'field list'
017+ NULL
018+ [006 - 14] Insert of 16383 in BIT(14) column might have failed. id = , bin =  (11111111111111/11111111111111)
019+ [004 - 19] [1146] Table 'test.test' doesn't exist
020+ 
021+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
022+ [005 - 19] [1146] Table 'test.test' doesn't exist
023+ NULL
024+ [006 - 19] Insert of 524287 in BIT(19) column might have failed. id = , bin =  (1111111111111111111/1111111111111111111)
025+ [004 - 24] [1146] Table 'test.test' doesn't exist
026+ 
027+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
028+ [005 - 24] [1146] Table 'test.test' doesn't exist
029+ [003 - 24] [1146] Table 'test.test' doesn't exist
030+ [004 - 24] [1146] Table 'test.test' doesn't exist
031+ 
032+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
033+ [005 - 24] [1146] Table 'test.test' doesn't exist
034+ NULL
035+ [006 - 24] Insert of 16777215 in BIT(24) column might have failed. id = , bin =  (111111111111111111111111/111111111111111111111111)
036+ [004 - 33] [1146] Table 'test.test' doesn't exist
037+ 
038+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
039+ [005 - 33] [1146] Table 'test.test' doesn't exist
040+ NULL
041+ [006 - 33] Insert of 623411490 in BIT(33) column might have failed. id = , bin =  (0000100101001010001000000100100010/100101001010001000000100100010)
042+ [003 - 43] [1146] Table 'test.test' doesn't exist
043+ [004 - 43] [1146] Table 'test.test' doesn't exist
044+ 
045+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
046+ [005 - 43] [1146] Table 'test.test' doesn't exist
047+ [003 - 43] [1146] Table 'test.test' doesn't exist
048+ [004 - 43] [1146] Table 'test.test' doesn't exist
001- [004 - 4] [1146] Table 'test.test' doesn't exist
004- [005 - 4] [1146] Table 'test.test' doesn't exist
005- [003 - 4] [1146] Table 'test.test' doesn't exist
006- [004 - 4] [1146] Table 'test.test' doesn't exist
007- 
008- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
009- [005 - 4] [1146] Table 'test.test' doesn't exist
051+ [005 - 43] [1146] Table 'test.test' doesn't exist
053+ [006 - 43] Insert of 8796093022207 in BIT(43) column might have failed. id = , bin =  (01111111111111111111111111111111111111111111/1111111111111111111111111111111111111111111)
054+ done!
011- [006 - 4] Insert of 9 in BIT(4) column might have failed. id = , bin =  (1001/1001)
012- [004 - 8] [1146] Table 'test.test' doesn't exist
013- 
014- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
015- [005 - 8] [1146] Table 'test.test' doesn't exist
016- [003 - 8] [1146] Table 'test.test' doesn't exist
017- [004 - 8] [1146] Table 'test.test' doesn't exist
018- 
019- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
020- [005 - 8] [1146] Table 'test.test' doesn't exist
021- NULL
022- [006 - 8] Insert of 78 in BIT(8) column might have failed. id = , bin =  (1001110/1001110)
023- [004 - 10] [1146] Table 'test.test' doesn't exist
024- 
025- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
026- [005 - 10] [1146] Table 'test.test' doesn't exist
027- NULL
028- [006 - 10] Insert of 7 in BIT(10) column might have failed. id = , bin =  (111/111)
029- [004 - 17] [1146] Table 'test.test' doesn't exist
030- 
031- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
032- [005 - 17] [1146] Table 'test.test' doesn't exist
033- NULL
034- [006 - 17] Insert of 77939 in BIT(17) column might have failed. id = , bin =  (10011000001110011/10011000001110011)
035- [003 - 24] [1146] Table 'test.test' doesn't exist
036- [004 - 24] [1146] Table 'test.test' doesn't exist
037- 
038- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
039- [005 - 24] [1146] Table 'test.test' doesn't exist
040- [003 - 24] [1146] Table 'test.test' doesn't exist
041- [004 - 24] [1146] Table 'test.test' doesn't exist
042- 
043- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
044- [005 - 24] [1146] Table 'test.test' doesn't exist
045- NULL
046- [006 - 24] Insert of 16777215 in BIT(24) column might have failed. id = , bin =  (111111111111111111111111/111111111111111111111111)
047- [003 - 28] [1146] Table 'test.test' doesn't exist
048- [004 - 28] [1146] Table 'test.test' doesn't exist
049- 
050- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
051- [005 - 28] [1146] Table 'test.test' doesn't exist
052- [003 - 28] [1146] Table 'test.test' doesn't exist
053- [004 - 28] [1146] Table 'test.test' doesn't exist
054- 
055- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
056- [005 - 28] [1146] Table 'test.test' doesn't exist
057- NULL
058- [006 - 28] Insert of 268435455 in BIT(28) column might have failed. id = , bin =  (1111111111111111111111111111/1111111111111111111111111111)
059- [004 - 31] [1146] Table 'test.test' doesn't exist
060- 
061- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
062- [005 - 31] [1146] Table 'test.test' doesn't exist
063- NULL
064- [006 - 31] Insert of 205473084 in BIT(31) column might have failed. id = , bin =  (1100001111110100010100111100/1100001111110100010100111100)
065- [004 - 37] [1146] Table 'test.test' doesn't exist
066- 
067- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
068- [005 - 37] [1146] Table 'test.test' doesn't exist
069- NULL
070- [006 - 37] Insert of 137438953471 in BIT(37) column might have failed. id = , bin =  (01111111111111111111111111111111111111/1111111111111111111111111111111111111)
071- [003 - 41] [1146] Table 'test.test' doesn't exist
072- [004 - 41] [1054] Unknown column 'bit_value' in 'field list'
073- 
074- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
075- [005 - 41] [1054] Unknown column 'bit_value' in 'field list'
076- [003 - 41] [1054] Unknown column 'bit_value' in 'field list'
077- [004 - 41] [1054] Unknown column 'bit_value' in 'field list'
078- 
079- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
080- [005 - 41] [1054] Unknown column 'bit_value' in 'field list'
081- NULL
082- [006 - 41] Insert of 2199023255551 in BIT(41) column might have failed. id = , bin =  (011111111111111111111111111111111111111111/11111111111111111111111111111111111111111)
083- [003 - 44] [1146] Table 'test.test' doesn't exist
084- [004 - 44] [1146] Table 'test.test' doesn't exist
085- 
086- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
087- [005 - 44] [1146] Table 'test.test' doesn't exist
088- NULL
089- [006 - 44] Insert of 3988309936308 in BIT(44) column might have failed. id = , bin =  (000111010000010011001110011000000100010110100/111010000010011001110011000000100010110100)
090- done!
```

### ext/mysqli/tests/mysqli_fetch_assoc_zerofill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_field_flags.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] Can't select from table, INT UNSIGNED DEFAULT NULL [1146] Table 'test.test' doesn't exist
001- done!
002+ [006] Found unexpected flags 'NO_DEFAULT_VALUE ' for TIMESTAMP NOT NULL, found 'NO_DEFAULT_VALUE BINARY NOT_NULL ' with MySQL 80025'
003+ [007] The flags 'ON_UPDATE_NOW TIMESTAMP   ON_UPDATE_NOW' have not been reported for TIMESTAMP NOT NULL, found 'NO_DEFAULT_VALUE BINARY NOT_NULL '
004+ string(50) "CREATE TABLE test(id INT, col1 TIMESTAMP NOT NULL)"
005+ int(80025)
006+ ON_UPDATE_NOW TIMESTAMP   ON_UPDATE_NOW
```

Test FAILED in both, but outputs is different.

```patch
001+ [003] Can't select from table, INT UNSIGNED DEFAULT NULL [1146] Table 'test.test' doesn't exist
001- [003] Can't select from table, INT UNSIGNED NOT NULL [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_fetch_field_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [004] [1146] Table 'test.test' doesn't exist
003+ 
004+ Fatal error: Uncaught Error: Call to a member function fetch_field() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_field_oo.php:32
005+ Stack trace:
006+ #0 {main}
007+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_fetch_field_oo.php on line 32
001- object(stdClass)#%d (13) {
002-   ["name"]=>
003-   string(2) "ID"
004-   ["orgname"]=>
005-   string(2) "id"
006-   ["table"]=>
007-   string(4) "TEST"
008-   ["orgtable"]=>
009-   string(4) "test"
010-   ["def"]=>
011-   string(0) ""
012-   ["db"]=>
013-   string(%d) "%s"
014-   ["catalog"]=>
015-   string(%d) "%s"
016-   ["max_length"]=>
017-   int(1)
018-   ["length"]=>
019-   int(11)
020-   ["charsetnr"]=>
021-   int(63)
022-   ["flags"]=>
023-   int(49155)
024-   ["type"]=>
025-   int(3)
026-   ["decimals"]=>
027-   int(0)
028- }
029- object(stdClass)#%d (13) {
030-   ["name"]=>
031-   string(5) "label"
032-   ["orgname"]=>
033-   string(5) "label"
034-   ["table"]=>
035-   string(4) "TEST"
036-   ["orgtable"]=>
037-   string(4) "test"
038-   ["def"]=>
039-   string(0) ""
040-   ["db"]=>
041-   string(%d) "%s"
042-   ["catalog"]=>
043-   string(%d) "%s"
044-   ["max_length"]=>
045-   int(%d)
046-   ["length"]=>
047-   int(%d)
048-   ["charsetnr"]=>
049-   int(%d)
050-   ["flags"]=>
051-   int(0)
052-   ["type"]=>
053-   int(254)
054-   ["decimals"]=>
055-   int(0)
056- }
057- bool(false)
058- 
059- Warning: mysqli_result::fetch_field(): Couldn't fetch mysqli_result in %s on line %d
060- done!
```

### ext/mysqli/tests/mysqli_fetch_field_types.phpt

Test FAILED in experiment beacuse

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [003] 'TIMESTAMP' - 'CREATE TABLE test(id TIMESTAMP) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('2007-08-20 18:34:00')', [1146] Table 'test.test' doesn't exist
003+ [003] 'DATETIME' - 'CREATE TABLE test(id DATETIME) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('2007-08-20 18:42:01')', [1146] Table 'test.test' doesn't exist
004+ [003] 'DECIMAL' - 'CREATE TABLE test(id DECIMAL) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('1.1')', [1146] Table 'test.test' doesn't exist
```

Test FAILED in both, but outputs is different.

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [003] 'TIMESTAMP' - 'CREATE TABLE test(id TIMESTAMP) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('2007-08-20 18:34:00')', [1146] Table 'test.test' doesn't exist
002- [003] 'YEAR' - 'CREATE TABLE test(id YEAR) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('2007')', [1146] Table 'test.test' doesn't exist
003- [004] BIT, [1146] Table 'test.test' doesn't exist
004+ [003] 'DECIMAL' - 'CREATE TABLE test(id DECIMAL) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('1.1')', [1146] Table 'test.test' doesn't exist
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

### ext/mysqli/tests/mysqli_get_proto_info.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_insert_packet_overflow.phpt

Test FAILED in experiment beacuse

```patch
001+ [013] max_allowed_packet = 67108864, strlen(query) = 16777214, [1146] Table 'test.test' doesn't exist
002+ [014] [1146] Table 'test.test' doesn't exist
003+ 
004+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_insert_packet_overflow.php on line 70
005+ [015] [1146] Table 'test.test' doesn't exist
```

Test FAILED in both, but outputs is different.

```patch
001- [012] [1050] Table 'test' already exists
```

### ext/mysqli/tests/mysqli_kill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_last_insert_id.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_mysqli_result_invalid_mode.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ 
```

### ext/mysqli/tests/mysqli_pconn_kill.phpt

Test FAILED in experiment beacuse

```patch
001+ [014] New regular connection cannot execute queries, [1146] Table 'test.test' doesn't exist
002+ 
003+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/mysqli/tests/mysqli_pconn_kill.php on line 73
```

Test FAILED in both, but outputs is different.

```patch
001- [012] New persistent connection cannot execute queries, [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

```patch
016+ [017] Expecting boolean/false got boolean/true
017+ [018] Expecting int/0 got integer/1
017- Warning: Error while sending QUERY packet. %s
018- 
022+ [020] Error: 2006/MySQL server has gone away
022- [018] Error: %d/%s
```

Test XFAILED in both, but outputs is different.

```patch
005+ Fetching from thread 1425...
005- Fetching from thread 1424...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:46:04 2021 (92158): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:46:04 2021 (92158): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:36:34 2021 (41017): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pcntl/tests/001.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug44327.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ 
012+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/bug44327.php on line 17
013+ 
014+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/bug44327.php on line 19
015+ bool(false)
016+ 
017+ Notice: Trying to get property 'queryString' of non-object in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/bug44327.php on line 22
018+ NULL
011- object(PDORow)#%d (2) {
012-   ["queryString"]=>
013-   string(19) "SELECT id FROM test"
014-   ["id"]=>
015-   string(1) "1"
016- }
017- string(19) "SELECT id FROM test"
```

### ext/pdo_mysql/tests/bug70862.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_41698.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_44454.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_pecl_12925.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
```

Test FAILED in both, but outputs is different.

```patch
007+ [009] SQLSTATE[HY000] [1045] Access denied for user 'dontcreatesuchauser'@'localhost' (using password: YES), [n/a] n/a
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
009+ [017] DSN=mysql:host=- ;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service
007- [009] SQLSTATE[HY000] [2054] The server requested authentication method unknown to the client, [n/a] n/a
008- [015] DSN=mysql:host=localhostinvalid;port=3406;dbname=test;host=localhost, SQLSTATE[HY000] [2002] No such file or directory
009- [017] DSN=mysql:host=- ;port=3406;dbname=test;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=test, File=/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst (72 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=test'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_non_select.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
001- done!
002+ Native PS (native support: no) and emulated PS returned different data for EXPLAIN: array (
003+   0 => 
004+   array (
005+     'id' => '1',
006+     'select_type' => 'SIMPLE',
007+     'table' => 'test',
008+     'partitions' => NULL,
009+     'type' => 'system',
010+     'possible_keys' => NULL,
011+     'key' => NULL,
012+     'key_len' => NULL,
013+     'ref' => NULL,
014+     'rows' => '1',
015+     'filtered' => '100.00',
016+     'extra' => NULL,
017+   ),
018+ ) vs. array (
019+   0 => 
020+   array (
021+     'id' => 1,
022+     'select_type' => 'SIMPLE',
023+     'table' => 'test',
024+     'partitions' => NULL,
025+     'type' => 'ALL',
026+     'possible_keys' => NULL,
027+     'key' => NULL,
028+     'key_len' => NULL,
029+     'ref' => NULL,
030+     'rows' => 2,
031+     'filtered' => 100.0,
032+     'extra' => NULL,
033+   ),
034+ )
035+ Native PS (native support: no) and emulated PS returned different data for EXPLAIN: array (
036+   0 => 
037+   array (
038+     'id' => '1',
039+     'select_type' => 'SIMPLE',
040+     'table' => 'test',
041+     'partitions' => NULL,
042+     'type' => 'system',
043+     'possible_keys' => NULL,
044+     'key' => NULL,
045+     'key_len' => NULL,
046+     'ref' => NULL,
047+     'rows' => '1',
048+     'filtered' => '100.00',
049+     'extra' => NULL,
050+   ),
051+ ) vs. array (
052+   0 => 
053+   array (
054+     'id' => 1,
055+     'select_type' => 'SIMPLE',
056+     'table' => 'test',
057+     'partitions' => NULL,
058+     'type' => 'ALL',
059+     'possible_keys' => NULL,
060+     'key' => NULL,
061+     'key_len' => NULL,
062+     'ref' => NULL,
063+     'rows' => 2,
064+     'filtered' => 100.0,
065+     'extra' => NULL,
066+   ),
067+ )
068+ done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.php on line 79
006- Unserializing the previously serialized object...
007- myclass::unserialize('Data from serialize')
008- object(myclass)#4 (1) {
009-   ["myprotected":protected]=>
010-   string(19) "a protected propery"
011- }
008+ Fatal error: Uncaught Error: Call to a member function bindValue() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.php:80
009+ Stack trace:
010+ #0 {main}
011+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_fetch_serialize.php on line 80
013- Using PDO::FETCH_CLASS|PDO::FETCH_SERIALIZE to fetch the object from DB and unserialize it...
014- myclass::unserialize('C:7:"myclass":19:{Data from serialize}')
015- object(myclass)#%d (1) {
016-   ["myprotected":protected]=>
017-   string(19) "a protected propery"
018- }
019- 
020- Using PDO::FETCH_CLASS to fetch the object from DB and unserialize it...
021- myclass::__set(myobj, 'C:7:"myclass":19:{Data from serialize}')
022- myclass::__construct(PDO shall call __construct())
023- object(myclass)#%d (2) {
024-   ["myprotected":protected]=>
025-   string(19) "a protected propery"
026-   ["myobj"]=>
027-   string(38) "C:7:"myclass":19:{Data from serialize}"
028- }
029- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test FAILED in experiment beacuse

```patch
002+ 
002- done!
003+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 69
004+ 
005+ Fatal error: Uncaught Error: Call to a member function execute() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php:70
006+ Stack trace:
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php(212): test_meta(Object(PDO), 620, 'ENUM('yes', 'no...', 'no', NULL, 2)
008+ #1 {main}
009+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php on line 70
```

Test FAILED in both, but outputs is different.

```patch
007+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php(212): test_meta(Object(PDO), 620, 'ENUM('yes', 'no...', 'no', NULL, 2)
007- #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.php(141): test_meta(Object(PDO), 70, 'SMALLINT UNSIGN...', 65535, 'SHORT', 1)
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_multiquery.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_rowcount.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_types.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types.php:14
001- done!
002+ Stack trace:
003+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types.php(109): test_type(Object(PDO), 150, 'REAL', -1.01, -1.01)
005+ #2 {main}
006+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types.php on line 14
```

### ext/pdo_mysql/tests/pdo_mysql_types_zerofill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php:14
001- done!
002+ Stack trace:
003+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php(92): test_type(Object(PDO), 120, 'REAL UNSIGNED Z...', 1.01, NULL, '/^[0]*1\\.01$/')
005+ #2 {main}
006+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/pdo_mysql/tests/pdo_mysql_types_zerofill.php on line 14
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
002- string(12) "test message"
003+ Termsig=11
```

### ext/sockets/tests/socket_export_stream-4.phpt

Test PASSED in control but FAILED in experiment

```patch
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
017- stream_set_blocking 
018- Warning: stream_set_blocking(): supplied resource is not a valid stream resource in %s on line %d
019- 
020- socket_set_block 
021- Warning: socket_set_block(): unable to set blocking mode [%d]: %s in %s on line %d
022- 
023- socket_get_option 
024- Warning: socket_get_option(): unable to retrieve socket option [%d]: %s in %s on line %d
025- 
026- 
027- 
028- close socket
029- stream_set_blocking 
030- Warning: stream_set_blocking(): supplied resource is not a valid stream resource in %s on line %d
031- 
032- socket_set_block 
033- Warning: socket_set_block(): supplied resource is not a valid Socket resource in %s on line %d
034- 
035- socket_get_option 
036- Warning: socket_get_option(): supplied resource is not a valid Socket resource in %s on line %d
037- 
038- 
039- Done.
```

### ext/sockets/tests/socket_getpeername_ipv4loop.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: socket_bind(): unable to bind address [48]: Address already in use in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/sockets/tests/socket_getpeername_ipv4loop.php on line 15
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+  ** ERROR: process timed out **
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
```

### sapi/cli/tests/cli_process_title_unix.phpt

Test FAILED in experiment beacuse

```patch
002+ 
003+ Warning: cli_set_process_title(): cli_set_process_title had an error: Not initialized correctly in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/sapi/cli/tests/cli_process_title_unix.php on line 7
004+ Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d extension=swow -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/sapi/cli/tests/cli_process_title_unix.php
002- Successfully set title
003- Successfully verified title using ps
004- Successfully verified title using get
005+ 
006+ Warning: cli_get_process_title(): cli_get_process_title had an error: Not initialized correctly in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/sapi/cli/tests/cli_process_title_unix.php on line 35
007+ Actually loaded from get:
```

Test FAILED in both, but outputs is different.

```patch
004+ Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d extension=swow -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/sapi/cli/tests/cli_process_title_unix.php
004- Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/sapi/cli/tests/cli_process_title_unix.php
```

### sapi/fpm/tests/log-bwd-multiple-msgs-stdout-stderr.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60dbce5516507.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60dbce554a231.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:60187/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/opendir-003.php on line 10
002+ 
003+ Warning: opendir(ftps://127.0.0.1:60385/bogusdir): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
006+ 
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/ftp/tests/server.inc on line 114
008+ SSLv23 handshake failed.
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:57048/): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/opendir-004.php on line 12
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
```

### ext/standard/tests/streams/stream_select_preserve_keys.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ array(0) {
008+ }
009+ 
010+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
011+ 
012+ Warning: stream_select(): No stream arrays were passed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_select_preserve_keys.php on line 11
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

### ext/standard/tests/streams/stream_socket_enable_crypto.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
003+ 
004+ Warning: stream_socket_enable_crypto(): When enabling encryption you must specify the crypto type in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 7
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
008+ bool(false)
009+ 
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
011+ bool(false)
012+ 
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
014+ bool(false)
015+ 
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
017+ bool(false)
018+ 
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
020+ bool(false)
021+ 
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
023+ bool(false)
024+ 
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
003- Warning: stream_socket_enable_crypto(): When enabling encryption you must specify the crypto type in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 7
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_4e2771215322e3cf/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
006-  ** ERROR: process timed out **
029+ bool(false)
```

### ext/standard/tests/streams/stream_socket_get_name.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/streams/stream_socket_recvfrom.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
