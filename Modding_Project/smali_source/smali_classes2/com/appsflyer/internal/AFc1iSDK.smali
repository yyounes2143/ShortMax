.class public final Lcom/appsflyer/internal/AFc1iSDK;
.super Ljava/util/HashMap;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFc1iSDK$AFa1ySDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static $10:I = 0x0

.field private static $11:I = 0x1

.field private static AFAdRevenueData:J = 0x0L

.field private static areAllFieldsValid:I = 0x0

.field private static component1:I = 0x1

.field private static getCurrencyIso4217Code:J

.field private static getMediationNetwork:[C


# instance fields
.field private final getMonetizationNetwork:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final getRevenue:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 6
    .line 7
    .line 8
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v1, v1}, Landroid/graphics/PointF;->length(FF)F

    .line 13
    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    const-string v1, ""

    .line 19
    .line 20
    invoke-static {v1}, Landroid/os/Process;->getGidForName(Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    .line 30
    .line 31
    .line 32
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    .line 36
    .line 37
    .line 38
    invoke-static {}, Landroid/media/AudioTrack;->getMaxVolume()F

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x65

    .line 44
    .line 45
    rem-int/lit16 v0, v0, 0x80

    .line 46
    .line 47
    sput v0, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:Landroid/content/Context;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0}, Lcom/appsflyer/internal/AFc1iSDK;->getMediationNetwork()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private AFAdRevenueData()Ljava/lang/String;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    sget v1, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x57

    .line 6
    .line 7
    rem-int/lit16 v1, v1, 0x80

    .line 8
    .line 9
    sput v1, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iget-object v4, p0, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Process;->getElapsedCpuTime()J

    .line 22
    .line 23
    .line 24
    move-result-wide v5

    .line 25
    const-wide/16 v7, 0x0

    .line 26
    .line 27
    cmp-long v5, v5, v7

    .line 28
    .line 29
    rsub-int/lit8 v5, v5, 0xd

    .line 30
    .line 31
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    shr-int/lit8 v6, v6, 0x16

    .line 36
    .line 37
    invoke-static {v2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 38
    .line 39
    .line 40
    move-result v9

    .line 41
    add-int/lit16 v9, v9, 0x32ad

    .line 42
    .line 43
    int-to-char v9, v9

    .line 44
    new-array v10, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {v5, v6, v9, v10}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    aget-object v5, v10, v2

    .line 50
    .line 51
    check-cast v5, Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    iget-object v5, p0, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 66
    .line 67
    const-string/jumbo v6, "\uf4f5\u566c\ub1e4\u1362\u7ed7"

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    .line 71
    .line 72
    .line 73
    move-result v9

    .line 74
    const v10, 0xa289

    .line 75
    .line 76
    .line 77
    add-int/2addr v9, v10

    .line 78
    new-array v10, v1, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {v6, v9, v10}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    aget-object v6, v10, v2

    .line 84
    .line 85
    check-cast v6, Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    if-nez v5, :cond_1

    .line 100
    .line 101
    sget v5, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    .line 102
    .line 103
    add-int/lit8 v5, v5, 0x65

    .line 104
    .line 105
    rem-int/lit16 v6, v5, 0x80

    .line 106
    .line 107
    sput v6, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    .line 108
    .line 109
    rem-int/lit8 v5, v5, 0x2

    .line 110
    .line 111
    if-eqz v5, :cond_0

    .line 112
    .line 113
    :try_start_1
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 114
    .line 115
    .line 116
    move-result v5

    .line 117
    ushr-int/lit8 v5, v5, 0x43

    .line 118
    .line 119
    const/16 v6, 0x1a

    .line 120
    .line 121
    rem-int/2addr v6, v5

    .line 122
    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    const/16 v9, 0x6b

    .line 127
    .line 128
    ushr-int v5, v9, v5

    .line 129
    .line 130
    invoke-static {v0, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    int-to-char v0, v0

    .line 135
    new-array v9, v1, [Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {v6, v5, v0, v9}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    aget-object v0, v9, v2

    .line 141
    .line 142
    check-cast v0, Ljava/lang/String;

    .line 143
    .line 144
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v5

    .line 148
    goto :goto_1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    goto :goto_4

    .line 151
    :cond_0
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    .line 152
    .line 153
    .line 154
    move-result v5

    .line 155
    shr-int/lit8 v5, v5, 0x10

    .line 156
    .line 157
    rsub-int/lit8 v5, v5, 0x8

    .line 158
    .line 159
    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    .line 160
    .line 161
    .line 162
    move-result v6

    .line 163
    rsub-int/lit8 v6, v6, 0xc

    .line 164
    .line 165
    invoke-static {v0, v0, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    int-to-char v0, v0

    .line 170
    new-array v9, v1, [Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v5, v6, v0, v9}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    aget-object v0, v9, v2

    .line 176
    .line 177
    check-cast v0, Ljava/lang/String;

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :cond_1
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    filled-new-array {v3, v5, v0}, [Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code([Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 201
    .line 202
    .line 203
    move-result v3

    .line 204
    const/4 v4, 0x4

    .line 205
    if-le v3, v4, :cond_2

    .line 206
    .line 207
    invoke-virtual {v0, v4, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_2
    :goto_2
    if-ge v3, v4, :cond_3

    .line 212
    .line 213
    add-int/lit8 v3, v3, 0x1

    .line 214
    .line 215
    const/16 v5, 0x31

    .line 216
    .line 217
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    .line 219
    .line 220
    sget v5, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    .line 221
    .line 222
    add-int/lit8 v5, v5, 0xb

    .line 223
    .line 224
    rem-int/lit16 v5, v5, 0x80

    .line 225
    .line 226
    sput v5, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    .line 227
    .line 228
    goto :goto_2

    .line 229
    :cond_3
    :goto_3
    :try_start_2
    const-string/jumbo v3, "\uf4fc\ub32f\u7b4b"

    .line 230
    .line 231
    .line 232
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    .line 233
    .line 234
    .line 235
    move-result-wide v4

    .line 236
    cmp-long v4, v4, v7

    .line 237
    .line 238
    add-int/lit16 v4, v4, 0x47dc

    .line 239
    .line 240
    new-array v5, v1, [Ljava/lang/Object;

    .line 241
    .line 242
    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    aget-object v3, v5, v2

    .line 246
    .line 247
    check-cast v3, Ljava/lang/String;

    .line 248
    .line 249
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v3

    .line 253
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 260
    return-object v0

    .line 261
    :goto_4
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    int-to-byte v3, v3

    .line 266
    const v4, 0xe044

    .line 267
    .line 268
    .line 269
    sub-int/2addr v4, v3

    .line 270
    new-array v3, v1, [Ljava/lang/Object;

    .line 271
    .line 272
    const-string/jumbo v5, "\uf4b7\u14b5\u3478\u542c\u75d5\u95fc\ub542\ud511\uf6c6\u16da\u3643\u5601\u77c2\u977a\ub734\ud0f8\uf0e7\u1065\u3028\u51e6\u7196\u914c\ub118\ud2d0\uf286\u1244\u33f2\u53f0\u7370\u9323\ubce7\udcec\ufc5c\u1c17\u3dc4\u5dd8\u7d54\u9d07\ubedd\ude7c"

    .line 273
    .line 274
    .line 275
    invoke-static {v5, v4, v3}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    aget-object v3, v3, v2

    .line 279
    .line 280
    check-cast v3, Ljava/lang/String;

    .line 281
    .line 282
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v3

    .line 286
    invoke-static {v3, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 287
    .line 288
    .line 289
    new-instance v3, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    add-int/lit8 v4, v4, 0x2a

    .line 299
    .line 300
    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 301
    .line 302
    .line 303
    move-result v5

    .line 304
    const/4 v6, 0x0

    .line 305
    cmpl-float v5, v5, v6

    .line 306
    .line 307
    rsub-int/lit8 v5, v5, 0x14

    .line 308
    .line 309
    invoke-static {v2}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 310
    .line 311
    .line 312
    move-result v7

    .line 313
    cmpl-float v6, v7, v6

    .line 314
    .line 315
    int-to-char v6, v6

    .line 316
    new-array v7, v1, [Ljava/lang/Object;

    .line 317
    .line 318
    invoke-static {v4, v5, v6, v7}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 319
    .line 320
    .line 321
    aget-object v4, v7, v2

    .line 322
    .line 323
    check-cast v4, Ljava/lang/String;

    .line 324
    .line 325
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    shr-int/lit8 v0, v0, 0x8

    .line 347
    .line 348
    add-int/lit16 v0, v0, 0x2e7f

    .line 349
    .line 350
    new-array v1, v1, [Ljava/lang/Object;

    .line 351
    .line 352
    const-string/jumbo v3, "\uf4fc\uda8d\ua80f\u7fd3\u4d52\u1cd5\ue254"

    .line 353
    .line 354
    .line 355
    invoke-static {v3, v0, v1}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 356
    .line 357
    .line 358
    aget-object v0, v1, v2

    .line 359
    .line 360
    check-cast v0, Ljava/lang/String;

    .line 361
    .line 362
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 363
    .line 364
    .line 365
    move-result-object v0

    .line 366
    return-object v0
.end method

.method private static a(IIC[Ljava/lang/Object;)V
    .locals 12

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFk1mSDK;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1mSDK;-><init>()V

    .line 4
    .line 5
    .line 6
    new-array v1, p0, [J

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput v2, v0, Lcom/appsflyer/internal/AFk1mSDK;->getMediationNetwork:I

    .line 10
    .line 11
    sget v3, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x6f

    .line 14
    .line 15
    rem-int/lit16 v3, v3, 0x80

    .line 16
    .line 17
    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    .line 18
    .line 19
    :goto_0
    iget v3, v0, Lcom/appsflyer/internal/AFk1mSDK;->getMediationNetwork:I

    .line 20
    .line 21
    if-ge v3, p0, :cond_0

    .line 22
    .line 23
    sget-object v4, Lcom/appsflyer/internal/AFc1iSDK;->getMediationNetwork:[C

    .line 24
    .line 25
    add-int v5, p1, v3

    .line 26
    .line 27
    aget-char v4, v4, v5

    .line 28
    .line 29
    int-to-long v4, v4

    .line 30
    const-wide v6, -0x23c534f92ee84d1bL    # -1.9474242828924747E136

    .line 31
    .line 32
    .line 33
    .line 34
    .line 35
    xor-long/2addr v4, v6

    .line 36
    long-to-int v4, v4

    .line 37
    int-to-char v4, v4

    .line 38
    int-to-long v4, v4

    .line 39
    int-to-long v8, v3

    .line 40
    sget-wide v10, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code:J

    .line 41
    .line 42
    xor-long/2addr v6, v10

    .line 43
    mul-long/2addr v8, v6

    .line 44
    xor-long/2addr v4, v8

    .line 45
    int-to-long v6, p2

    .line 46
    xor-long/2addr v4, v6

    .line 47
    aput-wide v4, v1, v3

    .line 48
    .line 49
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    iput v3, v0, Lcom/appsflyer/internal/AFk1mSDK;->getMediationNetwork:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    new-array p1, p0, [C

    .line 55
    .line 56
    iput v2, v0, Lcom/appsflyer/internal/AFk1mSDK;->getMediationNetwork:I

    .line 57
    .line 58
    sget p2, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 59
    .line 60
    add-int/lit8 p2, p2, 0x6f

    .line 61
    .line 62
    rem-int/lit16 p2, p2, 0x80

    .line 63
    .line 64
    sput p2, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    .line 65
    .line 66
    :goto_1
    iget p2, v0, Lcom/appsflyer/internal/AFk1mSDK;->getMediationNetwork:I

    .line 67
    .line 68
    if-ge p2, p0, :cond_2

    .line 69
    .line 70
    sget v3, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 71
    .line 72
    add-int/lit8 v3, v3, 0x4b

    .line 73
    .line 74
    rem-int/lit16 v4, v3, 0x80

    .line 75
    .line 76
    sput v4, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    .line 77
    .line 78
    rem-int/lit8 v3, v3, 0x2

    .line 79
    .line 80
    if-eqz v3, :cond_1

    .line 81
    .line 82
    aget-wide v3, v1, p2

    .line 83
    .line 84
    long-to-int v3, v3

    .line 85
    int-to-char v3, v3

    .line 86
    aput-char v3, p1, p2

    .line 87
    .line 88
    div-int/lit8 p2, p2, 0x0

    .line 89
    .line 90
    :goto_2
    iput p2, v0, Lcom/appsflyer/internal/AFk1mSDK;->getMediationNetwork:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    aget-wide v3, v1, p2

    .line 94
    .line 95
    long-to-int v3, v3

    .line 96
    int-to-char v3, v3

    .line 97
    aput-char v3, p1, p2

    .line 98
    .line 99
    add-int/lit8 p2, p2, 0x1

    .line 100
    .line 101
    goto :goto_2

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 105
    .line 106
    .line 107
    aput-object p0, p3, v2

    .line 108
    .line 109
    return-void
.end method

.method private static b(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 11

    .line 1
    sget v0, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x39

    .line 4
    .line 5
    rem-int/lit16 v0, v0, 0x80

    .line 6
    .line 7
    sput v0, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_0
    check-cast p0, [C

    .line 16
    .line 17
    new-instance v0, Lcom/appsflyer/internal/AFk1nSDK;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/appsflyer/internal/AFk1nSDK;-><init>()V

    .line 20
    .line 21
    .line 22
    iput p1, v0, Lcom/appsflyer/internal/AFk1nSDK;->AFAdRevenueData:I

    .line 23
    .line 24
    array-length p1, p0

    .line 25
    new-array v1, p1, [J

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    iput v2, v0, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:I

    .line 29
    .line 30
    sget v3, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1d

    .line 33
    .line 34
    rem-int/lit16 v3, v3, 0x80

    .line 35
    .line 36
    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 37
    .line 38
    :goto_0
    iget v3, v0, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:I

    .line 39
    .line 40
    array-length v4, p0

    .line 41
    if-ge v3, v4, :cond_1

    .line 42
    .line 43
    sget v4, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 44
    .line 45
    add-int/lit8 v4, v4, 0x55

    .line 46
    .line 47
    rem-int/lit16 v4, v4, 0x80

    .line 48
    .line 49
    sput v4, Lcom/appsflyer/internal/AFc1iSDK;->$10:I

    .line 50
    .line 51
    aget-char v5, p0, v3

    .line 52
    .line 53
    int-to-long v5, v5

    .line 54
    int-to-long v7, v3

    .line 55
    iget v9, v0, Lcom/appsflyer/internal/AFk1nSDK;->AFAdRevenueData:I

    .line 56
    .line 57
    int-to-long v9, v9

    .line 58
    mul-long/2addr v7, v9

    .line 59
    xor-long/2addr v5, v7

    .line 60
    sget-wide v7, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:J

    .line 61
    .line 62
    const-wide v9, -0x40d670a12214c690L    # -1.9500763933994912E-4

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    xor-long/2addr v7, v9

    .line 68
    xor-long/2addr v5, v7

    .line 69
    aput-wide v5, v1, v3

    .line 70
    .line 71
    add-int/lit8 v3, v3, 0x1

    .line 72
    .line 73
    iput v3, v0, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:I

    .line 74
    .line 75
    add-int/lit8 v4, v4, 0x65

    .line 76
    .line 77
    rem-int/lit16 v4, v4, 0x80

    .line 78
    .line 79
    sput v4, Lcom/appsflyer/internal/AFc1iSDK;->$11:I

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    new-array p1, p1, [C

    .line 83
    .line 84
    iput v2, v0, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:I

    .line 85
    .line 86
    :goto_1
    iget v3, v0, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:I

    .line 87
    .line 88
    array-length v4, p0

    .line 89
    if-ge v3, v4, :cond_2

    .line 90
    .line 91
    aget-wide v4, v1, v3

    .line 92
    .line 93
    long-to-int v4, v4

    .line 94
    int-to-char v4, v4

    .line 95
    aput-char v4, p1, v3

    .line 96
    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 98
    .line 99
    iput v3, v0, Lcom/appsflyer/internal/AFk1nSDK;->getRevenue:I

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    .line 105
    .line 106
    .line 107
    aput-object p0, p2, v2

    .line 108
    .line 109
    return-void
.end method

.method private static varargs getCurrencyIso4217Code([Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 8
    .param p0    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    array-length v1, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x3

    if-ge v2, v3, :cond_0

    aget-object v3, p0, v2

    .line 3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    .line 4
    sget v3, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v3, v3, 0x57

    rem-int/lit16 v3, v3, 0x80

    sput v3, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v1

    :goto_1
    if-ge v4, v0, :cond_3

    const/4 v5, 0x0

    move v6, v1

    :goto_2
    if-ge v6, v3, :cond_2

    .line 8
    aget-object v7, p0, v6

    .line 9
    invoke-virtual {v7, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-nez v5, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    xor-int/2addr v7, v5

    :goto_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 13
    sget v5, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    add-int/lit8 v5, v5, 0x55

    rem-int/lit16 v5, v5, 0x80

    sput v5, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method static getCurrencyIso4217Code()V
    .locals 2

    const/16 v0, 0xb8

    .line 14
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/appsflyer/internal/AFc1iSDK;->getMediationNetwork:[C

    const-wide v0, 0x4447fe275cdbdecaL    # 8.85177644408901E20

    sput-wide v0, Lcom/appsflyer/internal/AFc1iSDK;->getCurrencyIso4217Code:J

    const-wide v0, 0x23dcaa397ae6cde7L    # 6.162160406582387E-136

    sput-wide v0, Lcom/appsflyer/internal/AFc1iSDK;->AFAdRevenueData:J

    return-void

    :array_0
    .array-data 2
        -0x7fd7s
        -0x13ffs
        0x5849s
        -0x3b4fs
        0x309ds
        -0x6332s
        0x937s
        0x7572s
        -0x1ebcs
        0x4d8es
        -0x460ds
        0x263ds
        -0x4d55s
        -0x217bs
        0x6ae4s
        -0x9d6s
        0x20bs
        -0x51b1s
        0x3bb1s
        0x47e8s
        -0x4d7ds
        -0x2155s
        0x6ad2s
        -0x9fcs
        0x23cs
        -0x5196s
        0x3bdfs
        0x47cbs
        -0x2c08s
        0x7f2cs
        -0x74aas
        0x1492s
        -0x5f50s
        -0x330es
        0x581es
        -0x1bb6s
        0x7072s
        -0x6226s
        0x29c0s
        -0x4a03s
        -0x3ed1s
        0x6d1es
        -0x17cs
        0xab9s
        -0x690cs
        0x2252s
        0x4e54s
        -0x2587s
        0x67b5s
        -0xc22s
        0x1f47s
        -0x54cfs
        0x377ds
        0x4089s
        -0x1342s
        0x78f8s
        -0x7bf3s
        0x1047s
        -0x4390s
        -0x365es
        0x5587s
        -0x1ebes
        -0x6c3es
        -0xbs
        0x4b9bs
        -0x28b2s
        0x2366s
        -0x70d6s
        -0x4d38s
        -0x2148s
        0x6ad8s
        -0x9bas
        0x273s
        -0x4d7ds
        -0x2155s
        0x6ad2s
        -0x9fcs
        0x23cs
        -0x5196s
        0x3bdfs
        0x47cbs
        -0x2c08s
        0x7f2cs
        -0x74aas
        0x1492s
        -0x5f50s
        -0x330es
        0x581es
        -0x1bb6s
        0x7072s
        -0x6226s
        0x29c0s
        -0x4a03s
        -0x3ed1s
        0x6d1es
        -0x167s
        0xabds
        -0x691fs
        0x2207s
        0x4e46s
        -0x25d0s
        0x67b6s
        -0xc21s
        0x1f13s
        -0x54c4s
        0x3725s
        0x408fs
        -0x135ds
        0x78ebs
        -0x7be4s
        0x105es
        -0x4395s
        -0x365bs
        0x55d2s
        -0x1ef4s
        0xd69s
        -0x66e0s
        -0x4d7cs
        -0x215cs
        0x6adfs
        -0x9e6s
        0x236s
        -0x5199s
        0x3b9bs
        0x4782s
        -0x2c0cs
        0x7f2cs
        -0x74b9s
        0x1485s
        -0x5f41s
        -0x330es
        0x5859s
        -0x1bbbs
        0x7076s
        -0x6272s
        0x29c2s
        -0x4a09s
        -0x3ed9s
        0x6d10s
        -0x153s
        0xa9ds
        -0x6927s
        0x2226s
        0x4e66s
        -0x25bes
        0x6798s
        -0xc17s
        0x1f24s
        -0x54e4s
        0x3744s
        0x40a4s
        -0x1364s
        0x78cds
        -0x7bc3s
        -0x4d6fs
        -0x2151s
        0x6ad6s
        -0x9e8s
        0x23cs
        -0x5184s
        0x3b9es
        0x47d8s
        -0x2c18s
        0x7f30s
        -0x74aas
        -0x4d79s
        0x78c9s
        0x14b3s
        -0x4d7es
        -0x2151s
        0x6acfs
        -0x9c2s
        0x26bs
        -0x51a8s
        0x3b9es
        0x47c0s
        -0x2c18s
        0x7f27s
        -0x74eds
        0x1485s
        -0x5f5ds
        -0x330cs
        0x5818s
        -0x1baas
    .end array-data
.end method

.method private getMediationNetwork()Ljava/lang/String;
    .locals 18

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const/16 v3, 0x30

    .line 6
    .line 7
    const-wide/16 v4, 0x0

    .line 8
    .line 9
    const/16 v6, 0x10

    .line 10
    .line 11
    const/4 v7, 0x1

    .line 12
    const/4 v8, 0x0

    .line 13
    :try_start_0
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 14
    .line 15
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    .line 16
    .line 17
    .line 18
    move-result v9

    .line 19
    shr-int/2addr v9, v6

    .line 20
    rsub-int/lit8 v9, v9, 0xc

    .line 21
    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getFadingEdgeLength()I

    .line 23
    .line 24
    .line 25
    move-result v10

    .line 26
    shr-int/2addr v10, v6

    .line 27
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    .line 28
    .line 29
    .line 30
    move-result-wide v11

    .line 31
    cmp-long v11, v11, v4

    .line 32
    .line 33
    add-int/lit16 v11, v11, 0x32ac

    .line 34
    .line 35
    int-to-char v11, v11

    .line 36
    new-array v12, v7, [Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {v9, v10, v11, v12}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    aget-object v9, v12, v8

    .line 42
    .line 43
    check-cast v9, Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v9, v1, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 58
    .line 59
    const-string/jumbo v10, "\uf4f1\u379b\u722f\ubecb\uf977\u2422\u60a8\ua321\uefd1\u2a79\u550d\u9184\udc4a\u18c2\u5b74"

    .line 60
    .line 61
    .line 62
    invoke-static {v8}, Landroid/graphics/Color;->blue(I)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    const v12, 0xc365

    .line 67
    .line 68
    .line 69
    add-int/2addr v11, v12

    .line 70
    new-array v12, v7, [Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {v10, v11, v12}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    aget-object v10, v12, v8

    .line 76
    .line 77
    check-cast v10, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v10

    .line 83
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v9

    .line 91
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    .line 92
    .line 93
    .line 94
    move-result v10

    .line 95
    shr-int/lit8 v10, v10, 0x8

    .line 96
    .line 97
    add-int/lit8 v10, v10, 0x6

    .line 98
    .line 99
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    shr-int/2addr v11, v6

    .line 104
    rsub-int/lit8 v11, v11, 0x3e

    .line 105
    .line 106
    invoke-static {v8, v8}, Landroid/view/KeyEvent;->getDeadChar(II)I

    .line 107
    .line 108
    .line 109
    move-result v12

    .line 110
    add-int/lit16 v12, v12, 0x2111

    .line 111
    .line 112
    int-to-char v12, v12

    .line 113
    new-array v13, v7, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {v10, v11, v12, v13}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 116
    .line 117
    .line 118
    aget-object v10, v13, v8

    .line 119
    .line 120
    check-cast v10, Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v10

    .line 126
    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    .line 127
    .line 128
    .line 129
    move-result v11

    .line 130
    rsub-int/lit8 v11, v11, 0x35

    .line 131
    .line 132
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    const v13, 0x1000044

    .line 137
    .line 138
    .line 139
    add-int/2addr v12, v13

    .line 140
    invoke-static {v8}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 141
    .line 142
    .line 143
    move-result v13

    .line 144
    const/4 v14, 0x0

    .line 145
    cmpl-float v13, v13, v14

    .line 146
    .line 147
    int-to-char v13, v13

    .line 148
    new-array v14, v7, [Ljava/lang/Object;

    .line 149
    .line 150
    invoke-static {v11, v12, v13, v14}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    aget-object v11, v14, v8

    .line 154
    .line 155
    check-cast v11, Ljava/lang/String;

    .line 156
    .line 157
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    invoke-virtual {v10, v11, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    new-instance v11, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1dSDK;->getCurrencyIso4217Code(Ljava/lang/String;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    new-instance v9, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_0
    move-object v9, v0

    .line 207
    goto :goto_1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    shr-int/2addr v9, v6

    .line 214
    rsub-int v9, v9, 0x535d

    .line 215
    .line 216
    new-array v10, v7, [Ljava/lang/Object;

    .line 217
    .line 218
    const-string/jumbo v11, "\uf4f0\ua7af\u5259\u0ed6\ub9d1\u5410\u00d8\ub370\u6e0a\u1ab7\ub515\u600e\u1caa\ucf47\u7bed\u1681\uc123\u7d9a\u287a\udb15\u77bd\u2253\udd1b\u89ad\u245b\ud0eb\u838b\u3e3f\uea9b\u8575\u3014\uecb2\u9f17\u4a1c\ue6ac\u914c\u4df6\uf883"

    .line 219
    .line 220
    .line 221
    invoke-static {v11, v9, v10}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 222
    .line 223
    .line 224
    aget-object v9, v10, v8

    .line 225
    .line 226
    check-cast v9, Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v9

    .line 232
    invoke-static {v9, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    new-instance v9, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 241
    .line 242
    .line 243
    move-result v10

    .line 244
    rsub-int/lit8 v10, v10, 0x2c

    .line 245
    .line 246
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    .line 247
    .line 248
    .line 249
    move-result v11

    .line 250
    shr-int/lit8 v11, v11, 0x8

    .line 251
    .line 252
    rsub-int/lit8 v11, v11, 0x49

    .line 253
    .line 254
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    .line 255
    .line 256
    .line 257
    move-result v12

    .line 258
    int-to-char v12, v12

    .line 259
    new-array v13, v7, [Ljava/lang/Object;

    .line 260
    .line 261
    invoke-static {v10, v11, v12, v13}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    aget-object v10, v13, v8

    .line 265
    .line 266
    check-cast v10, Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v10

    .line 272
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    .line 294
    .line 295
    .line 296
    move-result-wide v9

    .line 297
    cmp-long v9, v9, v4

    .line 298
    .line 299
    add-int/lit16 v9, v9, 0x50b6

    .line 300
    .line 301
    new-array v10, v7, [Ljava/lang/Object;

    .line 302
    .line 303
    const-string/jumbo v11, "\uf4f5\ua441\u559b\u06d7\ub62a\u6761\u10ed\uc1a3\u711b\u22c8\ud3d5\u8373\u3c32\uedba\u9ea7\u4e1e\uffd6\ua888"

    .line 304
    .line 305
    .line 306
    invoke-static {v11, v9, v10}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    aget-object v9, v10, v8

    .line 310
    .line 311
    check-cast v9, Ljava/lang/String;

    .line 312
    .line 313
    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v9

    .line 317
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v0

    .line 324
    goto :goto_0

    .line 325
    :goto_1
    :try_start_1
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:Landroid/content/Context;

    .line 326
    .line 327
    new-instance v10, Landroid/content/IntentFilter;

    .line 328
    .line 329
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarSize()I

    .line 330
    .line 331
    .line 332
    move-result v11

    .line 333
    shr-int/lit8 v11, v11, 0x8

    .line 334
    .line 335
    rsub-int/lit8 v11, v11, 0x25

    .line 336
    .line 337
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 338
    .line 339
    .line 340
    move-result v12

    .line 341
    shr-int/lit8 v12, v12, 0x16

    .line 342
    .line 343
    rsub-int/lit8 v12, v12, 0x75

    .line 344
    .line 345
    invoke-static {v2, v8}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    .line 346
    .line 347
    .line 348
    move-result v13

    .line 349
    int-to-char v13, v13

    .line 350
    new-array v14, v7, [Ljava/lang/Object;

    .line 351
    .line 352
    invoke-static {v11, v12, v13, v14}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    aget-object v11, v14, v8

    .line 356
    .line 357
    check-cast v11, Ljava/lang/String;

    .line 358
    .line 359
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v11

    .line 363
    invoke-direct {v10, v11}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const/4 v11, 0x0

    .line 367
    invoke-virtual {v0, v11, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    const/16 v10, -0xa8c

    .line 372
    .line 373
    if-eqz v0, :cond_0

    .line 374
    .line 375
    invoke-static {}, Landroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    .line 376
    .line 377
    .line 378
    move-result-wide v11

    .line 379
    cmp-long v11, v11, v4

    .line 380
    .line 381
    add-int/lit8 v11, v11, 0xa

    .line 382
    .line 383
    invoke-static {v8, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 384
    .line 385
    .line 386
    move-result v12

    .line 387
    add-int/lit16 v12, v12, 0x9a

    .line 388
    .line 389
    invoke-static {v8, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    .line 390
    .line 391
    .line 392
    move-result v13

    .line 393
    int-to-char v13, v13

    .line 394
    new-array v14, v7, [Ljava/lang/Object;

    .line 395
    .line 396
    invoke-static {v11, v12, v13, v14}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 397
    .line 398
    .line 399
    aget-object v11, v14, v8

    .line 400
    .line 401
    check-cast v11, Ljava/lang/String;

    .line 402
    .line 403
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v11

    .line 407
    invoke-virtual {v0, v11, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 408
    .line 409
    .line 410
    move-result v10

    .line 411
    goto :goto_2

    .line 412
    :catch_1
    move-exception v0

    .line 413
    goto/16 :goto_6

    .line 414
    .line 415
    :cond_0
    :goto_2
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:Landroid/content/Context;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 418
    .line 419
    .line 420
    move-result-object v0

    .line 421
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 422
    .line 423
    if-eqz v0, :cond_1

    .line 424
    .line 425
    const-string/jumbo v11, "\uf4ef\udfc6\ua273"

    .line 426
    .line 427
    .line 428
    invoke-static {v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    .line 429
    .line 430
    .line 431
    move-result v12

    .line 432
    rsub-int v12, v12, 0x2b68

    .line 433
    .line 434
    new-array v13, v7, [Ljava/lang/Object;

    .line 435
    .line 436
    invoke-static {v11, v12, v13}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 437
    .line 438
    .line 439
    aget-object v11, v13, v8

    .line 440
    .line 441
    check-cast v11, Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 448
    .line 449
    .line 450
    move-result v0

    .line 451
    if-eqz v0, :cond_1

    .line 452
    .line 453
    move v0, v7

    .line 454
    goto :goto_3

    .line 455
    :cond_1
    move v0, v8

    .line 456
    :goto_3
    iget-object v11, v1, Lcom/appsflyer/internal/AFc1iSDK;->getRevenue:Landroid/content/Context;

    .line 457
    .line 458
    const-string/jumbo v12, "\uf4e4\u971b\u332b\udf5f\u7b5c\u0768"

    .line 459
    .line 460
    .line 461
    invoke-static {v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    .line 462
    .line 463
    .line 464
    move-result v13

    .line 465
    add-int/lit16 v13, v13, 0x63ea

    .line 466
    .line 467
    new-array v14, v7, [Ljava/lang/Object;

    .line 468
    .line 469
    invoke-static {v12, v13, v14}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 470
    .line 471
    .line 472
    aget-object v12, v14, v8

    .line 473
    .line 474
    check-cast v12, Ljava/lang/String;

    .line 475
    .line 476
    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v12

    .line 480
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v11

    .line 484
    check-cast v11, Landroid/hardware/SensorManager;

    .line 485
    .line 486
    const/4 v12, -0x1

    .line 487
    invoke-virtual {v11, v12}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    .line 488
    .line 489
    .line 490
    move-result-object v11

    .line 491
    invoke-interface {v11}, Ljava/util/List;->size()I

    .line 492
    .line 493
    .line 494
    move-result v11

    .line 495
    new-instance v13, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-static {v8}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 501
    .line 502
    .line 503
    move-result-wide v14

    .line 504
    cmp-long v4, v14, v4

    .line 505
    .line 506
    add-int/2addr v4, v7

    .line 507
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 508
    .line 509
    .line 510
    move-result v5

    .line 511
    rsub-int v5, v5, 0xa5

    .line 512
    .line 513
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 514
    .line 515
    .line 516
    move-result-wide v14

    .line 517
    const-wide/16 v16, -0x1

    .line 518
    .line 519
    cmp-long v14, v14, v16

    .line 520
    .line 521
    add-int/2addr v14, v12

    .line 522
    int-to-char v12, v14

    .line 523
    new-array v14, v7, [Ljava/lang/Object;

    .line 524
    .line 525
    invoke-static {v4, v5, v12, v14}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 526
    .line 527
    .line 528
    aget-object v4, v14, v8

    .line 529
    .line 530
    check-cast v4, Ljava/lang/String;

    .line 531
    .line 532
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 533
    .line 534
    .line 535
    move-result-object v4

    .line 536
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    .line 538
    .line 539
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    const-string/jumbo v4, "\uf4b1\uc57e"

    .line 543
    .line 544
    .line 545
    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    add-int/lit16 v5, v5, 0x3191

    .line 550
    .line 551
    new-array v10, v7, [Ljava/lang/Object;

    .line 552
    .line 553
    invoke-static {v4, v5, v10}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 554
    .line 555
    .line 556
    aget-object v4, v10, v8

    .line 557
    .line 558
    check-cast v4, Ljava/lang/String;

    .line 559
    .line 560
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v4

    .line 564
    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-static {v8, v8}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 571
    .line 572
    .line 573
    move-result v0

    .line 574
    add-int/lit8 v0, v0, 0x2

    .line 575
    .line 576
    invoke-static {v8, v8, v8}, Landroid/graphics/Color;->rgb(III)I

    .line 577
    .line 578
    .line 579
    move-result v4

    .line 580
    const v5, -0xffff5a

    .line 581
    .line 582
    .line 583
    sub-int/2addr v5, v4

    .line 584
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    .line 585
    .line 586
    .line 587
    move-result v4

    .line 588
    shr-int/lit8 v4, v4, 0x8

    .line 589
    .line 590
    const v10, 0xca0a

    .line 591
    .line 592
    .line 593
    add-int/2addr v4, v10

    .line 594
    int-to-char v4, v4

    .line 595
    new-array v10, v7, [Ljava/lang/Object;

    .line 596
    .line 597
    invoke-static {v0, v5, v4, v10}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 598
    .line 599
    .line 600
    aget-object v0, v10, v8

    .line 601
    .line 602
    check-cast v0, Ljava/lang/String;

    .line 603
    .line 604
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 605
    .line 606
    .line 607
    move-result-object v0

    .line 608
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 612
    .line 613
    .line 614
    const-string/jumbo v0, "\uf4b1\u8bd6"

    .line 615
    .line 616
    .line 617
    invoke-static {v8, v8, v8}, Landroid/view/View;->resolveSizeAndState(III)I

    .line 618
    .line 619
    .line 620
    move-result v4

    .line 621
    rsub-int v4, v4, 0x7f31

    .line 622
    .line 623
    new-array v5, v7, [Ljava/lang/Object;

    .line 624
    .line 625
    invoke-static {v0, v4, v5}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 626
    .line 627
    .line 628
    aget-object v0, v5, v8

    .line 629
    .line 630
    check-cast v0, Ljava/lang/String;

    .line 631
    .line 632
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    iget-object v0, v1, Lcom/appsflyer/internal/AFc1iSDK;->getMonetizationNetwork:Ljava/util/Map;

    .line 640
    .line 641
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 642
    .line 643
    .line 644
    move-result v0

    .line 645
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 646
    .line 647
    .line 648
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 649
    .line 650
    .line 651
    move-result-object v0

    .line 652
    new-instance v4, Ljava/lang/StringBuilder;

    .line 653
    .line 654
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1iSDK$AFa1ySDK;->AFAdRevenueData(Ljava/lang/String;)[B

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    invoke-static {v0}, Lcom/appsflyer/internal/AFc1iSDK$AFa1ySDK;->getMediationNetwork([B)[B

    .line 665
    .line 666
    .line 667
    move-result-object v0

    .line 668
    new-instance v5, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .line 672
    .line 673
    array-length v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 674
    move v11, v8

    .line 675
    :goto_4
    if-ge v11, v10, :cond_4

    .line 676
    .line 677
    sget v12, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    .line 678
    .line 679
    add-int/lit8 v12, v12, 0x25

    .line 680
    .line 681
    rem-int/lit16 v13, v12, 0x80

    .line 682
    .line 683
    sput v13, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    .line 684
    .line 685
    rem-int/lit8 v12, v12, 0x2

    .line 686
    .line 687
    if-eqz v12, :cond_2

    .line 688
    .line 689
    :try_start_2
    aget-byte v12, v0, v11

    .line 690
    .line 691
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 692
    .line 693
    .line 694
    move-result-object v12

    .line 695
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 696
    .line 697
    .line 698
    move-result v13

    .line 699
    if-ne v13, v7, :cond_3

    .line 700
    .line 701
    goto :goto_5

    .line 702
    :cond_2
    aget-byte v12, v0, v11

    .line 703
    .line 704
    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 705
    .line 706
    .line 707
    move-result-object v12

    .line 708
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    .line 709
    .line 710
    .line 711
    move-result v13

    .line 712
    if-ne v13, v7, :cond_3

    .line 713
    .line 714
    :goto_5
    const-string v13, "0"

    .line 715
    .line 716
    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 717
    .line 718
    .line 719
    move-result-object v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 720
    sget v13, Lcom/appsflyer/internal/AFc1iSDK;->component1:I

    .line 721
    .line 722
    add-int/lit8 v13, v13, 0x45

    .line 723
    .line 724
    rem-int/lit16 v13, v13, 0x80

    .line 725
    .line 726
    sput v13, Lcom/appsflyer/internal/AFc1iSDK;->areAllFieldsValid:I

    .line 727
    .line 728
    :cond_3
    :try_start_3
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    add-int/lit8 v11, v11, 0x1

    .line 732
    .line 733
    goto :goto_4

    .line 734
    :cond_4
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    .line 740
    .line 741
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 742
    .line 743
    .line 744
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 745
    goto :goto_7

    .line 746
    :goto_6
    invoke-static {v8}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 747
    .line 748
    .line 749
    move-result v4

    .line 750
    rsub-int/lit8 v4, v4, 0x10

    .line 751
    .line 752
    invoke-static {}, Landroid/view/ViewConfiguration;->getWindowTouchSlop()I

    .line 753
    .line 754
    .line 755
    move-result v5

    .line 756
    shr-int/lit8 v5, v5, 0x8

    .line 757
    .line 758
    add-int/lit16 v5, v5, 0xa8

    .line 759
    .line 760
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 761
    .line 762
    .line 763
    move-result v10

    .line 764
    shr-int/2addr v10, v6

    .line 765
    int-to-char v10, v10

    .line 766
    new-array v11, v7, [Ljava/lang/Object;

    .line 767
    .line 768
    invoke-static {v4, v5, v10, v11}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 769
    .line 770
    .line 771
    aget-object v4, v11, v8

    .line 772
    .line 773
    check-cast v4, Ljava/lang/String;

    .line 774
    .line 775
    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 776
    .line 777
    .line 778
    move-result-object v4

    .line 779
    invoke-static {v4, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 780
    .line 781
    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    .line 783
    .line 784
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 785
    .line 786
    .line 787
    invoke-static {v8, v8}, Landroid/view/KeyEvent;->getDeadChar(II)I

    .line 788
    .line 789
    .line 790
    move-result v5

    .line 791
    add-int/lit8 v5, v5, 0x2c

    .line 792
    .line 793
    invoke-static {v2, v3}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    .line 794
    .line 795
    .line 796
    move-result v2

    .line 797
    add-int/lit8 v2, v2, 0x4a

    .line 798
    .line 799
    invoke-static {v8, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 800
    .line 801
    .line 802
    move-result v3

    .line 803
    int-to-char v3, v3

    .line 804
    new-array v10, v7, [Ljava/lang/Object;

    .line 805
    .line 806
    invoke-static {v5, v2, v3, v10}, Lcom/appsflyer/internal/AFc1iSDK;->a(IIC[Ljava/lang/Object;)V

    .line 807
    .line 808
    .line 809
    aget-object v2, v10, v8

    .line 810
    .line 811
    check-cast v2, Ljava/lang/String;

    .line 812
    .line 813
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v2

    .line 817
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 821
    .line 822
    .line 823
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afRDLog(Ljava/lang/String;)V

    .line 828
    .line 829
    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    .line 831
    .line 832
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 833
    .line 834
    .line 835
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    .line 837
    .line 838
    invoke-static {}, Landroid/view/ViewConfiguration;->getJumpTapTimeout()I

    .line 839
    .line 840
    .line 841
    move-result v2

    .line 842
    shr-int/2addr v2, v6

    .line 843
    const v3, 0xba41

    .line 844
    .line 845
    .line 846
    add-int/2addr v2, v3

    .line 847
    new-array v3, v7, [Ljava/lang/Object;

    .line 848
    .line 849
    const-string/jumbo v4, "\uf4f1\u4ee6\u8064\uda64\u1de2\u57e3\ua961\ue361\u26ef\u78ec\ub22f\uf43f\u4ff3\u81ae\udb78\u1d35"

    .line 850
    .line 851
    .line 852
    invoke-static {v4, v2, v3}, Lcom/appsflyer/internal/AFc1iSDK;->b(Ljava/lang/String;I[Ljava/lang/Object;)V

    .line 853
    .line 854
    .line 855
    aget-object v2, v3, v8

    .line 856
    .line 857
    check-cast v2, Ljava/lang/String;

    .line 858
    .line 859
    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    .line 860
    .line 861
    .line 862
    move-result-object v2

    .line 863
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v0

    .line 870
    :goto_7
    return-object v0
.end method
