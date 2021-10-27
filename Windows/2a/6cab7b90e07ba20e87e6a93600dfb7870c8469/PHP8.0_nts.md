# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 8.0.12 (cli) (built: Oct 19 2021 11:23:03) ( NTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.12, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.12, Copyright (c), by Zend Technologies
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
PHP 8.0.12 (cli) (built: Oct 19 2021 11:23:03) ( NTS Visual C++ 2019 x64 )
Copyright (c) The PHP Group
Zend Engine v4.0.12, Copyright (c) Zend Technologies
    with Zend OPcache v8.0.12, Copyright (c), by Zend Technologies
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

We regard a comparison have same result reported by run-test.php and same PHP output as "exactly same result", and breaking-change tests over not skipped tests as "real bc rate"

| Tests have exactly same result | Tests ran | All tests found | Overall bc rate | Real bc rate |
| - | - | - | - | - |
| 15064 | 13922 | 15877 | 5.1206% | 5.8397% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): Unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
001- resource(%d) of type (stream)
     bool(false)
004+ 
003- string(8) "HTTP/1.0"
005+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\curl\tests\bug78775.php:19
006+ Stack trace:
007+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\curl\tests\bug78775.php(19): fwrite(false, 'GET / HTTP/1.0\n...')
008+ #1 {main}
009+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\curl\tests\bug78775.php on line 19
```

### ext/enchant/tests/broker_dict_exists.phpt

Test FAILED in experiment because

```patch
001+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\enchant\tests\broker_dict_exists.php on line 5
001- OK
002+ 
003+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\enchant\tests\broker_dict_exists.php on line 5
004+ 
005+ ** (php.exe:2724): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
006+ dicts dont exist failed
```

Test FAILED in both, but outputs is different.

```patch
005+ ** (php.exe:2724): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
005- ** (php.exe:1232): CRITICAL **: enchant_broker_dict_exists: assertion 'tag && strlen(tag)' failed
```

### ext/enchant/tests/broker_set_ordering.phpt

Test FAILED in experiment because

```patch
002+ 
003+ Warning: Undefined array key 0 in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\enchant\tests\broker_set_ordering.php on line 8
004+ 
005+ Warning: Trying to access array offset on value of type null in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\enchant\tests\broker_set_ordering.php on line 8
006+ 
007+ ** (php.exe:1180): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
     OK
     OK
```

Test FAILED in both, but outputs is different.

```patch
007+ ** (php.exe:1180): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
007- ** (php.exe:1560): CRITICAL **: enchant_broker_set_ordering: assertion 'tag && strlen(tag)' failed
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

### ext/opcache/tests/bug78185.phpt

Test FAILED in experiment because

```patch
001+ Wed Oct 27 04:15:27 2021 (908): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Wed Oct 27 04:15:27 2021 (908): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Wed Oct 27 03:56:34 2021 (4388): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
     Running bug48182
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Fatal error: Uncaught TypeError: fwrite(): Argument #1 ($stream) must be of type resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code:13
008+ Stack trace:
009+ #0 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code(13): fwrite(false, 'Sending data ov...')
010+ #1 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130): eval()
011+ #2 D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\bug48182.php(49): ServerClientTestCase->run('    $serverUri ...', Array)
012+ #3 {main}
013+   thrown in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
```

### ext/openssl/tests/bug54992.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: stream_socket_client(): Peer certificate CN=`bug54992_actual_peer_name' did not match expected CN=`bug54992_expected_peer_name' in %s on line %d
002- 
     Warning: stream_socket_client(): Failed to enable crypto in %s on line %d
     
     Warning: stream_socket_client(): Unable to connect to ssl://127.0.0.1:64321 (Unknown error) in %s on line %d
--
```

### ext/openssl/tests/bug62890.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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


### ext/openssl/tests/openssl_cms_decrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_decrypt_error.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_encrypt_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_encrypt_der.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_encrypt_pem.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_read_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_sign_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_sign_der.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_sign_verify_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_sign_verify_detached.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_sign_verify_nodetached_pem.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_verify_basic.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_cms_verify_der.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/openssl/tests/openssl_csr_export_basic.phpt

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

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(foo/hi): %s (code: 3) in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
     
016+ Warning: opendir(foo/hi): Failed to open directory: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_067ed262fe507d71/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): Failed to open directory: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
     Started child %d
     Running `tasklist /FI "PID eq %d" /NH` to check the process indeed exists:
003+ 
003- php.exe%w%d%s
     Sending CTRL+C to child %d
     Successfully sent CTRL+C to child %d
006+ Child 3036 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     
     Warning: opendir(notexist?): Failed to open directory: No such file or directory in %s on line %d
     
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specifi (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
     
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): Failed to open directory: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): Failed to open directory: Filename too long in %s on line %d
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


### ext/standard/tests/file/bug81145.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/bug81223.phpt

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


### ext/standard/tests/file/fgetcsv_error_conditions.phpt

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


### ext/standard/tests/file/fgetcsv_variation29.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation30.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation31.phpt

Test PASSED in control but UNKNOWN in experiment


### ext/standard/tests/file/fgetcsv_variation32.phpt

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


### ext/standard/tests/file/filesize_variation3.phpt

Test PASSED in control but UNKNOWN in experiment


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


### ext/standard/tests/file/ftruncate_variation4.phpt

Test PASSED in control but UNKNOWN in experiment


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


### ext/standard/tests/file/open_basedir_cwd_resolve.phpt

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


### ext/standard/tests/file/proc_open_with_wrong_resource_type.phpt

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


### ext/standard/tests/file/stream_copy_to_stream_empty.phpt

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

Test PASSED in control but UNKNOWN in experiment


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


### ext/standard/tests/general_functions/proc_nice_basic-win.phpt

Test PASSED in control but FAILED in experiment

```patch
     Testing 'Idle' (10): Passed
     Testing 'Below normal' (5): Passed
003+ Testing 'Normal' (0): Failed ()
003- Testing 'Normal' (0): Passed
     Testing 'Above normal' (-5): Passed
     Testing 'High priority' (-10): Passed
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): Unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\standard\tests\network\bindto.php on line 9
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
001+ Warning: file_get_contents(https://httpbin.org/get): Failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_067ed262fe507d71\ext\standard\tests\network\bug80067.php on line 3
001- bool(true)
002+ bool(false)
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

### ext/standard/tests/streams/stream_get_meta_data_socket_variation2.phpt

Test PASSED in control but FAILED in experiment

```patch
--
     Read some data from the client:
     array(7) {
       ["timed_out"]=>
060+   bool(true)
060-   bool(false)
       ["blocked"]=>
       bool(true)
       ["eof"]=>
--
```

### ext/standard/tests/file/windows_mb_path/bug75063_cp1251.phpt

Test FAILED in experiment because

```patch
001+ expected 'тест', got 'С‚РµСЃС‚'
002+ string(8) "С‚РµСЃС‚"
001- string(4) "тест"
     bool(true)
     string(%d) "%sbug75063-cp1251%eтест"
     string(8) "code.php"
--
```

Test FAILED in both, but outputs is different.

```patch
001+ expected 'тест', got 'С‚РµСЃС‚'
```
