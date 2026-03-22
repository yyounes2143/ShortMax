.class public abstract Lcom/huawei/hms/hatool/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/hatool/w$a;
    }
.end annotation


# direct methods
.method public static a(Ljava/lang/String;[BLjava/util/Map;)Lhb/n0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lhb/n0;"
        }
    .end annotation

    .line 1
    const-string v0, "POST"

    .line 2
    .line 3
    invoke-static {p0, p1, p2, v0}, Lcom/huawei/hms/hatool/w;->b(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Lhb/n0;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static b(Ljava/lang/String;[BLjava/util/Map;Ljava/lang/String;)Lhb/n0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lhb/n0;"
        }
    .end annotation

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-string v2, ""

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance p0, Lhb/n0;

    .line 12
    .line 13
    const/16 p1, -0x64

    .line 14
    .line 15
    invoke-direct {p0, p1, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/16 v1, -0x65

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    const/16 v4, -0x66

    .line 23
    .line 24
    :try_start_0
    array-length v5, p1

    .line 25
    invoke-static {p0, v5, p2, p3}, Lcom/huawei/hms/hatool/w;->c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    .line 28
    move-result-object p0
    :try_end_0
    .catch Lcom/huawei/hms/hatool/w$a; {:try_start_0 .. :try_end_0} :catch_1a
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_18
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_16
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_12
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_e
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 29
    if-nez p0, :cond_2

    .line 30
    .line 31
    :try_start_1
    new-instance p1, Lhb/n0;

    .line 32
    .line 33
    invoke-direct {p1, v1, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_1
    .catch Lcom/huawei/hms/hatool/w$a; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-static {v3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 40
    .line 41
    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-static {p0}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-object p1

    .line 48
    :catchall_0
    move-exception p1

    .line 49
    move-object p2, v3

    .line 50
    goto/16 :goto_15

    .line 51
    .line 52
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 53
    .line 54
    .line 55
    move-result-object p2
    :try_end_2
    .catch Lcom/huawei/hms/hatool/w$a; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 56
    :try_start_3
    new-instance p3, Ljava/io/BufferedOutputStream;

    .line 57
    .line 58
    invoke-direct {p3, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Lcom/huawei/hms/hatool/w$a; {:try_start_3 .. :try_end_3} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_19
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_3 .. :try_end_3} :catch_17
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_3 .. :try_end_3} :catch_15
    .catch Ljava/net/ConnectException; {:try_start_3 .. :try_end_3} :catch_13
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_f
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 59
    .line 60
    .line 61
    :try_start_4
    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p3}, Ljava/io/BufferedOutputStream;->flush()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    invoke-static {p0}, Lcom/huawei/hms/hatool/w;->e(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    new-instance v3, Lhb/n0;

    .line 76
    .line 77
    invoke-direct {v3, v4, p1}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_4
    .catch Lcom/huawei/hms/hatool/w$a; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/net/ssl/SSLHandshakeException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/net/ConnectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 78
    .line 79
    .line 80
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p0}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 87
    .line 88
    .line 89
    return-object v3

    .line 90
    :catchall_1
    move-exception p1

    .line 91
    goto/16 :goto_16

    .line 92
    .line 93
    :catch_0
    :goto_0
    move-object v3, p0

    .line 94
    goto :goto_8

    .line 95
    :catch_1
    :goto_1
    move-object v3, p0

    .line 96
    goto/16 :goto_a

    .line 97
    .line 98
    :catch_2
    :goto_2
    move-object v3, p0

    .line 99
    goto/16 :goto_c

    .line 100
    .line 101
    :catch_3
    :goto_3
    move-object v3, p0

    .line 102
    goto/16 :goto_e

    .line 103
    .line 104
    :catch_4
    :goto_4
    move-object v3, p0

    .line 105
    goto/16 :goto_10

    .line 106
    .line 107
    :catch_5
    :goto_5
    move-object v3, p0

    .line 108
    goto/16 :goto_12

    .line 109
    .line 110
    :catch_6
    :goto_6
    move-object v3, p0

    .line 111
    goto/16 :goto_14

    .line 112
    .line 113
    :catchall_2
    move-exception p1

    .line 114
    goto/16 :goto_15

    .line 115
    .line 116
    :catch_7
    move-object p2, v3

    .line 117
    goto :goto_7

    .line 118
    :catch_8
    move-object p2, v3

    .line 119
    goto :goto_9

    .line 120
    :catch_9
    move-object p2, v3

    .line 121
    goto :goto_b

    .line 122
    :catch_a
    move-object p2, v3

    .line 123
    goto/16 :goto_d

    .line 124
    .line 125
    :catch_b
    move-object p2, v3

    .line 126
    goto/16 :goto_f

    .line 127
    .line 128
    :catch_c
    move-object p2, v3

    .line 129
    goto/16 :goto_11

    .line 130
    .line 131
    :catch_d
    move-object p2, v3

    .line 132
    goto/16 :goto_13

    .line 133
    .line 134
    :catchall_3
    move-exception p1

    .line 135
    move-object p0, v3

    .line 136
    move-object p2, p0

    .line 137
    goto/16 :goto_15

    .line 138
    .line 139
    :catch_e
    move-object p0, v3

    .line 140
    move-object p2, p0

    .line 141
    :catch_f
    :goto_7
    move-object p3, v3

    .line 142
    goto :goto_0

    .line 143
    :goto_8
    :try_start_5
    const-string p0, "events PostRequest(byte[]): IOException occurred."

    .line 144
    .line 145
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    new-instance p0, Lhb/n0;

    .line 149
    .line 150
    invoke-direct {p0, v4, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 151
    .line 152
    .line 153
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 154
    .line 155
    .line 156
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 157
    .line 158
    .line 159
    if-eqz v3, :cond_3

    .line 160
    .line 161
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 162
    .line 163
    .line 164
    :cond_3
    return-object p0

    .line 165
    :catchall_4
    move-exception p1

    .line 166
    move-object p0, v3

    .line 167
    move-object v3, p3

    .line 168
    goto/16 :goto_15

    .line 169
    .line 170
    :catch_10
    move-object p0, v3

    .line 171
    move-object p2, p0

    .line 172
    :catch_11
    :goto_9
    move-object p3, v3

    .line 173
    goto :goto_1

    .line 174
    :goto_a
    :try_start_6
    const-string p0, "No address associated with hostname or No network"

    .line 175
    .line 176
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    new-instance p0, Lhb/n0;

    .line 180
    .line 181
    invoke-direct {p0, v4, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 182
    .line 183
    .line 184
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 185
    .line 186
    .line 187
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 188
    .line 189
    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 193
    .line 194
    .line 195
    :cond_4
    return-object p0

    .line 196
    :catch_12
    move-object p0, v3

    .line 197
    move-object p2, p0

    .line 198
    :catch_13
    :goto_b
    move-object p3, v3

    .line 199
    goto :goto_2

    .line 200
    :goto_c
    :try_start_7
    const-string p0, "Network is unreachable or Connection refused"

    .line 201
    .line 202
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    new-instance p0, Lhb/n0;

    .line 206
    .line 207
    invoke-direct {p0, v4, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 208
    .line 209
    .line 210
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 211
    .line 212
    .line 213
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 214
    .line 215
    .line 216
    if-eqz v3, :cond_5

    .line 217
    .line 218
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    return-object p0

    .line 222
    :catch_14
    move-object p0, v3

    .line 223
    move-object p2, p0

    .line 224
    :catch_15
    :goto_d
    move-object p3, v3

    .line 225
    goto :goto_3

    .line 226
    :goto_e
    :try_start_8
    const-string p0, "Chain validation failed,Certificate expired"

    .line 227
    .line 228
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    new-instance p0, Lhb/n0;

    .line 232
    .line 233
    invoke-direct {p0, v4, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 234
    .line 235
    .line 236
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 237
    .line 238
    .line 239
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 240
    .line 241
    .line 242
    if-eqz v3, :cond_6

    .line 243
    .line 244
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 245
    .line 246
    .line 247
    :cond_6
    return-object p0

    .line 248
    :catch_16
    move-object p0, v3

    .line 249
    move-object p2, p0

    .line 250
    :catch_17
    :goto_f
    move-object p3, v3

    .line 251
    goto/16 :goto_4

    .line 252
    .line 253
    :goto_10
    :try_start_9
    const-string p0, "Certificate has not been verified,Request is restricted!"

    .line 254
    .line 255
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    new-instance p0, Lhb/n0;

    .line 259
    .line 260
    invoke-direct {p0, v4, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 261
    .line 262
    .line 263
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 264
    .line 265
    .line 266
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 267
    .line 268
    .line 269
    if-eqz v3, :cond_7

    .line 270
    .line 271
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 272
    .line 273
    .line 274
    :cond_7
    return-object p0

    .line 275
    :catch_18
    move-object p0, v3

    .line 276
    move-object p2, p0

    .line 277
    :catch_19
    :goto_11
    move-object p3, v3

    .line 278
    goto/16 :goto_5

    .line 279
    .line 280
    :goto_12
    :try_start_a
    const-string p0, "SecurityException with HttpClient. Please check INTERNET permission."

    .line 281
    .line 282
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance p0, Lhb/n0;

    .line 286
    .line 287
    invoke-direct {p0, v4, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 288
    .line 289
    .line 290
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 291
    .line 292
    .line 293
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 294
    .line 295
    .line 296
    if-eqz v3, :cond_8

    .line 297
    .line 298
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 299
    .line 300
    .line 301
    :cond_8
    return-object p0

    .line 302
    :catch_1a
    move-object p0, v3

    .line 303
    move-object p2, p0

    .line 304
    :catch_1b
    :goto_13
    move-object p3, v3

    .line 305
    goto/16 :goto_6

    .line 306
    .line 307
    :goto_14
    :try_start_b
    const-string p0, "PostRequest(byte[]): No ssl socket factory set!"

    .line 308
    .line 309
    invoke-static {v0, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    new-instance p0, Lhb/n0;

    .line 313
    .line 314
    invoke-direct {p0, v1, v2}, Lhb/n0;-><init>(ILjava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 315
    .line 316
    .line 317
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 318
    .line 319
    .line 320
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 321
    .line 322
    .line 323
    if-eqz v3, :cond_9

    .line 324
    .line 325
    invoke-static {v3}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 326
    .line 327
    .line 328
    :cond_9
    return-object p0

    .line 329
    :goto_15
    move-object p3, v3

    .line 330
    :goto_16
    invoke-static {p3}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 331
    .line 332
    .line 333
    invoke-static {p2}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 334
    .line 335
    .line 336
    if-eqz p0, :cond_a

    .line 337
    .line 338
    invoke-static {p0}, Lhb/g0;->f(Ljava/net/HttpURLConnection;)V

    .line 339
    .line 340
    .line 341
    :cond_a
    throw p1
.end method

.method private static c(Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "hmsSdk"

    .line 8
    .line 9
    const-string p1, "CreateConnection: invalid urlPath."

    .line 10
    .line 11
    invoke-static {p0, p1}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    return-object p0

    .line 16
    :cond_0
    new-instance v0, Ljava/net/URL;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    invoke-static {p0}, Lcom/huawei/hms/hatool/w;->d(Ljava/net/HttpURLConnection;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/16 p3, 0x3a98

    .line 34
    .line 35
    invoke-virtual {p0, p3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 39
    .line 40
    .line 41
    const/4 p3, 0x1

    .line 42
    invoke-virtual {p0, p3}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 43
    .line 44
    .line 45
    const-string v0, "Content-Type"

    .line 46
    .line 47
    const-string v1, "application/json; charset=UTF-8"

    .line 48
    .line 49
    invoke-virtual {p0, v0, v1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const-string v0, "Content-Length"

    .line 57
    .line 58
    invoke-virtual {p0, v0, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string p1, "Connection"

    .line 62
    .line 63
    const-string v0, "close"

    .line 64
    .line 65
    invoke-virtual {p0, p1, v0}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    if-eqz p2, :cond_4

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-ge p1, p3, :cond_1

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_1
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    if-eqz p2, :cond_4

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    check-cast p2, Ljava/util/Map$Entry;

    .line 96
    .line 97
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p3

    .line 101
    check-cast p3, Ljava/lang/String;

    .line 102
    .line 103
    if-eqz p3, :cond_2

    .line 104
    .line 105
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_3
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    check-cast p2, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p0, p3, p2}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_4
    :goto_1
    return-object p0
.end method

.method private static d(Ljava/net/HttpURLConnection;)V
    .locals 2

    .line 1
    const-string v0, "hmsSdk"

    .line 2
    .line 3
    instance-of v1, p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    .line 8
    .line 9
    :try_start_0
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v1}, Lnb/b;->b(Landroid/content/Context;)Lnb/b;

    .line 14
    .line 15
    .line 16
    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_2

    .line 18
    :catch_0
    const-string v1, "getSocketFactory(): Illegal Access Exception "

    .line 19
    .line 20
    :goto_0
    invoke-static {v0, v1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    goto :goto_1

    .line 24
    :catch_1
    const-string v1, "getSocketFactory(): IO Exception!"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_2
    const-string v1, "getSocketFactory(): General Security Exception"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_3
    const-string v1, "getSocketFactory(): Key Store exception"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_4
    const-string v1, "getSocketFactory(): Algorithm Exception!"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :goto_1
    const/4 v0, 0x0

    .line 37
    :goto_2
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lob/a;

    .line 43
    .line 44
    invoke-direct {v0}, Lob/a;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, v0}, Ljavax/net/ssl/HttpsURLConnection;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 48
    .line 49
    .line 50
    goto :goto_3

    .line 51
    :cond_0
    new-instance p0, Lcom/huawei/hms/hatool/w$a;

    .line 52
    .line 53
    const-string v0, "No ssl socket factory set"

    .line 54
    .line 55
    invoke-direct {p0, v0}, Lcom/huawei/hms/hatool/w$a;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_1
    :goto_3
    return-void
.end method

.method private static e(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Lhb/g0;->b(Ljava/io/InputStream;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {v0}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 11
    .line 12
    .line 13
    return-object p0

    .line 14
    :catchall_0
    move-exception p0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    const-string v1, "hmsSdk"

    .line 21
    .line 22
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v3, "When Response Content From Connection inputStream operation exception! "

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {v1, p0}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 43
    .line 44
    .line 45
    const-string p0, ""

    .line 46
    .line 47
    return-object p0

    .line 48
    :goto_0
    invoke-static {v0}, Lhb/g0;->c(Ljava/io/Closeable;)V

    .line 49
    .line 50
    .line 51
    throw p0
.end method
