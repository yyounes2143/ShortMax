.class public final Ljb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private static a([B[B)[B
    .locals 3

    .line 1
    array-length v0, p0

    .line 2
    array-length v1, p1

    .line 3
    add-int/2addr v0, v1

    .line 4
    new-array v0, v0, [B

    .line 5
    .line 6
    array-length v1, p0

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    .line 10
    .line 11
    array-length p0, p0

    .line 12
    array-length v1, p1

    .line 13
    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static b([B[B[B)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "CBC"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "decrypt 6 content is null"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-array p0, v0, [B

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    array-length v2, p0

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string p0, "decrypt 6 content length is 0"

    .line 18
    .line 19
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-array p0, v0, [B

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-string p0, "decrypt 6 key is null"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-array p0, v0, [B

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    array-length v2, p1

    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    if-ge v2, v3, :cond_3

    .line 39
    .line 40
    const-string p0, "decrypt 6 key error: 6 key length less than 16 bytes."

    .line 41
    .line 42
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-array p0, v0, [B

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    if-nez p2, :cond_4

    .line 49
    .line 50
    const-string p0, "decrypt 6 iv is null"

    .line 51
    .line 52
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-array p0, v0, [B

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_4
    array-length v2, p2

    .line 59
    if-ge v2, v3, :cond_5

    .line 60
    .line 61
    const-string p0, "decrypt 6 iv error: 6 iv length less than 16 bytes."

    .line 62
    .line 63
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-array p0, v0, [B

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_5
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 70
    .line 71
    const-string v3, "AES"

    .line 72
    .line 73
    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 77
    .line 78
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 83
    .line 84
    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 85
    .line 86
    .line 87
    const/4 p2, 0x2

    .line 88
    invoke-virtual {p1, p2, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-object p0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :catch_2
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :catch_3
    move-exception p0

    .line 103
    goto :goto_3

    .line 104
    :catch_4
    move-exception p0

    .line 105
    goto :goto_4

    .line 106
    :catch_5
    move-exception p0

    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :catch_6
    move-exception p0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string p2, "NullPointerException: "

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string p2, "BadPaddingException: "

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const-string p0, "key is not right"

    .line 163
    .line 164
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    goto/16 :goto_7

    .line 168
    .line 169
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string p2, "IllegalBlockSizeException: "

    .line 175
    .line 176
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object p0

    .line 190
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    goto :goto_7

    .line 194
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string p2, "InvalidAlgorithmParameterException: "

    .line 200
    .line 201
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object p0

    .line 208
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    goto :goto_7

    .line 219
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string p2, "InvalidKeyException: "

    .line 225
    .line 226
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    goto :goto_7

    .line 244
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string p2, "NoSuchPaddingException: "

    .line 250
    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object p0

    .line 258
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p0

    .line 265
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    goto :goto_7

    .line 269
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    const-string p2, "NoSuchAlgorithmException: "

    .line 275
    .line 276
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object p0

    .line 283
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p0

    .line 290
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    .line 292
    .line 293
    :goto_7
    new-array p0, v0, [B

    .line 294
    .line 295
    return-object p0
.end method

.method public static c([B[B)[B
    .locals 1

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {v0}, Lmb/a;->c(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {p0, p1, v0}, Ljb/a;->d([B[B[B)[B

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-static {v0, p0}, Ljb/a;->a([B[B)[B

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public static d([B[B[B)[B
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "CBC"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string p0, "encrypt 6 content is null"

    .line 7
    .line 8
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-array p0, v0, [B

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    array-length v2, p0

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string p0, "encrypt 6 content length is 0"

    .line 18
    .line 19
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-array p0, v0, [B

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    const-string p0, "encrypt 6 key is null"

    .line 28
    .line 29
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    new-array p0, v0, [B

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_2
    array-length v2, p1

    .line 36
    const/16 v3, 0x10

    .line 37
    .line 38
    if-ge v2, v3, :cond_3

    .line 39
    .line 40
    const-string p0, "encrypt 6 key error: 6 key length less than 16 bytes."

    .line 41
    .line 42
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-array p0, v0, [B

    .line 46
    .line 47
    return-object p0

    .line 48
    :cond_3
    if-nez p2, :cond_4

    .line 49
    .line 50
    const-string p0, "encrypt 6 iv is null"

    .line 51
    .line 52
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-array p0, v0, [B

    .line 56
    .line 57
    return-object p0

    .line 58
    :cond_4
    array-length v2, p2

    .line 59
    if-ge v2, v3, :cond_5

    .line 60
    .line 61
    const-string p0, "encrypt 6 iv error: 6 iv length less than 16 bytes."

    .line 62
    .line 63
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    new-array p0, v0, [B

    .line 67
    .line 68
    return-object p0

    .line 69
    :cond_5
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 70
    .line 71
    const-string v3, "AES"

    .line 72
    .line 73
    invoke-direct {v2, p1, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :try_start_0
    const-string p1, "AES/CBC/PKCS5Padding"

    .line 77
    .line 78
    invoke-static {p1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    .line 83
    .line 84
    invoke-direct {v3, p2}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    .line 85
    .line 86
    .line 87
    const/4 p2, 0x1

    .line 88
    invoke-virtual {p1, p2, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    .line 92
    .line 93
    .line 94
    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    return-object p0

    .line 96
    :catch_0
    move-exception p0

    .line 97
    goto :goto_0

    .line 98
    :catch_1
    move-exception p0

    .line 99
    goto :goto_1

    .line 100
    :catch_2
    move-exception p0

    .line 101
    goto :goto_2

    .line 102
    :catch_3
    move-exception p0

    .line 103
    goto :goto_3

    .line 104
    :catch_4
    move-exception p0

    .line 105
    goto :goto_4

    .line 106
    :catch_5
    move-exception p0

    .line 107
    goto/16 :goto_5

    .line 108
    .line 109
    :catch_6
    move-exception p0

    .line 110
    goto/16 :goto_6

    .line 111
    .line 112
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string p2, "NullPointerException: "

    .line 118
    .line 119
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto/16 :goto_7

    .line 137
    .line 138
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string p2, "BadPaddingException: "

    .line 144
    .line 145
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p0

    .line 152
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto/16 :goto_7

    .line 163
    .line 164
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string p2, "IllegalBlockSizeException: "

    .line 170
    .line 171
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p0

    .line 185
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    goto :goto_7

    .line 189
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    .line 190
    .line 191
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .line 193
    .line 194
    const-string p2, "InvalidAlgorithmParameterException: "

    .line 195
    .line 196
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p0

    .line 203
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p0

    .line 210
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    goto :goto_7

    .line 214
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string p2, "InvalidKeyException: "

    .line 220
    .line 221
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_7

    .line 239
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    .line 240
    .line 241
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 242
    .line 243
    .line 244
    const-string p2, "NoSuchPaddingException: "

    .line 245
    .line 246
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object p0

    .line 260
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    goto :goto_7

    .line 264
    :goto_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 265
    .line 266
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    .line 268
    .line 269
    const-string p2, "NoSuchAlgorithmException: "

    .line 270
    .line 271
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    .line 273
    .line 274
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object p0

    .line 278
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-static {v1, p0}, Lmb/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :goto_7
    new-array p0, v0, [B

    .line 289
    .line 290
    return-object p0
.end method
