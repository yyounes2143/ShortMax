.class public Lcom/ss/ttvideoengine/VideoModelCache;
.super Ljava/lang/Object;
.source "VideoModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;
    }
.end annotation


# static fields
.field public static final CACHE_NB:I = 0x64

.field private static final TIME_OUT:I = 0xe10

.field private static final TOB_VIDEO_MODEL_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCacheNB:I = 0x64

.field private static mInstance:Lcom/ss/ttvideoengine/VideoModelCache; = null

.field private static mTimeOutSetByUser:I = -0x1


# instance fields
.field private mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    const-string v13, "DrmExpireTimestamp"

    .line 2
    .line 3
    const-string v14, "PlayScene"

    .line 4
    .line 5
    const-string v0, "Action"

    .line 6
    .line 7
    const-string v1, "Version"

    .line 8
    .line 9
    const-string v2, "Vid"

    .line 10
    .line 11
    const-string v3, "Format"

    .line 12
    .line 13
    const-string v4, "Codec"

    .line 14
    .line 15
    const-string v5, "Definition"

    .line 16
    .line 17
    const-string v6, "Quality"

    .line 18
    .line 19
    const-string v7, "FileType"

    .line 20
    .line 21
    const-string v8, "Ssl"

    .line 22
    .line 23
    const-string v9, "NeedThumbs"

    .line 24
    .line 25
    const-string v10, "NeedBarrageMask"

    .line 26
    .line 27
    const-string v11, "HDRDefinition"

    .line 28
    .line 29
    const-string v12, "UnionInfo"

    .line 30
    .line 31
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sput-object v0, Lcom/ss/ttvideoengine/VideoModelCache;->TOB_VIDEO_MODEL_KEYS:Ljava/util/List;

    .line 40
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/VideoModelCache;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/VideoModelCache;->mInstance:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/VideoModelCache;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/VideoModelCache;->mInstance:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/VideoModelCache;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttvideoengine/VideoModelCache;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/VideoModelCache;->mInstance:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/ttvideoengine/VideoModelCache;->mInstance:Lcom/ss/ttvideoengine/VideoModelCache;

    .line 27
    .line 28
    return-object v0
.end method

.method private getVideoModelCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string/jumbo v0, "video_model_cache_enable_key_opt"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoModelCache;->getVideoModelCacheKeyForTob(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoModelCache;->getVideoModelCacheKeyForInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method private getVideoModelCacheKeyForInner(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v2, "[?]"

    .line 22
    .line 23
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    array-length v2, p2

    .line 28
    const/4 v3, 0x2

    .line 29
    if-lt v2, v3, :cond_10

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    aget-object p2, p2, v2

    .line 33
    .line 34
    const-string v2, "&"

    .line 35
    .line 36
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    array-length v2, p2

    .line 41
    const/4 v3, 0x0

    .line 42
    move-object v4, v1

    .line 43
    move-object v5, v4

    .line 44
    move-object v6, v5

    .line 45
    move-object v7, v6

    .line 46
    move-object v8, v7

    .line 47
    move-object v9, v8

    .line 48
    move v10, v3

    .line 49
    move-object v3, v9

    .line 50
    :goto_0
    if-ge v10, v2, :cond_11

    .line 51
    .line 52
    aget-object v11, p2, v10

    .line 53
    .line 54
    const-string v12, "codec_type"

    .line 55
    .line 56
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    move-result v12

    .line 60
    if-nez v12, :cond_2

    .line 61
    .line 62
    add-int/lit8 v12, v12, 0xb

    .line 63
    .line 64
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    goto/16 :goto_1

    .line 69
    .line 70
    :cond_2
    const-string v12, "CodecType"

    .line 71
    .line 72
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v12

    .line 76
    if-nez v12, :cond_3

    .line 77
    .line 78
    add-int/lit8 v12, v12, 0xa

    .line 79
    .line 80
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    goto/16 :goto_1

    .line 85
    .line 86
    :cond_3
    const-string v12, "Codec"

    .line 87
    .line 88
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v12

    .line 92
    if-nez v12, :cond_4

    .line 93
    .line 94
    add-int/lit8 v12, v12, 0x6

    .line 95
    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :cond_4
    const-string v12, "format_type"

    .line 103
    .line 104
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    move-result v12

    .line 108
    if-nez v12, :cond_5

    .line 109
    .line 110
    add-int/lit8 v12, v12, 0xc

    .line 111
    .line 112
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    goto/16 :goto_1

    .line 117
    .line 118
    :cond_5
    const-string v12, "FormatType"

    .line 119
    .line 120
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v12

    .line 124
    if-nez v12, :cond_6

    .line 125
    .line 126
    add-int/lit8 v12, v12, 0xb

    .line 127
    .line 128
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    goto/16 :goto_1

    .line 133
    .line 134
    :cond_6
    const-string v12, "Format"

    .line 135
    .line 136
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    move-result v12

    .line 140
    if-nez v12, :cond_7

    .line 141
    .line 142
    add-int/lit8 v12, v12, 0x7

    .line 143
    .line 144
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    goto/16 :goto_1

    .line 149
    .line 150
    :cond_7
    const-string v12, "ptoken"

    .line 151
    .line 152
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v12

    .line 156
    if-nez v12, :cond_8

    .line 157
    .line 158
    add-int/lit8 v12, v12, 0x7

    .line 159
    .line 160
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    goto :goto_1

    .line 165
    :cond_8
    const-string v12, "PToken"

    .line 166
    .line 167
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    if-nez v12, :cond_9

    .line 172
    .line 173
    add-int/lit8 v12, v12, 0x7

    .line 174
    .line 175
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    goto :goto_1

    .line 180
    :cond_9
    const-string/jumbo v12, "ssl"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    move-result v12

    .line 187
    if-nez v12, :cond_a

    .line 188
    .line 189
    add-int/lit8 v12, v12, 0x4

    .line 190
    .line 191
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v5

    .line 195
    goto :goto_1

    .line 196
    :cond_a
    const-string v12, "Ssl"

    .line 197
    .line 198
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v12

    .line 202
    if-nez v12, :cond_b

    .line 203
    .line 204
    add-int/lit8 v12, v12, 0x4

    .line 205
    .line 206
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    goto :goto_1

    .line 211
    :cond_b
    const-string v12, "HDRDefinition"

    .line 212
    .line 213
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 214
    .line 215
    .line 216
    move-result v12

    .line 217
    if-nez v12, :cond_c

    .line 218
    .line 219
    add-int/lit8 v12, v12, 0xe

    .line 220
    .line 221
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    goto :goto_1

    .line 226
    :cond_c
    const-string v12, "FileType"

    .line 227
    .line 228
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 229
    .line 230
    .line 231
    move-result v12

    .line 232
    if-nez v12, :cond_d

    .line 233
    .line 234
    add-int/lit8 v12, v12, 0x9

    .line 235
    .line 236
    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v7

    .line 240
    goto :goto_1

    .line 241
    :cond_d
    const-string v12, "UnionInfo"

    .line 242
    .line 243
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    move-result v12

    .line 247
    if-nez v12, :cond_e

    .line 248
    .line 249
    const/16 v8, 0xa

    .line 250
    .line 251
    invoke-virtual {v11, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    goto :goto_1

    .line 256
    :cond_e
    const-string v12, "DrmExpireTimestamp"

    .line 257
    .line 258
    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-result v12

    .line 262
    if-nez v12, :cond_f

    .line 263
    .line 264
    const/16 v9, 0x13

    .line 265
    .line 266
    invoke-virtual {v11, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v9

    .line 270
    :cond_f
    :goto_1
    add-int/lit8 v10, v10, 0x1

    .line 271
    .line 272
    goto/16 :goto_0

    .line 273
    .line 274
    :cond_10
    move-object v3, v1

    .line 275
    move-object v4, v3

    .line 276
    move-object v5, v4

    .line 277
    move-object v6, v5

    .line 278
    move-object v7, v6

    .line 279
    move-object v8, v7

    .line 280
    move-object v9, v8

    .line 281
    :cond_11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 285
    .line 286
    .line 287
    move-result p1

    .line 288
    const-string p2, "/%s"

    .line 289
    .line 290
    if-nez p1, :cond_12

    .line 291
    .line 292
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    :cond_12
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result p1

    .line 307
    if-nez p1, :cond_13

    .line 308
    .line 309
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    :cond_13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result p1

    .line 324
    if-nez p1, :cond_14

    .line 325
    .line 326
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object p1

    .line 334
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    .line 336
    .line 337
    :cond_14
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 338
    .line 339
    .line 340
    move-result p1

    .line 341
    if-nez p1, :cond_15

    .line 342
    .line 343
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object p1

    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    :cond_15
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 355
    .line 356
    .line 357
    move-result p1

    .line 358
    if-nez p1, :cond_16

    .line 359
    .line 360
    new-instance p1, Ljava/lang/StringBuilder;

    .line 361
    .line 362
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 363
    .line 364
    .line 365
    const-string v1, "hdr_"

    .line 366
    .line 367
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object p1

    .line 377
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    .line 387
    .line 388
    :cond_16
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 389
    .line 390
    .line 391
    move-result p1

    .line 392
    if-nez p1, :cond_17

    .line 393
    .line 394
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    .line 404
    .line 405
    :cond_17
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 406
    .line 407
    .line 408
    move-result p1

    .line 409
    if-nez p1, :cond_18

    .line 410
    .line 411
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    move-result-object p1

    .line 415
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object p1

    .line 419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    :cond_18
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-nez p1, :cond_19

    .line 427
    .line 428
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object p1

    .line 436
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .line 438
    .line 439
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object p1

    .line 443
    return-object p1
.end method

.method private getVideoModelCacheKeyForTob(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-eqz p1, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    invoke-static {p2}, Lokhttp3/HttpUrl;->m(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-nez p1, :cond_2

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lcom/ss/ttvideoengine/VideoModelCache;->TOB_VIDEO_MODEL_KEYS:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl;->q(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_3

    .line 55
    .line 56
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "="

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, "&"

    .line 68
    .line 69
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, -0x1

    .line 3
    :try_start_0
    sput v0, Lcom/ss/ttvideoengine/VideoModelCache;->mTimeOutSetByUser:I

    .line 4
    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    sput v0, Lcom/ss/ttvideoengine/VideoModelCache;->mCacheNB:I

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-eqz v0, :cond_4

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoModelCache;->getVideoModelCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    monitor-exit p0

    .line 18
    return-object v1

    .line 19
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    sget p2, Lcom/ss/ttvideoengine/VideoModelCache;->mTimeOutSetByUser:I

    .line 30
    .line 31
    if-lez p2, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p2, p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 35
    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    const/4 v0, 0x3

    .line 39
    invoke-virtual {p2, v0}, Lcom/ss/ttvideoengine/model/VideoModel;->getVideoRefInt(I)I

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    add-int/lit16 p2, p2, 0xce4

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catchall_0
    move-exception p1

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    const/16 p2, 0xe10

    .line 49
    .line 50
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-wide v2, p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->modelGotTime:J

    .line 55
    .line 56
    sub-long/2addr v0, v2

    .line 57
    mul-int/lit16 p2, p2, 0x3e8

    .line 58
    .line 59
    int-to-long v2, p2

    .line 60
    cmp-long p2, v0, v2

    .line 61
    .line 62
    if-lez p2, :cond_3

    .line 63
    .line 64
    const/4 p2, 0x1

    .line 65
    iput-boolean p2, p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->isExpired:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 p2, 0x0

    .line 69
    iput-boolean p2, p1, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->isExpired:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 70
    .line 71
    :goto_1
    monitor-exit p0

    .line 72
    return-object p1

    .line 73
    :cond_4
    monitor-exit p0

    .line 74
    return-object v1

    .line 75
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 76
    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;)V
    .locals 5

    monitor-enter p0

    .line 8
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoModelCache;->getVideoModelCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p1

    sget p2, Lcom/ss/ttvideoengine/VideoModelCache;->mCacheNB:I

    if-le p1, p2, :cond_3

    .line 13
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide p2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 14
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    .line 15
    iget-wide v2, v2, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->modelGotTime:J

    cmp-long v4, v2, p2

    if-gez v4, :cond_1

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object v0, p2

    move-wide p2, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    .line 17
    iget-object p1, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :cond_3
    monitor-exit p0

    return-void

    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/model/VideoModel;)V
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;

    invoke-direct {v0}, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;-><init>()V

    .line 3
    iput-object p3, v0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->model:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;->modelGotTime:J

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lcom/ss/ttvideoengine/VideoModelCache;->put(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/VideoModelCache$VideoModelCacheInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3
    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/VideoModelCache;->getVideoModelCacheKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :cond_0
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/VideoModelCache;->mVideoModelCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    :goto_0
    monitor-exit p0

    .line 27
    return-void

    .line 28
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 29
    throw p1
.end method

.method public setCacheNb(I)V
    .locals 0

    .line 1
    sput p1, Lcom/ss/ttvideoengine/VideoModelCache;->mCacheNB:I

    .line 2
    .line 3
    return-void
.end method

.method public setTimeOutInSec(I)V
    .locals 0

    .line 1
    sput p1, Lcom/ss/ttvideoengine/VideoModelCache;->mTimeOutSetByUser:I

    .line 2
    .line 3
    return-void
.end method
