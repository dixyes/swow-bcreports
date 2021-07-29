# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.3.29 (cli) (built: Jul 25 2021 20:46:25) ( NTS )
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
Core
ctype
curl
date
dba
dom
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
ldap
libxml
mbstring
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_dblib
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
pgsql
Phar
phpdbg_webhelper
posix
pspell
readline
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
sqlite3
standard
sysvmsg
sysvsem
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
PHP 7.3.29 (cli) (built: Jul 25 2021 20:46:25) ( NTS )
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
Core
ctype
curl
date
dba
dom
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
ldap
libxml
mbstring
mysqli
mysqlnd
odbc
openssl
pcntl
pcre
PDO
pdo_dblib
pdo_mysql
PDO_ODBC
pdo_pgsql
pdo_sqlite
pgsql
Phar
phpdbg_webhelper
posix
pspell
readline
Reflection
session
shmop
SimpleXML
soap
sockets
sodium
SPL
sqlite3
standard
Swow
sysvmsg
sysvsem
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

### uname -a

```plain
Darwin Mac-1627548463540.local 19.6.0 Darwin Kernel Version 19.6.0: Thu May  6 00:48:39 PDT 2021; root:xnu-6153.141.33~1/RELEASE_X86_64 x86_64
```

## Summary

We regard a comparation have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 16322 | 14467 | 16360 | 0.2323% | 0.2627% |

## Behavior changes

### Zend/tests/bug68412.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Fatal error: Allowed memory size of 134217728 bytes exhausted (tried to allocate 262144 bytes) in Unknown on line 0
```

### tests/basic/timeout_variation_1.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_10.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_2.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/basic/timeout_variation_3.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### tests/lang/045.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/curl/tests/bug48203_multi.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ * connect to 127.0.0.1 port 8964 failed: Connection refused
006+ *   Trying ::1:8964...
007+ * Found bundle for host localhost: 0x7fb03bf5f320 [serially]
008+ * Server doesn't support multiplex (yet)
009+ * Hostname localhost was found in DNS cache
010+ *   Trying 127.0.0.1:8964...
011+ * connect to 127.0.0.1 port 8964 failed: Connection refused
012+ *   Trying ::1:8964...
013+ * Closing connection 0
014+ * Closing connection 1
015- Hello World!
016- Hello World!Hello World!
017- Hello World!Ok for CURLOPT_FILE
025+ Ok for CURLOPT_FILE
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

### ext/ftp/tests/002.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: ftp_login(): SSL/TLS handshake failed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/ftp/tests/002.php on line 8
005+ 
006+ Warning: ftp_login(): auth type accepted in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/ftp/tests/002.php on line 8
007+ bool(false)
008+ NULL
009+ NULL
002- array(4) {
003-   [0]=>
004-   string(55) "214-There is help available for the following commands:"
005-   [1]=>
006-   string(5) " USER"
007-   [2]=>
008-   string(5) " HELP"
009-   [3]=>
010-   string(15) "214 end of list"
011- }
012- array(1) {
013-   [0]=>
014-   string(39) "214 Syntax: HELP [<SP> <string>] <CRLF>"
015- }
016- bool(true)
```

### ext/mysqli/tests/bug51647.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/mysqli/tests/connect.inc on line 113
004+ 
005+ Termsig=4
001- array(2) {
002-   ["Variable_name"]=>
003-   string(10) "Ssl_cipher"
004-   ["Value"]=>
005-   string(%d) "%S"
006- }
007- array(2) {
008-   ["Variable_name"]=>
009-   string(10) "Ssl_cipher"
010-   ["Value"]=>
011-   string(%d) "%S"
012- }
013- done!
```

### ext/mysqli/tests/bug55283.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/mysqli/tests/connect.inc on line 113
002+ 
003+ Warning: mysqli_real_connect(): Cannot connect to MySQL by using SSL in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/mysqli/tests/connect.inc on line 113
004+ 
005+ Termsig=4
001- array(2) {
002-   [0]=>
003-   string(10) "Ssl_cipher"
004-   [1]=>
005-   string(7) "RC4-MD5"
006- }
007- array(2) {
008-   [0]=>
009-   string(10) "Ssl_cipher"
010-   [1]=>
011-   string(7) "RC4-MD5"
012- }
013- done
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: mysqli_real_connect(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/mysqli/tests/connect.inc on line 113
002+ 
```

### ext/mysqli/tests/mysqli_kill.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/mysqli/tests/mysqli_poll_kill.phpt

Test XFAILED in experiment beacuse

```patch
016+ [017] Expecting boolean/false got boolean/true
017+ [018] Expecting int/0 got integer/1
017- Warning: Error while sending QUERY packet. %s
018- 
022+ [020] Error: 2006/MySQL server has gone away
022- [018] Error: %d/%s
```

Test XFAILED in both, but outputs is different.

```patch
005+ Fetching from thread 1426...
005- Fetching from thread 1427...
```

### ext/mysqli/tests/mysqli_report_new.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment beacuse

```patch
001+ Thu Jul 29 09:07:47 2021 (92591): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Thu Jul 29 09:07:47 2021 (92591): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Thu Jul 29 08:58:38 2021 (41521): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug74159.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ stream_socket_enable_crypto(): this stream does not support SSL/crypto
002+ PHP Warning:  stream_socket_accept(): SSL: Undefined error: 0 in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/openssl/tests/ServerClientTestCase.inc(119) : eval()'d code on line 11
001- Written 1048575 bytes
002- DONE
```

### ext/pdo_mysql/tests/pdo_mysql___construct.phpt

Test FAILED in experiment beacuse

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
```

Test FAILED in both, but outputs is different.

```patch
008+ [015] DSN=mysql:host=localhostinvalid;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
009+ [017] DSN=mysql:host=- ;port=3506;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] Socket connect failed, reason: DNS getaddrinfo failed, reason: Unknown node or service
008- [015] DSN=mysql:host=localhostinvalid;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] No such file or directory
009- [017] DSN=mysql:host=- ;port=3406;dbname=pdotest;host=localhost, SQLSTATE[HY000] [2002] php_network_getaddresses: getaddrinfo failed: nodename nor servname provided, or not known
```

### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ [003] URI=uri:file:///var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst, DSN=mysql:host=127.0.0.1;port=3506;dbname=pdotest, File=/var/folders/24/8k48jl6d249_n_qfxwsl6xvm0000gn/T/pdomuri.tst (75 bytes, 'mysql:dbname=letshopeinvalid; mysql:host=127.0.0.1;port=3506;dbname=pdotest'), chr(0) test, SQLSTATE[HY000] [2002] Socket connect failed, reason: No such file or directory
001- [003] URI=uri:file://%spdomuri.tst, DSN=mysql%sdbname=%s, File=%spdomuri.tst (%d bytes, 'mysql%sdbname=letshopeinvalid%s'), chr(0) test, EXPECTED ERROR
```

### ext/sockets/tests/socket_export_stream-1.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ string(0) ""
002- string(12) "test message"
```

### ext/sockets/tests/socket_export_stream-4.phpt

Test PASSED in control but FAILED in experiment

```patch
020+ socket_set_block 1
021+ socket_get_option 2
020- socket_set_block 
021- Warning: socket_set_block(): unable to set blocking mode [%d]: %s in %s on line %d
023- socket_get_option 
024- Warning: socket_get_option(): unable to retrieve socket option [%d]: %s in %s on line %d
026- 
027- 
```

### sapi/cli/tests/022.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ 
005+  ** ERROR: process timed out **
004- resource(%d) of type (stream)
005- resource(%d) of type (stream)
```

### sapi/cli/tests/cli_process_title_unix.phpt

Test FAILED in experiment beacuse

```patch
002+ 
003+ Warning: cli_set_process_title(): cli_set_process_title had an error: Not initialized correctly in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/sapi/cli/tests/cli_process_title_unix.php on line 7
004+ Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d extension=swow -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/sapi/cli/tests/cli_process_title_unix.php
002- Successfully set title
003- Successfully verified title using ps
004- Successfully verified title using get
005+ 
006+ Warning: cli_get_process_title(): cli_get_process_title had an error: Not initialized correctly in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/sapi/cli/tests/cli_process_title_unix.php on line 35
007+ Actually loaded from get:
```

Test FAILED in both, but outputs is different.

```patch
004+ Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d extension=swow -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/sapi/cli/tests/cli_process_title_unix.php
004- Actually loaded from ps: /usr/local/bin/php -d output_handler= -d open_basedir= -d disable_functions= -d output_buffering=Off -d error_reporting=32767 -d display_errors=1 -d display_startup_errors=1 -d log_errors=0 -d html_errors=0 -d track_errors=0 -d report_memleaks=1 -d report_zend_debug=0 -d docref_root= -d docref_ext=.html -d error_prepend_string= -d error_append_string= -d auto_prepend_file= -d auto_append_file= -d ignore_repeated_errors=0 -d precision=14 -d memory_limit=128M -d log_errors_max_len=0 -d opcache.fast_shutdown=0 -d opcache.file_update_protection=0 -d zend.assertions=1 -d session.auto_start=0 -d tidy.clean_output=0 -d zlib.output_compression=Off -d mbstring.func_overload=0 -f /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/sapi/cli/tests/cli_process_title_unix.php
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/network/bindto.php on line 9
001- Warning: stream_socket_client(): php_network_getaddresses: getaddrinfo failed: %s in %s on line %d
002- 
003- Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (php_network_getaddresses: getaddrinfo failed: %s) in %s on line %d
```

### ext/standard/tests/network/udgloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/6102715d8e7bf.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/network/udgloop.php on line 25
```

### ext/standard/tests/network/unixloop.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
004+ Warning: unlink(/tmp/6102715dbbf48.sock): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/network/unixloop.php on line 32
```

### ext/standard/tests/streams/bug53427.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ array(0) {
007- array(2) {
008-   [1]=>
009-   resource(%d) of type (stream)
010-   ["myindex"]=>
011-   resource(%d) of type (stream)
```

### ext/standard/tests/streams/bug60106.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ Warning: unlink(/tmp/aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa): No such file or directory in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/bug60106.php on line 12
```

### ext/standard/tests/streams/bug73457.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(ftp://127.0.0.1:55832/bug73457): failed to open stream: Failed to set up data channel: Socket connect failed, reason: Connection refused in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/bug73457.php on line 8
001- Warning: file_get_contents(ftp://127.0.0.1:%d/bug73457): failed to open stream: Failed to set up data channel: Connection refused in %s on line %d
```

### ext/standard/tests/streams/opendir-003.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/opendir-003.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:50806/bogusdir): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/opendir-003.php on line 10
001- Warning: opendir(ftps://127.0.0.1:%d/bogusdir): failed to open dir: FTP server reports 250 /bogusdir: No such file or directory
002-  in %s on line %d
```

### ext/standard/tests/streams/opendir-004.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/ftp/tests/server.inc on line 114
002+ SSLv23 handshake failed.
003+ 
004+ Warning: opendir(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/opendir-004.php on line 10
005+ 
006+ Warning: opendir(ftps://127.0.0.1:61840/): failed to open dir: Unable to activate SSL mode in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/opendir-004.php on line 10
007+ bool(false)
008+ 
009+ Warning: readdir() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/opendir-004.php on line 12
001- resource(%d) of type (stream)
002- string(5) "file1"
003- string(5) "file1"
004- string(3) "fil"
005- string(4) "b0rk"
```

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```

### ext/standard/tests/streams/stream_select_preserve_keys.phpt

Test PASSED in control but FAILED in experiment

```patch
007+ array(0) {
008+ }
009+ 
010+ Warning: fread() expects parameter 1 to be resource, bool given in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_select_preserve_keys.php on line 10
011+ 
012+ Warning: stream_select(): No stream arrays were passed in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_select_preserve_keys.php on line 11
013+ array(0) {
007- array(2) {
008-   [1]=>
009-   resource(%d) of type (stream)
010-   ["myindex"]=>
011-   resource(%d) of type (stream)
013- array(2) {
014-   [1]=>
015-   resource(%d) of type (stream)
016-   ["myindex"]=>
017-   resource(%d) of type (stream)
018- }
```

### ext/standard/tests/streams/stream_socket_enable_crypto.phpt

Test FAILED in experiment beacuse

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
001- bool(false)
006- Warning: stream_socket_enable_crypto(): SSL: %a in %s on line %d
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
009- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
012- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
015- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
018- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
021- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
024- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
027- Warning: stream_socket_enable_crypto(): SSL/TLS already set-up for this stream in %s on line %d
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
```

Test FAILED in both, but outputs is different.

```patch
001+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 6
002+ bool(true)
003+ 
004+ Warning: stream_socket_enable_crypto(): When enabling encryption you must specify the crypto type in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 7
007+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 8
008+ bool(false)
009+ 
010+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 9
011+ bool(false)
012+ 
013+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 10
014+ bool(false)
015+ 
016+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 11
017+ bool(false)
018+ 
019+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 12
020+ bool(false)
021+ 
022+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 13
023+ bool(false)
024+ 
025+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 14
003- Warning: stream_socket_enable_crypto(): When enabling encryption you must specify the crypto type in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 7
028+ Warning: stream_socket_enable_crypto(): this stream does not support SSL/crypto in /Users/runner/work/swow-bcreports/swow-bcreports/phpbc_ctrl_phpsrc_20ea31c96e264109/ext/standard/tests/streams/stream_socket_enable_crypto.php on line 15
006-  ** ERROR: process timed out **
029+ bool(false)
```

### ext/standard/tests/streams/stream_socket_get_name.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```

### ext/standard/tests/streams/stream_socket_recvfrom.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
