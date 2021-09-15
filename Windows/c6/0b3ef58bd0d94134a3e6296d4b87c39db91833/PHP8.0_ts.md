# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.10 (cli) (built: Aug 25 2021 08:46:03) ( ZTS Visual C++ 2019 x64 )
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
com_dotnet
Core
ctype
curl
date
dba
dom
enchant
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
PHP 8.0.10 (cli) (built: Aug 25 2021 08:46:03) ( ZTS Visual C++ 2019 x64 )
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
com_dotnet
Core
ctype
curl
date
dba
dom
enchant
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

### wmic os get Caption,CSDVersion,OSArchitecture,OSLanguage,TotalVisibleMemorySize,Version /value

```plain
Caption=Microsoft Windows Server 2019 Datacenter
CSDVersion=
OSArchitecture=64-bit
OSLanguage=1033
TotalVisibleMemorySize=7339572
Version=10.0.17763
```

### wmic cpu get Caption,Name,NumberOfCores,NumberOfLogicalProcessors,Architecture /value

```plain
Architecture=9
Caption=Intel64 Family 6 Model 79 Stepping 1
Name=Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15761 | 13689 | 15807 | 0.2910% | 0.3360% |

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
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\curl\tests\bug78775.php:19
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\curl\tests\bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\curl\tests\bug78775.php on line 19
```

### ext/enchant/tests/broker_dict_exists.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\enchant\tests\broker_dict_exists.php on line 5
001- OK
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\enchant\tests\broker_dict_exists.php on line 5
004+ 
005+ ** (php.exe:3432): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
006+ dicts dont exist failed
```

Test FAILED in both, but outputs is different.

```patch
005+ ** (php.exe:3432): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
005- ** (php.exe:3372): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
```

### ext/enchant/tests/broker_set_ordering.phpt

Test FAILED in experiment beacuse

```patch
002+ 
003+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\enchant\tests\broker_set_ordering.php on line 8
004+ 
005+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\enchant\tests\broker_set_ordering.php on line 8
006+ 
007+ ** (php.exe:4260): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
     OK
     OK
```

Test FAILED in both, but outputs is different.

```patch
007+ ** (php.exe:4260): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
007- ** (php.exe:2800): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
```

### ext/libxml/tests/bug61367-read.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     Warning: DOMDocument::loadXML(): I/O warning : failed to load external entity "file:///%s/test_bug_61367-read/bad" in %s on line %d
008+ Warning: DOMDocument::loadXML(): I/O warning : failed to load external entity "file:///D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_1b59abb39daedbfe/test_bug_61367-read/bad" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-read.php on line 14
009+ 
     Warning: DOMDocument::loadXML(): Failure to process entity file in Entity, line: 4 in %s on line %d
012+ Warning: DOMDocument::loadXML(): Failure to process entity file in Entity, line: 4 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-read.php on line 14
013+ 
     Warning: DOMDocument::loadXML(): Entity 'file' not defined in Entity, line: 4 in %s on line %d
016+ Warning: DOMDocument::loadXML(): Entity 'file' not defined in Entity, line: 4 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-read.php on line 14
017+ 
     Warning: Attempt to read property "firstChild" on null in %s on line %d
020+ Warning: Attempt to read property "firstChild" on null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-read.php on line 19
021+ 
     Warning: Attempt to read property "nodeValue" on null in %s on line %d
023+ 
024+ Warning: Attempt to read property "nodeValue" on null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-read.php on line 19
```

### ext/libxml/tests/bug61367-write.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     Warning: DOMDocument::save(): open_basedir restriction in effect. File(%s) is not within the allowed path(s): (.) in %s on line %d
008+ Warning: DOMDocument::save(): open_basedir restriction in effect. File(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\test_bug_61367-write/bad) is not within the allowed path(s): (.) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-write.php on line 7
009+ 
011+ 
012+ Warning: DOMDocument::save(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\test_bug_61367-write/bad): Failed to open stream: Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\libxml\tests\bug61367-write.php on line 7
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
001+ Wed Sep 15 06:27:28 2021 (5588): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Sep 15 06:27:28 2021 (5588): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Sep 15 06:11:26 2021 (5048): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
     done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3406;dbname=pdotest, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3406;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it
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
009+ Fatal error: Uncaught Error: Call to undefined function undefined_function() in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\session\tests\bug60634_error_3.php:20
010+ Stack trace:
011+ #0 [internal function]: write('45f082895376a06...', '')
012+ #1 {main}
013+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\session\tests\bug60634_error_3.php on line 20
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
009+ Fatal error: Uncaught Exception in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\session\tests\bug60634_error_4.php:20
010+ Stack trace:
011+ #0 [internal function]: write('70f62d99b4777ab...', '')
012+ #1 {main}
013+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\session\tests\bug60634_error_4.php on line 20
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

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 4808 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/file/bug81145.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- Identical
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

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     -- Iteration 2 --
     
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation-win32.php on line 29
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect (code: 123) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Iteration 5 --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation11-win32.php on line 43
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation11-win32.php on line 43
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation11-win32.php on line 43
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 12 --
--
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Iteration 5 --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation12-win32.php on line 41
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation12-win32.php on line 41
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation12-win32.php on line 41
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     *** Done ***
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     -- 0 testing '-1' integer --
     bool(true)
     
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 1 testing '1' boolean --
     bool(true)
     
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 2 testing '' boolean --
     
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 36
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 3 testing '' NULL --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 36
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 4 testing '' string --
     
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 36
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 5 testing ' ' string --
     
--
     bool(false)
     -- 6 testing '/no/such/file/dir' string --
     
042+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 36
042- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
045+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
045- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 7 testing 'php/php' string --
     
049+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 36
049- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
052+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation13-win32.php on line 44
052- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Renaming existing file to existing directory name --
     
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation3-win32.php on line 28
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied (code: 5) in %s on line %d
     bool(false)
     bool(true)
     bool(true)
--
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
     *** Testing rename() on non-existing file ***
     
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation8-win32.php on line 8
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
     
     *** Testing rename() on non-existing directory ***
     
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\rename_variation8-win32.php on line 28
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlink_error-win32-mb.php on line 37
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlink_error-win32.php on line 35
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     -- Unlinking file without write permission, its dir having default permission --
010+ bool(true)
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 50
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 52
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     
     -- Unlinking file without write permission, its dir having default permission --
010+ bool(true)
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlink_variation1-win32.php on line 49
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\file\unlink_variation1-win32.php on line 51
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug20134.phpt

Test PASSED in control but FAILED in experiment

```patch
     int(1)
002+ string(0) ""
002- bool(false)
```

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_1b59abb39daedbfe\ext\standard\tests\network\bug80067.php on line 3
001- bool(true)
002+ bool(false)
```

### ext/standard/tests/network/shutdown.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- Client 1
002- Client 2
```

### ext/standard/tests/network/tcp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/network/udp6loop.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
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
