# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.8 (cli) (built: Jun 29 2021 16:03:59) ( NTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.8, Copyright (c), by Zend Technologies
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
PHP 8.0.8 (cli) (built: Jun 29 2021 16:03:59) ( NTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.8, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.8, Copyright (c), by Zend Technologies
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

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15820 | 13703 | 15936 | 0.7279% | 0.8465% |

## Behavior changes

### ext/enchant/tests/broker_dict_exists.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\enchant\tests\broker_dict_exists.php on line 5
001- OK
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\enchant\tests\broker_dict_exists.php on line 5
004+ 
005+ ** (php.exe:3460): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
006+ dicts dont exist failed
```

Test FAILED in both, but outputs is different.

```patch
005+ ** (php.exe:3460): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
005- ** (php.exe:6652): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
```

### ext/enchant/tests/broker_set_ordering.phpt

Test FAILED in experiment beacuse

```patch
002+ 
003+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\enchant\tests\broker_set_ordering.php on line 8
004+ 
005+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\enchant\tests\broker_set_ordering.php on line 8
006+ 
007+ ** (php.exe:5412): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
     OK
     OK
```

Test FAILED in both, but outputs is different.

```patch
007+ ** (php.exe:5412): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
007- ** (php.exe:4960): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
```

### ext/mysqli/tests/015.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_autocommit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [016] [1146] Table 'test.test' doesn't exist
002+ 
001- mysqli object is already closed
002- done!
003+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_autocommit.php:49
004+ Stack trace:
005+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_autocommit.php(49): mysqli_fetch_assoc(false)
006+ #1 {main}
007+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_autocommit.php on line 49
```

### ext/mysqli/tests/mysqli_autocommit_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [021] [1146] Table 'test.test' doesn't exist
002+ [023] [1146] Table 'test.test' doesn't exist
001- my_mysqli object is already closed
002- done!
003+ 
004+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_autocommit_oo.php:84
005+ Stack trace:
006+ #0 {main}
007+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_autocommit_oo.php on line 84
```

### ext/mysqli/tests/mysqli_change_user_insert_id.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [004] [1146] Table 'test.test' doesn't exist
002+ [005] Expecting 100, got 0, [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_change_user_rollback.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
001- done!
002+ [001] [1146] Table 'test.test' doesn't exist
003+ [002] [1146] Table 'test.test' doesn't exist
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_change_user_rollback.php:13
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_change_user_rollback.php(13): mysqli_fetch_assoc(false)
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_change_user_rollback.php on line 13
```

### ext/mysqli/tests/mysqli_character_set.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ string(4) "big5"
001- done!
002+ [009 + big5] [1146] Table 'test.test' doesn't exist
003+ string(4) "big5"
004+ [009 + big5] [1146] Table 'test.test' doesn't exist
005+ string(4) "big5"
006+ [009 + big5] [1146] Table 'test.test' doesn't exist
007+ [010 + big5] [1146] Table 'test.test' doesn't exist
008+ 
009+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_character_set.php:68
010+ Stack trace:
011+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_character_set.php(68): mysqli_fetch_assoc(false)
012+ #1 {main}
013+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_character_set.php on line 68
```

### ext/mysqli/tests/mysqli_class_mysqli_driver_interface.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     Parent class:
     bool(false)
     
--
```

### ext/mysqli/tests/mysqli_class_mysqli_result_interface.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Parent class:
002- bool(false)
001+ [1146] Table 'test.test' doesn't exist
     
003+ Fatal error: Uncaught Error: Call to a member function fetch_row() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_class_mysqli_result_interface.php:7
004+ Stack trace:
005+ #0 {main}
006+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_class_mysqli_result_interface.php on line 7
004- Methods:
005- ok
006- 
007- Class variables:
008- current_field
009- field_count
010- lengths
011- num_rows
012- type
013- 
014- Object variables:
015- current_field
016- field_count
017- lengths
018- num_rows
019- type
020- 
021- Magic, magic properties:
022- mysqli_result->current_field = '0'/integer ('0'/integer)
023- mysqli_result->field_count = '2'/integer ('2'/integer)
024- mysqli_result->lengths -> '1 1'/array ('1 1'/array)
025- mysqli_result->num_rows = '6'/integer ('6'/integer)
026- mysqli_result->type = 'store'/integer
027- 
028- Access to undefined properties:
029- mysqli_result->unknown = ''
030- 
031- Constructor:
032- mysqli_result object is already closed
033- done!
```

### ext/mysqli/tests/mysqli_class_mysqli_stmt_interface.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- Parent class:
002- bool(false)
003- 
004- Methods:
005- ok
006- 
007- Class variables:
008- affected_rows
009- errno
010- error
011- error_list
012- field_count
013- id
014- insert_id
015- num_rows
016- param_count
017- sqlstate
018- 
019- Object variables:
020- affected_rows
021- insert_id
022- num_rows
023- param_count
024- field_count
025- errno
026- error
027- error_list
028- sqlstate
029- id
030- 
031- Magic, magic properties:
032- mysqli_stmt object is not fully initialized
033- Property access is not allowed yet
034- stmt->affected_rows = '1'
035- stmt->errno = '0'
036- stmt->error = ''
037- string(14) "stmt->error = "
038- array(0) {
039- }
040- stmt->field_count = '0'
041- stmt->id = '%d'
042- stmt->insert_id = '0'
043- stmt->num_rows = '0'
044- stmt->param_count = '0'
045- stmt->sqlstate = '00000'
046- 
047- Access to undefined properties:
048- stmt->unknown = ''
049- stmt->unknown = '13'
050- done!
```

### ext/mysqli/tests/mysqli_commit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [008] [1146] Table 'test.test' doesn't exist
002+ [011] [1146] Table 'test.test' doesn't exist
001- mysqli object is already closed
002- done!
003+ 
004+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_commit.php:29
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_commit.php(29): mysqli_fetch_assoc(false)
007+ #1 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_commit.php on line 29
```

### ext/mysqli/tests/mysqli_commit_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ [006] [1146] Table 'test.test' doesn't exist
003+ [009] [1146] Table 'test.test' doesn't exist
     
005+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_commit_oo.php:51
006+ Stack trace:
007+ #0 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_commit_oo.php on line 51
003- Warning: mysqli::commit(): Transaction name has been truncated, since it can only contain the A-Z, a-z, 0-9, "\", "-", "_", and "=" characters in %s on line %d
004- bool(true)
005- 
006- Warning: mysqli::commit(): Transaction name has been truncated, since it can only contain the A-Z, a-z, 0-9, "\", "-", "_", and "=" characters in %s on line %d
007- bool(true)
008- 
009- Warning: mysqli::commit(): Transaction name has been truncated, since it can only contain the A-Z, a-z, 0-9, "\", "-", "_", and "=" characters in %s on line %d
010- bool(true)
011- my_mysqli object is already closed
012- done!
```

### ext/mysqli/tests/mysqli_constants.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_data_seek_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli_result object is already closed
003+ [003] [1146] Table 'test.test' doesn't exist
004+ 
005+ Fatal error: Uncaught Error: Call to a member function data_seek() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_data_seek_oo.php:20
006+ Stack trace:
002- mysqli_result::data_seek(): Argument #1 ($offset) must be greater than or equal to 0
003- mysqli_result::data_seek() cannot be used in MYSQLI_USE_RESULT mode
004- mysqli_result object is already closed
005- done!
007+ #0 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_data_seek_oo.php on line 20
```

### ext/mysqli/tests/mysqli_driver.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ 
     Warning: mysqli_query(): (%d/%d): You have an error in your SQL syntax; check the manual that corresponds to your %s server version for the right syntax to use near 'NO_SQL' at line 1 in %s on line %d
     done!
```

### ext/mysqli/tests/mysqli_expire_password.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ 
     Warning: mysqli%sconnect(): (HY000/%d): %s in %s on line %d
     [001] Cannot connect [%d] %s
     
--
     [003] Cannot connect [%d] %s
     [006] Connect allowed, query fail, [1820] %s
     [008] Connect allowed, pw set, [0%A
010+ NULL
011+ done!
008- array(1) {
009-   ["id"]=>
010-   string(1) "1"
011- }
012- array(1) {
013-   ["id"]=>
014-   string(1) "1"
015- }
016- done!
```

### ext/mysqli/tests/mysqli_explain_metadata.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
001- done!
002+ [001] [1146] Table 'test.test' doesn't exist
003+ 
004+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_explain_metadata.php:11
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_explain_metadata.php(11): mysqli_fetch_assoc(false)
007+ #1 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_explain_metadata.php on line 11
```

### ext/mysqli/tests/mysqli_fetch_all.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [004] [1146] Table 'test.test' doesn't exist
     [005]
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_fetch_all(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_all.php:10
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_all.php(10): mysqli_fetch_all(false)
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_all.php on line 10
002- array(2) {
003-   [0]=>
004-   array(2) {
005-     [0]=>
006-     string(1) "1"
007-     [1]=>
008-     string(1) "a"
009-   }
010-   [1]=>
011-   array(2) {
012-     [0]=>
013-     string(1) "2"
014-     [1]=>
015-     string(1) "b"
016-   }
017- }
018- [007]
019- array(2) {
020-   [0]=>
021-   array(2) {
022-     [0]=>
023-     string(1) "1"
024-     [1]=>
025-     string(1) "a"
026-   }
027-   [1]=>
028-   array(2) {
029-     [0]=>
030-     string(1) "2"
031-     [1]=>
032-     string(1) "b"
033-   }
034- }
035- [008]
036- array(2) {
037-   [0]=>
038-   array(4) {
039-     [0]=>
040-     string(1) "1"
041-     ["id"]=>
042-     string(1) "1"
043-     [1]=>
044-     string(1) "a"
045-     ["label"]=>
046-     string(1) "a"
047-   }
048-   [1]=>
049-   array(4) {
050-     [0]=>
051-     string(1) "2"
052-     ["id"]=>
053-     string(1) "2"
054-     [1]=>
055-     string(1) "b"
056-     ["label"]=>
057-     string(1) "b"
058-   }
059- }
060- [010]
061- array(2) {
062-   [0]=>
063-   array(2) {
064-     ["id"]=>
065-     string(1) "1"
066-     ["label"]=>
067-     string(1) "a"
068-   }
069-   [1]=>
070-   array(2) {
071-     ["id"]=>
072-     string(1) "2"
073-     ["label"]=>
074-     string(1) "b"
075-   }
076- }
077- [011]
078- array(0) {
079- }
080- [013]
081- array(2) {
082-   [0]=>
083-   array(2) {
084-     ["id"]=>
085-     string(1) "1"
086-     ["label"]=>
087-     string(1) "a"
088-   }
089-   [1]=>
090-   array(2) {
091-     ["id"]=>
092-     string(1) "2"
093-     ["label"]=>
094-     string(1) "b"
095-   }
096- }
097- [016]
098- array(0) {
099- }
100- [017]
101- array(1) {
102-   [0]=>
103-   array(11) {
104-     [0]=>
105-     string(1) "1"
106-     ["a"]=>
107-     string(1) "2"
108-     [1]=>
109-     string(1) "2"
110-     [2]=>
111-     string(1) "3"
112-     ["c"]=>
113-     string(1) "3"
114-     [3]=>
115-     string(1) "4"
116-     ["C"]=>
117-     string(1) "4"
118-     [4]=>
119-     NULL
120-     ["d"]=>
121-     NULL
122-     [5]=>
123-     string(1) "1"
124-     ["e"]=>
125-     string(1) "1"
126-   }
127- }
128- mysqli_fetch_all(): Argument #2 ($mode) must be one of MYSQLI_FETCH_NUM, MYSQLI_FETCH_ASSOC, or MYSQLI_FETCH_BOTH
129- mysqli_result object is already closed
130- done!
```

### ext/mysqli/tests/mysqli_fetch_all_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [004] [1146] Table 'test.test' doesn't exist
     [005]
004+ 
005+ Fatal error: Uncaught Error: Call to a member function fetch_all() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_all_oo.php:19
006+ Stack trace:
007+ #0 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_all_oo.php on line 19
002- array(2) {
003-   [0]=>
004-   array(2) {
005-     [0]=>
006-     string(1) "1"
007-     [1]=>
008-     string(1) "a"
009-   }
010-   [1]=>
011-   array(2) {
012-     [0]=>
013-     string(1) "2"
014-     [1]=>
015-     string(1) "b"
016-   }
017- }
018- [007]
019- array(2) {
020-   [0]=>
021-   array(2) {
022-     [0]=>
023-     string(1) "1"
024-     [1]=>
025-     string(1) "a"
026-   }
027-   [1]=>
028-   array(2) {
029-     [0]=>
030-     string(1) "2"
031-     [1]=>
032-     string(1) "b"
033-   }
034- }
035- [008]
036- array(2) {
037-   [0]=>
038-   array(4) {
039-     [0]=>
040-     string(1) "1"
041-     ["id"]=>
042-     string(1) "1"
043-     [1]=>
044-     string(1) "a"
045-     ["label"]=>
046-     string(1) "a"
047-   }
048-   [1]=>
049-   array(4) {
050-     [0]=>
051-     string(1) "2"
052-     ["id"]=>
053-     string(1) "2"
054-     [1]=>
055-     string(1) "b"
056-     ["label"]=>
057-     string(1) "b"
058-   }
059- }
060- [010]
061- array(2) {
062-   [0]=>
063-   array(2) {
064-     ["id"]=>
065-     string(1) "1"
066-     ["label"]=>
067-     string(1) "a"
068-   }
069-   [1]=>
070-   array(2) {
071-     ["id"]=>
072-     string(1) "2"
073-     ["label"]=>
074-     string(1) "b"
075-   }
076- }
077- [011]
078- NULL
079- [013]
080- array(2) {
081-   [0]=>
082-   array(2) {
083-     ["id"]=>
084-     string(1) "1"
085-     ["label"]=>
086-     string(1) "a"
087-   }
088-   [1]=>
089-   array(2) {
090-     ["id"]=>
091-     string(1) "2"
092-     ["label"]=>
093-     string(1) "b"
094-   }
095- }
096- [016]
097- NULL
098- [017]
099- array(1) {
100-   [0]=>
101-   array(11) {
102-     [0]=>
103-     string(1) "1"
104-     ["a"]=>
105-     string(1) "2"
106-     [1]=>
107-     string(1) "2"
108-     [2]=>
109-     string(1) "3"
110-     ["c"]=>
111-     string(1) "3"
112-     [3]=>
113-     string(1) "4"
114-     ["C"]=>
115-     string(1) "4"
116-     [4]=>
117-     NULL
118-     ["d"]=>
119-     NULL
120-     [5]=>
121-     string(1) "1"
122-     ["e"]=>
123-     string(1) "1"
124-   }
125- }
126- mysqli_result::fetch_all(): Argument #1 ($mode) must be one of MYSQLI_FETCH_NUM, MYSQLI_FETCH_ASSOC, or MYSQLI_FETCH_BOTH
127- mysqli_result object is already closed
128- done!
```

### ext/mysqli/tests/mysqli_fetch_array.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [004] [1146] Table 'test.test' doesn't exist
     [005]
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_fetch_array(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array.php:10
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array.php(10): mysqli_fetch_array(false)
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array.php on line 10
002- array(4) {
003-   [0]=>
004-   string(1) "1"
005-   ["id"]=>
006-   string(1) "1"
007-   [1]=>
008-   string(1) "a"
009-   ["label"]=>
010-   string(1) "a"
011- }
012- [006]
013- array(2) {
014-   [0]=>
015-   string(1) "2"
016-   [1]=>
017-   string(1) "b"
018- }
019- [007]
020- array(4) {
021-   [0]=>
022-   string(1) "3"
023-   ["id"]=>
024-   string(1) "3"
025-   [1]=>
026-   string(1) "c"
027-   ["label"]=>
028-   string(1) "c"
029- }
030- [008]
031- array(2) {
032-   ["id"]=>
033-   string(1) "4"
034-   ["label"]=>
035-   string(1) "d"
036- }
037- [009]
038- array(4) {
039-   [0]=>
040-   string(1) "5"
041-   ["id"]=>
042-   string(1) "5"
043-   [1]=>
044-   string(1) "e"
045-   ["label"]=>
046-   string(1) "e"
047- }
048- [011]
049- array(11) {
050-   [0]=>
051-   string(1) "1"
052-   ["a"]=>
053-   string(1) "2"
054-   [1]=>
055-   string(1) "2"
056-   [2]=>
057-   string(1) "3"
058-   ["c"]=>
059-   string(1) "3"
060-   [3]=>
061-   string(1) "4"
062-   ["C"]=>
063-   string(1) "4"
064-   [4]=>
065-   NULL
066-   ["d"]=>
067-   NULL
068-   [5]=>
069-   string(1) "1"
070-   ["e"]=>
071-   string(1) "1"
072- }
073- mysqli_fetch_array(): Argument #2 ($mode) must be one of MYSQLI_NUM, MYSQLI_ASSOC, or MYSQLI_BOTH
074- mysqli_fetch_array(): Argument #2 ($mode) must be one of MYSQLI_NUM, MYSQLI_ASSOC, or MYSQLI_BOTH
075- mysqli_result object is already closed
076- done!
```

### ext/mysqli/tests/mysqli_fetch_array_assoc.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [001] [1146] Table 'test.test' doesn't exist
     [002]
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_fetch_array(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array_assoc.php:8
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array_assoc.php(8): mysqli_fetch_array(false, 1)
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array_assoc.php on line 8
002- array(2) {
003-   ["id"]=>
004-   string(1) "1"
005-   ["label"]=>
006-   string(1) "a"
007- }
008- [004]
009- array(2) {
010-   ["id"]=>
011-   string(1) "1"
012-   ["label"]=>
013-   string(1) "a"
014- }
015- done!
```

### ext/mysqli/tests/mysqli_fetch_array_large.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003 + 1] len = 524117, [1146] Table 'test.test' doesn't exist
003+ [003 + 1] len = 524117, [1146] Table 'test.test' doesn't exist
     stop: %s
     done!
```

### ext/mysqli/tests/mysqli_fetch_array_many_rows.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [001] INSERT INTO test(id, label) VALUES (225, 'R') failed: [1146] Table 'test.test' doesn't exist
001- done!
002+ [002] SELECT failed: [1146] 1146
003+ 
004+ Fatal error: Uncaught TypeError: mysqli_fetch_array(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array_many_rows.php:18
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array_many_rows.php(18): mysqli_fetch_array(false)
007+ #1 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_array_many_rows.php on line 18
```

### ext/mysqli/tests/mysqli_fetch_array_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     [005]
003+ NULL
004+ [006]
005+ NULL
006+ [007]
007+ NULL
008+ [008]
009+ NULL
010+ [009]
011+ NULL
012+ [011]
013+ array(11) {
002- array(4) {
       [0]=>
016+   ["a"]=>
       ["id"]=>
017+   string(1) "2"
005-   ["id"]=>
006-   string(1) "1"
       [1]=>
019+   string(1) "2"
020+   [2]=>
021+   string(1) "3"
022+   ["c"]=>
023+   string(1) "3"
024+   [3]=>
025+   string(1) "4"
026+   ["C"]=>
027+   string(1) "4"
028+   [4]=>
029+   NULL
030+   ["d"]=>
031+   NULL
032+   [5]=>
033+   string(1) "1"
034+   ["e"]=>
035+   string(1) "1"
008-   string(1) "a"
009-   ["label"]=>
010-   string(1) "a"
011- }
012- [006]
013- array(2) {
014-   [0]=>
015-   string(1) "2"
016-   [1]=>
017-   string(1) "b"
     }
037+ mysqli_result::fetch_array(): Argument #1 ($mode) must be one of MYSQLI_NUM, MYSQLI_ASSOC, or MYSQLI_BOTH
038+ mysqli_result::fetch_array(): Argument #1 ($mode) must be one of MYSQLI_NUM, MYSQLI_ASSOC, or MYSQLI_BOTH
039+ [0021i] [1146] Table 'test.test' doesn't exist
040+ [0041i] [1146] Table 'test.test' doesn't exist
041+ [0051] [1146] Table 'test.test' doesn't exist
042+ [0082] [1146] Table 'test.test' doesn't exist
043+ [0101i] [1146] Table 'test.test' doesn't exist
044+ [0111i] [1146] Table 'test.test' doesn't exist
045+ [0121] [1146] Table 'test.test' doesn't exist
046+ [0131i] [1146] Table 'test.test' doesn't exist
047+ [0141] [1146] Table 'test.test' doesn't exist
048+ [0151i] [1146] Table 'test.test' doesn't exist
049+ [0191] [1146] Table 'test.test' doesn't exist
050+ [0211i] [1146] Table 'test.test' doesn't exist
051+ [0231s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '4294967295')
052+ [0262] [1146] Table 'test.test' doesn't exist
053+ [0271s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '18446744073709551615')
054+ [0311s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '1.844674407371E+19')
055+ [0321] [1146] Table 'test.test' doesn't exist
056+ [0331s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '-99999999.99')
057+ [0352] [1146] Table 'test.test' doesn't exist
058+ [0361] [1146] Table 'test.test' doesn't exist
059+ [0381] [1146] Table 'test.test' doesn't exist
060+ [0391s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '99999999.99')
061+ [0411s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30')
062+ [0421s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30')
063+ [0441s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30 01:52:51')
064+ [0451s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30 01:52:51')
065+ [0462] [1146] Table 'test.test' doesn't exist
066+ [0471s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021-06-30 01:52:51')
067+ [0481s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '01:52:52')
068+ [0491s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '01:52:52')
069+ [0512] [1146] Table 'test.test' doesn't exist
070+ [0521s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, '2021')
071+ [0541s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
072+ [0591s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'QCUSCNCJWVMEPQVUBWTFVDLVZHKPSJYNYABDAKDKVXDRFJOQSAEYLXTUVQIHGEJBVMMVSLUNGFBCRNUXZJMLGXUJYFXZKTPYUMKKBNAQCKXNQZZXIJNGPGROWMRVSRMKBWWYEIEZTFKSBIMZZRZRRLWCJIGZLOSTIIBGSBJATEMYBVJJOCSVYAGESXNFKMJNYLECVEPITQAFNFGLOAWOXUTBPYGOSSENXSNEPUHVIPQSUIZORGQDEBCJZJFWEFJ')
073+ [0602] [1146] Table 'test.test' doesn't exist
074+ [0621] [1146] Table 'test.test' doesn't exist
075+ [0642] [1146] Table 'test.test' doesn't exist
076+ [0652] [1146] Table 'test.test' doesn't exist
077+ [0661] [1146] Table 'test.test' doesn't exist
078+ [0672] [1146] Table 'test.test' doesn't exist
079+ [0681s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, ' a')
080+ [0691s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'b')
081+ [0711s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
082+ [0732] [1146] Table 'test.test' doesn't exist
083+ [0751s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
084+ [0771] [1146] Table 'test.test' doesn't exist
085+ [0781s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
086+ [0791] [1146] Table 'test.test' doesn't exist
087+ [0801s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
088+ [0811s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, ' a')
089+ [0822] [1146] Table 'test.test' doesn't exist
090+ [0851] [1146] Table 'test.test' doesn't exist
091+ [0861s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
092+ [0881] [1146] Table 'test.test' doesn't exist
093+ [0891s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
094+ [0901s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, ' a')
095+ [0911] [1146] Table 'test.test' doesn't exist
096+ [0931] [1146] Table 'test.test' doesn't exist
097+ [0941s] [1146] Table 'test.test' doesn't exist - INSERT INTO test(id, label) VALUES (1, 'a')
098+ [0951] [1146] Table 'test.test' doesn't exist
019- [007]
020- array(4) {
021-   [0]=>
022-   string(1) "3"
023-   ["id"]=>
024-   string(1) "3"
025-   [1]=>
026-   string(1) "c"
027-   ["label"]=>
028-   string(1) "c"
029- }
030- [008]
031- array(2) {
032-   ["id"]=>
033-   string(1) "4"
034-   ["label"]=>
035-   string(1) "d"
036- }
037- [009]
038- array(4) {
039-   [0]=>
040-   string(1) "5"
041-   ["id"]=>
042-   string(1) "5"
043-   [1]=>
044-   string(1) "e"
045-   ["label"]=>
046-   string(1) "e"
047- }
048- [011]
049- array(11) {
050-   [0]=>
051-   string(1) "1"
052-   ["a"]=>
053-   string(1) "2"
054-   [1]=>
055-   string(1) "2"
056-   [2]=>
057-   string(1) "3"
058-   ["c"]=>
059-   string(1) "3"
060-   [3]=>
061-   string(1) "4"
062-   ["C"]=>
063-   string(1) "4"
064-   [4]=>
065-   NULL
066-   ["d"]=>
067-   NULL
068-   [5]=>
069-   string(1) "1"
070-   ["e"]=>
071-   string(1) "1"
072- }
073- mysqli_result::fetch_array(): Argument #1 ($mode) must be one of MYSQLI_NUM, MYSQLI_ASSOC, or MYSQLI_BOTH
074- mysqli_result::fetch_array(): Argument #1 ($mode) must be one of MYSQLI_NUM, MYSQLI_ASSOC, or MYSQLI_BOTH
     mysqli_result object is already closed
     done!
```

### ext/mysqli/tests/mysqli_fetch_assoc_bit.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [004 - 1] [1146] Table 'test.test' doesn't exist
001- done!
002+ 
003+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_assoc_bit.php:67
004+ Stack trace:
005+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_assoc_bit.php(67): mysqli_fetch_assoc(false)
006+ #1 {main}
007+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_assoc_bit.php on line 67
```

### ext/mysqli/tests/mysqli_fetch_assoc_no_alias_utf8.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- [003]
002- array(3) {
003-   ["Андрей Христов"]=>
004-   string(%r[1|3]%r) "1"
005-   ["Улф Вендел"]=>
006-   string(1) "2"
007-   ["Георг Рихтер"]=>
008-   string(1) "3"
009- }
010- [009]
011- array(3) {
012-   ["id"]=>
013-   string(1) "4"
014-   ["име"]=>
015-   string(6) "Andrey"
016-   ["фамилия"]=>
017-   string(7) "Hristov"
018- }
019- array(3) {
020-   ["id"]=>
021-   string(1) "7"
022-   ["име"]=>
023-   string(9) "安德烈"
024-   ["фамилия"]=>
025-   string(7) "Hristov"
026- }
027- array(3) {
028-   ["id"]=>
029-   string(1) "5"
030-   ["име"]=>
031-   string(5) "Georg"
032-   ["фамилия"]=>
033-   string(7) "Richter"
034- }
035- array(3) {
036-   ["id"]=>
037-   string(1) "8"
038-   ["име"]=>
039-   string(9) "格奥尔"
040-   ["фамилия"]=>
041-   string(7) "Richter"
042- }
043- array(3) {
044-   ["id"]=>
045-   string(1) "6"
046-   ["име"]=>
047-   string(3) "Ulf"
048-   ["фамилия"]=>
049-   string(6) "Wendel"
050- }
051- array(3) {
052-   ["id"]=>
053-   string(1) "9"
054-   ["име"]=>
055-   string(9) "乌尔夫"
056-   ["фамилия"]=>
057-   string(6) "Wendel"
058- }
059- array(3) {
060-   ["id"]=>
061-   string(1) "3"
062-   ["име"]=>
063-   string(6) "Улф"
064-   ["фамилия"]=>
065-   string(12) "Вендел"
066- }
067- array(3) {
068-   ["id"]=>
069-   string(1) "2"
070-   ["име"]=>
071-   string(10) "Георг"
072-   ["фамилия"]=>
073-   string(12) "Рихтер"
074- }
075- array(3) {
076-   ["id"]=>
077-   string(1) "1"
078-   ["име"]=>
079-   string(12) "Андрей"
080-   ["фамилия"]=>
081-   string(14) "Христов"
082- }
083- done!
```

### ext/mysqli/tests/mysqli_fetch_assoc_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ [1146] Table 'test.test' doesn't exist
003+ [004] [1054] Unknown column 'label' in 'field list'
     [005]
005+ 
006+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_assoc_oo.php:25
007+ Stack trace:
008+ #0 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_assoc_oo.php on line 25
003- array(2) {
004-   ["id"]=>
005-   string(1) "1"
006-   ["label"]=>
007-   string(1) "a"
008- }
009- [006]
010- NULL
011- [008]
012- array(5) {
013-   ["a"]=>
014-   string(1) "2"
015-   ["c"]=>
016-   string(1) "3"
017-   ["C"]=>
018-   string(1) "4"
019-   ["d"]=>
020-   NULL
021-   ["e"]=>
022-   string(1) "1"
023- }
024- mysqli_result object is already closed
025- done!
```

### ext/mysqli/tests/mysqli_fetch_assoc_zerofill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_fetch_field.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [003] [1146] Table 'test.test' doesn't exist
003+ 
004+ Fatal error: Uncaught TypeError: mysqli_fetch_field(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field.php:20
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field.php(20): mysqli_fetch_field(false)
007+ #1 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field.php on line 20
001- object(stdClass)#%d (13) {
002-   ["name"]=>
003-   string(2) "ID"
004-   ["orgname"]=>
005-   string(2) "id"
006-   ["table"]=>
007-   string(4) "TEST"
008-   ["orgtable"]=>
009-   string(%d) "%s"
010-   ["def"]=>
011-   string(0) ""
012-   ["db"]=>
013-   string(%d) "%s"
014-   ["catalog"]=>
015-   string(%d) "%s"
016-   ["max_length"]=>
017-   int(1)
018-   ["length"]=>
019-   int(11)
020-   ["charsetnr"]=>
021-   int(63)
022-   ["flags"]=>
023-   int(49155)
024-   ["type"]=>
025-   int(3)
026-   ["decimals"]=>
027-   int(0)
028- }
029- object(stdClass)#%d (13) {
030-   ["name"]=>
031-   string(5) "label"
032-   ["orgname"]=>
033-   string(5) "label"
034-   ["table"]=>
035-   string(4) "TEST"
036-   ["orgtable"]=>
037-   string(%d) "%s"
038-   ["def"]=>
039-   string(0) ""
040-   ["db"]=>
041-   string(%d) "%s"
042-   ["catalog"]=>
043-   string(%d) "%s"
044-   ["max_length"]=>
045-   int(%d)
046-   ["length"]=>
047-   int(%d)
048-   ["charsetnr"]=>
049-   int(%d)
050-   ["flags"]=>
051-   int(0)
052-   ["type"]=>
053-   int(254)
054-   ["decimals"]=>
055-   int(0)
056- }
057- bool(false)
058- mysqli_result object is already closed
059- array(1) {
060-   ["_default_test"]=>
061-   string(1) "2"
062- }
063- object(stdClass)#%d (13) {
064-   ["name"]=>
065-   string(13) "_default_test"
066-   ["orgname"]=>
067-   string(2) "id"
068-   ["table"]=>
069-   string(%d) "%s"
070-   ["orgtable"]=>
071-   string(%d) "%s"
072-   ["def"]=>
073-   string(0) ""
074-   ["db"]=>
075-   string(%d) "%s"
076-   ["catalog"]=>
077-   string(%d) "%s"
078-   ["max_length"]=>
079-   int(1)
080-   ["length"]=>
081-   int(11)
082-   ["charsetnr"]=>
083-   int(63)
084-   ["flags"]=>
085-   int(32769)
086-   ["type"]=>
087-   int(3)
088-   ["decimals"]=>
089-   int(0)
090- }
091- done!
```

### ext/mysqli/tests/mysqli_fetch_field_flags.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] Can't select from table, INT NOT NULL [1146] Table 'test.test' doesn't exist
001- done!
002+ [003] Can't select from table, INT NOT NULL DEFAULT 1 [1146] Table 'test.test' doesn't exist
003+ [003] Can't select from table, INT UNSIGNED NOT NULL [1146] Table 'test.test' doesn't exist
004+ [003] Can't select from table, INT UNSIGNED NOT NULL DEFAULT 1 [1146] Table 'test.test' doesn't exist
005+ [003] Can't select from table, CHAR(1) DEFAULT NULL [1146] Table 'test.test' doesn't exist
006+ [003] Can't select from table, TINYBLOB [1146] Table 'test.test' doesn't exist
007+ [003] Can't select from table, MEDIUMBLOB [1146] Table 'test.test' doesn't exist
008+ [003] Can't select from table, LONGTEXT [1146] Table 'test.test' doesn't exist
009+ [003] Can't select from table, SET("one", "two") [1146] Table 'test.test' doesn't exist
010+ [003] Can't select from table, ENUM("one", "two") NOT NULL DEFAULT "one" [1146] Table 'test.test' doesn't exist
011+ [003] Can't select from table, TINYINT UNIQUE [1146] Table 'test.test' doesn't exist
012+ [003] Can't select from table, VARCHAR(2) NOT NULL PRIMARY KEY [1146] Table 'test.test' doesn't exist
013+ [009] Cannot run SELECT, [1146] Table 'test.test' doesn't exist
014+ 
015+ Fatal error: Uncaught TypeError: mysqli_fetch_field(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field_flags.php:185
016+ Stack trace:
017+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field_flags.php(185): mysqli_fetch_field(false)
018+ #1 {main}
019+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field_flags.php on line 185
```

### ext/mysqli/tests/mysqli_fetch_field_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
     mysqli object is not fully initialized
002+ [1146] Table 'test.test' doesn't exist
003+ [004] [1146] Table 'test.test' doesn't exist
004+ 
005+ Fatal error: Uncaught Error: Call to a member function fetch_field() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field_oo.php:29
006+ Stack trace:
007+ #0 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_field_oo.php on line 29
002- object(stdClass)#%d (13) {
003-   ["name"]=>
004-   string(2) "ID"
005-   ["orgname"]=>
006-   string(2) "id"
007-   ["table"]=>
008-   string(4) "TEST"
009-   ["orgtable"]=>
010-   string(4) "test"
011-   ["def"]=>
012-   string(0) ""
013-   ["db"]=>
014-   string(%d) "%s"
015-   ["catalog"]=>
016-   string(%d) "%s"
017-   ["max_length"]=>
018-   int(1)
019-   ["length"]=>
020-   int(11)
021-   ["charsetnr"]=>
022-   int(63)
023-   ["flags"]=>
024-   int(49155)
025-   ["type"]=>
026-   int(3)
027-   ["decimals"]=>
028-   int(0)
029- }
030- object(stdClass)#%d (13) {
031-   ["name"]=>
032-   string(5) "label"
033-   ["orgname"]=>
034-   string(5) "label"
035-   ["table"]=>
036-   string(4) "TEST"
037-   ["orgtable"]=>
038-   string(4) "test"
039-   ["def"]=>
040-   string(0) ""
041-   ["db"]=>
042-   string(%d) "%s"
043-   ["catalog"]=>
044-   string(%d) "%s"
045-   ["max_length"]=>
046-   int(%d)
047-   ["length"]=>
048-   int(%d)
049-   ["charsetnr"]=>
050-   int(%d)
051-   ["flags"]=>
052-   int(0)
053-   ["type"]=>
054-   int(254)
055-   ["decimals"]=>
056-   int(0)
057- }
058- bool(false)
059- mysqli_result object is already closed
060- done!
```

### ext/mysqli/tests/mysqli_fetch_field_types.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] 'TINYINT' - 'CREATE TABLE test(id TINYINT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (5)', [1146] Table 'test.test' doesn't exist
002+ [003] 'SMALLINT' - 'CREATE TABLE test(id SMALLINT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (10)', [1146] Table 'test.test' doesn't exist
003+ [002] 'FLOAT' - 'CREATE TABLE test(id FLOAT) DEFAULT CHARSET latin1', [1050] Table 'test' already exists
004+ [004] TIMESTAMP, [1146] Table 'test.test' doesn't exist
005+ [002] 'BIGINT' - 'CREATE TABLE test(id BIGINT) DEFAULT CHARSET latin1', [1050] Table 'test' already exists
006+ [004] TIME, [1146] Table 'test.test' doesn't exist
007+ [002] 'DATETIME' - 'CREATE TABLE test(id DATETIME) DEFAULT CHARSET latin1', [1050] Table 'test' already exists
008+ [004] VARCHAR(32768), [1146] Table 'test.test' doesn't exist
009+ [002] 'SET('I', 'smash', 'the')' - 'CREATE TABLE test(id SET('I', 'smash', 'the')) DEFAULT CHARSET latin1', [1050] Table 'test' already exists
010+ [003] 'BIT' - 'CREATE TABLE test(id BIT) DEFAULT CHARSET latin1' - 'INSERT INTO test(id) VALUES (0)', [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_fetch_lengths.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [003] [1054] Unknown column 'label' in 'field list'
003+ 
004+ Fatal error: Uncaught TypeError: mysqli_fetch_lengths(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_lengths.php:14
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_lengths.php(14): mysqli_fetch_lengths(false)
007+ #1 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_lengths.php on line 14
001- bool(false)
002- array(2) {
003-   [0]=>
004-   int(1)
005-   [1]=>
006-   int(1)
007- }
008- bool(false)
009- mysqli_result object is already closed
010- done!
```

### ext/mysqli/tests/mysqli_fetch_lengths_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [002] [1146] Table 'test.test' doesn't exist
003+ 
004+ Warning: Attempt to read property "lengths" on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_lengths_oo.php on line 12
     NULL
006+ 
007+ Fatal error: Uncaught Error: Call to a member function fetch_assoc() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_lengths_oo.php:13
008+ Stack trace:
009+ #0 {main}
010+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_lengths_oo.php on line 13
002- array(2) {
003-   [0]=>
004-   int(1)
005-   [1]=>
006-   int(1)
007- }
008- NULL
009- Property access is not allowed yet
010- done!
```

### ext/mysqli/tests/mysqli_fetch_object_oo.phpt

Test PASSED in control but FAILED in experiment

```patch
     mysqli object is not fully initialized
002+ [003] [1146] Table 'test.test' doesn't exist
003+ [0] Call to a member function fetch_object() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_object_oo.php on line 22
004+ [0] Call to a member function fetch_object() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_object_oo.php on line 30
005+ 
006+ Fatal error: Uncaught TypeError: mysqli_fetch_object(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_object_oo.php:36
007+ Stack trace:
008+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_object_oo.php(36): mysqli_fetch_object(false)
009+ #1 {main}
010+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_fetch_object_oo.php on line 36
002- [0] Object of class mysqli could not be converted to string in %s on line %d
003- [0] mysqli_result::fetch_object() expects at most 2 arguments, 3 given in %s on line %d
004- mysqli_result::fetch_object(): Argument #2 ($constructor_args) must be of type array, null given
005- Exception: Too few arguments to function mysqli_fetch_object_construct::__construct(), 1 passed and exactly 2 expected
006- NULL
007- NULL
008- mysqli_result object is already closed
009- mysqli_result::fetch_object(): Argument #1 ($class) must be a valid class name, this_class_does_not_exist given
010- done!
```

### ext/mysqli/tests/mysqli_field_seek.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
002+ [003] [1146] Table 'test.test' doesn't exist
003+ 
004+ Fatal error: Uncaught TypeError: mysqli_field_seek(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_field_seek.php:64
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_field_seek.php(64): mysqli_field_seek(false, -1)
007+ #1 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_field_seek.php on line 64
001- mysqli_field_seek(): Argument #2 ($index) must be greater than or equal to 0
002- object(stdClass)#%d (13) {
003-   ["name"]=>
004-   string(2) "id"
005-   ["orgname"]=>
006-   string(2) "id"
007-   ["table"]=>
008-   string(4) "test"
009-   ["orgtable"]=>
010-   string(4) "test"
011-   ["def"]=>
012-   string(0) ""
013-   ["db"]=>
014-   string(%d) "%s"
015-   ["catalog"]=>
016-   string(%d) "%s"
017-   ["max_length"]=>
018-   int(0)
019-   ["length"]=>
020-   int(11)
021-   ["charsetnr"]=>
022-   int(63)
023-   ["flags"]=>
024-   int(49155)
025-   ["type"]=>
026-   int(3)
027-   ["decimals"]=>
028-   int(0)
029- }
030- bool(true)
031- object(stdClass)#%d (13) {
032-   ["name"]=>
033-   string(2) "id"
034-   ["orgname"]=>
035-   string(2) "id"
036-   ["table"]=>
037-   string(4) "test"
038-   ["orgtable"]=>
039-   string(4) "test"
040-   ["def"]=>
041-   string(0) ""
042-   ["db"]=>
043-   string(%d) "%s"
044-   ["catalog"]=>
045-   string(%d) "%s"
046-   ["max_length"]=>
047-   int(0)
048-   ["length"]=>
049-   int(11)
050-   ["charsetnr"]=>
051-   int(63)
052-   ["flags"]=>
053-   int(49155)
054-   ["type"]=>
055-   int(3)
056-   ["decimals"]=>
057-   int(0)
058- }
059- bool(true)
060- object(stdClass)#%d (13) {
061-   ["name"]=>
062-   string(5) "label"
063-   ["orgname"]=>
064-   string(5) "label"
065-   ["table"]=>
066-   string(4) "test"
067-   ["orgtable"]=>
068-   string(4) "test"
069-   ["def"]=>
070-   string(0) ""
071-   ["db"]=>
072-   string(%d) "%s"
073-   ["catalog"]=>
074-   string(%d) "%s"
075-   ["max_length"]=>
076-   int(%d)
077-   ["length"]=>
078-   int(%d)
079-   ["charsetnr"]=>
080-   int(%d)
081-   ["flags"]=>
082-   int(0)
083-   ["type"]=>
084-   int(254)
085-   ["decimals"]=>
086-   int(0)
087- }
088- int(2)
089- mysqli_field_seek(): Argument #2 ($index) must be less than the number of fields for this result set
090- bool(false)
091- bool(true)
092- object(stdClass)#%d (13) {
093-   ["name"]=>
094-   string(5) "_null"
095-   ["orgname"]=>
096-   string(0) ""
097-   ["table"]=>
098-   string(0) ""
099-   ["orgtable"]=>
100-   string(0) ""
101-   ["def"]=>
102-   string(0) ""
103-   ["db"]=>
104-   string(0) ""
105-   ["catalog"]=>
106-   string(%d) "%s"
107-   ["max_length"]=>
108-   int(0)
109-   ["length"]=>
110-   int(0)
111-   ["charsetnr"]=>
112-   int(63)
113-   ["flags"]=>
114-   int(32896)
115-   ["type"]=>
116-   int(6)
117-   ["decimals"]=>
118-   int(0)
119- }
120- mysqli_result object is already closed
121- done!
```

### ext/mysqli/tests/mysqli_free_result.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     a
     NULL
     b
--
```

### ext/mysqli/tests/mysqli_get_charset.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli object is already closed
     done!
```

### ext/mysqli/tests/mysqli_info.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
001- done!
002+ [003] [1146] Table 'test.test' doesn't exist
003+ [005] [1146] Table 'test.test' doesn't exist
004+ [006] Expecting string/any_non_empty, got NULL/
005+ [007] [1146] Table 'test.test' doesn't exist
006+ [008] Expecting string/any_non_empty, got NULL/
007+ [009] [1146] Table 'test.test' doesn't exist
008+ [010] Expecting string/any_non_empty, got NULL/
009+ [011] [1146] Table 'test.test' doesn't exist
010+ [012] Expecting string/any_non_empty, got NULL/
011+ [015] [1146] Table 'test.test' doesn't exist
012+ done!
```

### ext/mysqli/tests/mysqli_insert_id.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [009] [1146] Table 'test.test' doesn't exist
002+ [010] Expecting int/any >0, got integer/0
003+ [020] [1146] Table 'test.test' doesn't exist
004+ [021] Expecting int/1000, got integer/0
005+ [022] [1146] Table 'test.test' doesn't exist
006+ [023] Expecting int/>1000, got integer/0
     mysqli object is already closed
     done!
```

### ext/mysqli/tests/mysqli_kill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- mysqli_kill(): Argument #2 ($process_id) must be greater than 0
002- string(%d) "%s"
003- bool(false)
004- object(mysqli)#%d (%d) {
005-   ["affected_rows"]=>
006-   int(-1)
007-   ["client_info"]=>
008-   string(%d) "%s"
009-   ["client_version"]=>
010-   int(%d)
011-   ["connect_errno"]=>
012-   int(0)
013-   ["connect_error"]=>
014-   NULL
015-   ["errno"]=>
016-   int(%d)
017-   ["error"]=>
018-   string(%d) "%s"
019-   ["error_list"]=>
020-   array(1) {
021-     [0]=>
022-     array(3) {
023-       ["errno"]=>
024-       int(%d)
025-       ["sqlstate"]=>
026-       string(5) "%s"
027-       ["error"]=>
028-       string(%d) "%s"
029-     }
030-   }
031-   ["field_count"]=>
032-   int(0)
033-   ["host_info"]=>
034-   string(%d) "%s"
035-   ["info"]=>
036-   %s
037-   ["insert_id"]=>
038-   int(0)
039-   ["server_info"]=>
040-   string(%d) "%s"
041-   ["server_version"]=>
042-   int(%d)
043-   ["sqlstate"]=>
044-   string(5) "HY000"
045-   ["protocol_version"]=>
046-   int(10)
047-   ["thread_id"]=>
048-   int(%d)
049-   ["warning_count"]=>
050-   int(0)
051- }
052- mysqli_kill(): Argument #2 ($process_id) must be greater than 0
053- array(1) {
054-   ["id"]=>
055-   string(1) "1"
056- }
057- mysqli_kill(): Argument #2 ($process_id) must be greater than 0
058- done!
```

### ext/mysqli/tests/mysqli_max_links.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Failed to create test table: [1050] Table 'test' already exists
001- bool(true)
002- int(1)
003- 
004- Warning: mysqli_%sonnect(): Too many open links (1) in %s on line %d
005- 
006- Warning: mysqli_%sonnect(): Too many open links (1) in %s on line %d
007- 
008- Warning: mysqli_%sonnect(): Too many open links (1) in %s on line %d
009- 
010- Warning: mysqli_%sonnect(): Too many open links (1) in %s on line %d
011- 
012- Warning: mysqli_%sonnect(): Too many open links (1) in %s on line %d
013- done!
```

### ext/mysqli/tests/mysqli_more_results.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     [004]
     bool(false)
     [006]
--
```

### ext/mysqli/tests/mysqli_multi_query.phpt

Test PASSED in control but FAILED in experiment

```patch
     [006] 3
003+ [009] [1146] Table 'test.test' doesn't exist
     [009] [2014] Commands out of sync; you can't run this command now
004+ [010] 0
003- [009] [2014] Commands out of sync; you can't run this command now
004- [010] 7
     mysqli object is already closed
     done!
```

### ext/mysqli/tests/mysqli_mysqlnd_read_timeout_long.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_next_result.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [007] Expecting 3 result(s), got 2 result(s)
     mysqli object is already closed
     done!
```

### ext/mysqli/tests/mysqli_options_init_command.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [002] [1146] Table 'test.test' doesn't exist
002+ [003] Expecting 1 got 0
003+ [006] [1146] Table 'test.test' doesn't exist
001- Warning: mysqli_real_connect(): (%s/%d): %s in %s on line %d
002- [010] Cannot connect to the server using %s
003- done!
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_options_init_command.php:37
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_options_init_command.php(37): mysqli_fetch_assoc(false)
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_options_init_command.php on line 37
```

### ext/mysqli/tests/mysqli_options_int_and_float_native.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [004] TODO [1050] Table 'test' already exists
002+ [005] [1146] Table 'test.test' doesn't exist
003+ [005] [1146] Table 'test.test' doesn't exist
     done!
```

### ext/mysqli/tests/mysqli_pconn_kill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli object is already closed
003+ [012] New persistent connection cannot execute queries, [1146] Table 'test.test' doesn't exist
002- done!
004+ 
005+ Fatal error: Uncaught TypeError: mysqli_free_result(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_pconn_kill.php:65
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_pconn_kill.php(65): mysqli_free_result(false)
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_pconn_kill.php on line 65
```

### ext/mysqli/tests/mysqli_pconn_max_links.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli_get_links_stats() expects exactly 0 arguments, 1 given
     Before pconnect:array(3) {
       ["total"]=>
--
       ["cached_plinks"]=>
       int(0)
     }
019+ [003] Cannot run query on persistent connection of second DB user, [1146] Table 'test.test' doesn't exist
020+ 
021+ Fatal error: Uncaught TypeError: mysqli_fetch_assoc(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_pconn_max_links.php:46
022+ Stack trace:
023+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_pconn_max_links.php(46): mysqli_fetch_assoc(false)
024+ #1 {main}
025+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_pconn_max_links.php on line 46
018- array(2) {
019-   ["id"]=>
020-   string(1) "1"
021-   ["label"]=>
022-   string(1) "a"
023- }
024- Before second pconnect:array(3) {
025-   ["total"]=>
026-   int(2)
027-   ["active_plinks"]=>
028-   int(1)
029-   ["cached_plinks"]=>
030-   int(0)
031- }
032- After second pconnect:array(3) {
033-   ["total"]=>
034-   int(1)
035-   ["active_plinks"]=>
036-   int(0)
037-   ["cached_plinks"]=>
038-   int(0)
039- }
040- array(3) {
041-   ["total"]=>
042-   int(1)
043-   ["active_plinks"]=>
044-   int(0)
045-   ["cached_plinks"]=>
046-   int(0)
047- }
048- array(2) {
049-   ["id"]=>
050-   string(1) "1"
051-   ["label"]=>
052-   string(1) "a"
053- }
054- [015] Can open more persistent connections than allowed, [0] 
055- array(3) {
056-   ["total"]=>
057-   int(3)
058-   ["active_plinks"]=>
059-   int(2)
060-   ["cached_plinks"]=>
061-   int(0)
062- }
063- done!
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

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
005+ Fetching from thread 1431...
005- Fetching from thread 1490...
```

### ext/mysqli/tests/mysqli_poll_mixing_insert_select.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [006] Expecting true got boolean/true
002+ [006] Expecting true got boolean/true
003+ [006] Expecting true got boolean/true
004+ [006] Expecting true got boolean/true
005+ [006] Expecting true got boolean/true
     [003] 'SELECT' caused 1064
007+ [006] Expecting true got boolean/true
008+ [005] Expecting true got boolean/true
009+ 
010+ Fatal error: Uncaught TypeError: mysqli_fetch_row(): Argument #1 ($result) must be of type mysqli_result, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_poll_mixing_insert_select.php:115
011+ Stack trace:
012+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_poll_mixing_insert_select.php(115): mysqli_fetch_row(false)
013+ #1 {main}
014+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_poll_mixing_insert_select.php on line 115
002- [003] 'UPDATE test SET id = 101 WHERE id > 3' caused 1062
003- [003] 'UPDATE_FIX test SET id = 101 WHERE id > 3' caused 1064
004- array(2) {
005-   ["id"]=>
006-   string(3) "100"
007-   ["label"]=>
008-   string(1) "z"
009- }
010- [009] [2014] %s
011- done!
```

### ext/mysqli/tests/mysqli_prepare.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     bool(false)
     done!
```

### ext/mysqli/tests/mysqli_query.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     mysqli_query(): Argument #2 ($query) cannot be empty
     array(1) {
       ["valid"]=>
--
```

### ext/mysqli/tests/mysqli_query_iterators.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [1146] Table 'test.test' doesn't exist
     --- Testing default ---
003+ ======
004+ mysqli_result object is already closed
005+ --- Testing USE_RESULT ---
006+ ======
007+ 
008+ Warning: main(): Data fetched with MYSQLI_USE_RESULT can be iterated only once in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\mysqli\tests\mysqli_query_iterators.php on line 38
009+ --- Testing STORE_RESULT ---
010+ ======
011+ done!
002- array(1) {
003-   ["id"]=>
004-   string(1) "1"
005- }
006- array(1) {
007-   ["id"]=>
008-   string(1) "2"
009- }
010- array(1) {
011-   ["id"]=>
012-   string(1) "3"
013- }
014- array(1) {
015-   ["id"]=>
016-   string(1) "4"
017- }
018- array(1) {
019-   ["id"]=>
020-   string(1) "5"
021- }
022- array(1) {
023-   ["id"]=>
024-   string(1) "6"
025- }
026- ======
027- array(1) {
028-   ["id"]=>
029-   string(1) "1"
030- }
031- array(1) {
032-   ["id"]=>
033-   string(1) "2"
034- }
035- array(1) {
036-   ["id"]=>
037-   string(1) "3"
038- }
039- array(1) {
040-   ["id"]=>
041-   string(1) "4"
042- }
043- array(1) {
044-   ["id"]=>
045-   string(1) "5"
046- }
047- array(1) {
048-   ["id"]=>
049-   string(1) "6"
050- }
051- mysqli_result object is already closed
052- --- Testing USE_RESULT ---
053- array(1) {
054-   ["id"]=>
055-   string(1) "1"
056- }
057- array(1) {
058-   ["id"]=>
059-   string(1) "2"
060- }
061- array(1) {
062-   ["id"]=>
063-   string(1) "3"
064- }
065- array(1) {
066-   ["id"]=>
067-   string(1) "4"
068- }
069- array(1) {
070-   ["id"]=>
071-   string(1) "5"
072- }
073- array(1) {
074-   ["id"]=>
075-   string(1) "6"
076- }
077- ======
078- 
079- Warning: main(): Data fetched with MYSQLI_USE_RESULT can be iterated only once in %s on line %d
080- --- Testing STORE_RESULT ---
081- array(1) {
082-   ["id"]=>
083-   string(1) "1"
084- }
085- array(1) {
086-   ["id"]=>
087-   string(1) "2"
088- }
089- array(1) {
090-   ["id"]=>
091-   string(1) "3"
092- }
093- array(1) {
094-   ["id"]=>
095-   string(1) "4"
096- }
097- array(1) {
098-   ["id"]=>
099-   string(1) "5"
100- }
101- array(1) {
102-   ["id"]=>
103-   string(1) "6"
104- }
105- ======
106- array(1) {
107-   ["id"]=>
108-   string(1) "1"
109- }
110- array(1) {
111-   ["id"]=>
112-   string(1) "2"
113- }
114- array(1) {
115-   ["id"]=>
116-   string(1) "3"
117- }
118- array(1) {
119-   ["id"]=>
120-   string(1) "4"
121- }
122- array(1) {
123-   ["id"]=>
124-   string(1) "5"
125- }
126- array(1) {
127-   ["id"]=>
128-   string(1) "6"
129- }
130- done!
```

### ext/mysqli/tests/mysqli_query_stored_proc.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] Cannot call SP, [1146] Table 'test.test' doesn't exist
002+ [004] Cannot call SP, [1146] Table 'test.test' doesn't exist
003+ NULL
004+ [008] Cannot call SP, [1146] Table 'test.test' doesn't exist
005+ done!
001- array(2) {
002-   ["id"]=>
003-   string(1) "1"
004-   ["label"]=>
005-   string(1) "a"
006- }
007- array(2) {
008-   ["id"]=>
009-   string(1) "1"
010-   ["label"]=>
011-   string(1) "a"
012- }
013- array(2) {
014-   ["id"]=>
015-   string(1) "1"
016-   ["label"]=>
017-   string(1) "a"
018- }
019- array(2) {
020-   ["id"]=>
021-   string(1) "1"
022-   ["label"]=>
023-   string(1) "a"
024- }
025- array(1) {
026-   ["id"]=>
027-   string(1) "1"
028- }
029- done!
```

### ext/mysqli/tests/mysqli_query_unicode.phpt

Test PASSED in control but BORKED in experiment

```patch
not generated
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Wed Jun 30 01:51:22 2021 (7144): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Jun 30 01:51:22 2021 (7144): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Jun 30 01:36:05 2021 (5792): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/pdo_mysql/tests/bug44327.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     string(1) "1"
     string(17) "SELECT 1 AS "one""
     ----------------------------------
011+ 
012+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug44327.php on line 17
       string(19) "SELECT id FROM test"
013+ bool(false)
014+ 
015+ Warning: Attempt to read property "queryString" on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug44327.php on line 22
       string(1) "1"
     }
016+ NULL
011- object(PDORow)#%d (2) {
012-   ["queryString"]=>
013-   string(19) "SELECT id FROM test"
014-   ["id"]=>
015-   string(1) "1"
016- }
017- string(19) "SELECT id FROM test"
     ----------------------------------
     
     Warning: Attempt to read property "queryString" on bool in %s on line %d
--
```

### ext/pdo_mysql/tests/bug66528.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug66528.php:9
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug66528.php(9): PDO->exec('CREATE TABLE te...')
001- SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute.
002- SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute.
003- SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute.
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug66528.php on line 9
```

### ext/pdo_mysql/tests/bug79375.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug79375.php:15
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug79375.php(15): PDO->query('INSERT INTO tes...')
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug79375.php on line 15
001- Running query on first connection
002- Got 1 for first connection
003- Running query on second connection
004- SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
005- 
006- Running query on first connection
007- Got 1 for first connection
008- Running query on second connection
009- SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
010- 
011- Running query on first connection
012- Got 1 for first connection
013- Running query on second connection
014- SQLSTATE[HY000]: General error: 1205 Lock wait timeout exceeded; try restarting transaction
```

### ext/pdo_mysql/tests/bug81037.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc:41
001- SQLSTATE[HY000]: General error: 2031 No data supplied for parameters in prepared statement
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc(41): PDO->exec('INSERT INTO tes...')
004+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug81037.php(7): MySQLPDOTest::createTestTable(Object(PDO))
005+ #2 {main}
006+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
```

### ext/pdo_mysql/tests/bug_33689.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_33689.php on line 7
     object(PDOStatement)#%d (1) {
       ["queryString"]=>
       string(18) "SELECT * from test"
     }
     Array
     (
007-     [bar] => 1
008-     [0] => 1
009- )
010- Array
011- (
         [native_type] => LONG
         [flags] => Array
             (
012+             [1] => primary_key
             )
     
         [table] => test
016+     [name] => id
019-     [name] => bar
         [len] => 11
         [precision] => 0
     )
```

### ext/pdo_mysql/tests/bug_41125.phpt

Test PASSED in control but FAILED in experiment

```patch
     array(0) {
     }
003+ 
004+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_41125.php on line 12
005+ done!
003- array(0) {
004- }
005- array(1) {
006-   [0]=>
007-   array(2) {
008-     ["id"]=>
009-     string(1) "1"
010-     [0]=>
011-     string(1) "1"
012-   }
013- }
014- array(0) {
015- }
016- array(2) {
017-   [0]=>
018-   array(2) {
019-     ["id"]=>
020-     string(1) "1"
021-     [0]=>
022-     string(1) "1"
023-   }
024-   [1]=>
025-   array(2) {
026-     ["id"]=>
027-     string(1) "2"
028-     [0]=>
029-     string(1) "2"
030-   }
031- }
032- done!
```

### ext/pdo_mysql/tests/bug_41698.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_41698.php on line 9
     array(2) {
       [0]=>
005+     ["id"]=>
         ["floatval"]=>
006+     string(1) "1"
004-     ["floatval"]=>
005-     string(8) "2.340000"
       }
       [1]=>
010+     ["id"]=>
         ["floatval"]=>
011+     string(1) "5"
009-     ["floatval"]=>
010-     string(8) "4.560000"
       }
     }
```

### ext/pdo_mysql/tests/bug_42499.phpt

Test PASSED in control but FAILED in experiment

```patch
     Emulated Prepared Statements...
002+ 
       [0]=>
       array(1) {
         ["_id"]=>
         string(1) "a"
       }
003+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_42499.php on line 10
002- array(1) {
003-   [0]=>
004-   array(1) {
005-     ["_id"]=>
006-     string(1) "a"
007-   }
008- }
     
005+ Fatal error: Uncaught Error: Call to a member function fetchAll() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_42499.php:11
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_42499.php(24): bug_42499(Object(PDO))
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_42499.php on line 11
010- Warning: PDO::exec(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
011- Native Prepared Statements...
012- array(1) {
013-   [0]=>
014-   array(1) {
015-     ["_id"]=>
016-     string(1) "a"
017-   }
018- }
019- 
020- Warning: PDO::exec(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
021- done!
```

### ext/pdo_mysql/tests/bug_44454.phpt

Test PASSED in control but FAILED in experiment

```patch
     Native Prepared Statements
002+ ... While error SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist
003+ 
004+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_44454.php:34
005+ Stack trace:
006+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_44454.php(34): PDO->query('SELECT a, b FRO...')
007+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_44454.php(52): bug_44454(Object(PDO))
008+ #2 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_44454.php on line 34
002- ... SELECT has returned 1 row...
003- ... INSERT should fail...
004- ... STMT - '00000'
005- ... PDO  - array (
006-   0 => '23000',
007-   1 => 1062,
008-   2 => 'Duplicate entry \'1-1\' for key %s',
009- )
010- ... SELECT has returned 1 row...
011- ... INSERT should fail...
012- ... STMT - '00000'
013- ... PDO  - array (
014-   0 => '23000',
015-   1 => 1062,
016-   2 => 'Duplicate entry \'1-1\' for key %s',
017- )
018- 
019- Emulated Prepared Statements
020- ... SELECT has returned 1 row...
021- ... INSERT should fail...
022- ... STMT - '00000'
023- ... PDO  - array (
024-   0 => '23000',
025-   1 => 1062,
026-   2 => 'Duplicate entry \'1-1\' for key %s',
027- )
028- ... SELECT has returned 1 row...
029- ... INSERT should fail...
030- ... STMT - '00000'
031- ... PDO  - array (
032-   0 => '23000',
033-   1 => 1062,
034-   2 => 'Duplicate entry \'1-1\' for key %s',
035- )
036- done!
```

### ext/pdo_mysql/tests/bug_61207.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 16
     Handle 1:
004+ 
005+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 23
006+ 
     Rowset 2
     Results detected
007+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 31
003- Rowset 2
004- Results detected
005- Rowset 3
     Handle 2:
010+ 
011+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 39
012+ 
     Results detected
013+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 47
008- Results detected
009- Rowset 2
     Handle 3:
016+ 
017+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 55
018+ 
     Rowset 2
019+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 64
012- Rowset 2
013- Results detected
     Handle 4:
     Rowset 1
022+ 
023+ Warning: PDOStatement::nextRowset(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 72
024+ 
016- Rowset 2
017- Rowset 3
018- Results detected
025+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1051 Unknown table 'test.test' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_61207.php on line 74
```

### ext/pdo_mysql/tests/bug_pecl_12925.phpt

Test PASSED in control but FAILED in experiment

```patch
     Emulated...
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php on line 9
004+ 
005+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php on line 11
006+ 
007+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php on line 13
008+ 
009+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php on line 15
         string(1) "c"
010+ array(0) {
002- array(1) {
003-   [0]=>
004-   array(1) {
005-     ["id"]=>
006-     string(1) "c"
007-   }
     }
     Native...
013+ 
014+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php on line 10
015+ 
016+ Fatal error: Uncaught Error: Call to a member function execute() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php:11
017+ Stack trace:
018+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php(29): bug_pecl_1295(Object(PDO))
019+ #1 {main}
020+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\bug_pecl_12925.php on line 11
010- array(1) {
011-   [0]=>
012-   array(1) {
013-     ["id"]=>
014-     string(1) "c"
015-   }
016- }
017- done!
```

### ext/pdo_mysql/tests/change_column_count.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\change_column_count.php:12
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\change_column_count.php(12): PDOStatement->execute(Array)
004+ #1 {main}
005+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\change_column_count.php on line 12
001- array(1) {
002-   [0]=>
003-   array(2) {
004-     ["id"]=>
005-     string(2) "10"
006-     ["name"]=>
007-     string(4) "test"
008-   }
009- }
010- array(1) {
011-   [0]=>
012-   array(3) {
013-     ["id"]=>
014-     string(2) "10"
015-     ["name"]=>
016-     string(4) "test"
017-     ["new_col"]=>
018-     NULL
019-   }
020- }
```

### #

Test PASSED in control but FAILED in experiment

```patch
not generated
```

### ext/pdo_mysql/tests/last_insert_id.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     (
         [queryString] => CREATE TABLE test (id int auto_increment primary key, num int)
     )
005+ 
006+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\last_insert_id.php on line 7
007+ 
008+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\last_insert_id.php on line 9
009+ 0
005- PDOStatement Object
006- (
007-     [queryString] => INSERT INTO test (id, num) VALUES (23, 42)
008- )
009- PDOStatement Object
010- (
011-     [queryString] => INSERT INTO test (num) VALUES (451)
012- )
013- 24
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test FAILED in experiment beacuse

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=test, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (72 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=test'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
     done!
```

Test FAILED in both, but outputs is different.

```patch
001+ [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=test, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (72 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=test'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: Connection refused
001- [003] URI=uri:file://C:/Users/RUNNER~1/AppData/Local/Temp/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3406;dbname=test, File=C:\Users\RUNNER~1\AppData\Local\Temp\pdomuri.tst (72 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3406;dbname=test'), chr(0) test, SQLSTATE[HY000] [2002] No connection could be made because the target machine actively refused it
```

### ext/pdo_mysql/tests/pdo_mysql_attr_fetch_table_names.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
002+ array(0) {
003+ }
       array(1) {
         ["test.label"]=>
         string(1) "a"
004+ array(0) {
001- array(1) {
002-   [0]=>
003-   array(1) {
004-     ["test.label"]=>
005-     string(1) "a"
006-   }
     }
006+ done!
008- array(1) {
009-   [0]=>
010-   array(1) {
011-     ["label"]=>
012-     string(1) "a"
013-   }
014- }
015- done!
```

### ext/pdo_mysql/tests/pdo_mysql_begintransaction.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       string(1) "z"
     }
     [026] Autocommit mode of the MySQL Server should be off, got '1', [0] 00000
016+ 
017+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_begintransaction.php on line 157
018+ [036] Cannot insert data, [42S02] [42S02 1146 Table 'test.test' doesn't exist]
019+ string(5) "42S02"
020+ 
021+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_begintransaction.php on line 167
022+ [038] No rows deleted, can't be true.
016- string(5) "00000"
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_prepare_native_placeholder_everywhere.phpt

Test PASSED in control but FAILED in experiment

```patch
001- array(1) {
002-   [0]=>
001+ array(2) {
002+   [0]=>
       array(2) {
005+     string(3) "100"
006+     ["label"]=>
007+     string(1) "y"
008+   }
009+   [1]=>
010+   array(2) {
011+     ["id"]=>
         string(1) "1"
         ["label"]=>
         string(4) "row1"
       }
     }
     now the same with native PS
018+ array(2) {
011- array(1) {
       [0]=>
       array(3) {
         ["?"]=>
--
         int(1)
         ["label"]=>
         string(4) "row1"
028+   [1]=>
029+   array(3) {
030+     ["?"]=>
031+     string(2) "id"
032+     ["id"]=>
033+     int(100)
034+     ["label"]=>
035+     string(1) "y"
036+   }
     }
     done!
```

### ext/pdo_mysql/tests/pdo_mysql_rollback.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 40
002+ 
003+ Warning: PDO::exec(): SQLSTATE[23000]: Integrity constraint violation: 1062 Duplicate entry '1' for key 'PRIMARY' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
     int(1)
     int(0)
     int(1)
--
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::prepare(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_bindparam_types.php on line 19
001- done!
002+ 
003+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_bindparam_types.php:20
004+ Stack trace:
005+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_bindparam_types.php(86): pdo_mysql_stmt_bindparam_types_do(Object(PDO), 26, true, 'DECIMAL', -1000)
006+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_bindparam_types.php(117): pdo_mysql_stmt_bindparam_types(Object(PDO), 26, 'DECIMAL', -1000)
007+ #2 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_bindparam_types.php on line 20
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindvalue.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
     Testing native PS...
004+ Binding value and not variable...
005+ Binding variable which references another variable...
006+ Binding a variable and a value...
007+ Binding a variable to two placeholders and changing the variable value in between the binds...
008+ Testing emulated PS...
009+ Binding variable...
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
010+ Binding value and not variable...
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
011+ Binding variable which references another variable...
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
     Binding a variable and a value...
     in = 0 -> id = 1 (integer) / label = 'a' (string)
012+ Binding a variable and a value...
003- in = 0 -> id = 1 (integer) / label = 'a' (string)
004- in = 0 -> id = 2 (integer) / label = 'b' (string)
005- Binding value and not variable...
006- in = 0 -> id = 1 (integer) / label = 'a' (string)
007- in = 0 -> id = 2 (integer) / label = 'b' (string)
008- Binding variable which references another variable...
009- in = 0 -> id = 1 (integer) / label = 'a' (string)
010- in = 0 -> id = 2 (integer) / label = 'b' (string)
011- Binding a variable and a value...
012- in = 0 -> id = 1 (integer) / label = 'a' (string)
013- in = 0 -> id = 2 (integer) / label = 'b' (string)
     Binding a variable to two placeholders and changing the variable value in between the binds...
014+ done!
015- in = 2 -> id = 1 (integer) / label = 'a' (string)
016- in = 2 -> id = 2 (integer) / label = 'b' (string)
017- Testing emulated PS...
018- Binding variable...
019- in = 0 -> id = 1 (integer) / label = 'a' (string)
020- in = 0 -> id = 2 (integer) / label = 'b' (string)
021- Binding value and not variable...
022- in = 0 -> id = 1 (integer) / label = 'a' (string)
023- in = 0 -> id = 2 (integer) / label = 'b' (string)
024- Binding variable which references another variable...
025- in = 0 -> id = 1 (integer) / label = 'a' (string)
026- in = 0 -> id = 2 (integer) / label = 'b' (string)
027- Binding a variable and a value...
028- in = 0 -> id = 1 (integer) / label = 'a' (string)
029- in = 0 -> id = 2 (integer) / label = 'b' (string)
030- Binding a variable to two placeholders and changing the variable value in between the binds...
031- in = 2 -> id = 1 (integer) / label = 'a' (string)
032- in = 2 -> id = 2 (integer) / label = 'b' (string)
033- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_blobs.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_blobs.php on line 25
001- done!
002+ [005 + 1] 42 array (
003+   0 => '42S02',
004+   1 => 1146,
005+   2 => 'Table \'test.test\' doesn\'t exist',
006+ )
007+ 
008+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_blobs.php on line 31
009+ 
010+ Fatal error: Uncaught Error: Call to a member function bindColumn() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_blobs.php:33
011+ Stack trace:
012+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_blobs.php(77): test_blob(Object(PDO), 6, 'BLOB', 32767)
013+ #1 {main}
014+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_blobs.php on line 33
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor.phpt

Test PASSED in control but FAILED in experiment

```patch
     Testing emulated PS...
     Buffered...
004+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 40
005+ 
006+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
007+ 
008+ Warning: PDO::query(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor.php on line 12
009+ 
     Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
     in = 0 -> id = 1 (integer) / label = 'a' (string)
     in = 0 -> id = 2 (integer) / label = 'b' (string)
010+ Warning: PDO::query(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor.php on line 14
004- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
005- in = 0 -> id = 1 (integer) / label = 'a' (string)
006- in = 0 -> id = 2 (integer) / label = 'b' (string)
007- Unbuffered...
     
012+ Fatal error: Uncaught Error: Call to a member function closeCursor() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor.php:15
013+ Stack trace:
014+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor.php(108): pdo_mysql_stmt_closecursor(Object(PDO))
015+ #1 {main}
016+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor.php on line 15
009- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
010- in = 0 -> id = 1 (integer) / label = 'a' (string)
011- in = 0 -> id = 2 (integer) / label = 'b' (string)
012- Testing native PS...
013- Buffered...
014- 
015- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
016- in = 0 -> id = 1 (integer) / label = 'a' (string)
017- in = 0 -> id = 2 (integer) / label = 'b' (string)
018- Unbuffered...
019- 
020- Warning: PDO::query(): SQLSTATE[HY000]: General error: 2014 Cannot execute queries while other unbuffered queries are active.  Consider using PDOStatement::fetchAll().  Alternatively, if your code is only ever going to run against mysql, you may enable query buffering by setting the PDO::MYSQL_ATTR_USE_BUFFERED_QUERY attribute. in %s on line %d
021- in = 0 -> id = 1 (integer) / label = 'a' (string)
022- in = 0 -> id = 2 (integer) / label = 'b' (string)
023- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_closecursor_empty.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S01]: Base table or view already exists: 1050 Table 'test' already exists in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 40
002+ 
003+ Warning: PDO::exec(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
004+ 
005+ Warning: PDO::prepare(): SQLSTATE[42S22]: Column not found: 1054 Unknown column 'label' in 'field list' in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor_empty.php on line 15
001- in = 0 -> id = 1 (integer) / label = 'a' (string)
002- in = 0 -> id = 2 (integer) / label = 'b' (string)
003- in = 0 -> id = 1 (integer) / label = 'a' (string)
004- in = 0 -> id = 2 (integer) / label = 'b' (string)
005- done!
006+ 
007+ Fatal error: Uncaught Error: Call to a member function bindParam() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor_empty.php:17
008+ Stack trace:
009+ #0 {main}
010+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_closecursor_empty.php on line 17
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDOStatement::execute(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_getcolumnmeta.php on line 16
     PDOStatement::getColumnMeta(): Argument #1 ($column) must be greater than or equal to 0
     Testing native PS...
004+ 
003- done!
005+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_getcolumnmeta.php on line 55
006+ [030] + 1] Insert failed, 42 - array (
007+   0 => '42S02',
008+   1 => 1146,
009+   2 => 'Table \'test.test\' doesn\'t exist',
010+ )
011+ 
012+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_getcolumnmeta.php on line 55
013+ [060] + 1] Insert failed, 42 - array (
014+   0 => '42S02',
015+   1 => 1146,
016+   2 => 'Table \'test.test\' doesn\'t exist',
017+ )
018+ 
019+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_getcolumnmeta.php on line 55
020+ [440] + 1] Insert failed, 42 - array (
021+   0 => '42S02',
022+   1 => 1146,
023+   2 => 'Table \'test.test\' doesn\'t exist',
024+ )
025+ 
026+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_getcolumnmeta.php on line 55
027+ [500] + 1] Insert failed, 42 - array (
028+   0 => '42S02',
029+   1 => 1146,
030+   2 => 'Table \'test.test\' doesn\'t exist',
031+ )
032+ done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_rowcount.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: PDO::exec(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\mysql_pdo_test.inc on line 41
001- done!
002+ 
003+ Warning: PDO::query(): SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_rowcount.php on line 8
004+ 
005+ Fatal error: Uncaught Error: Call to a member function rowCount() on bool in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_rowcount.php:8
006+ Stack trace:
007+ #0 {main}
008+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_stmt_rowcount.php on line 8
```

### ext/pdo_mysql/tests/pdo_mysql_types.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types.php:14
001- done!
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types.php(88): test_type(Object(PDO), 40, 'TINYINT UNSIGNE...', 255, 255)
005+ #2 {main}
006+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types.php on line 14
```

### ext/pdo_mysql/tests/pdo_mysql_types_zerofill.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Fatal error: Uncaught PDOException: SQLSTATE[42S02]: Base table or view not found: 1146 Table 'test.test' doesn't exist in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types_zerofill.php:14
001- done!
002+ Stack trace:
003+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types_zerofill.php(14): PDO->prepare('INSERT INTO tes...')
004+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types_zerofill.php(94): test_type(Object(PDO), 130, 'DOUBLE ZEROFILL', -1.01, NULL, '/^[0]*0$/')
005+ #2 {main}
006+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\pdo_mysql\tests\pdo_mysql_types_zerofill.php on line 14
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(foo/hi): %s (code: 3) in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
     
016+ Warning: opendir(foo/hi): Failed to open directory: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_a8f41a5b1eb36136/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): Failed to open directory: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
     resource(%d) of type (stream)
002+ 
002- string(12) "test message"
003+ Termsig=-1073741819
```

### ext/sockets/tests/socket_export_stream-4-win.phpt

Test PASSED in control but FAILED in experiment

```patch
     normal
     stream_set_blocking 1
003+ socket_set_block 
004+ Termsig=-1073741819
003- socket_set_block 1
004- socket_get_option 2
005- 
006- 
007- unset stream
008- socket_set_block 1
009- socket_get_option 2
010- 
011- 
012- unset socket
013- stream_set_blocking 1
014- 
015- 
016- close stream
017- stream_set_blocking TypeError: stream_set_blocking(): supplied resource is not a valid stream resource
018- 
019- socket_set_block 
020- Warning: socket_set_block(): unable to set blocking mode [%d]: An operation was attempted on something that is not a socket in %s on line %d
021- 
022- socket_get_option 
023- Warning: socket_get_option(): Unable to retrieve socket option [%d]: An operation was attempted on something that is not a socket in %s on line %d
024- 
025- 
026- 
027- close socket
028- stream_set_blocking TypeError: stream_set_blocking(): supplied resource is not a valid stream resource
029- 
030- socket_set_block Error: socket_set_block(): Argument #1 ($socket) has already been closed
031- 
032- socket_get_option Error: socket_get_option(): Argument #1 ($socket) has already been closed
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 6192 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(notexist?): Failed to open directory: No such file or directory in %s on line %d
     
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specifi (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
     
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): Failed to open directory: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): Failed to open directory: Filename too long in %s on line %d
```

### ext/standard/tests/file/fread_socket_variation1.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(false)
001- string(0) ""
```

### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
--
       ["a"]=>
       string(4) "test"
     }
072+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub/parseIniFileVar私はガラスを食べられます.ini): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 48
073+ 
074+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 50
075+ 
076+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 51
077+ 
     *** Done ***
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     bool(true)
     -- Iteration 2 --
     
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation-win32.php on line 29
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation11-win32.php on line 43
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation11-win32.php on line 43
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation11-win32.php on line 43
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
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation12-win32.php on line 41
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 6 --
     
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation12-win32.php on line 41
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified (code: 3) in %s on line %d
     bool(false)
     
     -- Iteration 7 --
--
     
     -- Iteration 11 --
     
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation12-win32.php on line 41
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
     
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 1 testing '1' boolean --
     bool(true)
     
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified (code: 2) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 2 testing '' boolean --
     
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 36
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 3 testing '' NULL --
     
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 36
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 4 testing '' string --
     
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 36
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified) \(code: \d+\))%r in %srename_variation13-win32.php on line %d
     bool(false)
     -- 5 testing ' ' string --
     
--
     bool(false)
     -- 6 testing '/no/such/file/dir' string --
     
042+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 36
042- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
045+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
045- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     -- 7 testing 'php/php' string --
     
049+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 36
049- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
     
052+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation13-win32.php on line 44
052- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified (code: 3) in %srename_variation13-win32.php on line %d
     bool(false)
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Renaming existing file to existing directory name --
     
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation3-win32.php on line 28
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
     
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation8-win32.php on line 8
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified (code: 2) in %s on line %d
     bool(false)
     bool(false)
     bool(false)
--
     
     *** Testing rename() on non-existing directory ***
     
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\rename_variation8-win32.php on line 28
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
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlink_error-win32-mb.php on line 37
024- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
     bool(false)
     Done
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     -- Testing unlink() on directory --
     
024+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlink_error-win32.php on line 35
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 50
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 52
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
     
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlink_variation1-win32.php on line 49
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\file\unlink_variation1-win32.php on line 51
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
004+ TEST FAILED - time is 0.96310496330261 secs and sleep was 1 secs
004- TEST PASSED
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_a8f41a5b1eb36136\ext\standard\tests\network\bindto.php on line 9
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

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
     bool(true)
```

### ext/standard/tests/file/windows_mb_path/bug54028.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     Encoding: UTF-8
     
     Returned (ゾ)
012+ Verification failed!
     
     Returned (多国語)
     Encoding: UTF-8
--
```

### ext/standard/tests/file/windows_mb_path/bug54977.phpt

Test PASSED in control but FAILED in experiment

```patch
     testBug54977
     windows_mb_path
003+ 
003- 多国語
     多国語.test
     汚れて掘る
     汚れて掘る.test
--
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

### ext/standard/tests/file/windows_mb_path/test_cp874_to_utf8_0.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
