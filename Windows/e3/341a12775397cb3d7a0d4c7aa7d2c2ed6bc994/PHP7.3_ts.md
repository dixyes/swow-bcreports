# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.28 (cli) (built: Apr 27 2021 17:19:33) ( ZTS MSVC15 (Visual C++ 2017) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.28, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.28, Copyright (c) 1999-2018, by Zend Technologies
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
wddx
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
PHP 7.3.28 (cli) (built: Apr 27 2021 17:19:33) ( ZTS MSVC15 (Visual C++ 2017) x64 )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.28, Copyright (c) 1998-2018 Zend Technologies
    with Zend OPcache v7.3.28, Copyright (c) 1999-2018, by Zend Technologies
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
wddx
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
Caption=Intel64 Family 6 Model 79 Stepping 1
Name=Intel(R) Xeon(R) CPU E5-2673 v4 @ 2.30GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16152 | 11062 | 16210 | 0.3578% | 0.5243% |

## Behavior changes

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Mon Jun  7 06:20:09 2021 (3244): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Jun  7 06:20:09 2021 (3244): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Jun  7 06:10:59 2021 (3096): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/intl/tests/locale/bug74993.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/007_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation1.php on line 32
```

### ext/standard/tests/file/007_variation11-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation11-win32-mb.php on line 35
```

### ext/standard/tests/file/007_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation11-win32.php on line 35
```

### ext/standard/tests/file/007_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation13-win32.php on line 32
```

### ext/standard/tests/file/007_variation15.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation15.php on line 32
```

### ext/standard/tests/file/007_variation17.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation17.php on line 32
```

### ext/standard/tests/file/007_variation19.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation19.php on line 35
```

### ext/standard/tests/file/007_variation21.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation21.php on line 32
```

### ext/standard/tests/file/007_variation23.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation23.php on line 32
```

### ext/standard/tests/file/007_variation3.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation3.php on line 35
```

### ext/standard/tests/file/007_variation5.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ 
006+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation5.php on line 32
```

### ext/standard/tests/file/007_variation7.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ 
008+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation7.php on line 32
```

### ext/standard/tests/file/007_variation9.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fwrite(): write of 37 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\007_variation9.php on line 32
```

### ext/standard/tests/file/bug35781.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: fpassthru(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\bug35781.php on line 9
```

### ext/standard/tests/file/bug65272.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ int(0)
003- int(1)
```

### ext/standard/tests/file/copy_variation16-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
050+ Warning: copy(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/copy_variation16/copy_variation16_sub/..///../*): failed to open stream: Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\copy_variation16-win32.php on line 49
050- Warning: copy(%s): failed to open stream: No such file or directory in %s on line %d
```

### ext/standard/tests/file/copy_variation6-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
049+ Warning: copy(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/copy_variation6/copy_variation6_sub/..///../*): failed to open stream: Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\copy_variation6-win32.php on line 44
049- Warning: copy(%s/copy_variation6/copy_variation6_sub/..///../*): failed to open stream: No such file or directory in %s on line %d
```

### ext/standard/tests/file/fgetc_variation3.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
015+ 
016+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
024+ 
025+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
033+ 
034+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
042+ 
043+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
051+ 
052+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
060+ 
061+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
069+ 
070+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
078+ 
079+ Notice: fgetc(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetc_variation3.php on line 36
```

### ext/standard/tests/file/fgetcsv_variation26.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
011+ 
012+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
018+ 
019+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
025+ 
026+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
032+ 
033+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
039+ 
040+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
046+ 
047+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
053+ 
054+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
060+ 
061+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
067+ 
068+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
074+ 
075+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
081+ 
082+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
088+ 
089+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
095+ 
096+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
102+ 
103+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
109+ 
110+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
116+ 
117+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
123+ 
124+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
130+ 
131+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
137+ 
138+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
144+ 
145+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
151+ 
152+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
158+ 
159+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
165+ 
166+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
172+ 
173+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
179+ 
180+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
186+ 
187+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
193+ 
194+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
200+ 
201+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
207+ 
208+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
214+ 
215+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
221+ 
222+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
228+ 
229+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
235+ 
236+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
242+ 
243+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
249+ 
250+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
256+ 
257+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
263+ 
264+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
270+ 
271+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
277+ 
278+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
284+ 
285+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
291+ 
292+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
298+ 
299+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
305+ 
306+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
312+ 
313+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
319+ 
320+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
326+ 
327+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
333+ 
334+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
340+ 
341+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
347+ 
348+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
354+ 
355+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
361+ 
362+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
368+ 
369+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
375+ 
376+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
382+ 
383+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
389+ 
390+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
396+ 
397+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
403+ 
404+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
410+ 
411+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
417+ 
418+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
424+ 
425+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
431+ 
432+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
438+ 
439+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
445+ 
446+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
452+ 
453+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
459+ 
460+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
466+ 
467+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
473+ 
474+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
480+ 
481+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
487+ 
488+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
494+ 
495+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
501+ 
502+ Notice: fgetcsv(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetcsv_variation26.php on line 62
```

### ext/standard/tests/file/fgets_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
015+ 
016+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
024+ 
025+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
033+ 
034+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
042+ 
043+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
051+ 
052+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
060+ 
061+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
069+ 
070+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
078+ 
079+ Notice: fgets(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgets_variation1.php on line 35
```

### ext/standard/tests/file/fgetss_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ 
010+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
021+ 
022+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
033+ 
034+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
045+ 
046+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
057+ 
058+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
069+ 
070+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
081+ 
082+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
093+ 
094+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
105+ 
106+ Notice: fgetss(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fgetss_variation1-win32.php on line 60
```

### ext/standard/tests/file/file_get_contents_variation5_64bit.phpt

Test PASSED in control but FAILED in experiment

```patch
030+ Error: 2 - file_get_contents(): Failed to seek to position 123456789000 in the stream, D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\file_get_contents_variation5_64bit.php(111)
031+ bool(false)
030- string(%d) %s
033- Error: 2 - file_get_contents(): Failed to seek to position -123456789000 in the stream, %s(%d)
034- bool(false)
034+ string(0) ""
```

### ext/standard/tests/file/fputcsv_variation14.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ 
009+ Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
020+ 
021+ Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
032+ 
033+ Notice: fputcsv(): write of 12 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
044+ 
045+ Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
056+ 
057+ Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
068+ 
069+ Notice: fputcsv(): write of 15 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
080+ 
081+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
092+ 
093+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
104+ 
105+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
116+ 
117+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
128+ 
129+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
140+ 
141+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
152+ 
153+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
164+ 
165+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
176+ 
177+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
188+ 
189+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
200+ 
201+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
212+ 
213+ Notice: fputcsv(): write of 16 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
224+ 
225+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
236+ 
237+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
248+ 
249+ Notice: fputcsv(): write of 18 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
260+ 
261+ Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
272+ 
273+ Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
284+ 
285+ Notice: fputcsv(): write of 22 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
296+ 
297+ Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
308+ 
309+ Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
320+ 
321+ Notice: fputcsv(): write of 24 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fputcsv_variation14.php on line 64
```

### ext/standard/tests/file/fread_variation2.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Reading 1024 bytes from file, expecting 0 bytes ... 
009+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
010+ OK
008- Reading 1024 bytes from file, expecting 0 bytes ... OK
015- Reading 1000 bytes from file, expecting 0 bytes ... OK
017+ Reading 1000 bytes from file, expecting 0 bytes ... 
018+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
019+ OK
023- Reading 1024 bytes from file, expecting 0 bytes ... OK
027+ Reading 1024 bytes from file, expecting 0 bytes ... 
028+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
029+ OK
030- Reading 1000 bytes from file, expecting 0 bytes ... OK
036+ Reading 1000 bytes from file, expecting 0 bytes ... 
037+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
038+ OK
038- Reading 1024 bytes from file, expecting 0 bytes ... OK
045- Reading 1000 bytes from file, expecting 0 bytes ... OK
046+ Reading 1024 bytes from file, expecting 0 bytes ... 
047+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
048+ OK
053- Reading 1024 bytes from file, expecting 0 bytes ... OK
055+ Reading 1000 bytes from file, expecting 0 bytes ... 
056+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
057+ OK
060- Reading 1000 bytes from file, expecting 0 bytes ... OK
065+ Reading 1024 bytes from file, expecting 0 bytes ... 
066+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
067+ OK
068- Reading 1024 bytes from file, expecting 0 bytes ... OK
074+ Reading 1000 bytes from file, expecting 0 bytes ... 
075+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
076+ OK
075- Reading 1000 bytes from file, expecting 0 bytes ... OK
083- Reading 1024 bytes from file, expecting 0 bytes ... OK
084+ Reading 1024 bytes from file, expecting 0 bytes ... 
085+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
086+ OK
090- Reading 1000 bytes from file, expecting 0 bytes ... OK
093+ Reading 1000 bytes from file, expecting 0 bytes ... 
094+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
095+ OK
098- Reading 1024 bytes from file, expecting 0 bytes ... OK
103+ Reading 1024 bytes from file, expecting 0 bytes ... 
104+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
105+ OK
105- Reading 1000 bytes from file, expecting 0 bytes ... OK
112+ Reading 1000 bytes from file, expecting 0 bytes ... 
113+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
114+ OK
113- Reading 1024 bytes from file, expecting 0 bytes ... OK
120- Reading 1000 bytes from file, expecting 0 bytes ... OK
122+ Reading 1024 bytes from file, expecting 0 bytes ... 
123+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
124+ OK
128- Reading 1024 bytes from file, expecting 0 bytes ... OK
131+ Reading 1000 bytes from file, expecting 0 bytes ... 
132+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
133+ OK
135- Reading 1000 bytes from file, expecting 0 bytes ... OK
141+ Reading 1024 bytes from file, expecting 0 bytes ... 
142+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
143+ OK
145- Reading 1024 bytes from file, expecting 0 bytes ... OK
150+ Reading 1000 bytes from file, expecting 0 bytes ... 
151+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
152+ OK
152- Reading 1000 bytes from file, expecting 0 bytes ... OK
160+ Reading 1024 bytes from file, expecting 0 bytes ... 
161+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
162+ OK
160- Reading 1024 bytes from file, expecting 0 bytes ... OK
167- Reading 1000 bytes from file, expecting 0 bytes ... OK
169+ Reading 1000 bytes from file, expecting 0 bytes ... 
170+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
171+ OK
175- Reading 1024 bytes from file, expecting 0 bytes ... OK
181+ Reading 1024 bytes from file, expecting 0 bytes ... 
182+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
183+ OK
182- Reading 1000 bytes from file, expecting 0 bytes ... OK
190+ Reading 1000 bytes from file, expecting 0 bytes ... 
191+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
192+ OK
190- Reading 1024 bytes from file, expecting 0 bytes ... OK
197- Reading 1000 bytes from file, expecting 0 bytes ... OK
200+ Reading 1024 bytes from file, expecting 0 bytes ... 
201+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
202+ OK
205- Reading 1024 bytes from file, expecting 0 bytes ... OK
209+ Reading 1000 bytes from file, expecting 0 bytes ... 
210+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
211+ OK
212- Reading 1000 bytes from file, expecting 0 bytes ... OK
219+ Reading 1024 bytes from file, expecting 0 bytes ... 
220+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
221+ OK
220- Reading 1024 bytes from file, expecting 0 bytes ... OK
227- Reading 1000 bytes from file, expecting 0 bytes ... OK
228+ Reading 1000 bytes from file, expecting 0 bytes ... 
229+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
230+ OK
235- Reading 1024 bytes from file, expecting 0 bytes ... OK
238+ Reading 1024 bytes from file, expecting 0 bytes ... 
239+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
240+ OK
242- Reading 1000 bytes from file, expecting 0 bytes ... OK
247+ Reading 1000 bytes from file, expecting 0 bytes ... 
248+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
249+ OK
250- Reading 1024 bytes from file, expecting 0 bytes ... OK
257+ Reading 1024 bytes from file, expecting 0 bytes ... 
258+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
259+ OK
257- Reading 1000 bytes from file, expecting 0 bytes ... OK
265- Reading 1024 bytes from file, expecting 0 bytes ... OK
266+ Reading 1000 bytes from file, expecting 0 bytes ... 
267+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
268+ OK
272- Reading 1000 bytes from file, expecting 0 bytes ... OK
276+ Reading 1024 bytes from file, expecting 0 bytes ... 
277+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
278+ OK
282- Reading 1024 bytes from file, expecting 0 bytes ... OK
285+ Reading 1000 bytes from file, expecting 0 bytes ... 
286+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
287+ OK
289- Reading 1000 bytes from file, expecting 0 bytes ... OK
295+ Reading 1024 bytes from file, expecting 0 bytes ... 
296+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
297+ OK
297- Reading 1024 bytes from file, expecting 0 bytes ... OK
304+ Reading 1000 bytes from file, expecting 0 bytes ... 
305+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
306+ OK
304- Reading 1000 bytes from file, expecting 0 bytes ... OK
312- Reading 1024 bytes from file, expecting 0 bytes ... OK
314+ Reading 1024 bytes from file, expecting 0 bytes ... 
315+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
316+ OK
319- Reading 1000 bytes from file, expecting 0 bytes ... OK
323+ Reading 1000 bytes from file, expecting 0 bytes ... 
324+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
325+ OK
327- Reading 1024 bytes from file, expecting 0 bytes ... OK
333+ Reading 1024 bytes from file, expecting 0 bytes ... 
334+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
335+ OK
334- Reading 1000 bytes from file, expecting 0 bytes ... OK
342+ Reading 1000 bytes from file, expecting 0 bytes ... 
343+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
344+ OK
342- Reading 1024 bytes from file, expecting 0 bytes ... OK
349- Reading 1000 bytes from file, expecting 0 bytes ... OK
354+ Reading 1024 bytes from file, expecting 0 bytes ... 
355+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
356+ OK
357- Reading 1024 bytes from file, expecting 0 bytes ... OK
363+ Reading 1000 bytes from file, expecting 0 bytes ... 
364+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
365+ OK
364- Reading 1000 bytes from file, expecting 0 bytes ... OK
372- Reading 1024 bytes from file, expecting 0 bytes ... OK
373+ Reading 1024 bytes from file, expecting 0 bytes ... 
374+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
375+ OK
379- Reading 1000 bytes from file, expecting 0 bytes ... OK
382+ Reading 1000 bytes from file, expecting 0 bytes ... 
383+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
384+ OK
387- Reading 1024 bytes from file, expecting 0 bytes ... OK
392+ Reading 1024 bytes from file, expecting 0 bytes ... 
393+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
394+ OK
394- Reading 1000 bytes from file, expecting 0 bytes ... OK
401+ Reading 1000 bytes from file, expecting 0 bytes ... 
402+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
403+ OK
402- Reading 1024 bytes from file, expecting 0 bytes ... OK
409- Reading 1000 bytes from file, expecting 0 bytes ... OK
411+ Reading 1024 bytes from file, expecting 0 bytes ... 
412+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
413+ OK
419- Reading 1024 bytes from file, expecting 0 bytes ... OK
420+ Reading 1000 bytes from file, expecting 0 bytes ... 
421+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
422+ OK
426- Reading 1000 bytes from file, expecting 0 bytes ... OK
430+ Reading 1024 bytes from file, expecting 0 bytes ... 
431+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
432+ OK
434- Reading 1024 bytes from file, expecting 0 bytes ... OK
439+ Reading 1000 bytes from file, expecting 0 bytes ... 
440+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
441+ OK
441- Reading 1000 bytes from file, expecting 0 bytes ... OK
449+ Reading 1024 bytes from file, expecting 0 bytes ... 
450+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
451+ OK
449- Reading 1024 bytes from file, expecting 0 bytes ... OK
456- Reading 1000 bytes from file, expecting 0 bytes ... OK
458+ Reading 1000 bytes from file, expecting 0 bytes ... 
459+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
460+ OK
464- Reading 1024 bytes from file, expecting 0 bytes ... OK
468+ Reading 1024 bytes from file, expecting 0 bytes ... 
469+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
470+ OK
471- Reading 1000 bytes from file, expecting 0 bytes ... OK
477+ Reading 1000 bytes from file, expecting 0 bytes ... 
478+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
479+ OK
479- Reading 1024 bytes from file, expecting 0 bytes ... OK
486- Reading 1000 bytes from file, expecting 0 bytes ... OK
487+ Reading 1024 bytes from file, expecting 0 bytes ... 
488+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
489+ OK
494- Reading 1024 bytes from file, expecting 0 bytes ... OK
496+ Reading 1000 bytes from file, expecting 0 bytes ... 
497+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
498+ OK
501- Reading 1000 bytes from file, expecting 0 bytes ... OK
506+ Reading 1024 bytes from file, expecting 0 bytes ... 
507+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
508+ OK
509- Reading 1024 bytes from file, expecting 0 bytes ... OK
515+ Reading 1000 bytes from file, expecting 0 bytes ... 
516+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
517+ OK
516- Reading 1000 bytes from file, expecting 0 bytes ... OK
524- Reading 1024 bytes from file, expecting 0 bytes ... OK
527+ Reading 1024 bytes from file, expecting 0 bytes ... 
528+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
529+ OK
531- Reading 1000 bytes from file, expecting 0 bytes ... OK
536+ Reading 1000 bytes from file, expecting 0 bytes ... 
537+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
538+ OK
539- Reading 1024 bytes from file, expecting 0 bytes ... OK
546+ Reading 1024 bytes from file, expecting 0 bytes ... 
547+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
548+ OK
546- Reading 1000 bytes from file, expecting 0 bytes ... OK
555+ Reading 1000 bytes from file, expecting 0 bytes ... 
556+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
557+ OK
565+ Reading 1024 bytes from file, expecting 0 bytes ... 
566+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
567+ OK
574+ Reading 1000 bytes from file, expecting 0 bytes ... 
575+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
576+ OK
584+ Reading 1024 bytes from file, expecting 0 bytes ... 
585+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
586+ OK
593+ Reading 1000 bytes from file, expecting 0 bytes ... 
594+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
595+ OK
603+ Reading 1024 bytes from file, expecting 0 bytes ... 
604+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
605+ OK
612+ Reading 1000 bytes from file, expecting 0 bytes ... 
613+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
614+ OK
622+ Reading 1024 bytes from file, expecting 0 bytes ... 
623+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
624+ OK
631+ Reading 1000 bytes from file, expecting 0 bytes ... 
632+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
633+ OK
641+ Reading 1024 bytes from file, expecting 0 bytes ... 
642+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
643+ OK
650+ Reading 1000 bytes from file, expecting 0 bytes ... 
651+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
652+ OK
660+ Reading 1024 bytes from file, expecting 0 bytes ... 
661+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
662+ OK
669+ Reading 1000 bytes from file, expecting 0 bytes ... 
670+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
671+ OK
679+ Reading 1024 bytes from file, expecting 0 bytes ... 
680+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
681+ OK
688+ Reading 1000 bytes from file, expecting 0 bytes ... 
689+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation2.php on line 30
690+ OK
```

### ext/standard/tests/file/fread_variation4-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Reading 1030 bytes from file, expecting 0 bytes ... 
009+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
010+ OK
008- Reading 1030 bytes from file, expecting 0 bytes ... OK
014- Reading 10 bytes from file, expecting 0 bytes ... OK
016+ Reading 10 bytes from file, expecting 0 bytes ... 
017+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
018+ OK
021- Reading 1030 bytes from file, expecting 0 bytes ... OK
025+ Reading 1030 bytes from file, expecting 0 bytes ... 
026+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
027+ OK
027- Reading 10 bytes from file, expecting 0 bytes ... OK
033+ Reading 10 bytes from file, expecting 0 bytes ... 
034+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
035+ OK
034- Reading 1030 bytes from file, expecting 0 bytes ... OK
040- Reading 10 bytes from file, expecting 0 bytes ... OK
042+ Reading 1030 bytes from file, expecting 0 bytes ... 
043+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
044+ OK
047- Reading 1030 bytes from file, expecting 0 bytes ... OK
050+ Reading 10 bytes from file, expecting 0 bytes ... 
051+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
052+ OK
053- Reading 10 bytes from file, expecting 0 bytes ... OK
059+ Reading 1030 bytes from file, expecting 0 bytes ... 
060+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
061+ OK
060- Reading 1030 bytes from file, expecting 0 bytes ... OK
066- Reading 10 bytes from file, expecting 0 bytes ... OK
067+ Reading 10 bytes from file, expecting 0 bytes ... 
068+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
069+ OK
073- Reading 1030 bytes from file, expecting 0 bytes ... OK
076+ Reading 1030 bytes from file, expecting 0 bytes ... 
077+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
078+ OK
079- Reading 10 bytes from file, expecting 0 bytes ... OK
084+ Reading 10 bytes from file, expecting 0 bytes ... 
085+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
086+ OK
086- Reading 1030 bytes from file, expecting 0 bytes ... OK
092- Reading 10 bytes from file, expecting 0 bytes ... OK
093+ Reading 1030 bytes from file, expecting 0 bytes ... 
094+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
095+ OK
099- Reading 1030 bytes from file, expecting 0 bytes ... OK
101+ Reading 10 bytes from file, expecting 0 bytes ... 
102+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
103+ OK
105- Reading 10 bytes from file, expecting 0 bytes ... OK
110+ Reading 1030 bytes from file, expecting 0 bytes ... 
111+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
112+ OK
112- Reading 1030 bytes from file, expecting 0 bytes ... OK
118+ Reading 10 bytes from file, expecting 0 bytes ... 
119+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
120+ OK
118- Reading 10 bytes from file, expecting 0 bytes ... OK
127+ Reading 1030 bytes from file, expecting 0 bytes ... 
128+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
129+ OK
127- Reading 1030 bytes from file, expecting 0 bytes ... OK
133- Reading 10 bytes from file, expecting 0 bytes ... OK
135+ Reading 10 bytes from file, expecting 0 bytes ... 
136+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
137+ OK
140- Reading 1030 bytes from file, expecting 0 bytes ... OK
144+ Reading 1030 bytes from file, expecting 0 bytes ... 
145+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
146+ OK
146- Reading 10 bytes from file, expecting 0 bytes ... OK
152+ Reading 10 bytes from file, expecting 0 bytes ... 
153+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
154+ OK
153- Reading 1030 bytes from file, expecting 0 bytes ... OK
159- Reading 10 bytes from file, expecting 0 bytes ... OK
163+ Reading 1030 bytes from file, expecting 0 bytes ... 
164+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
165+ OK
166- Reading 1030 bytes from file, expecting 0 bytes ... OK
171+ Reading 10 bytes from file, expecting 0 bytes ... 
172+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
173+ OK
172- Reading 10 bytes from file, expecting 0 bytes ... OK
179- Reading 1030 bytes from file, expecting 0 bytes ... OK
180+ Reading 1030 bytes from file, expecting 0 bytes ... 
181+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
182+ OK
185- Reading 10 bytes from file, expecting 0 bytes ... OK
188+ Reading 10 bytes from file, expecting 0 bytes ... 
189+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
190+ OK
192- Reading 1030 bytes from file, expecting 0 bytes ... OK
197+ Reading 1030 bytes from file, expecting 0 bytes ... 
198+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
199+ OK
198- Reading 10 bytes from file, expecting 0 bytes ... OK
205+ Reading 10 bytes from file, expecting 0 bytes ... 
206+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
207+ OK
205- Reading 1030 bytes from file, expecting 0 bytes ... OK
211- Reading 10 bytes from file, expecting 0 bytes ... OK
214+ Reading 1030 bytes from file, expecting 0 bytes ... 
215+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
216+ OK
218- Reading 1030 bytes from file, expecting 0 bytes ... OK
222+ Reading 10 bytes from file, expecting 0 bytes ... 
223+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
224+ OK
224- Reading 10 bytes from file, expecting 0 bytes ... OK
231+ Reading 1030 bytes from file, expecting 0 bytes ... 
232+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
233+ OK
231- Reading 1030 bytes from file, expecting 0 bytes ... OK
237- Reading 10 bytes from file, expecting 0 bytes ... OK
239+ Reading 10 bytes from file, expecting 0 bytes ... 
240+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
241+ OK
246- Reading 1030 bytes from file, expecting 0 bytes ... OK
248+ Reading 1030 bytes from file, expecting 0 bytes ... 
249+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
250+ OK
252- Reading 10 bytes from file, expecting 0 bytes ... OK
256+ Reading 10 bytes from file, expecting 0 bytes ... 
257+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
258+ OK
259- Reading 1030 bytes from file, expecting 0 bytes ... OK
265+ Reading 1030 bytes from file, expecting 0 bytes ... 
266+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
267+ OK
265- Reading 10 bytes from file, expecting 0 bytes ... OK
272- Reading 1030 bytes from file, expecting 0 bytes ... OK
273+ Reading 10 bytes from file, expecting 0 bytes ... 
274+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
275+ OK
278- Reading 10 bytes from file, expecting 0 bytes ... OK
282+ Reading 1030 bytes from file, expecting 0 bytes ... 
283+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
284+ OK
285- Reading 1030 bytes from file, expecting 0 bytes ... OK
290+ Reading 10 bytes from file, expecting 0 bytes ... 
291+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
292+ OK
291- Reading 10 bytes from file, expecting 0 bytes ... OK
298- Reading 1030 bytes from file, expecting 0 bytes ... OK
299+ Reading 1030 bytes from file, expecting 0 bytes ... 
300+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
301+ OK
304- Reading 10 bytes from file, expecting 0 bytes ... OK
307+ Reading 10 bytes from file, expecting 0 bytes ... 
308+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
309+ OK
311- Reading 1030 bytes from file, expecting 0 bytes ... OK
317- Reading 10 bytes from file, expecting 0 bytes ... OK
318+ Reading 1030 bytes from file, expecting 0 bytes ... 
319+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
320+ OK
324- Reading 1030 bytes from file, expecting 0 bytes ... OK
326+ Reading 10 bytes from file, expecting 0 bytes ... 
327+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
328+ OK
330- Reading 10 bytes from file, expecting 0 bytes ... OK
335+ Reading 1030 bytes from file, expecting 0 bytes ... 
336+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
337+ OK
337- Reading 1030 bytes from file, expecting 0 bytes ... OK
343+ Reading 10 bytes from file, expecting 0 bytes ... 
344+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
345+ OK
343- Reading 10 bytes from file, expecting 0 bytes ... OK
350- Reading 1030 bytes from file, expecting 0 bytes ... OK
352+ Reading 1030 bytes from file, expecting 0 bytes ... 
353+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
354+ OK
356- Reading 10 bytes from file, expecting 0 bytes ... OK
360+ Reading 10 bytes from file, expecting 0 bytes ... 
361+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
362+ OK
369+ Reading 1030 bytes from file, expecting 0 bytes ... 
370+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
371+ OK
377+ Reading 10 bytes from file, expecting 0 bytes ... 
378+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
379+ OK
386+ Reading 1030 bytes from file, expecting 0 bytes ... 
387+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
388+ OK
394+ Reading 10 bytes from file, expecting 0 bytes ... 
395+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
396+ OK
403+ Reading 1030 bytes from file, expecting 0 bytes ... 
404+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
405+ OK
411+ Reading 10 bytes from file, expecting 0 bytes ... 
412+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
413+ OK
420+ Reading 1030 bytes from file, expecting 0 bytes ... 
421+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
422+ OK
428+ Reading 10 bytes from file, expecting 0 bytes ... 
429+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
430+ OK
437+ Reading 1030 bytes from file, expecting 0 bytes ... 
438+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
439+ OK
445+ Reading 10 bytes from file, expecting 0 bytes ... 
446+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
447+ OK
454+ Reading 1030 bytes from file, expecting 0 bytes ... 
455+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
456+ OK
462+ Reading 10 bytes from file, expecting 0 bytes ... 
463+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fread_variation4-win32.php on line 28
464+ OK
```

### ext/standard/tests/file/fscanf_variation51.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
007+ 
008+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
007- bool(false)
010+ 
011+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
013+ 
014+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
016+ 
017+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
016- bool(false)
019+ 
020+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
023+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
024+ bool(false)
025+ 
025- bool(false)
027+ 
028+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
030+ 
031+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
033+ 
034+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
034- bool(false)
036+ 
037+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
039+ 
040+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
042+ 
043+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
043- bool(false)
046+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
047+ bool(false)
048+ 
050+ 
051+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
052- bool(false)
053+ 
054+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
056+ 
057+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
059+ 
060+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
061- bool(false)
062+ 
063+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
065+ 
066+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
069+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
070+ bool(false)
071+ 
070- bool(false)
073+ 
074+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
076+ 
077+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
079+ 
080+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
079- bool(false)
082+ 
083+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
085+ 
086+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
088+ 
089+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
092+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
093+ bool(false)
094+ 
096+ 
097+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
099+ 
100+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
102+ 
103+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
105+ 
106+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
108+ 
109+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
111+ 
112+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
115+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
116+ bool(false)
117+ 
119+ 
120+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
122+ 
123+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
125+ 
126+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
128+ 
129+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
131+ 
132+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
134+ 
135+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
138+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
139+ bool(false)
140+ 
142+ 
143+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
145+ 
146+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
148+ 
149+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
151+ 
152+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
154+ 
155+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
157+ 
158+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
161+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
162+ bool(false)
163+ 
165+ 
166+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
168+ 
169+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
171+ 
172+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
174+ 
175+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
177+ 
178+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
180+ 
181+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
184+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
185+ bool(false)
186+ 
188+ 
189+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
191+ 
192+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
194+ 
195+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
197+ 
198+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
200+ 
201+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
203+ 
204+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
207+ Notice: fscanf(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fscanf_variation51.php on line 47
208+ bool(false)
209+ 
```

### ext/standard/tests/file/fstat_variation8.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ FAIL: stat differs at '1'. 43611 -- 0
002+ FAIL: stat differs at 'ino'. 43611 -- 0
001- PASSED: all elements are the same
```

### ext/standard/tests/file/fwrite.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fwrite(): write of 4 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite.php on line 11
```

### ext/standard/tests/file/fwrite_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
012+ 
013+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
022+ 
023+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
028+ 
029+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
038+ 
039+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
044+ 
045+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
056+ 
057+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
062+ 
063+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
072+ 
073+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
078+ 
079+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
088+ 
089+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
094+ 
095+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
106+ 
107+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
112+ 
113+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
122+ 
123+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
128+ 
129+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
138+ 
139+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
144+ 
145+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
156+ 
157+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
162+ 
163+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
172+ 
173+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
178+ 
179+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
188+ 
189+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 49
194+ 
195+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32-mb.php on line 56
```

### ext/standard/tests/file/fwrite_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ 
007+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
012+ 
013+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
022+ 
023+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
028+ 
029+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
038+ 
039+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
044+ 
045+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
056+ 
057+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
062+ 
063+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
072+ 
073+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
078+ 
079+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
088+ 
089+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
094+ 
095+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
106+ 
107+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
112+ 
113+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
122+ 
123+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
128+ 
129+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
138+ 
139+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
144+ 
145+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
156+ 
157+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
162+ 
163+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
172+ 
173+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
178+ 
179+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
188+ 
189+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 49
194+ 
195+ Notice: fwrite(): write of 1024 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\fwrite_variation1-win32.php on line 56
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
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 4294967295) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|The system cannot find the path specified. \(code: 3\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/tempnam_variation7-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
037+ Warning: unlink(): Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\tempnam_variation7-win32.php on line 52
037- Warning: unlink(): %r(Invalid argument|No such file or directory)%r in %s on line %d
043+ Warning: unlink(): Unknown error in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\tempnam_variation7-win32.php on line 52
043- Warning: unlink(): %r(Invalid argument|No such file or directory)%r in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/filters/bug35916.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Notice: fread(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\filters\bug35916.php on line 30
```

### ext/standard/tests/general_functions/sleep_error.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Fatal error: Uncaught ArgumentCountError: sleep() expects exactly 1 parameter, 0 given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\general_functions\sleep_error.php:11
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\general_functions\sleep_error.php(11): sleep()
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\general_functions\sleep_error.php on line 11
005- Warning: sleep() expects exactly 1 parameter, 0 given in %s on line %d
006- bool(false)
007- 
008- -- Testing sleep() function with more than expected no. of arguments --
009- 
010- Warning: sleep() expects exactly 1 parameter, 2 given in %s on line %d
011- bool(false)
012- 
013- -- Testing sleep() function with negative interval --
014- 
015- Warning: sleep(): Number of seconds must be greater than or equal to 0 in %s on line %d
016- bool(false)
017- ===DONE===
```

### ext/standard/tests/general_functions/usleep_error.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Fatal error: Uncaught ArgumentCountError: usleep() expects exactly 1 parameter, 0 given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\general_functions\usleep_error.php:12
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\general_functions\usleep_error.php(12): usleep()
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\general_functions\usleep_error.php on line 12
005- Warning: usleep() expects exactly 1 parameter, 0 given in %s on line %d
006- NULL
007- 
008- -- Testing usleep() function with more than expected no. of arguments --
009- 
010- Warning: usleep() expects exactly 1 parameter, 2 given in %s on line %d
011- NULL
012- 
013- -- Testing usleep() function with negative interval --
014- 
015- Warning: usleep(): Number of microseconds must be greater than or equal to 0 in %s on line %d
016- bool(false)
017- ===DONE===
```

### ext/standard/tests/misc/time_nanosleep_error1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught TypeError: time_nanosleep() expects parameter 1 to be int, string given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_nanosleep_error1.php:3
001- Warning: time_nanosleep() expects parameter 1 to be int, string given in %s.php on line %d
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_nanosleep_error1.php(3): time_nanosleep('A', 100000)
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_nanosleep_error1.php on line 3
```

### ext/standard/tests/misc/time_nanosleep_error2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught TypeError: time_nanosleep() expects parameter 2 to be int, string given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_nanosleep_error2.php:3
001- Warning: time_nanosleep() expects parameter 2 to be int, string given in %s.php on line %d
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_nanosleep_error2.php(3): time_nanosleep(2, 'B')
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_nanosleep_error2.php on line 3
```

### ext/standard/tests/misc/time_sleep_until_error2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught TypeError: time_sleep_until() expects parameter 1 to be float, string given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_sleep_until_error2.php:2
002+ Stack trace:
001- Warning: time_sleep_until() expects parameter 1 to be float, string given in %s on line 2
002- NULL
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_sleep_until_error2.php(2): time_sleep_until('goofy')
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_sleep_until_error2.php on line 2
```

### ext/standard/tests/misc/time_sleep_until_error3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught ArgumentCountError: time_sleep_until() expects exactly 1 parameter, 0 given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_sleep_until_error3.php:2
002+ Stack trace:
001- Warning: time_sleep_until() expects exactly 1 parameter, 0 given in %s on line 2
002- NULL
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_sleep_until_error3.php(2): time_sleep_until()
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\misc\time_sleep_until_error3.php on line 2
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\network\bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/shutdown.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Client 1
```

### ext/standard/tests/streams/bug49936_win32.phpt

Test PASSED in control but FAILED in experiment

```patch
002-  in %s on line %d
008-  in %s on line %d
```

### ext/standard/tests/streams/bug54946.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Notice: stream_get_contents(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\streams\bug54946.php on line 4
003+ 
004+ Notice: stream_get_contents(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\streams\bug54946.php on line 14
006+ 
007+ Notice: stream_get_contents(): read of 8192 bytes failed with errno=9 Bad file descriptor in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85db388fbd15e5c9\ext\standard\tests\streams\bug54946.php on line 25
```

### ext/standard/tests/streams/proc_open_bug69900.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ fgets() took more than 1 ms
004- fgets() took less than %d ms
020+ fgets() took more than 1 ms
020- fgets() took less than %d ms
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
