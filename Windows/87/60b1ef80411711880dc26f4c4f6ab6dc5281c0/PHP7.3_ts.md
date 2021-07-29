# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.29 (cli) (built: Jun 29 2021 12:30:04) ( ZTS MSVC15 (Visual C++ 2017) x64 )
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
com_dotnet
Core
ctype
curl
date
dba
dom
enchant
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
PHP 7.3.29 (cli) (built: Jun 29 2021 12:30:04) ( ZTS MSVC15 (Visual C++ 2017) x64 )
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
com_dotnet
Core
ctype
curl
date
dba
dom
enchant
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
Caption=Intel64 Family 6 Model 63 Stepping 2
Name=Intel(R) Xeon(R) CPU E5-2673 v3 @ 2.40GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16136 | 13927 | 16215 | 0.4872% | 0.5672% |

## Behavior changes

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### ext/bcmath/tests/bcadd.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcadd_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcadd_variation001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bccomp.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bccomp_variation001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bccomp_variation002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcdiv.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcdiv_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcdiv_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcmod.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcmod_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcmod_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcmul.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcmul_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpow.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpow_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpow_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpow_error3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpow_variation001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpowmod.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpowmod_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpowmod_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpowmod_error3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcpowmod_error4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcscale.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcscale_variation001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcscale_variation002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcscale_variation003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcsqrt.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcsqrt_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcsqrt_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcsqrt_variation001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcsub.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bcsub_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug.66364.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug44995.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug46781.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug54598.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug60377.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug72093.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug75178.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/bug78878.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/scale.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/bcmath/tests/scale_ini.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/curl/tests/bug48203_multi.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ * Server doesn't support multiplex (yet)
006+ * Closing connection 0
007+ * Closing connection 1
015- Hello World!
016- Hello World!Hello World!
017- Hello World!Ok for CURLOPT_FILE
018+ Ok for CURLOPT_FILE
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

### ext/dba/tests/bug78808.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- done
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Thu Jul 29 09:18:27 2021 (5936): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Jul 29 09:18:27 2021 (5936): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Jul 29 08:58:16 2021 (1620): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test FAILED in experiment beacuse

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

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- string(12) "test message"
```

### ext/sockets/tests/socket_export_stream-4-win.phpt

Test PASSED in control but FAILED in experiment

```patch
020+ socket_set_block 1
021+ socket_get_option 2
022+ 
023+ 
024+ close socket
025+ stream_set_blocking 
026+ Warning: stream_set_blocking(): supplied resource is not a valid stream resource in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\sockets\tests\socket_export_stream-4-win.php on line 6
027+ 
021- Warning: socket_set_block(): unable to set blocking mode [%d]: An operation was attempted on something that is not a socket.
022-  in %s on line %d
025- Warning: socket_get_option(): unable to retrieve socket option [%d]: An operation was attempted on something that is not a socket.
026-  in %s on line %d
029+ Warning: socket_set_block(): supplied resource is not a valid Socket resource in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\sockets\tests\socket_export_stream-4-win.php on line 11
029- 
032+ Warning: socket_get_option(): supplied resource is not a valid Socket resource in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\sockets\tests\socket_export_stream-4-win.php on line 14
035+ Done.
030- close socket
031- stream_set_blocking 
032- Warning: stream_set_blocking(): supplied resource is not a valid stream resource in %s on line %d
033- 
034- socket_set_block 
035- Warning: socket_set_block(): supplied resource is not a valid Socket resource in %s on line %d
036- 
037- socket_get_option 
038- Warning: socket_get_option(): supplied resource is not a valid Socket resource in %s on line %d
039- 
040- 
041- Done.
```

### ext/standard/tests/file/copy_variation16-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
050+ Warning: copy(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/copy_variation16/copy_variation16_sub/..///../*): failed to open stream: Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\copy_variation16-win32.php on line 49
050- Warning: copy(%s): failed to open stream: No such file or directory in %s on line %d
```

### ext/standard/tests/file/copy_variation6-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
049+ Warning: copy(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/copy_variation6/copy_variation6_sub/..///../*): failed to open stream: Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\copy_variation6-win32.php on line 44
049- Warning: copy(%s/copy_variation6/copy_variation6_sub/..///../*): failed to open stream: No such file or directory in %s on line %d
```

### ext/standard/tests/file/file_get_contents_variation5_64bit.phpt

Test PASSED in control but FAILED in experiment

```patch
030+ Error: 2 - file_get_contents(): Failed to seek to position 123456789000 in the stream, D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\file_get_contents_variation5_64bit.php(111)
031+ bool(false)
030- string(%d) %s
033- Error: 2 - file_get_contents(): Failed to seek to position -123456789000 in the stream, %s(%d)
034- bool(false)
034+ string(0) ""
```

### ext/standard/tests/file/fstat_variation8.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ FAIL: stat differs at '1'. 43406 -- 0
002+ FAIL: stat differs at 'ino'. 43406 -- 0
001- PASSED: all elements are the same
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/tempnam_variation7-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
037+ Warning: unlink(): Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\tempnam_variation7-win32.php on line 52
037- Warning: unlink(): %r(Invalid argument|No such file or directory)%r in %s on line %d
043+ Warning: unlink(): Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\tempnam_variation7-win32.php on line 52
043- Warning: unlink(): %r(Invalid argument|No such file or directory)%r in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/shutdown.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- Client 1
002- Client 2
```

### ext/standard/tests/streams/bug49936_win32.phpt

Test PASSED in control but FAILED in experiment

```patch
002-  in %s on line %d
008-  in %s on line %d
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```

### ext/standard/tests/streams/stream_get_meta_data_socket_variation2.phpt

Test PASSED in control but FAILED in experiment

```patch
060+   bool(true)
060-   bool(false)
```

### ext/standard/tests/streams/stream_socket_enable_crypto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\streams\stream_socket_enable_crypto.php on line 15
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment beacuse

```patch
001+ string(8) "тест"
001- string(4) "����"
```

Test FAILED in both, but outputs is different.

```patch
001- failed to create dir 'D:\a\swow-bcreports\swow-bcreports\phpbc_ctrl_phpsrc_97149de35d438385\ext\standard\tests\file\windows_mb_path\bug75063-cp1251\����'
002- string(4) "����"
001+ string(8) "тест"
```

### ext/standard/tests/file/windows_mb_path/bug75063_utf8.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ failed to create dir 'D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_97149de35d438385\ext\standard\tests\file\windows_mb_path\bug75063-utf8\тест'
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in experiment beacuse

```patch
001+ expected 'gef��', got 'gefäß'
004- gef��
005+ gefäß
```

Test FAILED in both, but outputs is different.

```patch
005+ gefäß
005- gef��
```
