.class public final Lcom/startshorts/androidplayer/manager/api/base/o;
.super Ljava/lang/Object;
.source "ApiInterceptor.kt"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/api/base/o$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nApiInterceptor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ApiInterceptor.kt\ncom/startshorts/androidplayer/manager/api/base/ApiInterceptor\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 Iterators.kt\nkotlin/collections/CollectionsKt__IteratorsKt\n*L\n1#1,404:1\n216#2,2:405\n32#3:407\n32#3,2:408\n33#3:410\n*S KotlinDebug\n*F\n+ 1 ApiInterceptor.kt\ncom/startshorts/androidplayer/manager/api/base/ApiInterceptor\n*L\n244#1:405,2\n303#1:407\n307#1:408,2\n303#1:410\n*E\n"
    }
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/manager/api/base/o$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/api/base/o$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/api/base/o;->c:Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/n;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/n;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/o;->a:Lms/i;

    .line 14
    .line 15
    const-string v8, "isD"

    .line 16
    .line 17
    const-string v9, "hasProxy"

    .line 18
    .line 19
    const-string v1, "gaid"

    .line 20
    .line 21
    const-string v2, "deviceId"

    .line 22
    .line 23
    const-string v3, "model"

    .line 24
    .line 25
    const-string/jumbo v4, "systemVersion"

    .line 26
    .line 27
    .line 28
    const-string v5, "androidVersion"

    .line 29
    .line 30
    const-string v6, "isR"

    .line 31
    .line 32
    const-string v7, "isE"

    .line 33
    .line 34
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/o;->b:Ljava/util/List;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic a()Lfe/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/api/base/o;->e()Lfe/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final b(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/Request$Builder;Ljava/lang/String;)V
    .locals 11

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/o;->c:Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 2
    .line 3
    invoke-virtual {v0, p4}, Lcom/startshorts/androidplayer/manager/api/base/o$a;->a(Ljava/lang/String;)Ljava/util/HashMap;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p1, p4}, Lcom/startshorts/androidplayer/manager/api/base/o;->f(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Ljava/util/Map$Entry;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/String;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-lez v3, :cond_0

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-lez v3, :cond_0

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {p3, v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :catch_0
    move-exception v3

    .line 59
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 60
    .line 61
    new-instance v6, Landroid/os/Bundle;

    .line 62
    .line 63
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 64
    .line 65
    .line 66
    new-instance v5, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v7, "key("

    .line 72
    .line 73
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v7, ") value("

    .line 80
    .line 81
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const/16 v7, 0x29

    .line 88
    .line 89
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    const-string v7, "content"

    .line 97
    .line 98
    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v5, "err_msg"

    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v6, v5, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 111
    .line 112
    const/4 v9, 0x4

    .line 113
    const/4 v10, 0x0

    .line 114
    const-string v5, "add_header_failed"

    .line 115
    .line 116
    const-wide/16 v7, 0x0

    .line 117
    .line 118
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    :try_start_1
    invoke-static {v1}, Ljk/v;->p(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {p3, v2, v1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_1
    const-string v0, "app/eventController/appEventReportV1"

    .line 133
    .line 134
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const-string v1, "TraceParam"

    .line 139
    .line 140
    const-string v2, "androidVersion"

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    if-eqz v0, :cond_8

    .line 144
    .line 145
    instance-of v0, p2, Lokhttp3/FormBody;

    .line 146
    .line 147
    if-eqz v0, :cond_8

    .line 148
    .line 149
    check-cast p2, Lokhttp3/FormBody;

    .line 150
    .line 151
    invoke-virtual {p2}, Lokhttp3/FormBody;->d()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    const/4 v0, 0x0

    .line 156
    move v4, v3

    .line 157
    move-object v3, v0

    .line 158
    :goto_1
    if-ge v4, p1, :cond_4

    .line 159
    .line 160
    invoke-virtual {p2, v4}, Lokhttp3/FormBody;->c(I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-virtual {p2, v4}, Lokhttp3/FormBody;->e(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    const-string v7, "eventList"

    .line 169
    .line 170
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    move-result v7

    .line 174
    if-eqz v7, :cond_2

    .line 175
    .line 176
    move-object v0, v6

    .line 177
    goto :goto_2

    .line 178
    :cond_2
    const-string v7, "localTimeLong"

    .line 179
    .line 180
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-eqz v5, :cond_3

    .line 185
    .line 186
    :try_start_2
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 187
    .line 188
    .line 189
    move-result-wide v5

    .line 190
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 194
    :catch_2
    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 195
    .line 196
    goto :goto_1

    .line 197
    :cond_4
    if-eqz v0, :cond_f

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    if-nez p1, :cond_5

    .line 204
    .line 205
    goto/16 :goto_6

    .line 206
    .line 207
    :cond_5
    if-eqz v3, :cond_f

    .line 208
    .line 209
    :try_start_3
    sget-object p1, Lhk/c;->a:Lhk/c;

    .line 210
    .line 211
    new-instance p2, Ljava/lang/StringBuilder;

    .line 212
    .line 213
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    check-cast v0, Ljava/lang/String;

    .line 227
    .line 228
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-virtual {p1, p2}, Lhk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    const-string p2, "Authorization"

    .line 240
    .line 241
    invoke-virtual {p4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Ljava/lang/CharSequence;

    .line 246
    .line 247
    if-eqz p2, :cond_7

    .line 248
    .line 249
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 250
    .line 251
    .line 252
    move-result p2

    .line 253
    if-nez p2, :cond_6

    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_6
    sget-object p2, Lhk/b;->a:Lhk/b;

    .line 257
    .line 258
    invoke-virtual {p2}, Lhk/b;->c()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-static {p1, p2}, Lhk/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object p1

    .line 266
    goto :goto_3

    .line 267
    :catch_3
    move-exception p1

    .line 268
    goto :goto_4

    .line 269
    :cond_7
    :goto_3
    sget-object p2, Lhk/b;->a:Lhk/b;

    .line 270
    .line 271
    invoke-virtual {p2}, Lhk/b;->e()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-static {p1, p2}, Lhk/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p3, v1, p1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 280
    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :goto_4
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 285
    .line 286
    new-instance p3, Ljava/lang/StringBuilder;

    .line 287
    .line 288
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 289
    .line 290
    .line 291
    const-string p4, "create encryptParam failed -> "

    .line 292
    .line 293
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object p1

    .line 307
    const-string p3, "ApiInterceptor"

    .line 308
    .line 309
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    goto/16 :goto_6

    .line 313
    .line 314
    :cond_8
    const-string v0, "app/login/v4/initLogin"

    .line 315
    .line 316
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    move-result v0

    .line 320
    const-string v4, ""

    .line 321
    .line 322
    if-nez v0, :cond_9

    .line 323
    .line 324
    const-string v0, "app/login/v3/tripartiteLogin"

    .line 325
    .line 326
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 327
    .line 328
    .line 329
    move-result v0

    .line 330
    if-nez v0, :cond_9

    .line 331
    .line 332
    const-string v0, "app/login/loginMobile"

    .line 333
    .line 334
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    if-eqz v0, :cond_c

    .line 339
    .line 340
    :cond_9
    instance-of v0, p2, Lokhttp3/FormBody;

    .line 341
    .line 342
    if-eqz v0, :cond_c

    .line 343
    .line 344
    check-cast p2, Lokhttp3/FormBody;

    .line 345
    .line 346
    invoke-virtual {p2}, Lokhttp3/FormBody;->d()I

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    :goto_5
    if-ge v3, p1, :cond_b

    .line 351
    .line 352
    invoke-virtual {p2, v3}, Lokhttp3/FormBody;->e(I)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 357
    .line 358
    .line 359
    move-result v5

    .line 360
    if-lez v5, :cond_a

    .line 361
    .line 362
    new-instance v5, Ljava/lang/StringBuilder;

    .line 363
    .line 364
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    move-object v4, v0

    .line 378
    :cond_a
    add-int/lit8 v3, v3, 0x1

    .line 379
    .line 380
    goto :goto_5

    .line 381
    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {p4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    check-cast p2, Ljava/lang/String;

    .line 394
    .line 395
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    sget-object p2, Lhk/c;->a:Lhk/c;

    .line 403
    .line 404
    invoke-virtual {p2, p1}, Lhk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object p1

    .line 408
    sget-object p2, Lhk/b;->a:Lhk/b;

    .line 409
    .line 410
    invoke-virtual {p2}, Lhk/b;->c()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p2

    .line 414
    invoke-static {p1, p2}, Lhk/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-virtual {p3, v1, p1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 419
    .line 420
    .line 421
    goto :goto_6

    .line 422
    :cond_c
    sget-object p2, Lud/a;->a:Lud/a;

    .line 423
    .line 424
    invoke-virtual {p2}, Lud/a;->x()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object p4

    .line 428
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 429
    .line 430
    .line 431
    move-result p4

    .line 432
    const-string v0, "TraceId"

    .line 433
    .line 434
    if-nez p4, :cond_e

    .line 435
    .line 436
    const-string p4, "app/forYou/playSlideV3"

    .line 437
    .line 438
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result p4

    .line 442
    if-nez p4, :cond_d

    .line 443
    .line 444
    const-string p4, "app/forYou/encrypt/playSlideV3"

    .line 445
    .line 446
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    move-result p4

    .line 450
    if-nez p4, :cond_d

    .line 451
    .line 452
    const-string p4, "app/forYou/encrypt/firstDramaForShortPlayId"

    .line 453
    .line 454
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 455
    .line 456
    .line 457
    move-result p4

    .line 458
    if-nez p4, :cond_d

    .line 459
    .line 460
    const-string p4, "app/forYou/firstDramaForShortPlayId"

    .line 461
    .line 462
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result p4

    .line 466
    if-eqz p4, :cond_e

    .line 467
    .line 468
    :cond_d
    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->i(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 469
    .line 470
    .line 471
    invoke-virtual {p2}, Lud/a;->x()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    invoke-virtual {p3, v0, p1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {p2, v4}, Lud/a;->C0(Ljava/lang/String;)V

    .line 479
    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_e
    invoke-virtual {p2}, Lud/a;->w()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object p4

    .line 486
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 487
    .line 488
    .line 489
    move-result p4

    .line 490
    if-nez p4, :cond_f

    .line 491
    .line 492
    const-string p4, "app/hiDrama/getDramaIdByshortPlayId"

    .line 493
    .line 494
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result p1

    .line 498
    if-eqz p1, :cond_f

    .line 499
    .line 500
    invoke-virtual {p3, v0}, Lokhttp3/Request$Builder;->i(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {p2}, Lud/a;->w()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    invoke-virtual {p3, v0, p1}, Lokhttp3/Request$Builder;->a(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {p2, v4}, Lud/a;->B0(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    :cond_f
    :goto_6
    return-void
.end method

.method private final c()Lfe/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/api/base/o;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lfe/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final d(Ljava/lang/String;Lokhttp3/Response;)V
    .locals 8

    .line 1
    :try_start_0
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getApiErrorCodeReport()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 29
    .line 30
    const-string v2, "api_error_code"

    .line 31
    .line 32
    new-instance v3, Landroid/os/Bundle;

    .line 33
    .line 34
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v0, "path"

    .line 38
    .line 39
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    const-string p1, "err_code"

    .line 43
    .line 44
    invoke-virtual {p2}, Lokhttp3/Response;->o()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v3, p1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    const-string p1, "errorMessage"

    .line 56
    .line 57
    invoke-virtual {p2}, Lokhttp3/Response;->w()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v3, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    const/4 v6, 0x4

    .line 67
    const/4 v7, 0x0

    .line 68
    const-wide/16 v4, 0x0

    .line 69
    .line 70
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .line 72
    .line 73
    :catch_0
    :cond_0
    return-void
.end method

.method private static final e()Lfe/a;
    .locals 1

    .line 1
    new-instance v0, Lfe/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lfe/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final f(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "{"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/util/Map$Entry;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Ljava/lang/String;

    .line 37
    .line 38
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/api/base/o;->b:Ljava/util/List;

    .line 45
    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v2, "="

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ","

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    const-string/jumbo p2, "}"

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 76
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    const/16 v2, 0x5b

    .line 83
    .line 84
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p1, "] headers:"

    .line 91
    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v0, "ApiInterceptor"

    .line 103
    .line 104
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private final g(Ljava/lang/String;ZLokhttp3/RequestBody;Lokhttp3/Request$Builder;)V
    .locals 17

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v0, p3

    .line 4
    .line 5
    const-string v2, "keys(...)"

    .line 6
    .line 7
    instance-of v3, v0, Lokhttp3/FormBody;

    .line 8
    .line 9
    if-eqz v3, :cond_14

    .line 10
    .line 11
    new-instance v3, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    move-object v4, v0

    .line 17
    check-cast v4, Lokhttp3/FormBody;

    .line 18
    .line 19
    invoke-virtual {v4}, Lokhttp3/FormBody;->d()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    const/4 v0, 0x0

    .line 24
    move v6, v0

    .line 25
    :goto_0
    const-string v7, "ApiInterceptor"

    .line 26
    .line 27
    if-ge v6, v5, :cond_11

    .line 28
    .line 29
    invoke-virtual {v4, v6}, Lokhttp3/FormBody;->c(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v4, v6}, Lokhttp3/FormBody;->e(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v8

    .line 37
    const-string v9, "collectSource"

    .line 38
    .line 39
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v9

    .line 43
    const-string v10, "fromJson exception -> "

    .line 44
    .line 45
    const-string v11, "getType(...)"

    .line 46
    .line 47
    if-eqz v9, :cond_1

    .line 48
    .line 49
    sget-object v9, Lfk/w;->a:Lfk/w;

    .line 50
    .line 51
    invoke-virtual {v9, v8}, Lfk/w;->c(Ljava/lang/String;)Z

    .line 52
    .line 53
    .line 54
    move-result v9

    .line 55
    if-eqz v9, :cond_0

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_0
    :goto_1
    move-object/from16 v16, v2

    .line 59
    .line 60
    goto/16 :goto_c

    .line 61
    .line 62
    :cond_1
    :goto_2
    const-string v9, "episodeNums"

    .line 63
    .line 64
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v9

    .line 68
    if-nez v9, :cond_0

    .line 69
    .line 70
    const-string/jumbo v9, "taskIds"

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v9

    .line 77
    if-eqz v9, :cond_2

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const-string v9, "businessIdList"

    .line 81
    .line 82
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v9

    .line 86
    if-nez v9, :cond_3

    .line 87
    .line 88
    const-string v9, "classIdList"

    .line 89
    .line 90
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v9

    .line 94
    if-eqz v9, :cond_4

    .line 95
    .line 96
    :cond_3
    move-object/from16 v16, v2

    .line 97
    .line 98
    goto/16 :goto_b

    .line 99
    .line 100
    :cond_4
    const-string v9, "equitySubTypes"

    .line 101
    .line 102
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v9

    .line 106
    if-nez v9, :cond_5

    .line 107
    .line 108
    const-string v9, "conditionCodes"

    .line 109
    .line 110
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_6

    .line 115
    .line 116
    :cond_5
    move-object/from16 v16, v2

    .line 117
    .line 118
    goto/16 :goto_a

    .line 119
    .line 120
    :cond_6
    const-string v9, "payRecoverAndroidInfoRequests"

    .line 121
    .line 122
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v9

    .line 126
    if-eqz v9, :cond_8

    .line 127
    .line 128
    :try_start_0
    new-instance v9, Lcom/startshorts/androidplayer/manager/api/base/o$g;

    .line 129
    .line 130
    invoke-direct {v9}, Lcom/startshorts/androidplayer/manager/api/base/o$g;-><init>()V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v9}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 134
    .line 135
    .line 136
    move-result-object v9

    .line 137
    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v8, v9}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    check-cast v8, Ljava/util/List;

    .line 145
    .line 146
    if-eqz v8, :cond_7

    .line 147
    .line 148
    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .line 153
    goto :goto_3

    .line 154
    :catch_0
    move-exception v0

    .line 155
    goto :goto_4

    .line 156
    :cond_7
    :goto_3
    move-object/from16 v16, v2

    .line 157
    .line 158
    goto/16 :goto_d

    .line 159
    .line 160
    :goto_4
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 161
    .line 162
    new-instance v9, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v8, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    goto :goto_3

    .line 187
    :cond_8
    const-string v9, "app/hiAdMatch/deepLinkReport"

    .line 188
    .line 189
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v9

    .line 193
    if-eqz v9, :cond_c

    .line 194
    .line 195
    const-string v9, "attrData"

    .line 196
    .line 197
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eqz v9, :cond_c

    .line 202
    .line 203
    :try_start_1
    new-instance v9, Lorg/json/JSONObject;

    .line 204
    .line 205
    invoke-direct {v9, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    invoke-direct {v8}, Ljava/util/LinkedHashMap;-><init>()V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v9}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 214
    .line 215
    .line 216
    move-result-object v10

    .line 217
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 221
    .line 222
    .line 223
    move-result v11

    .line 224
    if-eqz v11, :cond_b

    .line 225
    .line 226
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v11

    .line 230
    check-cast v11, Ljava/lang/String;

    .line 231
    .line 232
    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v12

    .line 236
    instance-of v13, v12, Lorg/json/JSONObject;

    .line 237
    .line 238
    if-eqz v13, :cond_a

    .line 239
    .line 240
    new-instance v13, Ljava/util/LinkedHashMap;

    .line 241
    .line 242
    invoke-direct {v13}, Ljava/util/LinkedHashMap;-><init>()V

    .line 243
    .line 244
    .line 245
    move-object v14, v12

    .line 246
    check-cast v14, Lorg/json/JSONObject;

    .line 247
    .line 248
    invoke-virtual {v14}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 249
    .line 250
    .line 251
    move-result-object v14

    .line 252
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    .line 256
    .line 257
    .line 258
    move-result v15

    .line 259
    if-eqz v15, :cond_9

    .line 260
    .line 261
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v15

    .line 265
    check-cast v15, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 266
    .line 267
    move-object/from16 v16, v2

    .line 268
    .line 269
    :try_start_2
    move-object v2, v12

    .line 270
    check-cast v2, Lorg/json/JSONObject;

    .line 271
    .line 272
    invoke-virtual {v2, v15}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    invoke-interface {v13, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-object/from16 v2, v16

    .line 280
    .line 281
    goto :goto_6

    .line 282
    :catch_1
    move-exception v0

    .line 283
    goto :goto_8

    .line 284
    :catch_2
    move-exception v0

    .line 285
    move-object/from16 v16, v2

    .line 286
    .line 287
    goto :goto_8

    .line 288
    :cond_9
    move-object/from16 v16, v2

    .line 289
    .line 290
    invoke-interface {v8, v11, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    goto :goto_7

    .line 294
    :cond_a
    move-object/from16 v16, v2

    .line 295
    .line 296
    invoke-interface {v8, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    :goto_7
    move-object/from16 v2, v16

    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_b
    move-object/from16 v16, v2

    .line 303
    .line 304
    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 305
    .line 306
    .line 307
    goto/16 :goto_d

    .line 308
    .line 309
    :goto_8
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 310
    .line 311
    new-instance v8, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    const-string v9, "attrData fromJson exception -> "

    .line 317
    .line 318
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    .line 320
    .line 321
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    .line 327
    .line 328
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-virtual {v2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    goto/16 :goto_d

    .line 336
    .line 337
    :cond_c
    move-object/from16 v16, v2

    .line 338
    .line 339
    const-string v2, "app/turboLink/reportEvent"

    .line 340
    .line 341
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v2

    .line 345
    if-eqz v2, :cond_e

    .line 346
    .line 347
    :try_start_3
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/o$b;

    .line 348
    .line 349
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/o$b;-><init>()V

    .line 350
    .line 351
    .line 352
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v8, v2}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v2

    .line 363
    check-cast v2, Ljava/util/List;

    .line 364
    .line 365
    if-eqz v2, :cond_d

    .line 366
    .line 367
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    goto/16 :goto_d

    .line 371
    .line 372
    :catch_3
    move-exception v0

    .line 373
    goto :goto_9

    .line 374
    :cond_d
    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 375
    .line 376
    .line 377
    goto/16 :goto_d

    .line 378
    .line 379
    :goto_9
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 380
    .line 381
    new-instance v8, Ljava/lang/StringBuilder;

    .line 382
    .line 383
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v0

    .line 393
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    invoke-virtual {v2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    goto/16 :goto_d

    .line 404
    .line 405
    :cond_e
    const-string v2, "app/hiCollect/batchCancelCollectV2"

    .line 406
    .line 407
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-eqz v2, :cond_f

    .line 412
    .line 413
    :try_start_4
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/o$c;

    .line 414
    .line 415
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/o$c;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 419
    .line 420
    .line 421
    move-result-object v2

    .line 422
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 423
    .line 424
    .line 425
    invoke-static {v8, v2}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 426
    .line 427
    .line 428
    move-result-object v2

    .line 429
    check-cast v2, Ljava/util/List;

    .line 430
    .line 431
    if-eqz v2, :cond_10

    .line 432
    .line 433
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 437
    .line 438
    goto/16 :goto_d

    .line 439
    .line 440
    :catch_4
    move-exception v0

    .line 441
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 442
    .line 443
    new-instance v8, Ljava/lang/StringBuilder;

    .line 444
    .line 445
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 446
    .line 447
    .line 448
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    .line 450
    .line 451
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v0

    .line 462
    invoke-virtual {v2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    .line 464
    .line 465
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 466
    .line 467
    goto/16 :goto_d

    .line 468
    .line 469
    :cond_f
    invoke-interface {v3, v0, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    goto/16 :goto_d

    .line 473
    .line 474
    :goto_a
    :try_start_5
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/o$f;

    .line 475
    .line 476
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/o$f;-><init>()V

    .line 477
    .line 478
    .line 479
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 480
    .line 481
    .line 482
    move-result-object v2

    .line 483
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 484
    .line 485
    .line 486
    invoke-static {v8, v2}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    move-result-object v2

    .line 490
    check-cast v2, Ljava/util/List;

    .line 491
    .line 492
    if-eqz v2, :cond_10

    .line 493
    .line 494
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .line 496
    .line 497
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 498
    .line 499
    goto/16 :goto_d

    .line 500
    .line 501
    :catch_5
    move-exception v0

    .line 502
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 503
    .line 504
    new-instance v8, Ljava/lang/StringBuilder;

    .line 505
    .line 506
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    .line 518
    .line 519
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {v2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    .line 525
    .line 526
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 527
    .line 528
    goto :goto_d

    .line 529
    :goto_b
    :try_start_6
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/o$e;

    .line 530
    .line 531
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/o$e;-><init>()V

    .line 532
    .line 533
    .line 534
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 539
    .line 540
    .line 541
    invoke-static {v8, v2}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    check-cast v2, Ljava/util/List;

    .line 546
    .line 547
    if-eqz v2, :cond_10

    .line 548
    .line 549
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    .line 553
    .line 554
    goto :goto_d

    .line 555
    :catch_6
    move-exception v0

    .line 556
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 557
    .line 558
    new-instance v8, Ljava/lang/StringBuilder;

    .line 559
    .line 560
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 561
    .line 562
    .line 563
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 567
    .line 568
    .line 569
    move-result-object v0

    .line 570
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    invoke-virtual {v2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 581
    .line 582
    goto :goto_d

    .line 583
    :goto_c
    :try_start_7
    new-instance v2, Lcom/startshorts/androidplayer/manager/api/base/o$d;

    .line 584
    .line 585
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/api/base/o$d;-><init>()V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 589
    .line 590
    .line 591
    move-result-object v2

    .line 592
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 593
    .line 594
    .line 595
    invoke-static {v8, v2}, Ljk/l;->c(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 596
    .line 597
    .line 598
    move-result-object v2

    .line 599
    check-cast v2, Ljava/util/List;

    .line 600
    .line 601
    if-eqz v2, :cond_10

    .line 602
    .line 603
    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 607
    .line 608
    goto :goto_d

    .line 609
    :catch_7
    move-exception v0

    .line 610
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 611
    .line 612
    new-instance v8, Ljava/lang/StringBuilder;

    .line 613
    .line 614
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .line 616
    .line 617
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    .line 619
    .line 620
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v0

    .line 624
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    .line 626
    .line 627
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v0

    .line 631
    invoke-virtual {v2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    .line 633
    .line 634
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 635
    .line 636
    :cond_10
    :goto_d
    add-int/lit8 v6, v6, 0x1

    .line 637
    .line 638
    move-object/from16 v2, v16

    .line 639
    .line 640
    goto/16 :goto_0

    .line 641
    .line 642
    :cond_11
    const/16 v2, 0x29

    .line 643
    .line 644
    :try_start_8
    invoke-static {v3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    .line 648
    goto :goto_e

    .line 649
    :catch_8
    move-exception v0

    .line 650
    move-object v4, v0

    .line 651
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 652
    .line 653
    new-instance v5, Ljava/lang/StringBuilder;

    .line 654
    .line 655
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 656
    .line 657
    .line 658
    const-string v6, "map.toJson exception -> value("

    .line 659
    .line 660
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    .line 662
    .line 663
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    const-string v6, ") errMsg("

    .line 667
    .line 668
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v6

    .line 675
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 679
    .line 680
    .line 681
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v5

    .line 685
    invoke-virtual {v0, v7, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 689
    .line 690
    new-instance v10, Landroid/os/Bundle;

    .line 691
    .line 692
    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 693
    .line 694
    .line 695
    const-string v0, "err_msg"

    .line 696
    .line 697
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v4

    .line 701
    invoke-virtual {v10, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    const-string v0, "content"

    .line 705
    .line 706
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 707
    .line 708
    .line 709
    move-result-object v4

    .line 710
    invoke-virtual {v10, v0, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 714
    .line 715
    const/4 v13, 0x4

    .line 716
    const/4 v14, 0x0

    .line 717
    const-string v9, "map_to_json_failed"

    .line 718
    .line 719
    const-wide/16 v11, 0x0

    .line 720
    .line 721
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 722
    .line 723
    .line 724
    :try_start_9
    invoke-static {v3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v0

    .line 728
    sget-object v8, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 729
    .line 730
    const-string v9, "map_to_json_retry_success"

    .line 731
    .line 732
    const/4 v13, 0x6

    .line 733
    const/4 v14, 0x0

    .line 734
    const/4 v10, 0x0

    .line 735
    const-wide/16 v11, 0x0

    .line 736
    .line 737
    invoke-static/range {v8 .. v14}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    .line 738
    .line 739
    .line 740
    goto :goto_e

    .line 741
    :catch_9
    const-string v0, ""

    .line 742
    .line 743
    :goto_e
    const-string v3, "app/eventController/appEventReportV1"

    .line 744
    .line 745
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    move-result v3

    .line 749
    const-string v4, "encodePath("

    .line 750
    .line 751
    if-eqz v3, :cond_12

    .line 752
    .line 753
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 754
    .line 755
    new-instance v5, Ljava/lang/StringBuilder;

    .line 756
    .line 757
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 758
    .line 759
    .line 760
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    .line 762
    .line 763
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    .line 765
    .line 766
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 767
    .line 768
    .line 769
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 770
    .line 771
    .line 772
    move-result-object v1

    .line 773
    invoke-virtual {v3, v7, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .line 775
    .line 776
    goto :goto_f

    .line 777
    :cond_12
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 778
    .line 779
    new-instance v3, Ljava/lang/StringBuilder;

    .line 780
    .line 781
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    .line 786
    .line 787
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    .line 789
    .line 790
    const-string v1, ") mapJson -> "

    .line 791
    .line 792
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 799
    .line 800
    .line 801
    move-result-object v1

    .line 802
    invoke-virtual {v2, v7, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 803
    .line 804
    .line 805
    :goto_f
    if-eqz p2, :cond_13

    .line 806
    .line 807
    sget-object v1, Lhk/b;->a:Lhk/b;

    .line 808
    .line 809
    invoke-virtual {v1}, Lhk/b;->c()Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v1

    .line 813
    invoke-static {v0, v1}, Lhk/d;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v0

    .line 817
    :cond_13
    sget-object v1, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    .line 818
    .line 819
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 820
    .line 821
    .line 822
    sget-object v2, Lokhttp3/MediaType;->e:Lokhttp3/MediaType$Companion;

    .line 823
    .line 824
    const-string v3, "application/json;charset=utf-8"

    .line 825
    .line 826
    invoke-virtual {v2, v3}, Lokhttp3/MediaType$Companion;->b(Ljava/lang/String;)Lokhttp3/MediaType;

    .line 827
    .line 828
    .line 829
    move-result-object v2

    .line 830
    invoke-virtual {v1, v0, v2}, Lokhttp3/RequestBody$Companion;->b(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    move-object/from16 v1, p4

    .line 835
    .line 836
    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->h(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 837
    .line 838
    .line 839
    :cond_14
    return-void
.end method

.method private final h(Lokhttp3/HttpUrl;Lokhttp3/Request$Builder;)V
    .locals 4

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->x()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-lt v1, v3, :cond_0

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lud/b;->H2(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    :try_start_0
    sget-object v0, Lokhttp3/HttpUrl;->k:Lokhttp3/HttpUrl$Companion;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl$Companion;->f(Ljava/lang/String;)Lokhttp3/HttpUrl;

    .line 36
    .line 37
    .line 38
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception v0

    .line 41
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string/jumbo v3, "updateUrl failed -> "

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    const-string v2, "ApiInterceptor"

    .line 66
    .line 67
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 v0, 0x0

    .line 71
    :goto_0
    if-eqz v0, :cond_1

    .line 72
    .line 73
    invoke-virtual {p1}, Lokhttp3/HttpUrl;->k()Lokhttp3/HttpUrl$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->t()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl$Builder;->q(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->i()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, v1}, Lokhttp3/HttpUrl$Builder;->g(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {v0}, Lokhttp3/HttpUrl;->o()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    invoke-virtual {p1, v0}, Lokhttp3/HttpUrl$Builder;->m(I)Lokhttp3/HttpUrl$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p1}, Lokhttp3/HttpUrl$Builder;->c()Lokhttp3/HttpUrl;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Lokhttp3/Request$Builder;->l(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    .line 106
    .line 107
    .line 108
    :cond_1
    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 7
    .param p1    # Lokhttp3/Interceptor$Chain;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "chain"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lokhttp3/Request;->i()Lokhttp3/Request$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v4, 0x1

    .line 24
    invoke-static {v2, v3, v4}, Lkotlin/text/StringsKt;->P0(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    sget-object v3, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->h()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    xor-int/lit8 v5, v4, 0x1

    .line 43
    .line 44
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-nez v4, :cond_0

    .line 49
    .line 50
    const-string/jumbo v4, "true"

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-string v4, "false"

    .line 55
    .line 56
    :goto_0
    invoke-direct {p0, v2, v6, v1, v4}, Lcom/startshorts/androidplayer/manager/api/base/o;->b(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/Request$Builder;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sget-object v4, Lqe/a;->a:Lqe/a;

    .line 60
    .line 61
    invoke-virtual {v4}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getDynamicDomainEnable()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->i()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-eqz v3, :cond_1

    .line 76
    .line 77
    invoke-virtual {v0}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-direct {p0, v3, v1}, Lcom/startshorts/androidplayer/manager/api/base/o;->h(Lokhttp3/HttpUrl;Lokhttp3/Request$Builder;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-virtual {v0}, Lokhttp3/Request;->a()Lokhttp3/RequestBody;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_2

    .line 89
    .line 90
    invoke-direct {p0, v2, v5, v0, v1}, Lcom/startshorts/androidplayer/manager/api/base/o;->g(Ljava/lang/String;ZLokhttp3/RequestBody;Lokhttp3/Request$Builder;)V

    .line 91
    .line 92
    .line 93
    :cond_2
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->b()Lokhttp3/Request;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 98
    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v4, "intercept -> url("

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0}, Lokhttp3/Request;->l()Lokhttp3/HttpUrl;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v4, ") encrypt("

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/16 v4, 0x29

    .line 125
    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v4, "ApiInterceptor"

    .line 134
    .line 135
    invoke-virtual {v1, v4, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/api/base/o;->c()Lfe/a;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {v1, v0, p1}, Lfe/a;->b(Lokhttp3/Request;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-direct {p0, v2, p1}, Lcom/startshorts/androidplayer/manager/api/base/o;->d(Ljava/lang/String;Lokhttp3/Response;)V

    .line 147
    .line 148
    .line 149
    return-object p1
.end method
