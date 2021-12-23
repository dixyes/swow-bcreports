# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.1.1 (cli) (built: Dec 15 2021 10:36:13) (NTS Visual C++ 2019 x64)
Copyright (c) The PHP Group
Zend Engine v4.1.1, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.1, Copyright (c), by Zend Technologies
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
PHP 8.1.1 (cli) (built: Dec 15 2021 10:36:13) (NTS Visual C++ 2019 x64)
Copyright (c) The PHP Group
Zend Engine v4.1.1, Copyright (c) Zend Technologies
    with Zend OPcache v8.1.1, Copyright (c), by Zend Technologies
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
Caption=Intel64 Family 6 Model 63 Stepping 2
Name=Intel(R) Xeon(R) CPU E5-2673 v3 @ 2.40GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16405 | 14566 | 16436 | 0.1886% | 0.2128% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\curl\tests\bug78775.php:19
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\curl\tests\bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\curl\tests\bug78775.php on line 19
```

### ext/enchant/tests/broker_dict_exists.phpt

Test FAILED in experiment because

```patch
001+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\enchant\tests\broker_dict_exists.php on line 5
001- OK
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\enchant\tests\broker_dict_exists.php on line 5
004+ 
005+ Deprecated: enchant_broker_dict_exists(): Passing null to parameter #2 ($tag) of type string is deprecated in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\enchant\tests\broker_dict_exists.php on line 5
006+ 
007+ ** (php.exe:1696): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
008+ dicts dont exist failed
```

Test FAILED in both, but outputs is different.

```patch
007+ ** (php.exe:1696): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
007- ** (php.exe:1272): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
```

### ext/enchant/tests/broker_set_ordering.phpt

Test FAILED in experiment because

```patch
002+ 
003+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\enchant\tests\broker_set_ordering.php on line 8
004+ 
005+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\enchant\tests\broker_set_ordering.php on line 8
006+ 
007+ Deprecated: enchant_broker_set_ordering(): Passing null to parameter #2 ($tag) of type string is deprecated in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\enchant\tests\broker_set_ordering.php on line 8
008+ 
009+ ** (php.exe:764): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
     OK
     OK
```

Test FAILED in both, but outputs is different.

```patch
009+ ** (php.exe:764): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
009- ** (php.exe:4272): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       [0]=>
       string(10) "Ssl_cipher"
       [1]=>
005+   string(27) "ECDHE-RSA-AES256-GCM-SHA384"
005-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
     }
     array(2) {
       [0]=>
       string(10) "Ssl_cipher"
       [1]=>
011+   string(27) "ECDHE-RSA-AES256-GCM-SHA384"
011-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
     }
     done
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment because

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
005+ Fetching from thread 1125...
005- Fetching from thread 1126...
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Thu Dec 23 04:41:08 2021 (6496): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Dec 23 04:41:08 2021 (6496): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Dec 23 04:26:39 2021 (1696): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(foo/hi): %s (code: 3) in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
     
016+ Warning: opendir(foo/hi): Failed to open directory: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_49a92f137312a8f6/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): Failed to open directory: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 1452 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(notexist?): Failed to open directory: No such file or directory in %s on line %d
     
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specifi (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
     
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): Failed to open directory: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): Failed to open directory: Filename too long in %s on line %d
```

### ext/standard/tests/file/bug81145.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- Identical
```

### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       ["a"]=>
       string(4) "test"
     }
072+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub/parseIniFileVar私はガラスを食べられます.ini): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 48
073+ 
074+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 50
075+ 
076+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 51
077+ 
     *** Done ***
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     -- Iteration 2 --
     
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation-win32.php on line 29
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation11-win32.php on line 43
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation11-win32.php on line 43
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation11-win32.php on line 43
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation12-win32.php on line 41
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation12-win32.php on line 41
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation12-win32.php on line 41
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
     
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 43
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 1 testing '1' boolean --
     bool(true)
     
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 43
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 2 testing '' boolean --
     
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 35
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 43
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 3 testing '' string --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 35
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 43
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 4 testing ' ' string --
     
--
     bool(false)
     -- 5 testing '/no/such/file/dir' string --
     
035+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 35
035- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
038+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 43
038- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 6 testing 'php/php' string --
     
042+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 35
042- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
045+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation13-win32.php on line 43
045- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Renaming existing file to existing directory name --
     
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation3-win32.php on line 28
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
     
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation8-win32.php on line 8
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
     
     *** Testing rename() on non-existing directory ***
     
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\rename_variation8-win32.php on line 28
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
     
020+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlink_error-win32-mb.php on line 34
020- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
020+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlink_error-win32.php on line 32
020- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 50
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 52
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlink_variation1-win32.php on line 49
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\file\unlink_variation1-win32.php on line 51
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_49a92f137312a8f6\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo for www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo for %s failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug20134.phpt

Test PASSED in control but FAILED in experiment

```patch
     int(1)
002+ string(0) ""
002- bool(false)
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

### ext/standard/tests/streams/stream_select_null_usec.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       [0]=>
       resource(%d) of type (stream)
     }
006+ 8192 stream_select(): Argument #5 ($microseconds) should be null instead of 0 when argument #4 ($seconds) is null
     
     Fatal error: Uncaught ValueError: stream_select(): Argument #5 ($microseconds) must be null when argument #4 ($seconds) is null in %s
     Stack trace:
--
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment because

```patch
001+ expected '����', got 'тест'
     string(4) "����"
     bool(true)
     string(%d) "%sbug75063-cp1251%e����"
--
```

Test FAILED in both, but outputs is different.

```patch
002+ string(4) "����"
002- string(8) "тест"
```

### ext/standard/tests/file/windows_mb_path/bug75063_utf8.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
