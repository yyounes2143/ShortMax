.class public final Lcom/startshorts/androidplayer/manager/api/base/r;
.super Ljava/lang/Object;
.source "ExceptionHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/api/base/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/r;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/r;->a:Lcom/startshorts/androidplayer/manager/api/base/r;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;
    .locals 5
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    instance-of v0, p1, Lretrofit2/HttpException;

    .line 2
    .line 3
    const v1, 0x15f92

    .line 4
    .line 5
    .line 6
    const v2, 0x15f91

    .line 7
    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Lretrofit2/HttpException;

    .line 13
    .line 14
    invoke-virtual {p1}, Lretrofit2/HttpException;->b()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v4, 0x1f4

    .line 19
    .line 20
    if-eq v0, v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lretrofit2/HttpException;->b()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/16 v4, 0x194

    .line 27
    .line 28
    if-eq v0, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lretrofit2/HttpException;->b()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/16 v4, 0x190

    .line 35
    .line 36
    if-ne v0, v4, :cond_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 40
    .line 41
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_network_error:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v1, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 48
    .line 49
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lretrofit2/HttpException;->b()I

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    .line 68
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 69
    .line 70
    invoke-direct {p1, v2, v0, v1, v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_4

    .line 74
    .line 75
    :cond_1
    :goto_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 76
    .line 77
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_server_error:I

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    new-instance v2, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 84
    .line 85
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Lretrofit2/HttpException;->b()I

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 103
    .line 104
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 105
    .line 106
    invoke-direct {p1, v1, v0, v2, v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_4

    .line 110
    .line 111
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/exception/ServerException;

    .line 112
    .line 113
    if-eqz v0, :cond_5

    .line 114
    .line 115
    check-cast p1, Lcom/startshorts/androidplayer/bean/exception/ServerException;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    const/16 v1, 0x4e20

    .line 122
    .line 123
    const/4 v2, 0x0

    .line 124
    if-eq v0, v1, :cond_4

    .line 125
    .line 126
    const/16 v1, 0x4e22

    .line 127
    .line 128
    if-eq v0, v1, :cond_4

    .line 129
    .line 130
    const/16 v1, 0x4e23

    .line 131
    .line 132
    if-eq v0, v1, :cond_3

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getMessage()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    new-instance v2, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getMessage()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 164
    .line 165
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 166
    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 170
    .line 171
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->k()V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 179
    .line 180
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_login_expired:I

    .line 181
    .line 182
    invoke-virtual {v1, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    new-instance v3, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 187
    .line 188
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 206
    .line 207
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 208
    .line 209
    invoke-direct {p1, v0, v1, v3, v2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 214
    .line 215
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->j()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 219
    .line 220
    .line 221
    move-result v0

    .line 222
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getMessage()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    new-instance v3, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 227
    .line 228
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getCode()I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/exception/ServerException;->getMessage()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    invoke-virtual {v3, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 246
    .line 247
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 248
    .line 249
    invoke-direct {p1, v0, v1, v3, v2}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 250
    .line 251
    .line 252
    :goto_1
    return-object p1

    .line 253
    :cond_5
    instance-of v0, p1, Ljava/net/SocketException;

    .line 254
    .line 255
    if-nez v0, :cond_b

    .line 256
    .line 257
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    .line 258
    .line 259
    if-nez v0, :cond_b

    .line 260
    .line 261
    instance-of v0, p1, Ljava/net/UnknownHostException;

    .line 262
    .line 263
    if-eqz v0, :cond_6

    .line 264
    .line 265
    goto :goto_3

    .line 266
    :cond_6
    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    .line 267
    .line 268
    if-eqz v0, :cond_7

    .line 269
    .line 270
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 271
    .line 272
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_network_error:I

    .line 273
    .line 274
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    new-instance v2, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 279
    .line 280
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 281
    .line 282
    .line 283
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 284
    .line 285
    .line 286
    check-cast p1, Ljavax/net/ssl/SSLException;

    .line 287
    .line 288
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object p1

    .line 292
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 296
    .line 297
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 298
    .line 299
    invoke-direct {p1, v1, v0, v2, v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 300
    .line 301
    .line 302
    goto :goto_4

    .line 303
    :cond_7
    const/4 v0, 0x0

    .line 304
    if-eqz p1, :cond_8

    .line 305
    .line 306
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    goto :goto_2

    .line 311
    :cond_8
    move-object v1, v0

    .line 312
    :goto_2
    const-string v2, "Canceled"

    .line 313
    .line 314
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-eqz v1, :cond_9

    .line 319
    .line 320
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 321
    .line 322
    const v0, 0x15f93

    .line 323
    .line 324
    .line 325
    const-string v1, "Request Cancelled"

    .line 326
    .line 327
    invoke-direct {p1, v0, v1}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    goto :goto_4

    .line 331
    :cond_9
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 332
    .line 333
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_unknown_exception:I

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    new-instance v2, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 340
    .line 341
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 342
    .line 343
    .line 344
    const/4 v4, -0x1

    .line 345
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 346
    .line 347
    .line 348
    if-eqz p1, :cond_a

    .line 349
    .line 350
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    :cond_a
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 358
    .line 359
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 360
    .line 361
    const v0, 0x15f90

    .line 362
    .line 363
    .line 364
    invoke-direct {p1, v0, v1, v2, v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 365
    .line 366
    .line 367
    goto :goto_4

    .line 368
    :cond_b
    :goto_3
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 369
    .line 370
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_network_error:I

    .line 371
    .line 372
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    new-instance v1, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;

    .line 377
    .line 378
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;-><init>()V

    .line 379
    .line 380
    .line 381
    const/4 v4, 0x2

    .line 382
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealCode(I)V

    .line 383
    .line 384
    .line 385
    check-cast p1, Ljava/io/IOException;

    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;->setRealMessage(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 395
    .line 396
    new-instance p1, Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 397
    .line 398
    invoke-direct {p1, v2, v0, v1, v3}, Lcom/startshorts/androidplayer/bean/exception/ResponseException;-><init>(ILjava/lang/String;Lcom/startshorts/androidplayer/bean/api/ApiErrorExtra;Z)V

    .line 399
    .line 400
    .line 401
    :goto_4
    return-object p1
.end method
