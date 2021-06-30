# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.21 (cli) (built: Jun 29 2021 22:39:45) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.21, Copyright (c), by Zend Technologies
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
PHP 7.4.21 (cli) (built: Jun 29 2021 22:39:45) ( NTS )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.21, Copyright (c), by Zend Technologies
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
Darwin Mac-1625015938145.local 19.6.0 Darwin Kernel Version 19.6.0: Thu May  6 00:48:39 PDT 2021; root:xnu-6153.141.33~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15629 | 13899 | 15722 | 0.5915% | 0.6691% |

## Behavior changes

### ext/curl/tests/bug76675.phpt

Test FAILED in experiment beacuse

```patch
002+ Termsig=11
```

Test FAILED in both, but outputs is different.

```patch
001+ Received 3979Received 10674Received 1168
001- Received 10483
```

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/ftp/tests/002.php on line 8
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

### ext/libxml/tests/bug51903.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 84
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
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 84
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 84
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

Test FAILED in experiment beacuse

```patch
001+ [001] INSERT INTO test(id, label) VALUES (2636, 'K') failed: [1146] Table 'test.test' doesn't exist
001- done!
002+ [002] SELECT failed: [1146] 1146
003+ 
004+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 18
005+ 
006+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 22
007+ [003] SELECT failed: [1146] 1146
008+ 
009+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 30
010+ 
011+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 62
012+ [008] SELECT failed: [1146] 1146
013+ 
014+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 68
015+ 
016+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 72
017+ [009] SELECT failed: [1146] 1146
018+ 
019+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 77
020+ 
021+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 78
022+ 
023+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 79
024+ [010] SELECT failed: [1146] 1146
025+ 
026+ Warning: mysqli_fetch_array() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 86
027+ 
028+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_array_many_rows.php on line 91
029+ done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [001] INSERT INTO test(id, label) VALUES (2636, 'K') failed: [1146] Table 'test.test' doesn't exist
001- [001] INSERT INTO test(id, label) VALUES (100, 'W') failed: [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_fetch_assoc_bit.phpt

Test FAILED in experiment beacuse

```patch
001+ [003 - 3] [1146] Table 'test.test' doesn't exist
001- done!
002+ [004 - 3] [1146] Table 'test.test' doesn't exist
003+ 
004+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
005+ [005 - 3] [1146] Table 'test.test' doesn't exist
006+ 
007+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
008+ NULL
009+ 
010+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
011+ 
012+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
013+ [006 - 3] Insert of 3 in BIT(3) column might have failed. id = , bin =  (11/11)
014+ [004 - 6] [1146] Table 'test.test' doesn't exist
015+ 
016+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
017+ [005 - 6] [1146] Table 'test.test' doesn't exist
018+ 
019+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
020+ NULL
021+ 
022+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
023+ 
024+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
025+ [006 - 6] Insert of 56 in BIT(6) column might have failed. id = , bin =  (111000/111000)
026+ [003 - 9] [1146] Table 'test.test' doesn't exist
027+ [004 - 9] [1146] Table 'test.test' doesn't exist
028+ 
029+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
030+ [005 - 9] [1146] Table 'test.test' doesn't exist
031+ 
032+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
033+ NULL
034+ 
035+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
036+ 
037+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
038+ [006 - 9] Insert of 426 in BIT(9) column might have failed. id = , bin =  (110101010/110101010)
039+ [004 - 12] [1146] Table 'test.test' doesn't exist
040+ 
041+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
042+ [005 - 12] [1146] Table 'test.test' doesn't exist
043+ 
044+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
045+ NULL
046+ 
047+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185ba
...
```

Test FAILED in both, but outputs is different.

```patch
001+ [003 - 3] [1146] Table 'test.test' doesn't exist
002+ [004 - 3] [1146] Table 'test.test' doesn't exist
001- [003 - 2] [1146] Table 'test.test' doesn't exist
002- [004 - 2] [1146] Table 'test.test' doesn't exist
005+ [005 - 3] [1146] Table 'test.test' doesn't exist
005- [005 - 2] [1146] Table 'test.test' doesn't exist
013+ [006 - 3] Insert of 3 in BIT(3) column might have failed. id = , bin =  (11/11)
014+ [004 - 6] [1146] Table 'test.test' doesn't exist
013- [006 - 2] Insert of 2 in BIT(2) column might have failed. id = , bin =  (10/10)
014- [004 - 12] [1146] Table 'test.test' doesn't exist
017+ [005 - 6] [1146] Table 'test.test' doesn't exist
017- [005 - 12] [1146] Table 'test.test' doesn't exist
025+ [006 - 6] Insert of 56 in BIT(6) column might have failed. id = , bin =  (111000/111000)
026+ [003 - 9] [1146] Table 'test.test' doesn't exist
027+ [004 - 9] [1146] Table 'test.test' doesn't exist
025- [006 - 12] Insert of 174 in BIT(12) column might have failed. id = , bin =  (10101110/10101110)
026- [003 - 16] [1146] Table 'test.test' doesn't exist
027- [004 - 16] [1146] Table 'test.test' doesn't exist
030+ [005 - 9] [1146] Table 'test.test' doesn't exist
030- [005 - 16] [1146] Table 'test.test' doesn't exist
038+ [006 - 9] Insert of 426 in BIT(9) column might have failed. id = , bin =  (110101010/110101010)
039+ [004 - 12] [1146] Table 'test.test' doesn't exist
038- [006 - 16] Insert of 55462 in BIT(16) column might have failed. id = , bin =  (1101100010100110/1101100010100110)
039- [003 - 21] [1146] Table 'test.test' doesn't exist
040- [004 - 21] [1146] Table 'test.test' doesn't exist
042+ [005 - 12] [1146] Table 'test.test' doesn't exist
043- [005 - 21] [1146] Table 'test.test' doesn't exist
045+ NULL
047+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
048+ 
049+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
050+ [006 - 12] Insert of 2027 in BIT(12) column might have failed. id = , bin =  (11111101011/11111101011)
051+ [004 - 15] [1146] Table 'test.test' doesn't exist
052+ 
053+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
054+ [005 - 15] [1146] Table 'test.test' doesn't exist
055+ 
060+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
061+ 
065+ [003 - 15] [1146] Table 'test.test' doesn't exist
066+ [004 - 15] [1146] Table 'test.test' doesn't exist
054- [003 - 21] [1146] Table 'test.test' doesn't exist
055- [004 - 21] [1146] Table 'test.test' doesn't exist
069+ [005 - 15] [1146] Table 'test.test' doesn't exist
058- [005 - 21] [1146] Table 'test.test' doesn't exist
077+ [006 - 15] Insert of 32767 in BIT(15) column might have failed. id = , bin =  (111111111111111/111111111111111)
078+ [004 - 18] [1146] Table 'test.test' doesn't exist
066- [006 - 21] Insert of 2097151 in BIT(21) column might have failed. id = , bin =  (111111111111111111111/111111111111111111111)
067- [003 - 23] [1146] Table 'test.test' doesn't exist
068- [004 - 23] [1146] Table 'test.test' doesn't exist
081+ [005 - 18] [1146] Table 'test.test' doesn't exist
071- [005 - 23] [1146] Table 'test.test' doesn't exist
084+ NULL
086+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
075- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
088+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
089+ [006 - 18] Insert of 196835 in BIT(18) column might have failed. id = , bin =  (110000000011100011/110000000011100011)
090+ [004 - 23] [1146] Table 'test.test' doesn't exist
091+ 
092+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
093+ [005 - 23] [1146] Table 'test.test' doesn't exist
094+ 
096+ NULL
098+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
099+ 
100+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
101+ [006 - 23] Insert of 5985891 in BIT(23) column might have failed. id = , bin =  (10110110101011001100011/10110110101011001100011)
102+ [003 - 32] [1146] Table 'test.test' doesn't exist
103+ [004 - 32] [1146] Table 'test.test' doesn't exist
104+ 
105+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
106+ [005 - 32] [1146] Table 'test.test' doesn't exist
107+ 
108+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
109+ 
110+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
111+ 
112+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
113+ 
117+ [003 - 32] [1146] Table 'test.test' doesn't exist
118+ [004 - 32] [1146] Table 'test.test' doesn't exist
082- [003 - 23] [1146] Table 'test.test' doesn't exist
083- [004 - 23] [1146] Table 'test.test' doesn't exist
121+ [005 - 32] [1146] Table 'test.test' doesn't exist
086- [005 - 23] [1146] Table 'test.test' doesn't exist
129+ [006 - 32] Insert of 4294967295 in BIT(32) column might have failed. id = , bin =  (011111111111111111111111111111111/11111111111111111111111111111111)
130+ [003 - 35] [1146] Table 'test.test' doesn't exist
131+ [004 - 35] [1054] Unknown column 'id' in 'field list'
094- [006 - 23] Insert of 8388607 in BIT(23) column might have failed. id = , bin =  (11111111111111111111111/11111111111111111111111)
095- [004 - 32] [1146] Table 'test.test' doesn't exist
134+ [005 - 35] [1054] Unknown column 'id' in 'field list'
098- [005 - 32] [1146] Table 'test.test' doesn't exist
137+ NULL
139+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
140+ 
141+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
142+ [006 - 35] Insert of 12341201960 in BIT(35) column might have failed. id = , bin =  (001011011111100101111100110000101000/1011011111100101111100110000101000)
143+ [003 - 38] [1146] Table 'test.test' doesn't exist
144+ [004 - 38] [1146] Table 'test.test' doesn't exist
145+ 
146+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
147+ [005 - 38] [1146] Table 'test.test' doesn't exist
148+ 
153+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
154+ 
158+ [003 - 38] [1146] Table 'test.test' doesn't exist
159+ [004 - 38] [1146] Table 'test.test' doesn't exist
109- [003 - 32] [1146] Table 'test.test' doesn't exist
110- [004 - 32] [1146] Table 'test.test' doesn't exist
162+ [005 - 38] [1146] Table 'test.test' doesn't exist
113- [005 - 32] [1146] Table 'test.test' doesn't exist
170+ [006 - 38] Insert of 274877906943 in BIT(38) column might have failed. id = , bin =  (011111111111111111111111111111111111111/11111111111111111111111111111111111111)
171+ [003 - 41] [1146] Table 'test.test' doesn't exist
172+ [004 - 41] [1146] Table 'test.test' doesn't exist
121- [006 - 32] Insert of 4294967295 in BIT(32) column might have failed. id = , bin =  (011111111111111111111111111111111/11111111111111111111111111111111)
122- [003 - 35] [1146] Table 'test.test' doesn't exist
123- [004 - 35] [1146] Table 'test.test' doesn't exist
175+ [005 - 41] [1146] Table 'test.test' doesn't exist
126- [005 - 35] [1146] Table 'test.test' doesn't exist
186+ [003 - 41] [1146] Table 'test.test' doesn't exist
187+ [004 - 41] [1146] Table 'test.test' doesn't exist
137- [003 - 35] [1146] Table 'test.test' doesn't exist
138- [004 - 35] [1146] Table 'test.test' doesn't exist
190+ [005 - 41] [1146] Table 'test.test' doesn't exist
141- [005 - 35] [1146] Table 'test.test' doesn't exist
198+ [006 - 41] Insert of 2199023255551 in BIT(41) column might have failed. id = , bin =  (011111111111111111111111111111111111111111/11111111111111111111111111111111111111111)
199+ [004 - 46] [1146] Table 'test.test' doesn't exist
149- [006 - 35] Insert of 34359738367 in BIT(35) column might have failed. id = , bin =  (011111111111111111111111111111111111/11111111111111111111111111111111111)
150- [003 - 44] [1146] Table 'test.test' doesn't exist
151- [004 - 44] [1054] Unknown column 'bit_value' in 'field list'
202+ [005 - 46] [1146] Table 'test.test' doesn't exist
154- [005 - 44] [1054] Unknown column 'bit_value' in 'field list'
205+ NULL
207+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
158- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
209+ Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
210+ [006 - 46] Insert of 3376133515627 in BIT(46) column might have failed. id = , bin =  (00000110001001000010001001111010010100101101011/110001001000010001001111010010100101101011)
211+ done!
160- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
161- 
162- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 76
163- 
164- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 83
165- [003 - 44] [1054] Unknown column 'bit_value' in 'field list'
166- [004 - 44] [1054] Unknown column 'bit_value' in 'field list'
167- 
168- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
169- [005 - 44] [1054] Unknown column 'bit_value' in 'field list'
170- 
171- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
172- NULL
173- 
174- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
175- 
176- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
177- [006 - 44] Insert of 17592186044415 in BIT(44) column might have failed. id = , bin =  (011111111111111111111111111111111111111111111/11111111111111111111111111111111111111111111)
178- [003 - 46] [1146] Table 'test.test' doesn't exist
179- [004 - 46] [1146] Table 'test.test' doesn't exist
180- 
181- Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 67
182- [005 - 46] [1146] Table 'test.test' doesn't exist
183- 
184- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 70
185- NULL
186- 
187- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
188- 
189- Notice: Trying to access array offset on value of type null in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_assoc_bit.php on line 73
190- [006 - 46] Insert of 18720718622325 in BIT(46) column might have failed. id = , bin =  (00100010000011011000001110010001000111001110101/100010000011011000001110010001000111001110101)
191- done!
```

### ext/mysqli/tests/mysqli_fetch_field_direct_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [003] [1146] Table 'test.test' doesn't exist
003+ 
004+ Fatal error: Uncaught Error: Call to a member function fetch_field_direct() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_field_direct_oo.php:22
005+ Stack trace:
006+ #0 {main}
007+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_field_direct_oo.php on line 22
001- Warning: mysqli_result::fetch_field_direct(): Field offset is invalid for resultset in %s on line %d
002- bool(false)
003- object(stdClass)#%d (13) {
004-   ["name"]=>
005-   string(2) "ID"
006-   ["orgname"]=>
007-   string(2) "id"
008-   ["table"]=>
009-   string(4) "TEST"
010-   ["orgtable"]=>
011-   string(%d) "%s"
012-   ["def"]=>
013-   string(0) ""
014-   ["db"]=>
015-   string(%d) "%s"
016-   ["catalog"]=>
017-   string(%d) "%s"
018-   ["max_length"]=>
019-   int(%d)
020-   ["length"]=>
021-   int(11)
022-   ["charsetnr"]=>
023-   int(%d)
024-   ["flags"]=>
025-   int(%d)
026-   ["type"]=>
027-   int(%d)
028-   ["decimals"]=>
029-   int(%d)
030- }
031- 
032- Warning: mysqli_result::fetch_field_direct(): Field offset is invalid for resultset in %s on line %d
033- bool(false)
034- 
035- Warning: mysqli_result::fetch_field_direct(): Couldn't fetch mysqli_result in %s on line %d
036- done!
```

### ext/mysqli/tests/mysqli_fetch_field_flags.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] Can't select from table, BIT [1146] Table 'test.test' doesn't exist
```

Test FAILED in both, but outputs is different.

```patch
001+ [003] Can't select from table, BIT [1146] Table 'test.test' doesn't exist
001- [003] Can't select from table, MEDIUMINT UNIQUE DEFAULT 1 [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_fetch_field_types.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] 'SMALLINT' - 'CREATE TABLE test(id SMALLINT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (10)', [1146] Table 'test.test' doesn't exist
002+ [003] 'MEDIUMINT' - 'CREATE TABLE test(id MEDIUMINT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (10)', [1146] Table 'test.test' doesn't exist
003+ [003] 'BLOB' - 'CREATE TABLE test(id BLOB) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('silly')', [1146] Table 'test.test' doesn't exist
```

Test FAILED in both, but outputs is different.

```patch
001+ [003] 'SMALLINT' - 'CREATE TABLE test(id SMALLINT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (10)', [1146] Table 'test.test' doesn't exist
002+ [003] 'MEDIUMINT' - 'CREATE TABLE test(id MEDIUMINT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (10)', [1146] Table 'test.test' doesn't exist
003+ [003] 'BLOB' - 'CREATE TABLE test(id BLOB) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('silly')', [1146] Table 'test.test' doesn't exist
001- [003] 'TIME' - 'CREATE TABLE test(id TIME) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES ('18:41:38')', [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_fetch_lengths.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_fetch_lengths_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [002] [1146] Table 'test.test' doesn't exist
002+ 
003+ Notice: Trying to get property 'lengths' of non-object in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_lengths_oo.php on line 12
002- array(2) {
003-   [0]=>
004-   int(1)
005-   [1]=>
006-   int(1)
005+ 
006+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_lengths_oo.php:13
007+ Stack trace:
008+ #0 {main}
009+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_fetch_lengths_oo.php on line 13
007- }
008- NULL
009- 
010- Warning: main(): Property access is not allowed yet in %s on line %d
011- bool(false)
012- done!
```

### ext/mysqli/tests/mysqli_fetch_object.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_field_count.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_field_seek.phpt

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

Test FAILED in experiment beacuse

```patch
340+ [125] INSERT failed, [1146] Table 'test.test' doesn't exist
340- done!
341+ [126] INSERT Expecting non_result_set_queries = 23/string, got 22/string
342+ [127] UPDATE failed, [1146] Table 'test.test' doesn't exist
343+ [128] UPDATE Expecting non_result_set_queries = 23/string, got 22/string
344+ [129] INSERT failed, [1146] Table 'test.test' doesn't exist
345+ [130] REPLACE Expecting non_result_set_queries = 23/string, got 22/string
346+ [131] SELECT@dml failed, [1146] Table 'test.test' doesn't exist
347+ 
348+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_get_client_stats.php on line 789
349+ [133] DELETE failed, [1146] Table 'test.test' doesn't exist
350+ [134] DELETE Expecting non_result_set_queries = 23/string, got 22/string
351+ [135] TRUNCATE failed, [1146] Table 'test.test' doesn't exist
352+ [136] TRUNCATE Expecting non_result_set_queries = 23/string, got 22/string
353+ [139] Cannot insert new records, [1146] Table 'test.test' doesn't exist
354+ [140] Cannot SELECT with mysqli_real_query(), [1146] Table 'test.test' doesn't exist
355+ [141] mysqli_use_result() failed, [1146] Table 'test.test' doesn't exist
356+ 
357+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_get_client_stats.php on line 857
358+ 
359+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_get_client_stats.php on line 859
360+ [142] mysqli_use_result() Expecting unbuffered_sets = 3/string, got 2/string
361+ [143] Cannot SELECT with mysqli_real_query() II, [1146] Table 'test.test' doesn't exist
362+ [144] mysqli_use_result() failed, [1146] Table 'test.test' doesn't exist
363+ 
364+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_get_client_stats.php on line 874
365+ 
366+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_get_client_stats.php on line 876
367+ [145] mysqli_use_result() Expecting buffered_sets = 4/string, got 3/string
368+ [146]  Expecting bytes_received_real_data_normal > 35/string, got 35/string
369+ done!
```

Test FAILED in both, but outputs is different.

```patch
340+ [125] INSERT failed, [1146] Table 'test.test' doesn't exist
340- [125] INSERT failed, [1054] Unknown column 'id' in 'field list'
342+ [127] UPDATE failed, [1146] Table 'test.test' doesn't exist
342- [127] UPDATE failed, [1054] Unknown column 'id' in 'where clause'
344+ [129] INSERT failed, [1146] Table 'test.test' doesn't exist
344- [129] INSERT failed, [1054] Unknown column 'id' in 'field list'
346+ [131] SELECT@dml failed, [1146] Table 'test.test' doesn't exist
346- [131] SELECT@dml failed, [1054] Unknown column 'id' in 'field list'
349+ [133] DELETE failed, [1146] Table 'test.test' doesn't exist
349- [133] DELETE failed, [1054] Unknown column 'id' in 'where clause'
351+ [135] TRUNCATE failed, [1146] Table 'test.test' doesn't exist
352+ [136] TRUNCATE Expecting non_result_set_queries = 23/string, got 22/string
353+ [139] Cannot insert new records, [1146] Table 'test.test' doesn't exist
354+ [140] Cannot SELECT with mysqli_real_query(), [1146] Table 'test.test' doesn't exist
355+ [141] mysqli_use_result() failed, [1146] Table 'test.test' doesn't exist
351- [138] Cannot insert new records, [1054] Unknown column 'id' in 'field list'
352- [139] Cannot SELECT with mysqli_real_query(), [1054] Unknown column 'id' in 'field list'
353- [140] mysqli_use_result() failed, [1054] Unknown column 'id' in 'field list'
360+ [142] mysqli_use_result() Expecting unbuffered_sets = 3/string, got 2/string
361+ [143] Cannot SELECT with mysqli_real_query() II, [1146] Table 'test.test' doesn't exist
362+ [144] mysqli_use_result() failed, [1146] Table 'test.test' doesn't exist
358- [141] mysqli_use_result() Expecting unbuffered_sets = 3/string, got 2/string
359- [142] Cannot SELECT with mysqli_real_query() II, [1054] Unknown column 'id' in 'field list'
360- [143] mysqli_use_result() failed, [1054] Unknown column 'id' in 'field list'
367+ [145] mysqli_use_result() Expecting buffered_sets = 4/string, got 3/string
368+ [146]  Expecting bytes_received_real_data_normal > 35/string, got 35/string
365- [144] mysqli_use_result() Expecting buffered_sets = 4/string, got 3/string
366- [145]  Expecting bytes_received_real_data_normal > 35/string, got 35/string
```

### ext/mysqli/tests/mysqli_get_client_stats_implicit_free.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ [001] [1146] Table 'test.test' doesn't exist
003+ 
004+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_get_client_stats_implicit_free.php on line 11
```

### ext/mysqli/tests/mysqli_get_client_stats_off.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_get_connection_stats.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_insert_id.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_insert_packet_overflow.phpt

Test FAILED in experiment beacuse

```patch
001+ [012] [1050] Table 'test' already exists
002+ [013] max_allowed_packet = 67108864, strlen(query) = 16777214, [1146] Table 'test.test' doesn't exist
003+ [014] [1146] Table 'test.test' doesn't exist
004+ 
005+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_insert_packet_overflow.php on line 70
006+ [015] [1146] Table 'test.test' doesn't exist
```

Test FAILED in both, but outputs is different.

```patch
001+ [012] [1050] Table 'test' already exists
```

### ext/mysqli/tests/mysqli_max_links.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_more_results.phpt

Test FAILED in experiment beacuse

```patch
001+ [1062] Duplicate entry '2' for key 'test.PRIMARY'
```

Test FAILED in both, but outputs is different.

```patch
001+ [1062] Duplicate entry '2' for key 'test.PRIMARY'
001- [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_multi_query.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_no_reconnect.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_options_init_command.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_options_int_and_float_native.phpt

Test FAILED in experiment beacuse

```patch
001+ [010] [1146] Table 'test.test' doesn't exist
002+ [006] [1146] Table 'test.test' doesn't exist
```

Test FAILED in both, but outputs is different.

```patch
001+ [010] [1146] Table 'test.test' doesn't exist
001- [005] [1146] Table 'test.test' doesn't exist
```

### ext/mysqli/tests/mysqli_pconn_kill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_pconn_limits.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_pconn_max_links.phpt

Test FAILED in experiment beacuse

```patch
001+ Notice: Undefined variable: plink in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 13
002+ 
003+ Warning: mysqli_errno() expects parameter 1 to be mysqli, null given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 13
004+ 
005+ Notice: Undefined variable: plink in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 13
006+ 
007+ Warning: mysqli_error() expects parameter 1 to be mysqli, null given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 13
008+ [000] Init failed, [0] 
009+ 
013-   int(2)
015-   int(1)
019- array(2) {
020-   ["id"]=>
021-   string(1) "1"
022-   ["label"]=>
023-   string(1) "a"
024- }
025- Before second pconnect:array(3) {
026-   ["total"]=>
027-   int(2)
028-   ["active_plinks"]=>
029-   int(1)
030-   ["cached_plinks"]=>
031-   int(0)
032- }
020+ 
021+ Warning: mysqli_connect(): (HY000/1044): Access denied for user 'pcontest'@'localhost' to database 'test' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
022+ [001] Cannot connect using the second DB user created during SKIPIF, [1044] Access denied for user 'pcontest'@'localhost' to database 'test'
025+   int(1)
027+   int(0)
031+ 
032+ Warning: mysqli_query() expects parameter 1 to be mysqli, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 38
033+ 
034+ Warning: mysqli_errno() expects parameter 1 to be mysqli, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 40
035+ 
036+ Warning: mysqli_error() expects parameter 1 to be mysqli, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 40
037+ [003] Cannot run query on persistent connection of second DB user, [0] 
038+ 
039+ Warning: mysqli_fetch_assoc() expects parameter 1 to be mysqli_result, null given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 42
040+ 
041+ Warning: mysqli_errno() expects parameter 1 to be mysqli, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 44
042+ 
043+ Warning: mysqli_error() expects parameter 1 to be mysqli, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 44
044+ [004] Cannot run fetch result, [0] 
045+ 
046+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, null given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 45
047+ NULL
048+ 
049+ Warning: mysqli_thread_id() expects parameter 1 to be mysqli, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_pconn_max_links.php on line 61
050+ [007] Cannot KILL persistent connection of second DB user, [1094] Unknown thread id: 0
051+ Before second pconnect:array(3) {
052+   ["total"]=>
053+   int(1)
054+   ["active_plinks"]=>
055+   int(0)
056+   ["cached_plinks"]=>
057+   int(0)
058+ }
049- array(2) {
050-   ["id"]=>
051-   string(1) "1"
052-   ["label"]=>
053-   string(1) "a"
054- }
055- [015] Can open more persistent connections than allowed, [0] 
056- array(3) {
057-   ["total"]=>
058-   int(3)
059-   ["active_plinks"]=>
060-   int(2)
061-   ["cached_plinks"]=>
062-   int(0)
063- }
075+ 
076+ Warning: mysqli_connect(): (HY000/1044)
...
```

Test FAILED in both, but outputs is different.

```patch
001- [1146] Table 'test.test' doesn't exist
002- 
021+ Warning: mysqli_connect(): (HY000/1044): Access denied for user 'pcontest'@'localhost' to database 'test' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
022+ [001] Cannot connect using the second DB user created during SKIPIF, [1044] Access denied for user 'pcontest'@'localhost' to database 'test'
023- Warning: mysqli_connect(): (HY000/1045): Access denied for user 'pcontest'@'localhost' (using password: YES) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
024- [001] Cannot connect using the second DB user created during SKIPIF, [1045] Access denied for user 'pcontest'@'localhost' (using password: YES)
050- [005] Cannot change PW of second DB user, [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PASSWORD("newpass")' at line 1
051- [006] Cannot change PW of second DB user, [1064] You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'PASSWORD("newpass")' at line 1
076+ Warning: mysqli_connect(): (HY000/1044): Access denied for user 'pcontest'@'localhost' to database 'test' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
077+ [012] Cannot connect using the new password, [1044] Access denied for user 'pcontest'@'localhost' to database 'test'
080- Warning: mysqli_connect(): (HY000/1045): Access denied for user 'pcontest'@'localhost' (using password: YES) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
081- [012] Cannot connect using the new password, [1045] Access denied for user 'pcontest'@'localhost' (using password: YES)
096+ Warning: mysqli_connect(): (HY000/1044): Access denied for user 'pcontest'@'localhost' to database 'test' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
100- Warning: mysqli_connect(): (HY000/1045): Access denied for user 'pcontest'@'localhost' (using password: YES) in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/mysqli/tests/connect.inc on line 67
```

### ext/mysqli/tests/mysqli_ping.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
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
005+ Fetching from thread 1468...
005- Fetching from thread 1470...
```

### ext/mysqli/tests/mysqli_poll_mixing_insert_select.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [005] Expecting true got boolean/true
002+ 
003+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
004+ [006] Expecting true got boolean/true
005+ 
006+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
007+ [005] Expecting true got boolean/true
008+ 
009+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
010+ [006] Expecting true got boolean/true
011+ 
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
012+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
013+ [003] 'SELECT * FROM test ORDER BY id ASC LIMIT 2' caused 1146
014+ [005] Expecting true got boolean/true
015+ 
016+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
017+ [006] Expecting true got boolean/true
018+ 
019+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
020+ [003] 'INSERT INTO test(id, label) VALUES (100, 'z')' caused 1146
021+ [005] Expecting true got boolean/true
022+ 
023+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
024+ [006] Expecting true got boolean/true
025+ 
026+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
027+ [003] 'SELECT * FROM test ORDER BY id ASC LIMIT 2' caused 1146
028+ [005] Expecting true got boolean/true
029+ 
030+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
031+ [006] Expecting true got boolean/true
032+ 
033+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
034+ [003] 'SELECT' caused 1064
035+ [005] Expecting true got boolean/true
036+ 
037+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
038+ [006] Expecting true got boolean/true
039+ 
040+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
041+ [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1146
042+ [005] Expecting true got boolean/true
043+ 
044+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
045+ [006] Expecting true got boolean/true
046+ 
047+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
048+ [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
049+ [005] Expecting true got boolean/true
050+ 
051+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
052+ [006] Expecting true got boolean/true
053+ 
054+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
055+ [005] Expecting true got boolean/true
056+ 
057+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
058+ [006] Expecting true got boolean/true
059+ 
060+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
061+ [003] 'DELETE FROM test WHERE id = @a' caused 1146
062+ [005] Expecting true got boolean/true
063+ 
064+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
065+ [006] Expecting true got boolean/true
066+ 
067+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
068+ [003] 'DELETE FROM test WHERE id = 1' caused 1146
069+ [005] Expecting true got boolean/true
070+ 
071+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
072+ [006] Expecting true got boolean/true
073+ 
074+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
075+ [005] Expecting true got boolean/true
076+ 
077+ Warning: mysqli_fetch_row() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 115
078+ [006] Expecting true got boolean/true
079+ 
080+ Warning: mysqli_free_result() expects parameter 1 to be mysqli_result, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/mysqli/tests/mysqli_poll_mixing_insert_select.php on line 118
081+ [009] [2014] Commands out of sync; you can't run this command now
082+ done!
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:42:56 2021 (90701): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:42:56 2021 (90701): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:32:34 2021 (41141): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pdo_mysql/tests/bug44327.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ 
012+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug44327.php on line 17
013+ 
014+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug44327.php on line 19
015+ bool(false)
016+ 
017+ Notice: Trying to get property 'queryString' of non-object in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug44327.php on line 22
018+ NULL
011- object(PDORow)#%d (2) {
012-   ["queryString"]=>
013-   string(19) "SELECT id FROM test"
014-   ["id"]=>
015-   string(1) "1"
016- }
017- string(19) "SELECT id FROM test"
```

### ext/pdo_mysql/tests/bug66528.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug80458.phpt

Test FAILED in experiment beacuse

```patch
003+ 
004+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php:13
005+ Stack trace:
006+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php(13): PDO->prepare('DELETE FROM tes...')
007+ #1 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php on line 13
003- array(0) {
004- }
005- array(0) {
006- }
007- bool(false)
008- array(1) {
009-   [0]=>
010-   array(2) {
011-     ["first"]=>
012-     int(5)
013-     [0]=>
014-     int(5)
015-   }
016- }
017- array(0) {
018- }
019- array(1) {
020-   [0]=>
021-   array(2) {
022-     ["first"]=>
023-     int(7)
024-     [0]=>
025-     int(7)
026-   }
027- }
028- array(0) {
029- }
030- Emulated prepares
031- array(0) {
032- }
033- array(0) {
034- }
035- bool(false)
036- array(1) {
037-   [0]=>
038-   array(2) {
039-     ["first"]=>
040-     string(2) "12"
041-     [0]=>
042-     string(2) "12"
043-   }
044- }
045- array(0) {
046- }
047- array(1) {
048-   [0]=>
049-   array(2) {
050-     ["first"]=>
051-     string(2) "14"
052-     [0]=>
053-     string(2) "14"
054-   }
055- }
056- array(0) {
057- }
058- array(0) {
059- }
060- array(1) {
061-   [0]=>
062-   array(2) {
063-     ["first"]=>
064-     int(16)
065-     [0]=>
066-     int(16)
067-   }
068- }
```

Test FAILED in both, but outputs is different.

```patch
003+ 
004+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php:13
005+ Stack trace:
006+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php(13): PDO->prepare('DELETE FROM tes...')
007+ #1 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php on line 13
003- array(0) {
004- }
005- array(0) {
006- }
007- bool(false)
008- array(1) {
009-   [0]=>
010-   array(2) {
011-     ["first"]=>
012-     int(5)
013-     [0]=>
014-     int(5)
015-   }
016- }
017- array(0) {
018- }
019- 
020- Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php:44
021- Stack trace:
022- #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php(44): PDOStatement->execute()
023- #1 {main}
024-   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug80458.php on line 44
```

### ext/pdo_mysql/tests/bug81037.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_33689.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_41698.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/bug_44707.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_44707.php on line 15
005+ 
006+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_44707.php:16
007+ Stack trace:
008+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_44707.php(47): bug_44707(Object(PDO))
009+ #1 {main}
010+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_44707.php on line 16
003- bool(false)
004- bool(false)
005- array(1) {
006-   [0]=>
007-   array(2) {
008-     ["id"]=>
009-     string(1) "1"
010-     ["mybool"]=>
011-     string(1) "0"
012-   }
013- }
014- array(2) {
015-   [0]=>
016-   array(2) {
017-     ["id"]=>
018-     string(1) "1"
019-     ["mybool"]=>
020-     string(1) "0"
021-   }
022-   [1]=>
023-   array(2) {
024-     ["id"]=>
025-     string(1) "1"
026-     ["mybool"]=>
027-     string(1) "0"
028-   }
029- }
030- done!
```

### ext/pdo_mysql/tests/bug_61207.phpt

Test PASSED in control but FAILED in experiment

```patch
012+ 
013+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_61207.php on line 54
014+ 
015+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_61207.php on line 63
012- Rowset 2
013- Results detected
016- Rowset 2
017- Rowset 3
018+ 
019+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1051 Unknown table 'test.test' in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/bug_61207.php on line 73
018- Results detected
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=test;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
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
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindcolumn.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindcolumn.php on line 12
002+ 
003+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindcolumn.php on line 31
004+ 
005+ Fatal error: Uncaught Error: Call to a member function fetch() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindcolumn.php:33
001- id = 1 (integer) / label = 'a' (string)
002- id = 2 (integer) / label = 'b' (string)
003- id = 3 (integer) / label = 'c' (string)
004- id = 4 (integer) / label = 'd' (string)
005- done!
006+ Stack trace:
007+ #0 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindcolumn.php on line 33
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 19
001- done!
002+ 
003+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:20
004+ Stack trace:
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 7, true, 'SMALLINT UNSIGN...', 65535)
006+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(98): pdo_mysql_stmt_bindparam_types(Object(PDO), 7, 'SMALLINT UNSIGN...', 65535)
007+ #2 {main}
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 20
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 19
001- Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 31
003+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:20
003- Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php:33
005+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 7, true, 'SMALLINT UNSIGN...', 65535)
006+ #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(98): pdo_mysql_stmt_bindparam_types(Object(PDO), 7, 'SMALLINT UNSIGN...', 65535)
005- #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(87): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 46, false, 'MEDIUMBLOB', 'bbbbbbbbbbbbbbb...')
006- #1 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php(137): pdo_mysql_stmt_bindparam_types(Object(PDO), 46, 'MEDIUMBLOB', 'bbbbbbbbbbbbbbb...')
008+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 20
008-   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.php on line 33
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.phpt

Test PASSED in control but FAILED in experiment

```patch
020+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/mysql_pdo_test.inc on line 41
021+ 
022+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 12
023+ 
020- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
021- in = 0 -> id = 1 (integer) / label = 'a' (string)
022- in = 0 -> id = 2 (integer) / label = 'b' (string)
023- done!
024+ Fatal error: Uncaught Error: Call to a member function closeCursor() on bool in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php:15
025+ Stack trace:
026+ #0 /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php(128): pdo_mysql_stmt_closecursor(Object(PDO))
027+ #1 {main}
028+   thrown in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.php on line 15
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/pdo_mysql_types.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
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

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
006+ 
007+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
008+ 
009+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
047+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
048+ 
049+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
050+ 
064+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
065+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
076+ 
085+ 
086+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
101+ 
102+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
117+ 
118+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
119+ 
120+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
003+ 
004+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
022+ 
023+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
027+ 
028+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
031+ 
032+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
013+ 
014+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
011+ 
012+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
006+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
007+ 
011+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
018+ 
019+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
020+ 
021+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
036+ 
037+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
038+ 
039+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
055+ 
056+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
057+ 
058+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
072+ 
073+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
074+ 
075+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
089+ 
090+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
091+ 
092+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
009+ 
010+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
016+ 
017+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
023+ 
024+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
030+ 
031+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
037+ 
038+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
012+ 
013+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug78719.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/bug80838.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
018+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
019+ 
029+ 
030+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
044+ 
045+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
060+ 
061+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
075+ 
076+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_set_blocking(): Unsupported operation, you may need to install ext-openssl in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/http/server.inc on line 58
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60dbcdba75774.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60dbcdbaabc91.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/bug60106.php on line 12
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
001+ Warning: file_get_contents(ftp://127.0.0.1:56968/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:59751/bogusdir): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/ftp/tests/server.inc on line 115
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:54460/): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/opendir-004.php on line 12
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
010+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
011+ 
012+ Warning: stream_select(): No stream arrays were passed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_22cc72c185bacf49/ext/standard/tests/streams/stream_select_preserve_keys.php on line 11
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
