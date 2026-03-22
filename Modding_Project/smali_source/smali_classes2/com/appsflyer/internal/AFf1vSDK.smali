.class public final Lcom/appsflyer/internal/AFf1vSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final AFInAppEventType:Ljava/util/UUID;

.field public component2:Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private copy:Ljava/lang/String;

.field private copydefault:Ljava/lang/String;

.field private final equals:Lcom/appsflyer/internal/AFd1nSDK;

.field private hashCode:Ljava/lang/String;

.field private final toString:Z


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;Ljava/util/UUID;Landroid/net/Uri;)V
    .locals 11
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/UUID;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->component4:Lcom/appsflyer/internal/AFe1pSDK;

    .line 2
    .line 3
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 4
    .line 5
    filled-new-array {v1}, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p0, v0, v1, p1, v2}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->getRevenue()Lcom/appsflyer/internal/AFd1nSDK;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->equals:Lcom/appsflyer/internal/AFd1nSDK;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:Ljava/util/UUID;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    :try_start_0
    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Lcom/appsflyer/internal/AFk1wSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-nez v0, :cond_8

    .line 34
    .line 35
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v0}, Lcom/appsflyer/internal/AFk1wSDK;->getMonetizationNetwork(Ljava/lang/String;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_8

    .line 44
    .line 45
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->i()Lcom/appsflyer/internal/AFa1mSDK;

    .line 46
    .line 47
    .line 48
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    const/4 v0, 0x2

    .line 50
    :try_start_1
    new-array v1, v0, [Ljava/lang/Object;

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    aput-object p1, v1, v2

    .line 54
    .line 55
    aput-object p3, v1, p2

    .line 56
    .line 57
    sget-object p1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 58
    .line 59
    const v3, 0x3363362b

    .line 60
    .line 61
    .line 62
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    const-wide/16 v5, 0x0

    .line 71
    .line 72
    const v7, 0xf261

    .line 73
    .line 74
    .line 75
    if-eqz v4, :cond_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_0
    const-string v4, ""

    .line 79
    .line 80
    invoke-static {v4, p2, p2}, Landroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    .line 85
    .line 86
    .line 87
    move-result v8

    .line 88
    shr-int/lit8 v8, v8, 0x8

    .line 89
    .line 90
    add-int/2addr v8, v7

    .line 91
    int-to-char v8, v8

    .line 92
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    .line 93
    .line 94
    .line 95
    move-result-wide v9

    .line 96
    cmp-long v9, v9, v5

    .line 97
    .line 98
    add-int/lit8 v9, v9, 0x24

    .line 99
    .line 100
    invoke-static {v4, v8, v9}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Class;

    .line 105
    .line 106
    const-class v8, Landroid/net/Uri;

    .line 107
    .line 108
    const-class v9, Lcom/appsflyer/internal/AFa1mSDK;

    .line 109
    .line 110
    filled-new-array {v8, v9}, [Ljava/lang/Class;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v4, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :goto_0
    check-cast v4, Ljava/lang/reflect/Constructor;

    .line 126
    .line 127
    invoke-virtual {v4, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 131
    const v3, -0xac4110a

    .line 132
    .line 133
    .line 134
    :try_start_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    const/4 v8, 0x0

    .line 143
    if-eqz v4, :cond_1

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    .line 147
    .line 148
    .line 149
    move-result v4

    .line 150
    shr-int/lit8 v4, v4, 0x10

    .line 151
    .line 152
    invoke-static {p2, p2}, Landroid/view/KeyEvent;->getDeadChar(II)I

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    add-int/2addr v9, v7

    .line 157
    int-to-char v7, v9

    .line 158
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 159
    .line 160
    .line 161
    move-result v9

    .line 162
    shr-int/lit8 v9, v9, 0x8

    .line 163
    .line 164
    add-int/lit8 v9, v9, 0x25

    .line 165
    .line 166
    invoke-static {v4, v7, v9}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v4

    .line 170
    check-cast v4, Ljava/lang/Class;

    .line 171
    .line 172
    const-string v7, "getMediationNetwork"

    .line 173
    .line 174
    invoke-virtual {v4, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 175
    .line 176
    .line 177
    move-result-object v4

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    :goto_1
    check-cast v4, Ljava/lang/reflect/Method;

    .line 186
    .line 187
    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 191
    const v3, 0x249bdb61

    .line 192
    .line 193
    .line 194
    :try_start_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v4

    .line 198
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v4

    .line 202
    if-eqz v4, :cond_2

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_2
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 206
    .line 207
    .line 208
    move-result v4

    .line 209
    shr-int/lit8 v4, v4, 0x10

    .line 210
    .line 211
    add-int/lit8 v4, v4, 0x25

    .line 212
    .line 213
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 214
    .line 215
    .line 216
    move-result-wide v9

    .line 217
    cmp-long v5, v9, v5

    .line 218
    .line 219
    rsub-int/lit8 v5, v5, 0x1

    .line 220
    .line 221
    int-to-char v5, v5

    .line 222
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    shr-int/lit8 v6, v6, 0x10

    .line 227
    .line 228
    add-int/lit8 v6, v6, 0x33

    .line 229
    .line 230
    invoke-static {v4, v5, v6}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v4

    .line 234
    check-cast v4, Ljava/lang/Class;

    .line 235
    .line 236
    const-string v5, "AFAdRevenueData"

    .line 237
    .line 238
    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :goto_2
    check-cast v4, Ljava/lang/reflect/Method;

    .line 250
    .line 251
    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    check-cast v3, Ljava/lang/Boolean;

    .line 256
    .line 257
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 258
    .line 259
    .line 260
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 261
    const v4, 0x7e083f47

    .line 262
    .line 263
    .line 264
    :try_start_4
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 265
    .line 266
    .line 267
    move-result-object v5

    .line 268
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    move-result-object v5

    .line 272
    if-eqz v5, :cond_3

    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_3
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    const/4 v6, 0x0

    .line 280
    cmpl-float v5, v5, v6

    .line 281
    .line 282
    rsub-int/lit8 v5, v5, 0x26

    .line 283
    .line 284
    invoke-static {p2, p2, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 285
    .line 286
    .line 287
    move-result v6

    .line 288
    int-to-char v6, v6

    .line 289
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 290
    .line 291
    .line 292
    move-result v7

    .line 293
    shr-int/lit8 v7, v7, 0x10

    .line 294
    .line 295
    rsub-int/lit8 v7, v7, 0x33

    .line 296
    .line 297
    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object v5

    .line 301
    check-cast v5, Ljava/lang/Class;

    .line 302
    .line 303
    const-string v6, "getRevenue"

    .line 304
    .line 305
    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 306
    .line 307
    .line 308
    move-result-object v5

    .line 309
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    :goto_3
    check-cast v5, Ljava/lang/reflect/Method;

    .line 317
    .line 318
    invoke-virtual {v5, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object p1

    .line 322
    check-cast p1, Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    .line 326
    .line 327
    move-result p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 328
    :try_start_5
    invoke-virtual {p3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    const-string v1, "/"

    .line 333
    .line 334
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object p1

    .line 338
    if-eqz v3, :cond_8

    .line 339
    .line 340
    array-length v1, p1

    .line 341
    const/4 v3, 0x3

    .line 342
    if-ne v1, v3, :cond_8

    .line 343
    .line 344
    aget-object v1, p1, v2

    .line 345
    .line 346
    iput-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    .line 347
    .line 348
    aget-object p1, p1, v0

    .line 349
    .line 350
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1vSDK;->copy:Ljava/lang/String;

    .line 351
    .line 352
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1vSDK;->hashCode:Ljava/lang/String;

    .line 357
    .line 358
    goto :goto_5

    .line 359
    :catch_0
    move-exception p1

    .line 360
    goto :goto_4

    .line 361
    :catchall_0
    move-exception p1

    .line 362
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 363
    .line 364
    .line 365
    move-result-object p3

    .line 366
    if-eqz p3, :cond_4

    .line 367
    .line 368
    throw p3

    .line 369
    :cond_4
    throw p1

    .line 370
    :catchall_1
    move-exception p1

    .line 371
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 372
    .line 373
    .line 374
    move-result-object p3

    .line 375
    if-eqz p3, :cond_5

    .line 376
    .line 377
    throw p3

    .line 378
    :cond_5
    throw p1

    .line 379
    :catchall_2
    move-exception p1

    .line 380
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 381
    .line 382
    .line 383
    move-result-object p3

    .line 384
    if-eqz p3, :cond_6

    .line 385
    .line 386
    throw p3

    .line 387
    :cond_6
    throw p1

    .line 388
    :catchall_3
    move-exception p1

    .line 389
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 390
    .line 391
    .line 392
    move-result-object p3

    .line 393
    if-eqz p3, :cond_7

    .line 394
    .line 395
    throw p3

    .line 396
    :cond_7
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 397
    :goto_4
    const-string p3, "OneLinkValidator: reflection init failed"

    .line 398
    .line 399
    invoke-static {p3, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 400
    .line 401
    .line 402
    :cond_8
    :goto_5
    iput-boolean p2, p0, Lcom/appsflyer/internal/AFf1vSDK;->toString:Z

    .line 403
    .line 404
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()J
    .locals 2

    .line 1
    const-wide/16 v0, 0xbb8

    return-wide v0
.end method

.method protected final AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->equals:Lcom/appsflyer/internal/AFd1nSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1vSDK;->copy:Ljava/lang/String;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1vSDK;->AFInAppEventType:Ljava/util/UUID;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/appsflyer/internal/AFd1nSDK;->getMediationNetwork(Ljava/lang/String;Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    return-object p1
.end method

.method protected final a_()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method protected final component2()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public final copy()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->copy:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->copydefault:Ljava/lang/String;

    .line 18
    .line 19
    const-string v1, "app"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    return v0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    return v0
.end method

.method protected final copydefault()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final equals()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->toString:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCurrencyIso4217Code()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getCurrencyIso4217Code()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1vSDK;->component2:Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;

    .line 5
    .line 6
    if-eqz v0, :cond_5

    .line 7
    .line 8
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1mSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    .line 9
    .line 10
    sget-object v2, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1wSDK;->getBody()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;->getCurrencyIso4217Code(Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1mSDK;->component1()Ljava/lang/Throwable;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    instance-of v2, v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    .line 33
    .line 34
    const-string v3, "Can\'t get OneLink data"

    .line 35
    .line 36
    if-eqz v2, :cond_3

    .line 37
    .line 38
    check-cast v1, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/appsflyer/internal/components/network/http/exceptions/ParsingException;->getRawResponse()Lcom/appsflyer/internal/AFe1wSDK;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1wSDK;->isSuccessful()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    const-string v1, "Can\'t parse one link data"

    .line 51
    .line 52
    invoke-interface {v0, v1}, Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->hashCode:Ljava/lang/String;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    move-object v3, v1

    .line 61
    :cond_2
    invoke-interface {v0, v3}, Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void

    .line 65
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1vSDK;->hashCode:Ljava/lang/String;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    :cond_4
    invoke-interface {v0, v3}, Lcom/appsflyer/internal/AFf1vSDK$AFa1tSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_5
    return-void
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method
