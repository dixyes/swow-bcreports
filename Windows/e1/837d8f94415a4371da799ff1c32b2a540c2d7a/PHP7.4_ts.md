# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.24 (cli) (built: Sep 21 2021 13:38:25) ( ZTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.24, Copyright (c), by Zend Technologies
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
PHP 7.4.24 (cli) (built: Sep 21 2021 13:38:25) ( ZTS Visual C++ 2017 x64 )
Copyright (c) The PHP Group
Zend Engine v3.4.0, Copyright (c) Zend Technologies
    with Zend OPcache v7.4.24, Copyright (c), by Zend Technologies
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
Caption=Intel64 Family 6 Model 85 Stepping 4
Name=Intel(R) Xeon(R) Platinum 8171M CPU @ 2.60GHz
NumberOfCores=2
NumberOfLogicalProcessors=2
```

## Summary

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15397 | 13404 | 15566 | 1.0857% | 1.2608% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\curl\tests\bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\curl\tests\bug78775.php on line 20
001- resource(%d) of type (stream)
003- string(8) "HTTP/1.0"
```

### ext/mysqli/tests/bug55283.phpt

Test PASSED in control but FAILED in experiment

```patch
005+   string(27) "ECDHE-RSA-AES256-GCM-SHA384"
005-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
011+   string(27) "ECDHE-RSA-AES256-GCM-SHA384"
011-   string(%d) "%rAES256-SHA|TLS_AES_256_GCM_SHA384%r"
```

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Mon Sep 27 04:17:47 2021 (5164): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Sep 27 04:17:47 2021 (5164): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Sep 27 03:55:05 2021 (6056): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
001- resource(%d) of type (stream)
002+ bool(false)
```

### ext/openssl/tests/bug65538_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug65538_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug65538_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug65698.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug65729.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug66501.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug67403.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug68265.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug68879.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug68912.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug68920.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug69215.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug70395.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug70438.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/openssl/tests/bug71475.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug71917.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug72165.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug72333.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug72336.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug72362.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug73072.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug73478.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug73711.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug73833.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74022.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74022_2.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74099.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74159.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74341.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74402.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74651.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74720_0.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74720_1.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74798.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug74903.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug75307.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug76296.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug76705.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug77390.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug78391.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug79145.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug79881.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/bug80747.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/capture_peer_cert_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/cve-2013-6420.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/cve2013_4073.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/ecc.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_export_bacis.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_export_to_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_get_public_key_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_get_subject_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_new_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_sign_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_decrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_decrypt_ccm.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_decrypt_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_decrypt_gcm.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_decrypt_ocb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_digest_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_encrypt_ccm.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_encrypt_crash.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_encrypt_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_encrypt_gcm.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_encrypt_ocb.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_error_string_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_free_key.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_get_cert_locations_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_get_cipher_methods.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_get_md_methods.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_open_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pbkdf2_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_peer_fingerprint_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs12_export_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs12_export_to_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs12_export_to_file_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs12_read_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs7_decrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs7_decrypt_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs7_encrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs7_read_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs7_sign_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkcs7_verify_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkey_derive-dh.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkey_derive-ecdh.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkey_export_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkey_get_details_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkey_new_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_pkey_new_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_private_decrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_private_encrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_public_decrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_public_encrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_random_pseudo_bytes_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_random_pseudo_bytes_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_seal_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_sign_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_spki_export_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_spki_export_challenge_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_spki_new_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_spki_verify_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_verify_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_check_private_key_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_checkpurpose_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_export_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_export_to_file_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_fingerprint_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_free_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_parse_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_read_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_x509_verify.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/peer_verification.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/san_peer_matching.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/session_meta_capture.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/session_meta_capture_tlsv13.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/sni_server.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/sni_server_key_cert.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_crypto_flags_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_crypto_flags_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_crypto_flags_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_crypto_flags_004.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_security_level.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_server_reneg_limit.phpt

Test SKIPPED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_001.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_002.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/stream_verify_peer_name_003.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/streams_crypto_method.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_min_v1.0_max_v1.1_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tls_wrapper_with_tls_v1.3.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.0_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.1_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.2_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/tlsv1.3_wrapper.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/pdo_mysql/tests/pdo_mysql___construct_uri.phpt

Test FAILED in experiment because

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

### ext/pdo_mysql/tests/pdo_mysql_stmt_bindparam_types.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ 
001- done!
```

### ext/pdo_mysql/tests/pdo_mysql_stmt_getcolumnmeta.phpt

Test PASSED in control but FAILED in experiment

```patch
002- done!
```

### ext/phar/tests/bug72321.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: PharData::extractTo(): %s in %sbug72321.php on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
006+ Child 2644 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/file/bug22414.phpt

Test PASSED in control but FAILED in experiment

```patch
001- HELLO
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

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp,): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): Bad file name (code: 22) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/general_functions/proc_nice_basic-win.phpt

Test PASSED in control but FAILED in experiment

```patch
004+ Testing 'Above normal' (-5): Failed ()
004- Testing 'Above normal' (-5): Passed
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\network\bindto.php on line 9
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

### ext/standard/tests/network/bug80067.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_385e161652e8fdbd\ext\standard\tests\network\bug80067.php on line 3
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

### ext/standard/tests/streams/stream_context_tcp_nodelay_server.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ bool(true)
001- bool(false)
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment because

```patch
001+ expected '����', got 'тест'
002+ string(8) "тест"
001- string(4) "����"
```

Test FAILED in both, but outputs is different.

```patch
001+ expected '����', got 'тест'
```

### ext/standard/tests/file/windows_mb_path/test_readdir_mb_names.phpt

Test FAILED in control but PASSED in experiment

```patch
not generated
```
