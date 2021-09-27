# PHP behavior changes

## Test Environment

Commands execution results, this described test environments

### control php -v

```plain
PHP 7.4.24 (cli) (built: Sep 21 2021 13:38:14) ( NTS Visual C++ 2017 x64 )
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
PHP 7.4.24 (cli) (built: Sep 21 2021 13:38:14) ( NTS Visual C++ 2017 x64 )
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
| 15395 | 13401 | 15562 | 1.0731% | 1.2462% |

## Behavior changes

### ext/curl/tests/bug78775.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: fsockopen(): unable to connect to tls://google.com:443 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\curl\tests\bug78775.php on line 3
002+ bool(false)
003+ bool(false)
004+ 
005+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\curl\tests\bug78775.php on line 19
006+ 
007+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\curl\tests\bug78775.php on line 20
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
001+ Mon Sep 27 04:16:01 2021 (4344): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- string(%d) "%s78185.php.bin"
```

Test FAILED in both, but outputs is different.

```patch
001+ Mon Sep 27 04:16:01 2021 (4344): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
001- Mon Sep 27 03:54:44 2021 (1816): Fatal Error opcache.file_cache_only is set without a proper setting of opcache.file_cache
```

### ext/openssl/tests/bug48182.phpt

Test PASSED in control but FAILED in experiment

```patch
002+ 
003+ Warning: stream_socket_client(): Failed to enable crypto in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
002- Sending bug48182
003- Sending data over to SSL server in async mode with contents like Hello World
004+ 
005+ Warning: stream_socket_client(): unable to connect to ssl://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 9
006+ 
007+ Warning: fwrite() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 13
008+ 
009+ Warning: fread() expects parameter 1 to be resource, bool given in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 14
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
001+ Warning: stream_socket_client(): unable to connect to tls://127.0.0.1:64321 (Unknown error) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\openssl\tests\ServerClientTestCase.inc(130) : eval()'d code on line 10
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

### ext/phar/tests/bug13727.phpt

Test PASSED in control but FAILED in experiment

```patch
3155- 3154
3156- 3155
3157- 3156
3158- 3157
3159- 3158
3160- 3159
3161- 3160
3162- 3161
3163- 3162
3164- 3163
3165- 3164
3166- 3165
3167- 3166
3168- 3167
3169- 3168
3170- 3169
3171- 3170
3172- 3171
3173- 3172
3174- 3173
3175- 3174
3176- 3175
3177- 3176
3178- 3177
3179- 3178
3180- 3179
3181- 3180
3182- 3181
3183- 3182
3184- 3183
3185- 3184
3186- 3185
3187- 3186
3188- 3187
3189- 3188
3190- 3189
3191- 3190
3192- 3191
3193- 3192
3194- 3193
3195- 3194
3196- 3195
3197- 3196
3198- 3197
3199- 3198
3200- 3199
3201- 3200
3202- 3201
3203- 3202
3204- 3203
3205- 3204
3206- 3205
3207- 3206
3208- 3207
3209- 3208
3210- 3209
3211- 3210
3212- 3211
3213- 3212
3214- 3213
3215- 3214
3216- 3215
3217- 3216
3218- 3217
3219- 3218
3220- 3219
3221- 3220
3222- 3221
3223- 3222
3224- 3223
3225- 3224
3226- 3225
3227- 3226
3228- 3227
3229- 3228
3230- 3229
3231- 3230
3232- 3231
3233- 3232
3234- 3233
3235- 3234
3236- 3235
3237- 3236
3238- 3237
3239- 3238
3240- 3239
3241- 3240
3242- 3241
3243- 3242
3244- 3243
3245- 3244
3246- 3245
3247- 3246
3248- 3247
3249- 3248
3250- 3249
3251- 3250
3252- 3251
3253- 3252
3254- 3253
3255- 3254
3256- 3255
3257- 3256
3258- 3257
3259- 3258
3260- 3259
3261- 3260
3262- 3261
3263- 3262
3264- 3263
3265- 3264
3266- 3265
3267- 3266
3268- 3267
3269- 3268
3270- 3269
3271- 3270
3272- 3271
3273- 3272
3274- 3273
3275- 3274
3276- 3275
3277- 3276
3278- 3277
3279- 3278
3280- 3279
3281- 3280
3282- 3281
3283- 3282
3284- 3283
3285- 3284
3286- 3285
3287- 3286
3288- 3287
3289- 3288
3290- 3289
3291- 3290
3292- 3291
3293- 3292
3294- 3293
3295- 3294
3296- 3295
3297- 3296
3298- 3297
3299- 3298
3300- 3299
3301- 3300
3302- 3301
3303- 3302
3304- 3303
3305- 3304
3306- 3305
3307- 3306
3308- 3307
3309- 3308
3310- 3309
3311- 3310
3312- 3311
3313- 3312
3314- 3313
3315- 3314
3316- 3315
3317- 3316
3318- 3317
3319- 3318
3320- 3319
3321- 3320
3322- 3321
3323- 3322
3324- 3323
3325- 3324
3326- 3325
3327- 3326
3328- 3327
3329- 3328
3330- 3329
3331- 3330
3332- 3331
3333- 3332
3334- 3333
3335- 3334
3336- 3335
3337- 3336
3338- 3337
3339- 3338
3340- 3339
3341- 3340
3342- 3341
3343- 3342
3344- 3343
3345- 3344
3346- 3345
3347- 3346
3348- 3347
3349- 3348
3350- 3349
3351- 3350
3352- 3351
3353- 3352
3354- 3353
3355- 3354
3356- 3355
3357- 3356
3358- 3357
3359- 3358
3360- 3359
3361- 3360
3362- 3361
3363- 3362
3364- 3363
3365- 3364
3366- 3365
3367- 3366
3368- 3367
3369- 3368
3370- 3369
3371- 3370
3372- 3371
3373- 3372
3374- 3373
3375- 3374
3376- 3375
3377- 3376
3378- 3377
3379- 3378
3380- 3379
3381- 3380
3382- 3381
3383- 3382
3384- 3383
3385- 3384
3386- 3385
3387- 3386
3388- 3387
3389- 3388
3390- 3389
3391- 3390
3392- 3391
3393- 3392
3394- 3393
3395- 3394
3396- 3395
3397- 3396
3398- 3397
3399- 3398
3400- 3399
3401- 3400
3402- 3401
3403- 3402
3404- 3403
3405- 3404
3406- 3405
3407- 3406
3408- 3407
3409- 3408
3410- 3409
3411- 3410
3412- 3411
3413- 3412
3414- 3413
3415- 3414
3416- 3415
3417- 3416
3418- 3417
3419- 3418
3420- 3419
3421- 3420
3422- 3421
3423- 3422
3424- 3423
3425- 3424
3426- 3425
3427- 3426
3428- 3427
3429- 3428
3430- 3429
3431- 3430
3432- 3431
3433- 3432
3434- 3433
3435- 3434
3436- 3435
3437- 3436
3438- 3437
3439- 3438
3440- 3439
3441- 3440
3442- 3441
3443- 3442
3444- 3443
3445- 3444
3446- 3445
3447- 3446
3448- 3447
3449- 3448
3450- 3449
3451- 3450
3452- 3451
3453- 3452
3454- 3453
3455- 3454
3456- 3455
3457- 3456
3458- 3457
3459- 3458
3460- 3459
3461- 3460
3462- 3461
3463- 3462
3464- 3463
3465- 3464
3466- 3465
3467- 3466
3468- 3467
3469- 3468
3470- 3469
3471- 3470
3472- 3471
3473- 3472
3474- 3473
3475- 3474
3476- 3475
3477- 3476
3478- 3477
3479- 3478
3480- 3479
3481- 3480
3482- 3481
3483- 3482
3484- 3483
3485- 3484
3486- 3485
3487- 3486
3488- 3487
3489- 3488
3490- 3489
3491- 3490
3492- 3491
3493- 3492
3494- 3493
3495- 3494
3496- 3495
3497- 3496
3498- 3497
3499- 3498
3500- 3499
3501- 3500
3502- 3501
3503- 3502
3504- 3503
3505- 3504
3506- 3505
3507- 3506
3508- 3507
3509- 3508
3510- 3509
3511- 3510
3512- 3511
3513- 3512
3514- 3513
3515- 3514
3516- 3515
3517- 3516
3518- 3517
3519- 3518
3520- 3519
3521- 3520
3522- 3521
3523- 3522
3524- 3523
3525- 3524
3526- 3525
3527- 3526
3528- 3527
3529- 3528
3530- 3529
3531- 3530
3532- 3531
3533- 3532
3534- 3533
3535- 3534
3536- 3535
3537- 3536
3538- 3537
3539- 3538
3540- 3539
3541- 3540
3542- 3541
3543- 3542
3544- 3543
3545- 3544
3546- 3545
3547- 3546
3548- 3547
3549- 3548
3550- 3549
3551- 3550
3552- 3551
3553- 3552
3554- 3553
3555- 3554
3556- 3555
3557- 3556
3558- 3557
3559- 3558
3560- 3559
3561- 3560
3562- 3561
3563- 3562
3564- 3563
3565- 3564
3566- 3565
3567- 3566
3568- 3567
3569- 3568
3570- 3569
3571- 3570
3572- 3571
3573- 3572
3574- 3573
3575- 3574
3576- 3575
3577- 3576
3578- 3577
3579- 3578
3580- 3579
3581- 3580
3582- 3581
3583- 3582
3584- 3583
3585- 3584
3586- 3585
3587- 3586
3588- 3587
3589- 3588
3590- 3589
3591- 3590
3592- 3591
3593- 3592
3594- 3593
3595- 3594
3596- 3595
3597- 3596
3598- 3597
3599- 3598
3600- 3599
3601- 3600
3602- 3601
3603- 3602
3604- 3603
3605- 3604
3606- 3605
3607- 3606
3608- 3607
3609- 3608
3610- 3609
3611- 3610
3612- 3611
3613- 3612
3614- 3613
3615- 3614
3616- 3615
3617- 3616
3618- 3617
3619- 3618
3620- 3619
3621- 3620
3622- 3621
3623- 3622
3624- 3623
3625- 3624
3626- 3625
3627- 3626
3628- 3627
3629- 3628
3630- 3629
3631- 3630
3632- 3631
3633- 3632
3634- 3633
3635- 3634
3636- 3635
3637- 3636
3638- 3637
3639- 3638
3640- 3639
3641- 3640
3642- 3641
3643- 3642
3644- 3643
3645- 3644
3646- 3645
3647- 3646
3648- 3647
3649- 3648
3650- 3649
3651- 3650
3652- 3651
3653- 3652
3654- 3653
3655- 3654
3656- 3655
3657- 3656
3658- 3657
3659- 3658
3660- 3659
3661- 3660
3662- 3661
3663- 3662
3664- 3663
3665- 3664
3666- 3665
3667- 3666
3668- 3667
3669- 3668
3670- 3669
3671- 3670
3672- 3671
3673- 3672
3674- 3673
3675- 3674
3676- 3675
3677- 3676
3678- 3677
3679- 3678
3680- 3679
3681- 3680
3682- 3681
3683- 3682
3684- 3683
3685- 3684
3686- 3685
3687- 3686
3688- 3687
3689- 3688
3690- 3689
3691- 3690
3692- 3691
3693- 3692
3694- 3693
3695- 3694
3696- 3695
3697- 3696
3698- 3697
3699- 3698
3700- 3699
3701- 3700
3702- 3701
3703- 3702
3704- 3703
3705- 3704
3706- 3705
3707- 3706
3708- 3707
3709- 3708
3710- 3709
3711- 3710
3712- 3711
3713- 3712
3714- 3713
3715- 3714
3716- 3715
3717- 3716
3718- 3717
3719- 3718
3720- 3719
3721- 3720
3722- 3721
3723- 3722
3724- 3723
3725- 3724
3726- 3725
3727- 3726
3728- 3727
3729- 3728
3730- 3729
3731- 3730
3732- 3731
3733- 3732
3734- 3733
3735- 3734
3736- 3735
3737- 3736
3738- 3737
3739- 3738
3740- 3739
3741- 3740
3742- 3741
3743- 3742
3744- 3743
3745- 3744
3746- 3745
3747- 3746
3748- 3747
3749- 3748
3750- 3749
3751- 3750
3752- 3751
3753- 3752
3754- 3753
3755- 3754
3756- 3755
3757- 3756
3758- 3757
3759- 3758
3760- 3759
3761- 3760
3762- 3761
3763- 3762
3764- 3763
3765- 3764
3766- 3765
3767- 3766
3768- 3767
3769- 3768
3770- 3769
3771- 3770
3772- 3771
3773- 3772
3774- 3773
3775- 3774
3776- 3775
3777- 3776
3778- 3777
3779- 3778
3780- 3779
3781- 3780
3782- 3781
3783- 3782
3784- 3783
3785- 3784
3786- 3785
3787- 3786
3788- 3787
3789- 3788
3790- 3789
3791- 3790
3792- 3791
3793- 3792
3794- 3793
3795- 3794
3796- 3795
3797- 3796
3798- 3797
3799- 3798
3800- 3799
3801- 3800
3802- 3801
3803- 3802
3804- 3803
3805- 3804
3806- 3805
3807- 3806
3808- 3807
3809- 3808
3810- 3809
3811- 3810
3812- 3811
3813- 3812
3814- 3813
3815- 3814
3816- 3815
3817- 3816
3818- 3817
3819- 3818
3820- 3819
3821- 3820
3822- 3821
3823- 3822
3824- 3823
3825- 3824
3826- 3825
3827- 3826
3828- 3827
3829- 3828
3830- 3829
3831- 3830
3832- 3831
3833- 3832
3834- 3833
3835- 3834
3836- 3835
3837- 3836
3838- 3837
3839- 3838
3840- 3839
3841- 3840
3842- 3841
3843- 3842
3844- 3843
3845- 3844
3846- 3845
3847- 3846
3848- 3847
3849- 3848
3850- 3849
3851- 3850
3852- 3851
3853- 3852
3854- 3853
3855- 3854
3856- 3855
3857- 3856
3858- 3857
3859- 3858
3860- 3859
3861- 3860
3862- 3861
3863- 3862
3864- 3863
3865- 3864
3866- 3865
3867- 3866
3868- 3867
3869- 3868
3870- 3869
3871- 3870
3872- 3871
3873- 3872
3874- 3873
3875- 3874
3876- 3875
3877- 3876
3878- 3877
3879- 3878
3880- 3879
3881- 3880
3882- 3881
3883- 3882
3884- 3883
3885- 3884
3886- 3885
3887- 3886
3888- 3887
3889- 3888
3890- 3889
3891- 3890
3892- 3891
3893- 3892
3894- 3893
3895- 3894
3896- 3895
3897- 3896
3898- 3897
3899- 3898
3900- 3899
3901- 3900
3902- 3901
3903- 3902
3904- 3903
3905- 3904
3906- 3905
3907- 3906
3908- 3907
3909- 3908
3910- 3909
3911- 3910
3912- 3911
3913- 3912
3914- 3913
3915- 3914
3916- 3915
3917- 3916
3918- 3917
3919- 3918
3920- 3919
3921- 3920
3922- 3921
3923- 3922
3924- 3923
3925- 3924
3926- 3925
3927- 3926
3928- 3927
3929- 3928
3930- 3929
3931- 3930
3932- 3931
3933- 3932
3934- 3933
3935- 3934
3936- 3935
3937- 3936
3938- 3937
3939- 3938
3940- 3939
3941- 3940
3942- 3941
3943- 3942
3944- 3943
3945- 3944
3946- 3945
3947- 3946
3948- 3947
3949- 3948
3950- 3949
3951- 3950
3952- 3951
3953- 3952
3954- 3953
3955- 3954
3956- 3955
3957- 3956
3958- 3957
3959- 3958
3960- 3959
3961- 3960
3962- 3961
3963- 3962
3964- 3963
3965- 3964
3966- 3965
3967- 3966
3968- 3967
3969- 3968
3970- 3969
3971- 3970
3972- 3971
3973- 3972
3974- 3973
3975- 3974
3976- 3975
3977- 3976
3978- 3977
3979- 3978
3980- 3979
3981- 3980
3982- 3981
3983- 3982
3984- 3983
3985- 3984
3986- 3985
3987- 3986
3988- 3987
3989- 3988
3990- 3989
3991- 3990
3992- 3991
3993- 3992
3994- 3993
3995- 3994
3996- 3995
3997- 3996
3998- 3997
3999- 3998
4000- 3999
4001- 4000
4002- 4001
4003- 4002
4004- 4003
4005- 4004
4006- 4005
4007- 4006
4008- 4007
4009- 4008
4010- 4009
4011- 4010
4012- 4011
4013- 4012
4014- 4013
4015- 4014
4016- 4015
4017- 4016
4018- 4017
4019- 4018
4020- 4019
4021- 4020
4022- 4021
4023- 4022
4024- 4023
4025- 4024
4026- 4025
4027- 4026
4028- 4027
4029- 4028
4030- 4029
4031- 4030
4032- 4031
4033- 4032
4034- 4033
4035- 4034
4036- 4035
4037- 4036
4038- 4037
4039- 4038
4040- 4039
4041- 4040
4042- 4041
4043- 4042
4044- 4043
4045- 4044
4046- 4045
4047- 4046
4048- 4047
4049- 4048
4050- 4049
4051- 4050
4052- 4051
4053- 4052
4054- 4053
4055- 4054
4056- 4055
4057- 4056
4058- 4057
4059- 4058
4060- 4059
4061- 4060
4062- 4061
4063- 4062
4064- 4063
4065- 4064
4066- 4065
4067- 4066
4068- 4067
4069- 4068
4070- 4069
4071- 4070
4072- 4071
4073- 4072
4074- 4073
4075- 4074
4076- 4075
4077- 4076
4078- 4077
4079- 4078
4080- 4079
4081- 4080
4082- 4081
4083- 4082
4084- 4083
4085- 4084
4086- 4085
4087- 4086
4088- 4087
4089- 4088
4090- 4089
4091- 4090
4092- 4091
4093- 4092
4094- 4093
4095- 4094
4096- 4095
4097- 
4098-  Written Files(4096)
4099- ===DONE===
```

### ext/phar/tests/bug72321.phpt

Test PASSED in control but FAILED in experiment

```patch
001- Warning: PharData::extractTo(): %s in %sbug72321.php on line %d
```

### ext/phar/tests/phar_gobyebye-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
016+ Warning: opendir(foo/hi): failed to open dir: Unknown error in phar://D:/a/swow-bcreports/swow-bcreports/phpbc_expr_phpsrc_85d57722ff7a16f2/ext/phar/tests/phar_gobyebye-win32.phar.php/foo/hi on line 7
016- Warning: opendir(foo/hi): failed to open dir: No such file or directory in phar://%sphar_gobyebye-win32.phar.php/foo/hi on line %d
```

### sapi/cli/tests/sapi_windows_set_ctrl_handler.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ 
003- php.exe%w%d%s
006+ Child 3704 didn't exit after 5000us
006- Child %d exit with status 3 after %dus
```

### ext/standard/tests/dir/bug80960.phpt

Test PASSED in control but FAILED in experiment

```patch
009+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): The system cannot find the file specified. (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\dir\bug80960.php on line 4
009- Warning: opendir(longname%r_+%r): %s (code: 111) in %s on line %d
011+ Warning: opendir(longname___________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________________): failed to open dir: No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\dir\bug80960.php on line 4
011- Warning: opendir(longname%r_+%r): failed to open dir: Filename too long in %s on line %d
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

### ext/standard/tests/file/parse_ini_file_variation6-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
072+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub/parseIniFileVar私はガラスを食べられます.ini): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 54
073+ 
074+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir\parseIniFileVar私はガラスを食べられますSub): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 56
075+ 
076+ Warning: rmdir(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\parseIniFileVar私はガラスを食べられます.dir): Directory not empty in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\parse_ini_file_variation6-win32-mb.php on line 57
077+ 
```

### ext/standard/tests/file/rename_variation-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
008+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/rename_variation/rename_variation.tmp/,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/rename_variation2.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation-win32.php on line 33
008- Warning: rename(%s/rename_variation/rename_variation.tmp/,%s/rename_variation2.tmp): The filename, directory name, or volume label syntax is incorrect. (code: 123) in %s on line %d
```

### ext/standard/tests/file/rename_variation11-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation11-win32.php on line 49
021- Warning: rename(%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\renameMe.tmp,%s\renameVar11\renameVar11Sub\..\\\renameVar11Sub\\..\\..\renameVar11Sub\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation11-win32.php on line 49
026- Warning: rename(%s\renameVar11\renameVar11Sub\BADDIR\renameMe.tmp,%s\renameVar11\renameVar11Sub\BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation11-win32.php on line 49
047- Warning: rename(BADDIR\renameMe.tmp,BADDIR\IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation12-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation12-win32.php on line 47
021- Warning: rename(%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/renameMe.tmp,%s/renameVar11/renameVar11Sub/..///renameVar11Sub//..//../renameVar11Sub/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
026+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation12-win32.php on line 47
026- Warning: rename(%s/renameVar11/renameVar11Sub/BADDIR/renameMe.tmp,%s/renameVar11/renameVar11Sub/BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
047+ Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation12-win32.php on line 47
047- Warning: rename(BADDIR/renameMe.tmp,BADDIR/IwasRenamed.tmp): The system cannot find the path specified. (code: 3) in %s on line %d
```

### ext/standard/tests/file/rename_variation13-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
005+ Warning: rename(-1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
005- Warning: rename(-1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
010+ Warning: rename(1,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
010- Warning: rename(1,%safile.tmp): The system cannot find the file specified. (code: 2) in %srename_variation13-win32.php on line %d
014+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 45
014- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
017+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
017- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
021+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 45
021- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
024+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
024- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
028+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp,): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 45
028- Warning: rename(%safile.tmp,): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
031+ Warning: rename(,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
031- Warning: rename(,%safile.tmp): %r(Invalid argument|(The parameter is incorrect|The system cannot find the path specified)\. \(code: \d+\))%r in %srename_variation13-win32.php on line %d
060+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp,/no/such/file/dir): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 45
060- Warning: rename(%safile.tmp,/no/such/file/dir): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
063+ Warning: rename(/no/such/file/dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
063- Warning: rename(/no/such/file/dir,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
067+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp,php/php): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 45
067- Warning: rename(%safile.tmp,php/php): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
070+ Warning: rename(php/php,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/renameVar13/afile.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation13-win32.php on line 53
070- Warning: rename(php/php,%safile.tmp): The system cannot find the path specified. (code: 3) in %srename_variation13-win32.php on line %d
```

### ext/standard/tests/file/rename_variation3-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
011+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/rename_variation3.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/rename_variation3_dir): File-System rename failed, reason: Operation not permitted (code: 1) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation3-win32.php on line 32
011- Warning: rename(%s/rename_variation3.tmp,%s/rename_variation3_dir): Access is denied. (code: 5) in %s on line %d
```

### ext/standard/tests/file/rename_variation8-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
003+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/non_existent_file.tmp,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/rename_variation8_new.tmp): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation8-win32.php on line 12
003- Warning: rename(%s/non_existent_file.tmp,%s/rename_variation8_new.tmp): The system cannot find the file specified. (code: 2) in %s on line %d
015+ Warning: rename(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/non_existent_dir,D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/rename_basic_dir2): File-System rename failed, reason: No such file or directory (code: 2) in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\rename_variation8-win32.php on line 32
015- Warning: rename(%s/non_existent_dir,%s/rename_basic_dir2): The system cannot find the file specified. (code: 2) in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlinkErr私はガラスを食べられます/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlink_error-win32-mb.php on line 50
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_error-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
038+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/unlink_error): Operation not permitted in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlink_error-win32.php on line 48
038- Warning: unlink(%s/unlink_error): Is a directory in %s on line %d
```

### ext/standard/tests/file/unlink_variation1-win32-mb.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 53
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlinkVar1私はガラスを食べられます/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlink_variation1-win32-mb.php on line 55
013- bool(true)
```

### ext/standard/tests/file/unlink_variation1-win32.phpt

Test PASSED in control but FAILED in experiment

```patch
010+ bool(true)
011- Warning: unlink(%s/unlink_variation1/unlink_variation1-win32.tmp): Permission denied in %s on line %d
012+ Warning: chmod(): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlink_variation1-win32.php on line 52
013+ 
014+ Warning: unlink(D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file/unlink_variation1/unlink_variation1-win32.tmp): No such file or directory in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\file\unlink_variation1-win32.php on line 54
013- bool(true)
```

### ext/standard/tests/network/bindto.phpt

Test PASSED in control but FAILED in experiment

```patch
001+ Warning: stream_socket_client(): unable to connect to tcp://www.xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.com:80 (Failed to parse address "invalid") in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\network\bindto.php on line 9
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
001+ Warning: file_get_contents(https://httpbin.org/get): failed to open stream: Failed to parse address "0" in D:\a\swow-bcreports\swow-bcreports\phpbc_expr_phpsrc_85d57722ff7a16f2\ext\standard\tests\network\bug80067.php on line 3
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
