# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.20 (cli) (built: Jun  1 2021 20:31:12) ( NTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.20, Copyright (c), by Zend Technologies
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
PHP 7.4.20 (cli) (built: Jun  1 2021 20:31:12) ( NTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.20, Copyright (c), by Zend Technologies
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
Caption=Intel64 Family 6 Model 85 Stepping 4
Name=Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 14955 | 9897 | 14988 | 0.2202% | 0.3334% |

## Behavior changes

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Thu Jun 10 04:11:41 2021 (3288): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Jun 10 04:11:41 2021 (3288): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Jun 10 04:02:03 2021 (1100): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
016+ Warning: opendir(foo/hi): failed to open dir: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_00253865db493a4f/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): failed to open dir: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ Child 3304 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specified. (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): failed to open dir: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): failed to open dir: Filename too long in %s on line %d
```

### ext/standard/tests/file/007_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\007_variation1.php on line 32
009- Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/007_variation17.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\007_variation17.php on line 32
009- Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/007_variation9.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fwrite(): Write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\007_variation9.php on line 32
009- Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/bug65272.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ int(0)
003- int(1)
```

### ext/standard/tests/file/fputcsv_variation14.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Notice: fputcsv(): Write of 12 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
009- Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in %s on line %d
021+ Notice: fputcsv(): Write of 12 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
021- Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in %s on line %d
033+ Notice: fputcsv(): Write of 12 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
033- Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in %s on line %d
045+ Notice: fputcsv(): Write of 15 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
045- Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in %s on line %d
057+ Notice: fputcsv(): Write of 15 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
057- Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in %s on line %d
069+ Notice: fputcsv(): Write of 15 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
069- Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in %s on line %d
081+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
081- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
093+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
093- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
105+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
105- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
117+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
117- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
129+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
129- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
141+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
141- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
153+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
153- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
165+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
165- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
177+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
177- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
189+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
189- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
201+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
201- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
213+ Notice: fputcsv(): Write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
213- Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in %s on line %d
225+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
225- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
237+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
237- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
249+ Notice: fputcsv(): Write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
249- Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in %s on line %d
261+ Notice: fputcsv(): Write of 22 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
261- Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in %s on line %d
273+ Notice: fputcsv(): Write of 22 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
273- Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in %s on line %d
285+ Notice: fputcsv(): Write of 22 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
285- Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in %s on line %d
297+ Notice: fputcsv(): Write of 24 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
297- Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in %s on line %d
309+ Notice: fputcsv(): Write of 24 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
309- Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in %s on line %d
321+ Notice: fputcsv(): Write of 24 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fputcsv_variation14.php on line 64
321- Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in %s on line %d
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
007+ Notice: fwrite(): Write of 4 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite.php on line 11
007- Notice: fwrite(): write of 4 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/fwrite_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
007- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
013+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
013- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
023+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
023- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
029+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
029- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
039+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
039- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
045+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
045- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
057+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
057- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
063+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
063- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
073+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
073- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
079+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
079- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
089+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
089- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
095+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
095- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
107+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
107- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
113+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
113- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
123+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
123- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
129+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
129- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
139+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
139- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
145+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
145- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
157+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
157- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
163+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
163- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
173+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
173- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
179+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
179- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
189+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
189- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
195+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
195- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
007- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
013+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
013- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
023+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
023- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
029+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
029- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
039+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
039- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
045+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
045- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
057+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
057- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
063+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
063- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
073+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
073- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
079+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
079- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
089+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
089- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
095+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
095- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
107+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
107- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
113+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
113- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
123+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
123- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
129+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
129- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
139+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
139- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
145+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
145- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
157+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
157- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
163+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
163- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
173+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
173- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
179+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
179- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
189+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 48
189- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
195+ Notice: fwrite(): Write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\fwrite_variation1.php on line 55
195- Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in %s on line %d
```

### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
072+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub/parseIniFileVar私はガラスを食べられます.ini): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 54
073+ 
074+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 56
075+ 
076+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 57
077+ 
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_00253865db493a4f\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/bug20134.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- bool(false)
```

### ext/standard/tests/network/shutdown.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Client 1
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

### ext/standard/tests/streams/bug49936_win32.phpt

Test PASSED in control but FAILED in experiment

```patch
002-  in %s on line %d
008-  in %s on line %d
```

### ext/standard/tests/streams/bug64433.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/url/get_headers_error_003.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
