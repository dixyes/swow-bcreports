# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.7 (cli) (built: Jun  2 2021 00:41:03) ( ZTS Visual C++ 2019 x64 )
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
PHP 8.0.7 (cli) (built: Jun  2 2021 00:41:03) ( ZTS Visual C++ 2019 x64 )
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
| 15780 | 10934 | 15918 | 0.8669% | 1.2621% |

## Behavior changes

### Zend/tests/generators/aborted_yield_during_nested_fcalls.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/aborted_yield_during_new.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/aborted_yield_during_switch.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/auto_incrementing_keys.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/backtrace.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/backtrace_multi_yield_from.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/basic_yield_from_exception_handling.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/basic_yield_from_proxying.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug63066.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug65035.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug65161.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug66041.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug67497.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug69419.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug70904.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug70965.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug71013.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug71297.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug71441.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug71601.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug72523.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug74157.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug74606.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug74954.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug75396.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug76427.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug78434.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug79600.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/bug80240.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/clone.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/dangling_send_target.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/dynamic_call.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/dynamic_properties.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/exception_during_shutdown.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/fibonacci.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/func_get_args.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/gc_running_generator.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/gc_with_iterator_in_foreach.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/gc_with_root_parent_mismatch.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/gc_with_yield_from.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_closure.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_closure_unused.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_closure_with_this.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_in_multipleiterator.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_method.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_method_by_ref.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_return_return_type.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_return_without_value.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_returns_generator.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_rewind.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_send.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_static_method.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_symtable_leak.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_throwing_during_function_call.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_throwing_exception.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_throwing_in_foreach.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_trampoline.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_with_arg_unpacking.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_with_keys.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_with_nonscalar_keys.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_with_type_check.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/generator_with_type_check_2.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/get_return.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/get_return_and_finally.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/get_return_errors.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/get_return_types.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/ignored_send_leak.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/iterator_wrapper_leak.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/multiple_yield_from_on_same_generator.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/mutli_yield_from_with_exception.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/nested_calls_with_die.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/nested_method_calls.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/no_foreach_var_leaks.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/recursive_yield_from.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/repeated_yield_from_with_immediate_release.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/return_from_by_ref_generator.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/send_after_close.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/send_returns_current.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/throw_already_closed.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/throw_caught.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/throw_into_yield_from_array.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/throw_not_an_exception.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/throw_rethrow.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/throw_uncaught.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/unused_return_value.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/xrange.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_array_key.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_array_offset_by_ref.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_by_reference.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_closure.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_during_function_call.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_during_method_call.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_aborted_generator_with_children.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_already_running.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_array.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_backtrace.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_by_reference.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_chain_dtor_order.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_deep_recursion.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_force_closed.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_greedy_parse.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_iterator.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_iterator_agregate.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_multi_tree.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_multi_tree_exception.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_multi_tree_single_nodes.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_non_iterable.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_from_valid_exception.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_in_finally.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_in_finally_cleanup.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_in_parenthesis.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_precedence.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_ref_function_call_by_reference.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_unary_precedence.phpt

Test PASSED in control but UNKNOWN in experiment


### Zend/tests/generators/yield_without_value.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Mon Jun  7 06:19:44 2021 (4104): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Jun  7 06:19:44 2021 (4104): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Jun  7 06:11:27 2021 (1048): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 3720 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
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

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     -- Iteration 2 --
     
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation-win32.php on line 29
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation11-win32.php on line 43
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation11-win32.php on line 43
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation11-win32.php on line 43
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation12-win32.php on line 41
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation12-win32.php on line 41
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation12-win32.php on line 41
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
     
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 1 testing '1' boolean --
     bool(true)
     
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 2 testing '' boolean --
     
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 36
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 3 testing '' NULL --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 36
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 4 testing '' string --
     
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 36
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 5 testing ' ' string --
     
--
     bool(false)
     -- 6 testing '/no/such/file/dir' string --
     
042+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 36
042- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
045+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
045- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 7 testing 'php/php' string --
     
049+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 36
049- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
052+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation13-win32.php on line 44
052- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Renaming existing file to existing directory name --
     
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation3-win32.php on line 28
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
     
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation8-win32.php on line 8
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
     
     *** Testing rename() on non-existing directory ***
     
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\rename_variation8-win32.php on line 28
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
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlink_error-win32-mb.php on line 37
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlink_error-win32.php on line 35
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 50
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 52
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlink_variation1-win32.php on line 49
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\file\unlink_variation1-win32.php on line 51
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
     bool(false)
013- bool(true)
     bool(false)
     Done
```

### ext/standard/tests/general_functions/sleep_basic.phpt

Test PASSED in control but FAILED in experiment

```patch
     *** Testing sleep() : basic functionality ***
     Thread slept for %f seconds
     Return value: 0
004+ TEST FAILED - time is 0.97981595993042 secs and sleep was 1 secs
004- TEST PASSED
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_f2018a9ce1b14b0d\ext\standard\tests\network\bindto.php on line 9
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

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/file/windows_mb_path/test_cp1252_0.phpt

Test FAILED in experiment beacuse

```patch
001+ expected 'gef��', got 'gefäß'
     string(%d) "%s\gef��"
     bool(true)
     bool(true)
005+ gefäß
004- gef��
```

Test FAILED in both, but outputs is different.

```patch
005+ gefäß
005- gef��
```
