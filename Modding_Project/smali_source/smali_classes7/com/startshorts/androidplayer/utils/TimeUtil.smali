.class public final Lcom/startshorts/androidplayer/utils/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTimeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeUtil.kt\ncom/startshorts/androidplayer/utils/TimeUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1#2:247\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/utils/TimeUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    new-instance v0, Lfk/f0;

    .line 9
    .line 10
    invoke-direct {v0}, Lfk/f0;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->b:Lms/i;

    .line 18
    .line 19
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

.method public static synthetic a()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/utils/TimeUtil;->p()Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x4

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/utils/TimeUtil;->d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private final j()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/SimpleDateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic l(Lcom/startshorts/androidplayer/utils/TimeUtil;Ljava/util/Date;Ljava/lang/String;ILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/utils/TimeUtil;->k(Ljava/util/Date;Ljava/lang/String;)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private static final p()Ljava/text/SimpleDateFormat;
    .locals 3

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->MONTH_DAY_YEAR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->get()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final b()I
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    long-to-int v0, v0

    .line 14
    return v0
.end method

.method public final c(JZ)Ljava/lang/String;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    :try_start_0
    div-long v2, p1, v0

    .line 5
    .line 6
    mul-long v4, v2, v0

    .line 7
    .line 8
    sub-long/2addr p1, v4

    .line 9
    div-long v4, v2, v0

    .line 10
    .line 11
    mul-long/2addr v0, v4

    .line 12
    sub-long/2addr v2, v0

    .line 13
    const/16 v0, 0x3a

    .line 14
    .line 15
    const/16 v1, 0x30

    .line 16
    .line 17
    const-wide/16 v6, 0xa

    .line 18
    .line 19
    if-eqz p3, :cond_3

    .line 20
    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    cmp-long v8, v4, v6

    .line 27
    .line 28
    if-gez v8, :cond_0

    .line 29
    .line 30
    new-instance v8, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    goto/16 :goto_9

    .line 48
    .line 49
    :cond_0
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    :goto_0
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    cmp-long v4, v2, v6

    .line 60
    .line 61
    if-gez v4, :cond_1

    .line 62
    .line 63
    new-instance v4, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    goto :goto_1

    .line 79
    :cond_1
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    cmp-long v0, p1, v6

    .line 90
    .line 91
    if-gez v0, :cond_2

    .line 92
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    :goto_2
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    goto/16 :goto_a

    .line 121
    .line 122
    :cond_3
    cmp-long p3, v4, v6

    .line 123
    .line 124
    if-gez p3, :cond_9

    .line 125
    .line 126
    const-wide/16 v8, 0x0

    .line 127
    .line 128
    cmp-long p3, v4, v8

    .line 129
    .line 130
    if-nez p3, :cond_6

    .line 131
    .line 132
    new-instance p3, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    cmp-long v4, v2, v6

    .line 138
    .line 139
    if-gez v4, :cond_4

    .line 140
    .line 141
    new-instance v4, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    goto :goto_3

    .line 157
    :cond_4
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 158
    .line 159
    .line 160
    move-result-object v2

    .line 161
    :goto_3
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    cmp-long v0, p1, v6

    .line 168
    .line 169
    if-gez v0, :cond_5

    .line 170
    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    .line 172
    .line 173
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    goto :goto_4

    .line 187
    :cond_5
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    :goto_4
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    goto/16 :goto_a

    .line 199
    .line 200
    :cond_6
    new-instance p3, Ljava/lang/StringBuilder;

    .line 201
    .line 202
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    cmp-long v4, v2, v6

    .line 215
    .line 216
    if-gez v4, :cond_7

    .line 217
    .line 218
    new-instance v4, Ljava/lang/StringBuilder;

    .line 219
    .line 220
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    goto :goto_5

    .line 234
    :cond_7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    :goto_5
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    cmp-long v0, p1, v6

    .line 245
    .line 246
    if-gez v0, :cond_8

    .line 247
    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    .line 249
    .line 250
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    .line 252
    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p1

    .line 263
    goto :goto_6

    .line 264
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    :goto_6
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    goto :goto_a

    .line 276
    :cond_9
    new-instance p3, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    cmp-long v4, v2, v6

    .line 288
    .line 289
    if-gez v4, :cond_a

    .line 290
    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 297
    .line 298
    .line 299
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 303
    .line 304
    .line 305
    move-result-object v2

    .line 306
    goto :goto_7

    .line 307
    :cond_a
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    :goto_7
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    cmp-long v0, p1, v6

    .line 318
    .line 319
    if-gez v0, :cond_b

    .line 320
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    .line 322
    .line 323
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 324
    .line 325
    .line 326
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p1

    .line 336
    goto :goto_8

    .line 337
    :cond_b
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 338
    .line 339
    .line 340
    move-result-object p1

    .line 341
    :goto_8
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_a

    .line 349
    :goto_9
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 350
    .line 351
    new-instance p3, Ljava/lang/StringBuilder;

    .line 352
    .line 353
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 354
    .line 355
    .line 356
    const-string v0, "format exception -> "

    .line 357
    .line 358
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object p1

    .line 365
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    const-string p3, "TimeUtil"

    .line 373
    .line 374
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    const-string p1, ""

    .line 378
    .line 379
    :goto_a
    return-object p1
.end method

.method public final d(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "language"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, 0x0

    .line 7
    .line 8
    cmp-long v0, p1, v0

    .line 9
    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    const-string p1, ""

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const-string v1, "de"

    .line 20
    .line 21
    sparse-switch v0, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto/16 :goto_0

    .line 25
    .line 26
    :sswitch_0
    const-string v0, "zh_cn"

    .line 27
    .line 28
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_1
    const-string v0, "zh"

    .line 37
    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_CHINESE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :sswitch_2
    const-string v0, "vi"

    .line 51
    .line 52
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_7

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :sswitch_3
    const-string v0, "ru"

    .line 61
    .line 62
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    if-nez v0, :cond_2

    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_RU:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 71
    .line 72
    goto/16 :goto_1

    .line 73
    .line 74
    :sswitch_4
    const-string v0, "pt"

    .line 75
    .line 76
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_7

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :sswitch_5
    const-string v0, "ms"

    .line 84
    .line 85
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-nez v0, :cond_3

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_MS:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :sswitch_6
    const-string v0, "it"

    .line 96
    .line 97
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_4

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_IT:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :sswitch_7
    const-string v0, "in"

    .line 108
    .line 109
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-nez v0, :cond_5

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_5
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_IN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 117
    .line 118
    goto :goto_1

    .line 119
    :sswitch_8
    const-string v0, "fr"

    .line 120
    .line 121
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-nez v0, :cond_6

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_FR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :sswitch_9
    const-string v0, "es"

    .line 132
    .line 133
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_7

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_VI:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :sswitch_a
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v0

    .line 147
    if-nez v0, :cond_8

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_8
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_DE:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 151
    .line 152
    goto :goto_1

    .line 153
    :sswitch_b
    const-string v0, "ar"

    .line 154
    .line 155
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    if-nez v0, :cond_9

    .line 160
    .line 161
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_EN:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_9
    sget-object v0, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->FULL_TIME_AR:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 165
    .line 166
    :goto_1
    if-eqz p4, :cond_b

    .line 167
    .line 168
    invoke-interface {p4}, Ljava/lang/CharSequence;->length()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-nez v2, :cond_a

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_a
    new-instance v2, Ljava/util/Date;

    .line 176
    .line 177
    invoke-direct {v2, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0, v2, p4, v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    :goto_2
    move-object v2, p1

    .line 185
    goto :goto_4

    .line 186
    :cond_b
    :goto_3
    new-instance p4, Ljava/util/Date;

    .line 187
    .line 188
    invoke-direct {p4, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0, p4, v0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->g(Ljava/util/Date;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    goto :goto_2

    .line 196
    :goto_4
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_c

    .line 201
    .line 202
    const/4 v6, 0x4

    .line 203
    const/4 v7, 0x0

    .line 204
    const-string v3, " "

    .line 205
    .line 206
    const-string v4, "T"

    .line 207
    .line 208
    const/4 v5, 0x0

    .line 209
    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->P(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v2

    .line 213
    :cond_c
    return-object v2

    .line 214
    nop

    .line 215
    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_b
        0xc81 -> :sswitch_a
        0xcae -> :sswitch_9
        0xccc -> :sswitch_8
        0xd25 -> :sswitch_7
        0xd2b -> :sswitch_6
        0xda6 -> :sswitch_5
        0xe04 -> :sswitch_4
        0xe43 -> :sswitch_3
        0xeb3 -> :sswitch_2
        0xf2e -> :sswitch_1
        0x6e7eb1c -> :sswitch_0
    .end sparse-switch
.end method

.method public final f(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/utils/TimeUtil;->j()Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "format(...)"

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final g(Ljava/util/Date;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "template"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->get()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string p2, "format(...)"

    .line 27
    .line 28
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method

.method public final h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;
    .locals 2
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "timeZone"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "template"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 17
    .line 18
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->get()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p3

    .line 22
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 23
    .line 24
    invoke-direct {v0, p3, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {v0, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "format(...)"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object p1
.end method

.method public final i(J)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 p2, 0x2d

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const/4 p2, 0x5

    .line 38
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    return-object p1
.end method

.method public final k(Ljava/util/Date;Ljava/lang/String;)J
    .locals 1
    .param p1    # Ljava/util/Date;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "date"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-static {p2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_1
    invoke-virtual {p2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x6

    .line 32
    const/4 v0, 0x1

    .line 33
    invoke-virtual {p2, p1, v0}, Ljava/util/Calendar;->add(II)V

    .line 34
    .line 35
    .line 36
    const/16 p1, 0xb

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-virtual {p2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    .line 42
    const/16 p1, 0xc

    .line 43
    .line 44
    invoke-virtual {p2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 45
    .line 46
    .line 47
    const/16 p1, 0xd

    .line 48
    .line 49
    invoke-virtual {p2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    return-wide p1
.end method

.method public final m(JJI)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0xb

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 25
    .line 26
    .line 27
    const/16 p4, 0xc

    .line 28
    .line 29
    invoke-virtual {v0, p4, p3}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0xd

    .line 33
    .line 34
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0xe

    .line 38
    .line 39
    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p4, p3}, Ljava/util/Calendar;->set(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    sub-long/2addr v1, v3

    .line 65
    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    int-to-long p4, p5

    .line 70
    cmp-long p1, p1, p4

    .line 71
    .line 72
    if-gez p1, :cond_0

    .line 73
    .line 74
    return p3

    .line 75
    :cond_0
    const/4 p1, 0x1

    .line 76
    return p1
.end method

.method public final n(JJI)Z
    .locals 5

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p1, v0

    .line 4
    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 12
    .line 13
    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 19
    .line 20
    .line 21
    const/16 p2, 0xb

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 25
    .line 26
    .line 27
    const/16 p4, 0xc

    .line 28
    .line 29
    invoke-virtual {v0, p4, p3}, Ljava/util/Calendar;->set(II)V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0xd

    .line 33
    .line 34
    invoke-virtual {v0, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0xe

    .line 38
    .line 39
    invoke-virtual {v0, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->set(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p4, p3}, Ljava/util/Calendar;->set(II)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->set(II)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->set(II)V

    .line 52
    .line 53
    .line 54
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide v3

    .line 64
    sub-long/2addr v1, v3

    .line 65
    invoke-virtual {p2, v1, v2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide p1

    .line 69
    invoke-static {p1, p2}, Ljava/lang/Math;->abs(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide p1

    .line 73
    long-to-int p1, p1

    .line 74
    if-eq p1, p5, :cond_0

    .line 75
    .line 76
    return p3

    .line 77
    :cond_0
    const/4 p1, 0x1

    .line 78
    return p1
.end method

.method public final o(JJ)Z
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1, p3, p4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    .line 14
    .line 15
    const/4 p2, 0x1

    .line 16
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-ne p3, p4, :cond_0

    .line 25
    .line 26
    const/4 p3, 0x2

    .line 27
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    if-ne p4, p3, :cond_0

    .line 36
    .line 37
    const/4 p3, 0x5

    .line 38
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    .line 39
    .line 40
    .line 41
    move-result p4

    .line 42
    invoke-virtual {p1, p3}, Ljava/util/Calendar;->get(I)I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-ne p4, p1, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p2, 0x0

    .line 50
    :goto_0
    return p2
.end method

.method public final q(J)I
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    long-to-int p1, p1

    .line 8
    return p1
.end method

.method public final r(Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)J
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/utils/TimeUtil$Template;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "formatTime"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "template"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->get()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 18
    .line 19
    invoke-direct {v0, p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    .line 29
    .line 30
    .line 31
    move-result-wide p1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-wide/16 p1, 0x0

    .line 34
    .line 35
    :goto_0
    return-wide p1
.end method
