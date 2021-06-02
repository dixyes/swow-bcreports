# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.20 (cli) (built: Jun  1 2021 20:31:10) ( ZTS Visual C++ 2017 x64 )
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
PHP 7.4.20 (cli) (built: Jun  1 2021 20:31:10) ( ZTS Visual C++ 2017 x64 )
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
Caption=Intel64 Family 6 Model 85 Stepping 7
Name=Intel(R) Xeon(R) Platinum 8272CL CPU @ 2.60GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 14968 | 10718 | 15660 | 4.4189% | 6.4564% |

## Behavior changes

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun  2 05:08:36 2021 (352): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun  2 05:08:36 2021 (352): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun  2 04:59:50 2021 (5028): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/phar/tests/phar_buildfromdirectory2-win.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ RecursiveDirectoryIterator::__construct(1,1): The system cannot find the file specified. (code: 2)
002- RecursiveDirectoryIterator::__construct(1): %s (code: 2)
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
014+ Warning: opendir(foo/hi,foo/hi): The system cannot find the path specified. (code: 3) in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_da34bdebf8bc823e/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
014- Warning: opendir(foo/hi): %s (code: 3) in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: opendir(notexist*,notexist*): The filename, directory name, or volume label syntax is incorrect. (code: 123) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\dir\bug80960.php on line 2
001- Warning: opendir(notexist*): %s (code: 123) in %s on line %d
005+ Warning: opendir(notexist?,notexist?): The filename, directory name, or volume label syntax is incorrect. (code: 123) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\dir\bug80960.php on line 3
005- Warning: opendir(notexist?): %s (code: 123) in %s on line %d
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________,longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The file name is too long. (code: 111) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
```

### ext/standard/tests/file/bug60120.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug61961.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug63512.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug65272.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug65701.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug66509.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug68335.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug68532.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug69100.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug69442.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug69628.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug71287.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug71882.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug72035.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug72330.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug74719.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug75679.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug76735.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug77552.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug78241.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug78296.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug78386.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug79099.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chgrp.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/chmod_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chown.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/chroot_001.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/clearstatcache_001.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation12-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation12.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation15.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation16-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation16.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/copy_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/directory_wrapper_fstat_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/dirname_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/dirname_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/dirname_no_path_normalization-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_free_space_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/disk_total_space_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fclose_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/feof_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fflush_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetc_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation19.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation20.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation21.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation22.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation23.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation24.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation25.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation26.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation27.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation28.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation29.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation30.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation31.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_socket_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_socket_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation4-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgets_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetss_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_exists_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_basic001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_error001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_error002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_file_put_contents_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation7-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_get_contents_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_put_contents_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation5-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/file_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filegroup_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileinode_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileowner_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileperms_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileperms_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fileperms_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filesize_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filestat.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_variation.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/filetype_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/flock_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fnmatch_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fnmatch_maxpathlen.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fnmatch_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_unlink.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation10-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation11-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation14-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation14.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation15-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation15.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation19.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopen_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fopencookie.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fpassthru_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fpassthru_variation.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fputcsv_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_fwrite_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation3-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fread_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation16.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation17.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation19.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation20.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation21.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation22.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation23.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation24.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation25.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation26.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation27.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation28.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation29.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation30.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation31.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation33.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation34.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation35.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation36.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation37.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation38.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation39.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation40.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation41.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation42.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation43.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation44.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation45.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation46.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation47.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation48.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation49.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation50.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation51.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation52.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation53.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation54.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation55.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fscanf_variation9.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_dir_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic2-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_error2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_error3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_ftell_rewind_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fseek_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fstat.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fstat_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fstat_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_bug76422.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_bug76803.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_bug77081.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/ftruncate_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fwrite_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/get_current_user.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_error_002-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/glob_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_streams.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_userstream_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_userstream_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/include_userstream_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_dir_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_executable_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_file_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_readable_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_uploaded_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/is_writable_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lchgrp_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lchown_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lchown_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/link_win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation10.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation11.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation12.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation14.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation15.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation16.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation17.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation18.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation19.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation20.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation21.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation22.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/lstat_stat_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-002.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-005.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir-006.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_rmdir_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/mkdir_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/move_uploaded_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/parse_ini_file_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/pathinfo_variaton.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_01.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_02.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_03.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/php_fd_wrapper_04.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_error-sunos.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/popen_pclose_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/proc_open01.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation10-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation10.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation8-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readfile_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_basic2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_basic2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_realpath_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/readlink_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_basic4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_bug77484.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_cache.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_cache_win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_variation-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/realpath_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation12.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation13.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation4.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/rename_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rmdir_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/rmdir_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation4-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stat_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/statcache-corruption.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/statpage.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_copy_to_stream.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_enclosed.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_get_line.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_005.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_006.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_rfc2397_007.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/stream_supports_lock.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_basic1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_basic2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_error1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_error2.phpt

Test XFAILED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation5.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation7.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation8.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_link_linkinfo_is_link_variation9.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/symlink_to_symlink.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation2-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation3-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation4-0.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation4-1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation6.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation7-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation7.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/tempnam_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_basic-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_basic-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation5-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/touch_variation6-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/umask_basic.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/umask_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/umask_variation2.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_error.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation1.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation10.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation3.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation5.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation6.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation8-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation8.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/standard/tests/file/unlink_variation9-win32.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userdirstream.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userfilters.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_005.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_006.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userstreams_007.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/userwrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/general_functions/bug44295-win.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ in catch: DirectoryIterator::__construct(c:\not\exists\here,c:\not\exists\here): The system cannot find the path specified. (code: 3)
002- in catch: DirectoryIterator::__construct(c:\not\exists\here): %s (code: 3)
```

### ext/standard/tests/general_functions/sleep_error.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Fatal error: Uncaught ArgumentCountError: sleep() expects exactly 1 parameter, 0 given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\general_functions\sleep_error.php:11
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\general_functions\sleep_error.php(11): sleep()
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\general_functions\sleep_error.php on line 11
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
005+ Fatal error: Uncaught ArgumentCountError: usleep() expects exactly 1 parameter, 0 given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\general_functions\usleep_error.php:12
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\general_functions\usleep_error.php(12): usleep()
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\general_functions\usleep_error.php on line 12
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

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_da34bdebf8bc823e\ext\standard\tests\network\bindto.php on line 9
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

### ext/standard/tests/streams/bug76136.phpt

Test PASSED in control but SKIPPED in experiment

```patch
not generated
```

### ext/standard/tests/file/windows_mb_path/bug54028_2.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ bool(false)
003- bool(true)
009+ bool(false)
010- bool(true)
021+ bool(false)
021- bool(true)
```

### ext/standard/tests/file/windows_mb_path/bug61315.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ string(0) ""
004+ bool(false)
003- string(9) "ソフト"
004- bool(true)
```

### ext/standard/tests/file/windows_mb_path/bug71509.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'Röd_Statistics.txt', got ''
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment beacuse

```patch
001+ expected '����', got ''
002+ string(8) "тест"
001- string(4) "����"
```

Test FAILED in both, but outputs is different.

```patch
001+ expected '����', got ''
001- expected '����', got 'тест'
```

### ext/standard/tests/file/windows_mb_path/test_big5_to_utf8_0.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected '測試多字節路徑', got ''
002- string(%d) "reading file wihh multibyte filename
003- "
003+ string(0) ""
```

### ext/standard/tests/file/windows_mb_path/test_big5_to_utf8_1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected '測試多字節路徑5', got ''
006- string(22) "測試多字節路徑4"
007- bool(true)
007+ string(0) ""
008+ bool(false)
```

### ext/standard/tests/file/windows_mb_path/test_big5_to_utf8_2.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected '測試多字節路徑25', got ''
007- string(23) "測試多字節路徑25"
008- bool(true)
008+ string(0) ""
009+ bool(false)
```

### ext/standard/tests/file/windows_mb_path/test_cp1250_to_utf8_0.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'šđčćž_ŠĐČĆŽ', got ''
002- string(37) "reading file wihh multibyte filename
003- "
003+ string(0) ""
```

### ext/standard/tests/file/windows_mb_path/test_cp1250_to_utf8_3.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'Árvíztűrő tükörfúrógép', got ''
002- string(37) "reading file wihh multibyte filename
003- "
003+ string(0) ""
```

### ext/standard/tests/file/windows_mb_path/test_cp1251_to_utf8_0.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'привет', got ''
002- string(35) "opened an utf8 filename for reading"
003+ string(0) ""
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in experiment beacuse

```patch
001+ expected 'gef��', got 'gefäß'
```

Test FAILED in both, but outputs is different.

```patch
005+ gef��
005- gefäß
```

### ext/standard/tests/file/windows_mb_path/test_cp1253_to_utf8_1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ expected 'διαδρομή δοκιμής42', got 'd?ad??�? d???�??42'
```
