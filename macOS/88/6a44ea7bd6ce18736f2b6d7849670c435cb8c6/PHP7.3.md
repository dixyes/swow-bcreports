# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.29 (cli) (built: Jul 13 2021 02:58:07) ( NTS )
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
PHP 7.3.29 (cli) (built: Jul 13 2021 02:58:07) ( NTS )
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
Darwin Mac-1626493403836.local 19.6.0 Darwin Kernel Version 19.6.0: Thu May  6 00:48:39 PDT 2021; root:xnu-6153.141.33~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16251 | 14467 | 16360 | 0.6663% | 0.7534% |

## Behavior changes

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### tests/basic/timeout_variation_1.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_10.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_3.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_4.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_9.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/curl/tests/bug48203_multi.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ * Connected to localhost (::1) port 8964 (#0)
006+ > GET / HTTP/1.1
007+ Host: localhost:8964
008+ Accept: */*
005- Ok for CURLOPT_STDERR
010+ * Found bundle for host localhost: 0x7febc4f2df20 [serially]
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
001+ Received 4009Received 11812
001- Received 16375Received 9Received 3793Received 549
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
002+ string(0) ""
002- string(75) "Hello World!
003- Hello World!Hello World!
004- Hello World!Hello World!
005- Hello World!"
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
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/002.php on line 8
004+ bool(false)
005+ NULL
006+ NULL
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

### ext/ftp/tests/003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 7
004+ bool(false)
005+ 
006+ Warning: ftp_pwd(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 9
007+ bool(false)
008+ 
009+ Warning: ftp_chdir(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 11
010+ bool(false)
011+ 
001- bool(true)
002- string(1) "/"
003- bool(true)
004- string(6) "/mydir"
005- bool(true)
006- string(11) "/xpto/mydir"
007- bool(true)
008- string(5) "/xpto"
009- bool(true)
010- string(1) "/"
011- bool(true)
012+ Warning: ftp_pwd(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 12
013+ bool(false)
014+ 
015+ Warning: ftp_chdir(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 14
016+ bool(false)
017+ 
018+ Warning: ftp_pwd(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 15
019+ bool(false)
020+ 
021+ Warning: ftp_cdup(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 17
022+ bool(false)
023+ 
024+ Warning: ftp_pwd(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 18
025+ bool(false)
026+ 
027+ Warning: ftp_chdir(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 20
028+ bool(false)
029+ 
030+ Warning: ftp_pwd(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/003.php on line 21
031+ bool(false)
032+ bool(true)
```

### ext/ftp/tests/004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/004.php on line 7
004+ bool(false)
005+ 
006+ Warning: ftp_systype(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/004.php on line 9
007+ bool(false)
001- bool(true)
002- string(4) "UNIX"
037- Warning: ftp_login(): Not logged in. in %s004.php on line 25
042+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/004.php on line 25
```

### ext/ftp/tests/005.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 8
001- bool(true)
004- Warning: ftp_cdup(): Command not implemented (1). in %s005.php on line 11
005+ bool(false)
007+ Warning: ftp_cdup(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 11
007- Warning: ftp_chdir(): Command not implemented (2). in %s005.php on line 12
010+ Warning: ftp_chdir(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 12
010- Warning: ftp_chmod(): Command not implemented (3). in %s005.php on line 13
013+ Warning: ftp_chmod(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 13
013- Warning: ftp_delete(): Command not implemented (4). in %s005.php on line 14
016+ Warning: ftp_delete(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 14
016- Warning: ftp_exec(): Command not implemented (5). in %s005.php on line 15
019+ Warning: ftp_exec(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 15
029- Warning: ftp_mkdir(): Command not implemented (7). in %s005.php on line 20
032+ Warning: ftp_mkdir(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 20
041- Warning: ftp_systype(): Command not implemented (8). in %s005.php on line 24
044+ Warning: ftp_systype(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 24
044- Warning: ftp_pwd(): Command not implemented (9). in %s005.php on line 25
047+ Warning: ftp_pwd(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 25
048- Warning: ftp_rmdir(): Command not implemented (11). in %s005.php on line 27
051+ Warning: ftp_rmdir(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/005.php on line 27
```

### ext/ftp/tests/bug27809.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
001- bool(true)
002- string(6) "OS/400"
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug27809.php on line 8
004+ bool(false)
005+ 
006+ Warning: ftp_systype(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug27809.php on line 9
007+ bool(false)
```

### ext/ftp/tests/bug37799.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug37799.php on line 8
001- Warning: ftp_login(): %rdummy|bogus msg%r in %sbug37799.php on line 8
```

### ext/ftp/tests/bug39458-2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug39458-2.php on line 8
004+ bool(false)
005+ bool(false)
006+ bool(false)
001- bool(true)
002- array(3) {
003-   [0]=>
004-   string(5) "file1"
005-   [1]=>
006-   string(5) "file1"
007-   [2]=>
008-   string(9) "file
009- b0rk"
010- }
011- array(0) {
012- }
```

### ext/ftp/tests/bug39458.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ bool(false)
011- array(0) {
012- }
```

### ext/ftp/tests/bug39583-2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
001- bool(true)
002- Uploaded %sbug39583-2.php as bug39583-2.php
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug39583-2.php on line 7
004+ bool(false)
005+ 
006+ Warning: ftp_put(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug39583-2.php on line 13
007+ FTP upload has failed!
```

### ext/ftp/tests/bug39583.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
001- bool(true)
002- Uploaded %sbug39583.php as bug39583.php
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug39583.php on line 8
004+ bool(false)
005+ 
006+ Warning: ftp_put(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug39583.php on line 14
007+ FTP upload has failed!
```

### ext/ftp/tests/bug7216.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
002- string(3) "CVS"
003+ Warning: ftp_mkdir(): Anonymous user logged in in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/bug7216.php on line 9
004+ bool(false)
```

### ext/ftp/tests/filesize_large.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/filesize_large.php on line 7
001- int(5368709120)
002+ string(0) ""
003+ int(-1)
```

### ext/ftp/tests/ftp_alloc_basic1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_alloc_basic1.php on line 6
004+ bool(false)
```

### ext/ftp/tests/ftp_alloc_basic2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
001- bool(true)
002- string(20) "1024 bytes allocated"
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_alloc_basic2.php on line 6
004+ bool(false)
005+ NULL
```

### ext/ftp/tests/ftp_append.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_append.php on line 7
004+ bool(false)
001- bool(true)
002- bool(true)
003- bool(true)
004- string(6) "foobar"
005+ 
006+ Warning: ftp_append(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_append.php on line 11
007+ bool(false)
008+ 
009+ Warning: ftp_append(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_append.php on line 15
010+ bool(false)
011+ 
012+ Warning: file_get_contents(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_append_foobar): failed to open stream: No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_append.php on line 18
013+ bool(false)
```

### ext/ftp/tests/ftp_chmod_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- int(420)
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_chmod_basic.php on line 6
004+ 
005+ Warning: ftp_chmod(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_chmod_basic.php on line 8
006+ bool(false)
```

### ext/ftp/tests/ftp_delete.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_delete.php on line 5
004+ 
005+ Warning: ftp_delete(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_delete.php on line 8
006+ bool(false)
```

### ext/ftp/tests/ftp_exec_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_exec_basic.php on line 5
004+ 
005+ Warning: ftp_exec(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_exec_basic.php on line 8
006+ bool(false)
```

### ext/ftp/tests/ftp_fget_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic.php on line 7
002+ bool(false)
003+ string(0) ""
004+ 
005+ Warning: ftp_fget(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic.php on line 11
006+ bool(false)
007+ 
008+ Warning: ftp_fget(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic.php on line 17
009+ bool(false)
010+ string(0) ""
001- bool(true)
002- bool(true)
003- For sale: baby shoes, never worn.
004- bool(true)
005- string(21) "BINARYFoo%00Bar%0D%0A"
007- Warning: ftp_fget(): a warning: No such file or directory  in %sftp_fget_basic.php on line %d
012+ Warning: ftp_fget(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic.php on line 22
```

### ext/ftp/tests/ftp_fget_basic2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic2.php on line 5
001- bool(true)
002- string(12) "ASCIIFooBar
003- "
004+ 
005+ Warning: ftp_fget(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic2.php on line 12
006+ bool(false)
007+ string(8) "ASCIIFoo"
```

### ext/ftp/tests/ftp_fget_basic3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic3.php on line 5
001- bool(true)
002- string(12) "ASCIIFooBar
003- "
004+ 
005+ Warning: ftp_fget(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fget_basic3.php on line 12
006+ bool(false)
007+ string(8) "ASCIIFoo"
```

### ext/ftp/tests/ftp_fput.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fput.php on line 5
004+ 
005+ Warning: ftp_fput(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_fput.php on line 11
006+ bool(false)
```

### ext/ftp/tests/ftp_get_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) "
002+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 7
003+ bool(false)
004+ "
005+ 
006+ Warning: ftp_get(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 11
007+ bool(false)
008+ 
009+ Warning: file_get_contents(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_test0ZyBZK): failed to open stream: No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 12
010+ 
011+ Warning: unlink(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_test0ZyBZK): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 13
012+ 
013+ Warning: ftp_get(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 17
014+ bool(false)
015+ 
016+ Warning: file_get_contents(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_testtWmwPu): failed to open stream: No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 18
017+ string(0) ""
018+ 
019+ Warning: unlink(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_testtWmwPu): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 19
020+ 
021+ Warning: ftp_get(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_get_basic.php on line 22
001- bool(true)
002- bool(true)
003- For sale: baby shoes, never worn.
004- bool(true)
005- string(21) "BINARYFoo%00Bar%0D%0A"
007- Warning: ftp_get(): a warning: No such file or directory  in %sftp_get_basic.php on line %d
008- 
```

### ext/ftp/tests/ftp_mlsd.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) "
002+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_mlsd.php on line 7
003+ bool(false)
004+ "
005+ bool(false)
001- bool(true)
002- 
003- Warning: ftp_mlsd(): Missing pathname in MLSD response in %s on line %d
004- 
005- Warning: ftp_mlsd(): Malformed fact in MLSD response in %s on line %d
006- 
007- Warning: ftp_mlsd(): Malformed fact in MLSD response in %s on line %d
008- array(4) {
009-   [0]=>
010-   array(8) {
011-     ["name"]=>
012-     string(1) "."
013-     ["modify"]=>
014-     string(14) "20170127230002"
015-     ["perm"]=>
016-     string(7) "flcdmpe"
017-     ["type"]=>
018-     string(4) "cdir"
019-     ["unique"]=>
020-     string(11) "811U4340002"
021-     ["UNIX.group"]=>
022-     string(2) "33"
023-     ["UNIX.mode"]=>
024-     string(4) "0755"
025-     ["UNIX.owner"]=>
026-     string(2) "33"
027-   }
028-   [1]=>
029-   array(8) {
030-     ["name"]=>
031-     string(2) ".."
032-     ["modify"]=>
033-     string(14) "20170127230002"
034-     ["perm"]=>
035-     string(7) "flcdmpe"
036-     ["type"]=>
037-     string(4) "pdir"
038-     ["unique"]=>
039-     string(11) "811U4340002"
040-     ["UNIX.group"]=>
041-     string(2) "33"
042-     ["UNIX.mode"]=>
043-     string(4) "0755"
044-     ["UNIX.owner"]=>
045-     string(2) "33"
046-   }
047-   [2]=>
048-   array(9) {
049-     ["name"]=>
050-     string(6) "foobar"
051-     ["modify"]=>
052-     string(14) "20170126121225"
053-     ["perm"]=>
054-     string(5) "adfrw"
055-     ["size"]=>
056-     string(4) "4729"
057-     ["type"]=>
058-     string(4) "file"
059-     ["unique"]=>
060-     string(11) "811U4340CB9"
061-     ["UNIX.group"]=>
062-     string(2) "33"
063-     ["UNIX.mode"]=>
064-     string(4) "0644"
065-     ["UNIX.owner"]=>
066-     string(2) "33"
067-   }
068-   [3]=>
069-   array(3) {
070-     ["name"]=>
071-     string(9) "path;name"
072-     ["fact"]=>
073-     string(6) "val=ue"
074-     ["empty"]=>
075-     string(0) ""
076-   }
077- }
```

### ext/ftp/tests/ftp_mlsd_empty_directory.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ bool(false)
002- array(0) {
003- }
```

### ext/ftp/tests/ftp_nb_continue.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_continue.php on line 7
002+ string(0) ""
003+ 
004+ Warning: ftp_nb_get(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_continue.php on line 13
005+ 
006+ Warning: file_get_contents(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/mediumfile.txt): failed to open stream: No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_continue.php on line 19
001- This is line 0 of the test data.
002- This is line 1 of the test data.
003- This is line 2 of the test data.
004- This is line 3 of the test data.
005- This is line 4 of the test data.
006- This is line 5 of the test data.
007- This is line 6 of the test data.
008- This is line 7 of the test data.
009- This is line 8 of the test data.
010- This is line 9 of the test data.
011- This is line 10 of the test data.
012- This is line 11 of the test data.
013- This is line 12 of the test data.
014- This is line 13 of the test data.
015- This is line 14 of the test data.
016- This is line 15 of the test data.
017- This is line 16 of the test data.
018- This is line 17 of the test data.
019- This is line 18 of the test data.
020- This is line 19 of the test data.
021- This is line 20 of the test data.
022- This is line 21 of the test data.
023- This is line 22 of the test data.
024- This is line 23 of the test data.
025- This is line 24 of the test data.
026- This is line 25 of the test data.
027- This is line 26 of the test data.
028- This is line 27 of the test data.
029- This is line 28 of the test data.
030- This is line 29 of the test data.
031- This is line 30 of the test data.
032- This is line 31 of the test data.
033- This is line 32 of the test data.
034- This is line 33 of the test data.
035- This is line 34 of the test data.
036- This is line 35 of the test data.
037- This is line 36 of the test data.
038- This is line 37 of the test data.
039- This is line 38 of the test data.
040- This is line 39 of the test data.
041- This is line 40 of the test data.
042- This is line 41 of the test data.
043- This is line 42 of the test data.
044- This is line 43 of the test data.
045- This is line 44 of the test data.
046- This is line 45 of the test data.
047- This is line 46 of the test data.
048- This is line 47 of the test data.
049- This is line 48 of the test data.
050- This is line 49 of the test data.
051- This is line 50 of the test data.
052- This is line 51 of the test data.
053- This is line 52 of the test data.
054- This is line 53 of the test data.
055- This is line 54 of the test data.
056- This is line 55 of the test data.
057- This is line 56 of the test data.
058- This is line 57 of the test data.
059- This is line 58 of the test data.
060- This is line 59 of the test data.
061- This is line 60 of the test data.
062- This is line 61 of the test data.
063- This is line 62 of the test data.
064- This is line 63 of the test data.
065- This is line 64 of the test data.
066- This is line 65 of the test data.
067- This is line 66 of the test data.
068- This is line 67 of the test data.
069- This is line 68 of the test data.
070- This is line 69 of the test data.
071- This is line 70 of the test data.
072- This is line 71 of the test data.
073- This is line 72 of the test data.
074- This is line 73 of the test data.
075- This is line 74 of the test data.
076- This is line 75 of the test data.
077- This is line 76 of the test data.
078- This is line 77 of the test data.
079- This is line 78 of the test data.
080- This is line 79 of the test data.
081- This is line 80 of the test data.
082- This is line 81 of the test data.
083- This is line 82 of the test data.
084- This is line 83 of the test data.
085- This is line 84 of the test data.
086- This is line 85 of the test data.
087- This is line 86 of the test data.
088- This is line 87 of the test data.
089- This is line 88 of the test data.
090- This is line 89 of the test data.
091- This is line 90 of the test data.
092- This is line 91 of the test data.
093- This is line 92 of the test data.
094- This is line 93 of the test data.
095- This is line 94 of the test data.
096- This is line 95 of the test data.
097- This is line 96 of the test data.
098- This is line 97 of the test data.
099- This is line 98 of the test data.
100- This is line 99 of the test data.
101- This is line 100 of the test data.
102- This is line 101 of the test data.
103- This is line 102 of the test data.
104- This is line 103 of the test data.
105- This is line 104 of the test data.
106- This is line 105 of the test data.
107- This is line 106 of the test data.
108- This is line 107 of the test data.
109- This is line 108 of the test data.
110- This is line 109 of the test data.
111- This is line 110 of the test data.
112- This is line 111 of the test data.
113- This is line 112 of the test data.
114- This is line 113 of the test data.
115- This is line 114 of the test data.
116- This is line 115 of the test data.
117- This is line 116 of the test data.
118- This is line 117 of the test data.
119- This is line 118 of the test data.
120- This is line 119 of the test data.
121- This is line 120 of the test data.
122- This is line 121 of the test data.
123- This is line 122 of the test data.
124- This is line 123 of the test data.
125- This is line 124 of the test data.
126- This is line 125 of the test data.
127- This is line 126 of the test data.
128- This is line 127 of the test data.
129- This is line 128 of the test data.
130- This is line 129 of the test data.
131- This is line 130 of the test data.
132- This is line 131 of the test data.
133- This is line 132 of the test data.
134- This is line 133 of the test data.
135- This is line 134 of the test data.
136- This is line 135 of the test data.
137- This is line 136 of the test data.
138- This is line 137 of the test data.
139- This is line 138 of the test data.
140- This is line 139 of the test data.
141- This is line 140 of the test data.
142- This is line 141 of the test data.
143- This is line 142 of the test data.
144- This is line 143 of the test data.
145- This is line 144 of the test data.
146- This is line 145 of the test data.
147- This is line 146 of the test data.
148- This is line 147 of the test data.
149- This is line 148 of the test data.
150- This is line 149 of the test data.
```

### ext/ftp/tests/ftp_nb_fget_basic1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fget_basic1.php on line 5
001- int(2)
002- string(12) "ASCIIFooBar
003- "
004+ 
005+ Warning: ftp_nb_fget(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fget_basic1.php on line 12
006+ int(0)
007+ string(0) ""
```

### ext/ftp/tests/ftp_nb_fget_basic2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: ftp_nb_fget(): User logged in in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fget_basic2.php on line 12
002+ int(0)
003+ string(8) "ASCIIFoo"
001- int(2)
002- string(12) "ASCIIFooBar
003- "
```

### ext/ftp/tests/ftp_nb_fget_basic3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): User name ok, need password in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fget_basic3.php on line 5
001- int(2)
002- string(12) "ASCIIFooBar
003- "
004+ 
005+ Warning: ftp_nb_fget(): User name ok, need password in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fget_basic3.php on line 12
006+ int(0)
007+ string(8) "ASCIIFoo"
```

### ext/ftp/tests/ftp_nb_fput.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fput.php on line 5
001- int(1)
002+ string(0) ""
003+ 
004+ Warning: ftp_nb_fput(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_fput.php on line 11
005+ int(0)
```

### ext/ftp/tests/ftp_nb_get_large.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) "
002+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 5
001- string(1) "X"
002- int(5368709120)
003+ "
004+ 
005+ Warning: ftp_nb_get(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 10
006+ 
007+ Warning: fopen(/Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.txt): failed to open stream: No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 11
008+ 
009+ Warning: fseek() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 12
010+ 
011+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 13
012+ bool(false)
013+ 
014+ Warning: filesize(): stat failed for /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.txt in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 14
015+ bool(false)
016+ 
017+ Warning: fclose() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_get_large.php on line 15
```

### ext/ftp/tests/ftp_nb_put.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- int(1)
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_put.php on line 5
004+ 
005+ Warning: ftp_nb_put(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_nb_put.php on line 11
006+ int(0)
```

### ext/ftp/tests/ftp_pasv.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_pasv.php on line 5
```

### ext/ftp/tests/ftp_rawlist_basic1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) "
001- bool(true)
002+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rawlist_basic1.php on line 5
003+ "
004+ bool(false)
```

### ext/ftp/tests/ftp_rawlist_basic2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rawlist_basic2.php on line 5
```

### ext/ftp/tests/ftp_rename_basic1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rename_basic1.php on line 7
004+ 
005+ Warning: ftp_rename(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rename_basic1.php on line 9
006+ bool(false)
007+ 
008+ Warning: ftp_rename(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rename_basic1.php on line 10
003- Warning: ftp_rename(): No such file or directory in %sftp_rename_basic1.php on line 10
```

### ext/ftp/tests/ftp_rmdir_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rmdir_basic.php on line 6
004+ 
005+ Warning: ftp_rmdir(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_rmdir_basic.php on line 8
006+ bool(false)
```

### ext/ftp/tests/ftp_set_option.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_set_option.php on line 5
```

### ext/ftp/tests/ftp_set_option_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: ftp_login(): Syntax error, command unrecognized. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_set_option_errors.php on line 6
004+ 
```

### ext/ftp/tests/ftp_site_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
001- bool(true)
003+ Warning: ftp_login(): Service ready in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/ftp_site_basic.php on line 7
004+ Couldn't login into the server
003- Warning: ftp_site(): Syntax error, command unrecognized. in %s on line %d
004- bool(false)
```

### ext/ldap/tests/bug76248.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/mysqli/tests/connect.inc on line 113
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
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/mysqli/tests/connect.inc on line 113
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
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/mysqli/tests/connect.inc on line 113
002+ 
```

### ext/mysqli/tests/mysqli_kill.phpt

Test FAILED in experiment beacuse

```patch
061+ Warning: mysqli_change_user(): The server requested authentication method unknown to the client [caching_sha2_password] in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/mysqli/tests/mysqli_kill.php on line 64
062+ 
```

Test FAILED in both, but outputs is different.

```patch
034+   string(25) "localhost:3506 via TCP/IP"
034-   string(25) "localhost:3406 via TCP/IP"
050+   int(961)
050-   int(1169)
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
005+ Fetching from thread 1426...
005- Fetching from thread 1427...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Sat Jul 17 04:01:36 2021 (92407): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Sat Jul 17 04:01:36 2021 (92407): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Sat Jul 17 03:52:46 2021 (41474): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ stream_socket_enable_crypto(): this stream does not support SSL/crypto
002+ PHP Warning:  stream_socket_accept(): SSL: Undefined error: 0 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- Written 1048575 bytes
002- DONE
```

### ext/pcntl/tests/001.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ Termsig=15
007- Process was terminated by signal : SIGTERM
008- 
009- Testing pcntl_wifstopped and pcntl_wstopsig....
010- Process was stoped by signal : SIGSTOP
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
```

Test FAILED in both, but outputs is different.

```patch
007+ [009] SQLSTATE[HY000] [1045] Access denied for user 'dontcreatesuchauser'@'localhost' (using password: YES), [n/a] n/a
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
009+ [017] DSN=mysql:host=- ;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service
007- [009] SQLSTATE[HY000] [2054] The server requested authentication method unknown to the client, [n/a] n/a
008- [015] DSN=mysql:host=localhostinvalid;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] No such file or directory
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
```

### ext/soap/tests/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 2601 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
002+ 
003+ Notice: stream_copy_to_stream(): Send of 1520 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- string(12) "test message"
```

### ext/sockets/tests/socket_export_stream-4.phpt

Test PASSED in control but FAILED in experiment

```patch
020+ socket_set_block 1
021+ socket_get_option 2
020- socket_set_block 
021- Warning: socket_set_block(): unable to set blocking mode [%d]: %s in %s on line %d
023- socket_get_option 
024- Warning: socket_get_option(): unable to retrieve socket option [%d]: %s in %s on line %d
026- 
027- 
```

### ext/sockets/tests/socket_getpeername_ipv4loop.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: socket_bind(): unable to bind address [48]: Address already in use in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/sockets/tests/socket_getpeername_ipv4loop.php on line 15
```

### ext/sockets/tests/socket_getpeername_ipv6loop.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
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
003+ Warning: cli_set_process_title(): cli_set_process_title had an error: Not initialized correctly in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/sapi/cli/tests/cli_process_title_unix.php on line 7
004+ Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d extension=swow -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/sapi/cli/tests/cli_process_title_unix.php
002- Successfully set title
003- Successfully verified title using ps
004- Successfully verified title using get
005+ 
006+ Warning: cli_get_process_title(): cli_get_process_title had an error: Not initialized correctly in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/sapi/cli/tests/cli_process_title_unix.php on line 35
007+ Actually loaded from get:
```

Test FAILED in both, but outputs is different.

```patch
004+ Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d extension=swow -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/sapi/cli/tests/cli_process_title_unix.php
004- Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/sapi/cli/tests/cli_process_title_unix.php
```

### ext/standard/tests/http/bug38802.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
004+ 
005+ Notice: stream_copy_to_stream(): Send of 77 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
006+ 
007+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
008+ 
009+ Notice: stream_copy_to_stream(): Send of 24 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
047+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
048+ 
049+ Notice: stream_copy_to_stream(): Send of 77 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
050+ 
064+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
065+ 
075+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
076+ 
085+ 
086+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
101+ 
102+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
117+ 
118+ Notice: stream_copy_to_stream(): Send of 78 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
119+ 
120+ Notice: stream_copy_to_stream(): Send of 77 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug43510.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(1) "
002+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
003+ r"
004+ 
005+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
001- string(1) "r"
```

### ext/standard/tests/http/bug47021.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: stream_copy_to_stream(): Send of 81 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
005+ 
006+ Notice: stream_copy_to_stream(): Send of 56 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
012+ 
013+ Notice: stream_copy_to_stream(): Send of 83 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
014+ 
015+ Notice: stream_copy_to_stream(): Send of 57 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
021+ 
022+ Notice: stream_copy_to_stream(): Send of 85 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
023+ 
024+ Notice: stream_copy_to_stream(): Send of 58 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
030+ 
031+ Notice: stream_copy_to_stream(): Send of 85 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
032+ 
033+ Notice: stream_copy_to_stream(): Send of 58 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug48929.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
013+ 
014+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug53198.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
011+ 
012+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug60570.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ Notice: stream_copy_to_stream(): Send of 26 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
005+ 
006+ Notice: stream_copy_to_stream(): Send of 26 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
007+ 
011+ Notice: stream_copy_to_stream(): Send of 26 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
012+ 
```

### ext/standard/tests/http/bug61548.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
002+ 
003+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
018+ 
019+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
020+ 
021+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
036+ 
037+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
038+ 
039+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
055+ 
056+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
057+ 
058+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
072+ 
073+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
074+ 
075+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
089+ 
090+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
091+ 
092+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug65634.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: stream_copy_to_stream(): Send of 27 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
009+ 
010+ Notice: stream_copy_to_stream(): Send of 27 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
016+ 
017+ Notice: stream_copy_to_stream(): Send of 27 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
023+ 
024+ Notice: stream_copy_to_stream(): Send of 27 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
030+ 
031+ Notice: stream_copy_to_stream(): Send of 27 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
037+ 
038+ Notice: stream_copy_to_stream(): Send of 27 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug67430.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
002+ 
003+ Notice: stream_copy_to_stream(): Send of 35 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
012+ 
013+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug69337.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 66 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
002+ 
003+ Notice: stream_copy_to_stream(): Send of 26 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/bug69337.php on line 23
001- Warning: file_get_contents(http://127.0.0.1:22345/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%ain %s on line %d
```

### ext/standard/tests/http/bug73297.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 49 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug75535.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) "
002+ Notice: stream_copy_to_stream(): Send of 33 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
003+ "
001- string(0) ""
```

### ext/standard/tests/http/bug75981.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 14 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug79265.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/bug79265_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 19 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/http_response_header_01.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 51 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/http_response_header_02.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 80 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
002+ 
003+ Notice: stream_copy_to_stream(): Send of 37 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/http_response_header_03.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 80 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
002+ 
003+ Notice: stream_copy_to_stream(): Send of 44 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
004+ 
005+ Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found
006+  in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/http_response_header_03.php on line 13
001- Warning: file_get_contents(http://127.0.0.1:22348/): failed to open stream: HTTP request failed! HTTP/1.0 404 Not Found%a
```

### ext/standard/tests/http/http_response_header_04.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(4) "
002+ Notice: stream_copy_to_stream(): Send of 42 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
003+ Body"
001- string(4) "Body"
```

### ext/standard/tests/http/http_response_header_05.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Notice: stream_copy_to_stream(): Send of 29 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/http/ignore_errors.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ 
011+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
018+ Notice: stream_copy_to_stream(): Send of 39 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
019+ 
037+ 
038+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
044+ 
045+ Notice: stream_copy_to_stream(): Send of 39 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
068+ 
069+ Notice: stream_copy_to_stream(): Send of 32 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
075+ 
076+ Notice: stream_copy_to_stream(): Send of 39 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/http-stream.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_copy_to_stream(): Send of 1183 bytes failed with errno=-60 Socket write wait failed, reason: Timed out for 0 ms in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/http/server.inc on line 87
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60f2579f9ba28.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/60f2579fd04c1.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/network/unixloop.php on line 32
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
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug72771.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Notice: opendir(): Send of 10 bytes failed with errno=-32 Socket write failed, reason: Broken pipe in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/bug72771.php on line 7
004+ 
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:54394/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
004+ Assertion failed: (error < 0), function cat_socket_is_eof_error, file deps/libcat/src/cat_socket.c, line 3643.
005+ 
006+ Termsig=6
```

### ext/standard/tests/streams/bug77680.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: mkdir(): Unable to connect to ftp://localhost:57596/one/two/three/ in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/bug77680.php on line 7
004+ ==DONE==
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
017- ==DONE==
```

### ext/standard/tests/streams/bug77765.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: stat(): stat failed for ftp://localhost:50451/www in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/bug77765.php on line 7
004+ NULL
001- string(11) "SIZE /www
002- "
003- int(16877)
```

### ext/standard/tests/streams/opendir-001.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: opendir(ftp://localhost:59901/bogusdir): failed to open dir: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-001.php on line 7
001- Warning: opendir(ftp://localhost:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: opendir(ftp://localhost:50346/): failed to open dir: operation failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-002.php on line 7
004+ bool(false)
005+ 
006+ Warning: readdir() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-002.php on line 10
007+ 
008+ Warning: closedir() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-002.php on line 14
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(0) ""
002+ 
003+ Warning: opendir(ftps://127.0.0.1:65262/bogusdir): failed to open dir: Server doesn't support FTPS. in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-004.php on line 10
002+ 
003+ Warning: opendir(ftps://127.0.0.1:58498/): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-004.php on line 10
004+ bool(false)
005+ 
006+ Warning: readdir() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/opendir-004.php on line 12
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
008+ 
009+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/ftp/tests/server.inc on line 114
010+ SSLv23 handshake failed.
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
010+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
011+ 
012+ Warning: stream_select(): No stream arrays were passed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_select_preserve_keys.php on line 11
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
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
003+ 
004+ Warning: stream_socket_enable_crypto(): When enabling encryption you must specify the crypto type in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 7
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
008+ bool(false)
009+ 
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
011+ bool(false)
012+ 
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
014+ bool(false)
015+ 
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
017+ bool(false)
018+ 
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
020+ bool(false)
021+ 
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
023+ bool(false)
024+ 
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
003- Warning: stream_socket_enable_crypto(): When enabling encryption you must specify the crypto type in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 7
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_fa4185528d58abfd/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
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
