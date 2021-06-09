# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.7 (cli) (built: Jun  2 2021 00:40:57) ( NTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies
```

### control php -m

```plain
[PHP Modules]
bcmath
calendar
Core
ctype
date
dom
filter
hash
iconv
json
libxml
mysqlnd
pcre
PDO
Phar
readline
Reflection
session
SimpleXML
SPL
standard
tokenizer
xml
xmlreader
xmlwriter
Zend OPcache
zip
zlib

[Zend Modules]
Zend OPcache
```

### experiment php -v

```plain
PHP 8.0.7 (cli) (built: Jun  2 2021 00:40:57) ( NTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.7, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.7, Copyright (c), by Zend Technologies
```

### experiment php -m

```plain
[PHP Modules]
bcmath
calendar
Core
ctype
date
dom
filter
hash
iconv
json
libxml
mysqlnd
pcre
PDO
Phar
readline
Reflection
session
SimpleXML
SPL
standard
Swow
tokenizer
xml
xmlreader
xmlwriter
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
| 15885 | 10935 | 15918 | 0.2073% | 0.3018% |

## Behavior changes

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun  9 02:45:30 2021 (1904): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun  9 02:45:30 2021 (1904): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun  9 02:36:12 2021 (2616): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(foo/hi): %s (code: 3) in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
     
016+ Warning: opendir(foo/hi): Failed to open directory: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_5a8bde5824e70536/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): Failed to open directory: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 3640 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(notexist?): Failed to open directory: No such file or directory in %s on line %d
     
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specifi (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
     
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): Failed to open directory: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): Failed to open directory: Filename too long in %s on line %d
```

### ext/standard/tests/file/007_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     line of text
     li"
     
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\007_variation1.php on line 21
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
     
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\007_variation17.php on line 21
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
     
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\007_variation9.php on line 21
009- Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     bool(true)
     string(7) "Unknown"
--
```

### ext/standard/tests/file/bug65272.phpt

Test PASSED in control but FAILED in experiment

```patch
     bool(true)
     bool(false)
003+ int(0)
003- int(1)
     Done
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
     
003+ Notice: fwrite(): write of 4 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite.php on line 10
003- Notice: fwrite(): Write of 4 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     int(4)
--
```

### ext/standard/tests/file/fwrite_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     -- Opening file in r --
     int(0)
     
007+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
007- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
013+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
013- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
023+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
023- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
029+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
029- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
039+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
039- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
045+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
045- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
057+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
057- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
063+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
063- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
073+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
073- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
079+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
079- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
089+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
089- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
095+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
095- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
107+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
107- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
113+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
113- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
123+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
123- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
129+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
129- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
139+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
139- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
145+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
145- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
157+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
157- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
163+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
163- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
173+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
173- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
179+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
179- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
189+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 40
189- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
195+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 47
195- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
```

### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     -- Opening file in r --
     int(0)
     
007+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
007- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
013+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
013- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
023+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
023- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
029+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
029- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
039+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
039- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
045+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
045- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
057+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
057- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
063+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
063- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
073+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
073- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
079+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
079- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
089+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
089- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
095+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
095- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
107+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
107- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
113+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
113- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
123+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
123- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
129+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
129- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
139+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
139- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
145+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
145- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in r --
     int(0)
     
157+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
157- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
163+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
163- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rb --
     int(0)
     
173+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
173- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
179+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
179- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
     -- Opening file in rt --
     int(0)
     
189+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 39
189- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(0)
     bool(false)
     int(2)
     
195+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\fwrite_variation1.php on line 46
195- Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
     bool(false)
     int(2)
     bool(false)
--
```

### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       ["a"]=>
       string(4) "test"
     }
072+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub/parseIniFileVar私はガラスを食べられます.ini): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 48
073+ 
074+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 50
075+ 
076+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 51
077+ 
     *** Done ***
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     -- Iteration 2 --
     
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation-win32.php on line 29
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation11-win32.php on line 43
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation11-win32.php on line 43
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation11-win32.php on line 43
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation12-win32.php on line 41
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation12-win32.php on line 41
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation12-win32.php on line 41
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
     
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 1 testing '1' boolean --
     bool(true)
     
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 2 testing '' boolean --
     
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 36
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 3 testing '' NULL --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 36
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 4 testing '' string --
     
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 36
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 5 testing ' ' string --
     
--
     bool(false)
     -- 6 testing '/no/such/file/dir' string --
     
042+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 36
042- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
045+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
045- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 7 testing 'php/php' string --
     
049+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 36
049- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
052+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation13-win32.php on line 44
052- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Renaming existing file to existing directory name --
     
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation3-win32.php on line 28
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
     
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation8-win32.php on line 8
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
     
     *** Testing rename() on non-existing directory ***
     
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\rename_variation8-win32.php on line 28
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
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlink_error-win32-mb.php on line 37
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlink_error-win32.php on line 35
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 50
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 52
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlink_variation1-win32.php on line 49
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\file\unlink_variation1-win32.php on line 51
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_5a8bde5824e70536\ext\standard\tests\network\bindto.php on line 9
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

### ext/standard/tests/network/shutdown.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Client 1
     Client 2
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

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment beacuse

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

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_to_utf8_5.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'Voláçao3', got 'Vol��ao3'
     resource(%d) of type (stream)
     int(25)
     bool(true)
--
```

### ext/standard/tests/file/windows_mb_path/test_cp1255_to_utf8_1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'כללים מרובים42', got '????? ??????42'
     bool(true)
     bool(true)
     bool(true)
--
```
