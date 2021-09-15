# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.30 (cli) (built: Aug 25 2021 09:48:17) ( ZTS MSVC15 (Visual C++ 2017) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.30, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.30, Copyright (c) 1999-2018, by Zend Technologies
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
PHP 7.3.30 (cli) (built: Aug 25 2021 09:48:17) ( ZTS MSVC15 (Visual C++ 2017) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.30, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.30, Copyright (c) 1999-2018, by Zend Technologies
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
| 16152 | 13928 | 16216 | 0.3947% | 0.4595% |

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

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### Zend/tests/php_errormsg_misoptimization.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Deprecated: [Deprecated in main] Directive 'track_errors' is deprecated in Unknown on line 0
004+ 
```

### sapi/tests/bug69487.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: [Warning in main] Unknown: Unable to create temporary file, Check permissions in temporary files directory. in Unknown on line 0
004+ 
007+ Warning: [Warning in main] Unknown: POST data can't be buffered; all data discarded in Unknown on line 0
008+ 
010+ 
011+ Warning: [Warning in main] Cannot modify header information - headers already sent in Unknown on line 0
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

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\curl\tests\bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\curl\tests\bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
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

### ext/libxml/tests/bug61367-read.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: DOMDocument::loadXML(): I/O warning : failed to load external entity "file:///D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_e4843069b5e7dc7d/test_bug_61367-read/bad" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\libxml\tests\bug61367-read.php on line 14
009+ 
012+ Warning: DOMDocument::loadXML(): Failure to process entity file in Entity, line: 4 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\libxml\tests\bug61367-read.php on line 14
013+ 
015+ 
016+ Warning: DOMDocument::loadXML(): Entity 'file' not defined in Entity, line: 4 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\libxml\tests\bug61367-read.php on line 14
```

### ext/libxml/tests/bug61367-write.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: DOMDocument::save(): open_basedir restriction in effect. File(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\test_bug_61367-write/bad) is not within the allowed path(s): (.) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\libxml\tests\bug61367-write.php on line 7
009+ 
011+ 
012+ Warning: DOMDocument::save(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\test_bug_61367-write/bad): failed to open stream: Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\libxml\tests\bug61367-write.php on line 7
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
001+ Wed Sep 15 06:30:45 2021 (5688): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Sep 15 06:30:45 2021 (5688): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Sep 15 06:10:23 2021 (3904): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
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

### ext/standard/tests/file/bug60120.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- OK.
```

### ext/standard/tests/file/copy_variation16-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
050+ Warning: copy(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/copy_variation16/copy_variation16_sub/..///../*): failed to open stream: Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\copy_variation16-win32.php on line 49
050- Warning: copy(%s): failed to open stream: No such file or directory in %s on line %d
```

### ext/standard/tests/file/copy_variation6-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
049+ Warning: copy(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/copy_variation6/copy_variation6_sub/..///../*): failed to open stream: Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\copy_variation6-win32.php on line 44
049- Warning: copy(%s/copy_variation6/copy_variation6_sub/..///../*): failed to open stream: No such file or directory in %s on line %d
```

### ext/standard/tests/file/file_get_contents_variation5_64bit.phpt

Test PASSED in control but FAILED in experiment

```patch
030+ Error: 2 - file_get_contents(): Failed to seek to position 123456789000 in the stream, D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\file_get_contents_variation5_64bit.php(111)
031+ bool(false)
030- string(%d) %s
033- Error: 2 - file_get_contents(): Failed to seek to position -123456789000 in the stream, %s(%d)
034- bool(false)
034+ string(0) ""
```

### ext/standard/tests/file/fstat_variation8.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ FAIL: stat differs at '1'. 43740 -- 0
002+ FAIL: stat differs at 'ino'. 43740 -- 0
001- PASSED: all elements are the same
```

### ext/standard/tests/file/popen_pclose_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
014+ 'abc.txt' is not recognized as an internal or external command,
015+ operable program or batch file.
022- --- Done ---'abc.txt' is not recognized as an internal or external command,
024+ --- Done ---
023- operable program or batch file.
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/tempnam_variation7-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
037+ Warning: unlink(): Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\tempnam_variation7-win32.php on line 52
037- Warning: unlink(): %r(Invalid argument|No such file or directory)%r in %s on line %d
043+ Warning: unlink(): Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\tempnam_variation7-win32.php on line 52
043- Warning: unlink(): %r(Invalid argument|No such file or directory)%r in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/general_functions/proc_nice_basic-win.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Testing 'High priority' (-10): Failed ()
005- Testing 'High priority' (-10): Passed
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\network\bug80067.php on line 3
001- bool(true)
002+ bool(false)
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
005+ bool(false)
006+ bool(false)
007+ bool(false)
008+ bool(false)
009+ bool(false)
010+ bool(false)
011+ bool(false)
005- 
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
008- 
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010- bool(false)
011- 
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013- bool(false)
014- 
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016- bool(false)
017- 
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019- bool(false)
020- 
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022- bool(false)
023- 
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025- bool(false)
026- 
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028- bool(false)
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment beacuse

```patch
001+ string(0) ""
001- string(4) "����"
```

Test FAILED in both, but outputs is different.

```patch
001- failed to create dir 'D:\a\swow-bcreports\swow-bcreports\phpbc_ctrl_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\windows_mb_path\bug75063-cp1251\����'
002- string(8) "тест"
001+ string(0) ""
```

### ext/standard/tests/file/windows_mb_path/bug75063_utf8.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ failed to create dir 'D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_e4843069b5e7dc7d\ext\standard\tests\file\windows_mb_path\bug75063-utf8\тест'
```
