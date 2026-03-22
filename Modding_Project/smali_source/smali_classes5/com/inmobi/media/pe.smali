.class public final Lcom/inmobi/media/pe;
.super Lcom/inmobi/media/N9;
.source "SourceFile"


# instance fields
.field public final A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/Map;

.field public final y:Lcom/inmobi/commons/core/configs/RootConfig;

.field public final z:Lcom/inmobi/commons/core/configs/AdConfig;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ue;Lcom/inmobi/media/A5;Lcom/inmobi/commons/core/configs/RootConfig;Lcom/inmobi/commons/core/configs/AdConfig;)V
    .locals 9

    .line 1
    const-string v0, "uidMap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rootConfig"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adConfig"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v7, "application/x-www-form-urlencoded"

    .line 17
    .line 18
    const/16 v8, 0x40

    .line 19
    .line 20
    const-string v2, "POST"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    move-object v1, p0

    .line 25
    move-object v4, p1

    .line 26
    move-object v6, p2

    .line 27
    invoke-direct/range {v1 .. v8}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    iput-object p3, p0, Lcom/inmobi/media/pe;->y:Lcom/inmobi/commons/core/configs/RootConfig;

    .line 31
    .line 32
    iput-object p4, p0, Lcom/inmobi/media/pe;->z:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 33
    .line 34
    const-class p1, Lcom/inmobi/media/pe;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/inmobi/media/pe;->A:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iput-object p1, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 47
    .line 48
    const/4 p1, 0x1

    .line 49
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->t:Z

    .line 50
    .line 51
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->u:Z

    .line 52
    .line 53
    invoke-static {}, Lcom/inmobi/media/Uc;->o()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    iput-boolean p1, p0, Lcom/inmobi/media/N9;->o:Z

    .line 58
    .line 59
    return-void
.end method


# virtual methods
.method public final f()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/N9;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/N9;->k:Ljava/util/HashMap;

    .line 5
    .line 6
    if-eqz v0, :cond_30

    .line 7
    .line 8
    sget-object v1, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 9
    .line 10
    const-string v2, "key"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    sget-object v4, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    const-string v4, "user_info_store"

    .line 29
    .line 30
    invoke-static {v1, v4}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v4, "user_age_restricted"

    .line 35
    .line 36
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 40
    .line 41
    invoke-interface {v1, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 50
    .line 51
    :cond_1
    sget-object v1, Lcom/inmobi/media/ab;->b:Ljava/lang/Boolean;

    .line 52
    .line 53
    if-eqz v1, :cond_2

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_0

    .line 60
    :cond_2
    move v1, v3

    .line 61
    :goto_0
    const-string v4, "TAG"

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/inmobi/media/pe;->A:Ljava/lang/String;

    .line 67
    .line 68
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :goto_1
    move-object v1, v5

    .line 72
    goto :goto_2

    .line 73
    :cond_3
    iget-object v1, p0, Lcom/inmobi/media/pe;->y:Lcom/inmobi/commons/core/configs/RootConfig;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/RootConfig;->getIpAddrTPSupport()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {}, Lcom/inmobi/media/Vc;->d()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    invoke-static {v1, v6}, Lkotlin/collections/CollectionsKt;->g0(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_4

    .line 88
    .line 89
    iget-object v1, p0, Lcom/inmobi/media/pe;->A:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/inmobi/media/pe;->y:Lcom/inmobi/commons/core/configs/RootConfig;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/RootConfig;->getIpAddrTPSupport()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    invoke-static {}, Lcom/inmobi/media/Vc;->d()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_4
    sget-object v1, Lcom/inmobi/media/I5;->c:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    sget-object v1, Lcom/inmobi/media/I5;->b:Ljava/lang/String;

    .line 113
    .line 114
    if-eqz v1, :cond_5

    .line 115
    .line 116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 117
    .line 118
    .line 119
    move-result v6

    .line 120
    if-nez v6, :cond_6

    .line 121
    .line 122
    :cond_5
    iget-object v6, p0, Lcom/inmobi/media/pe;->A:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 128
    .line 129
    const-string v4, "cip"

    .line 130
    .line 131
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    check-cast v1, Ljava/lang/String;

    .line 136
    .line 137
    :cond_7
    invoke-static {}, Lcom/inmobi/media/ze;->a()Lcom/inmobi/media/Ae;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    iget-object v4, v1, Lcom/inmobi/media/Ae;->a:Ljava/lang/String;

    .line 142
    .line 143
    if-eqz v4, :cond_8

    .line 144
    .line 145
    const-string v6, "ufid"

    .line 146
    .line 147
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Ljava/lang/String;

    .line 152
    .line 153
    :cond_8
    iget-boolean v1, v1, Lcom/inmobi/media/Ae;->b:Z

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v4, "is-unifid-service-used"

    .line 160
    .line 161
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    sget-object v1, Lcom/inmobi/media/X6;->a:Lcom/inmobi/media/X6;

    .line 165
    .line 166
    invoke-virtual {v1}, Lcom/inmobi/media/X6;->b()Ljava/util/HashMap;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 171
    .line 172
    .line 173
    invoke-static {}, Lcom/inmobi/media/Y4;->a()Ljava/util/HashMap;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 178
    .line 179
    .line 180
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 181
    .line 182
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object v4

    .line 186
    iget-boolean v6, p0, Lcom/inmobi/media/N9;->o:Z

    .line 187
    .line 188
    invoke-virtual {v1, v4, v6}, Lcom/inmobi/media/L3;->a(Landroid/content/Context;Z)I

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    const-string v4, "d-media-volume"

    .line 197
    .line 198
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, v0}, Lcom/inmobi/media/N9;->a(Ljava/util/HashMap;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, p0, Lcom/inmobi/media/pe;->B:Ljava/lang/String;

    .line 205
    .line 206
    if-eqz v1, :cond_9

    .line 207
    .line 208
    const-string v4, "p-keywords"

    .line 209
    .line 210
    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Ljava/lang/String;

    .line 215
    .line 216
    :cond_9
    new-instance v1, Ljava/util/HashMap;

    .line 217
    .line 218
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 219
    .line 220
    .line 221
    sget-object v4, Lcom/inmobi/media/F2;->a:Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/inmobi/media/pe;->C:Ljava/util/Map;

    .line 230
    .line 231
    if-eqz v1, :cond_b

    .line 232
    .line 233
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    :cond_a
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 242
    .line 243
    .line 244
    move-result v4

    .line 245
    if-eqz v4, :cond_b

    .line 246
    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v4

    .line 251
    check-cast v4, Ljava/util/Map$Entry;

    .line 252
    .line 253
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 258
    .line 259
    .line 260
    move-result v6

    .line 261
    if-nez v6, :cond_a

    .line 262
    .line 263
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    move-result-object v4

    .line 271
    invoke-virtual {v0, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    goto :goto_3

    .line 275
    :cond_b
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 276
    .line 277
    iget-object v1, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 278
    .line 279
    const-string v4, "signals"

    .line 280
    .line 281
    invoke-static {v4, v1, v5}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 282
    .line 283
    .line 284
    move-result-object v1

    .line 285
    instance-of v6, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 286
    .line 287
    if-eqz v6, :cond_c

    .line 288
    .line 289
    check-cast v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 290
    .line 291
    goto :goto_4

    .line 292
    :cond_c
    move-object v1, v5

    .line 293
    :goto_4
    if-eqz v1, :cond_d

    .line 294
    .line 295
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getExt()Lorg/json/JSONObject;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    goto :goto_5

    .line 300
    :cond_d
    move-object v1, v5

    .line 301
    :goto_5
    const/4 v6, 0x1

    .line 302
    if-eqz v1, :cond_e

    .line 303
    .line 304
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 305
    .line 306
    .line 307
    move-result v7

    .line 308
    if-lez v7, :cond_e

    .line 309
    .line 310
    move v7, v6

    .line 311
    goto :goto_6

    .line 312
    :cond_e
    move v7, v3

    .line 313
    :goto_6
    if-eqz v7, :cond_f

    .line 314
    .line 315
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v1

    .line 319
    const-string v7, "im-ext"

    .line 320
    .line 321
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    .line 323
    .line 324
    :cond_f
    sget-object v1, Lcom/inmobi/media/db;->a:Ljava/lang/String;

    .line 325
    .line 326
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 327
    .line 328
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 329
    .line 330
    .line 331
    sget-object v7, Lcom/inmobi/media/db;->a:Ljava/lang/String;

    .line 332
    .line 333
    if-eqz v7, :cond_10

    .line 334
    .line 335
    const-string v8, "u-nip"

    .line 336
    .line 337
    invoke-interface {v1, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    goto :goto_7

    .line 341
    :cond_10
    move-object v1, v5

    .line 342
    :goto_7
    if-eqz v1, :cond_11

    .line 343
    .line 344
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 345
    .line 346
    .line 347
    :cond_11
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .line 349
    const/16 v7, 0x1d

    .line 350
    .line 351
    if-lt v1, v7, :cond_12

    .line 352
    .line 353
    invoke-static {}, Lcom/inmobi/media/U3;->e()Ljava/lang/String;

    .line 354
    .line 355
    .line 356
    move-result-object v1

    .line 357
    if-eqz v1, :cond_12

    .line 358
    .line 359
    const-string v7, "d-device-gesture-margins"

    .line 360
    .line 361
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/lang/String;

    .line 366
    .line 367
    :cond_12
    iget-object v1, p0, Lcom/inmobi/media/pe;->z:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->isCCTEnabled()Z

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    if-eqz v1, :cond_13

    .line 374
    .line 375
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 376
    .line 377
    .line 378
    move-result-object v1

    .line 379
    invoke-static {v1}, Lcom/inmobi/media/x3;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    if-eqz v1, :cond_13

    .line 384
    .line 385
    move v1, v6

    .line 386
    goto :goto_8

    .line 387
    :cond_13
    move v1, v3

    .line 388
    :goto_8
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    const-string v7, "cct-enabled"

    .line 393
    .line 394
    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    invoke-static {}, Lcom/inmobi/media/ab;->a()Ljava/util/HashMap;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 402
    .line 403
    .line 404
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    const-string v7, ""

    .line 409
    .line 410
    if-eqz v1, :cond_16

    .line 411
    .line 412
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    new-instance v8, Ljava/lang/StringBuilder;

    .line 417
    .line 418
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 419
    .line 420
    .line 421
    if-eqz v1, :cond_14

    .line 422
    .line 423
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    goto :goto_9

    .line 428
    :cond_14
    move-object v9, v5

    .line 429
    :goto_9
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    const-string v9, "_preferences"

    .line 433
    .line 434
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v8

    .line 441
    if-eqz v1, :cond_15

    .line 442
    .line 443
    invoke-virtual {v1, v8, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 444
    .line 445
    .line 446
    move-result-object v1

    .line 447
    goto :goto_a

    .line 448
    :cond_15
    move-object v1, v5

    .line 449
    :goto_a
    if-eqz v1, :cond_16

    .line 450
    .line 451
    const-string v8, "IABGPP_HDR_GppString"

    .line 452
    .line 453
    invoke-interface {v1, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 454
    .line 455
    .line 456
    move-result v9

    .line 457
    if-ne v9, v6, :cond_16

    .line 458
    .line 459
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    goto :goto_b

    .line 468
    :cond_16
    move-object v1, v7

    .line 469
    :goto_b
    invoke-static {v1}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 470
    .line 471
    .line 472
    move-result v8

    .line 473
    if-eqz v8, :cond_17

    .line 474
    .line 475
    const-string v8, "gpp"

    .line 476
    .line 477
    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    .line 479
    .line 480
    :cond_17
    invoke-static {}, Lcom/inmobi/media/U3;->c()Ljava/util/HashMap;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 485
    .line 486
    .line 487
    invoke-static {}, Lcom/inmobi/media/h2;->a()Ljava/util/HashMap;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 492
    .line 493
    .line 494
    iget-object v1, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 495
    .line 496
    invoke-static {v4, v1, v5}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 497
    .line 498
    .line 499
    move-result-object v1

    .line 500
    instance-of v4, v1, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 501
    .line 502
    if-eqz v4, :cond_18

    .line 503
    .line 504
    move-object v5, v1

    .line 505
    check-cast v5, Lcom/inmobi/commons/core/configs/SignalsConfig;

    .line 506
    .line 507
    :cond_18
    if-eqz v5, :cond_19

    .line 508
    .line 509
    invoke-virtual {v5}, Lcom/inmobi/commons/core/configs/SignalsConfig;->getPublisherConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    .line 510
    .line 511
    .line 512
    move-result-object v1

    .line 513
    if-eqz v1, :cond_19

    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->getEnableAB()Z

    .line 516
    .line 517
    .line 518
    move-result v1

    .line 519
    if-ne v1, v6, :cond_19

    .line 520
    .line 521
    move v1, v6

    .line 522
    goto :goto_c

    .line 523
    :cond_19
    move v1, v3

    .line 524
    :goto_c
    const-string v4, "toString(...)"

    .line 525
    .line 526
    if-eqz v1, :cond_1a

    .line 527
    .line 528
    sget-object v1, Lcom/inmobi/media/Ya;->a:Lcom/inmobi/media/Ya;

    .line 529
    .line 530
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    .line 532
    .line 533
    sget-object v5, Lcom/inmobi/media/Ya;->d:Lcom/inmobi/media/x1;

    .line 534
    .line 535
    sget-object v8, Lcom/inmobi/media/Ya;->b:[Lkotlin/reflect/KProperty;

    .line 536
    .line 537
    aget-object v8, v8, v3

    .line 538
    .line 539
    invoke-virtual {v5, v1, v8}, Lcom/inmobi/media/x1;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    check-cast v1, Lorg/json/JSONObject;

    .line 544
    .line 545
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 546
    .line 547
    .line 548
    move-result v5

    .line 549
    if-lez v5, :cond_1a

    .line 550
    .line 551
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v1

    .line 555
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    const-string v5, "extData"

    .line 559
    .line 560
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    .line 562
    .line 563
    :cond_1a
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    if-eqz v1, :cond_1d

    .line 568
    .line 569
    new-instance v5, Lcom/inmobi/media/Z9;

    .line 570
    .line 571
    iget-object v8, p0, Lcom/inmobi/media/N9;->e:Lcom/inmobi/media/z5;

    .line 572
    .line 573
    invoke-direct {v5, v1, v8}, Lcom/inmobi/media/Z9;-><init>(Landroid/content/Context;Lcom/inmobi/media/z5;)V

    .line 574
    .line 575
    .line 576
    iget-boolean v1, v5, Lcom/inmobi/media/Z9;->d:Z

    .line 577
    .line 578
    if-nez v1, :cond_1c

    .line 579
    .line 580
    if-eqz v8, :cond_1b

    .line 581
    .line 582
    check-cast v8, Lcom/inmobi/media/A5;

    .line 583
    .line 584
    const-string v1, "NovatiqDataHandler"

    .line 585
    .line 586
    const-string v5, "Novatiq disabled. skip"

    .line 587
    .line 588
    invoke-virtual {v8, v1, v5}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    .line 590
    .line 591
    :cond_1b
    new-instance v1, Lcom/inmobi/media/X9;

    .line 592
    .line 593
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 594
    .line 595
    .line 596
    move-result-object v5

    .line 597
    invoke-direct {v1, v5}, Lcom/inmobi/media/X9;-><init>(Ljava/util/Map;)V

    .line 598
    .line 599
    .line 600
    goto :goto_d

    .line 601
    :cond_1c
    new-instance v1, Lcom/inmobi/media/X9;

    .line 602
    .line 603
    iget-object v5, v5, Lcom/inmobi/media/Z9;->c:Ljava/lang/String;

    .line 604
    .line 605
    const-string v8, "n-h-id"

    .line 606
    .line 607
    invoke-static {v8, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 608
    .line 609
    .line 610
    move-result-object v5

    .line 611
    filled-new-array {v5}, [Lkotlin/Pair;

    .line 612
    .line 613
    .line 614
    move-result-object v5

    .line 615
    invoke-static {v5}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 616
    .line 617
    .line 618
    move-result-object v5

    .line 619
    invoke-direct {v1, v5}, Lcom/inmobi/media/X9;-><init>(Ljava/util/Map;)V

    .line 620
    .line 621
    .line 622
    :goto_d
    iget-object v1, v1, Lcom/inmobi/media/X9;->a:Ljava/util/Map;

    .line 623
    .line 624
    goto :goto_e

    .line 625
    :cond_1d
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 626
    .line 627
    .line 628
    move-result-object v1

    .line 629
    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 630
    .line 631
    .line 632
    sget-object v1, Lcom/inmobi/media/f0;->c:Lms/i;

    .line 633
    .line 634
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 635
    .line 636
    .line 637
    move-result-object v5

    .line 638
    check-cast v5, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 639
    .line 640
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 641
    .line 642
    .line 643
    move-result v5

    .line 644
    if-nez v5, :cond_1e

    .line 645
    .line 646
    new-instance v5, Lorg/json/JSONArray;

    .line 647
    .line 648
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    check-cast v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 653
    .line 654
    invoke-direct {v5, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 662
    .line 663
    .line 664
    const-string v5, "u-r-crid"

    .line 665
    .line 666
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    :cond_1e
    sget-object v1, Lcom/inmobi/media/v5;->c:Lcom/inmobi/media/v5;

    .line 670
    .line 671
    invoke-virtual {v1}, Lcom/inmobi/media/v5;->a()Lorg/json/JSONObject;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 676
    .line 677
    .line 678
    move-result v5

    .line 679
    if-lez v5, :cond_1f

    .line 680
    .line 681
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 682
    .line 683
    .line 684
    move-result-object v1

    .line 685
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 686
    .line 687
    .line 688
    const-string v5, "audioObject"

    .line 689
    .line 690
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    .line 692
    .line 693
    :cond_1f
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    .line 694
    .line 695
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->i()Lkotlin/Pair;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    const-string v8, "<this>"

    .line 700
    .line 701
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    if-eqz v5, :cond_20

    .line 705
    .line 706
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v9

    .line 710
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 711
    .line 712
    .line 713
    move-result-object v5

    .line 714
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    :cond_20
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->k()Lkotlin/Pair;

    .line 718
    .line 719
    .line 720
    move-result-object v5

    .line 721
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 722
    .line 723
    .line 724
    if-eqz v5, :cond_21

    .line 725
    .line 726
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v9

    .line 730
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 731
    .line 732
    .line 733
    move-result-object v5

    .line 734
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    :cond_21
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->c()Lkotlin/Pair;

    .line 738
    .line 739
    .line 740
    move-result-object v5

    .line 741
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    if-eqz v5, :cond_22

    .line 745
    .line 746
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v9

    .line 750
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 751
    .line 752
    .line 753
    move-result-object v5

    .line 754
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    .line 756
    .line 757
    :cond_22
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->f()Lkotlin/Pair;

    .line 758
    .line 759
    .line 760
    move-result-object v5

    .line 761
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 762
    .line 763
    .line 764
    if-eqz v5, :cond_23

    .line 765
    .line 766
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 767
    .line 768
    .line 769
    move-result-object v9

    .line 770
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    .line 776
    .line 777
    :cond_23
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->t()Lkotlin/Pair;

    .line 778
    .line 779
    .line 780
    move-result-object v5

    .line 781
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 782
    .line 783
    .line 784
    if-eqz v5, :cond_24

    .line 785
    .line 786
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    move-result-object v9

    .line 790
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 791
    .line 792
    .line 793
    move-result-object v5

    .line 794
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    :cond_24
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->d()Lkotlin/Pair;

    .line 798
    .line 799
    .line 800
    move-result-object v5

    .line 801
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    if-eqz v5, :cond_25

    .line 805
    .line 806
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 807
    .line 808
    .line 809
    move-result-object v9

    .line 810
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 811
    .line 812
    .line 813
    move-result-object v5

    .line 814
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .line 816
    .line 817
    :cond_25
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->u()Lkotlin/Pair;

    .line 818
    .line 819
    .line 820
    move-result-object v5

    .line 821
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 822
    .line 823
    .line 824
    if-eqz v5, :cond_26

    .line 825
    .line 826
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    move-result-object v9

    .line 830
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    .line 836
    .line 837
    :cond_26
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->g()Lkotlin/Pair;

    .line 838
    .line 839
    .line 840
    move-result-object v5

    .line 841
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 842
    .line 843
    .line 844
    if-eqz v5, :cond_27

    .line 845
    .line 846
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 847
    .line 848
    .line 849
    move-result-object v9

    .line 850
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 851
    .line 852
    .line 853
    move-result-object v5

    .line 854
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    :cond_27
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->h()Lkotlin/Pair;

    .line 858
    .line 859
    .line 860
    move-result-object v5

    .line 861
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 862
    .line 863
    .line 864
    if-eqz v5, :cond_28

    .line 865
    .line 866
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 867
    .line 868
    .line 869
    move-result-object v9

    .line 870
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 871
    .line 872
    .line 873
    move-result-object v5

    .line 874
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 875
    .line 876
    .line 877
    :cond_28
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->b()Lkotlin/Pair;

    .line 878
    .line 879
    .line 880
    move-result-object v5

    .line 881
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 882
    .line 883
    .line 884
    if-eqz v5, :cond_29

    .line 885
    .line 886
    invoke-virtual {v5}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 887
    .line 888
    .line 889
    move-result-object v9

    .line 890
    invoke-virtual {v5}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    move-result-object v5

    .line 894
    invoke-virtual {v0, v9, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    .line 896
    .line 897
    :cond_29
    invoke-virtual {v1}, Lcom/inmobi/media/L3;->j()Lkotlin/Pair;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    if-eqz v1, :cond_2a

    .line 905
    .line 906
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 907
    .line 908
    .line 909
    move-result-object v5

    .line 910
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    :cond_2a
    sget-object v1, Lcom/inmobi/media/g1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 918
    .line 919
    const-string v1, "mutableMap"

    .line 920
    .line 921
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 922
    .line 923
    .line 924
    invoke-static {}, Lcom/inmobi/media/g1;->a()Z

    .line 925
    .line 926
    .line 927
    move-result v1

    .line 928
    if-nez v1, :cond_2b

    .line 929
    .line 930
    goto :goto_f

    .line 931
    :cond_2b
    sget-object v1, Lcom/inmobi/media/g1;->a:Lcom/google/android/gms/appset/AppSetIdInfo;

    .line 932
    .line 933
    if-eqz v1, :cond_2c

    .line 934
    .line 935
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v5

    .line 939
    const-string v8, "getId(...)"

    .line 940
    .line 941
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 942
    .line 943
    .line 944
    const-string v8, "d-app-set-id"

    .line 945
    .line 946
    invoke-virtual {v0, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    .line 948
    .line 949
    new-instance v5, Ljava/lang/StringBuilder;

    .line 950
    .line 951
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    .line 955
    .line 956
    .line 957
    move-result v1

    .line 958
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 959
    .line 960
    .line 961
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 962
    .line 963
    .line 964
    move-result-object v1

    .line 965
    const-string v5, "d-app-set-scope"

    .line 966
    .line 967
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    .line 969
    .line 970
    move-result-object v1

    .line 971
    check-cast v1, Ljava/lang/String;

    .line 972
    .line 973
    :cond_2c
    :goto_f
    invoke-static {}, Lcom/inmobi/media/h3;->d()Z

    .line 974
    .line 975
    .line 976
    move-result v1

    .line 977
    if-eqz v1, :cond_2e

    .line 978
    .line 979
    const-string v1, "ik"

    .line 980
    .line 981
    sget-object v5, Lcom/inmobi/media/h3;->g:Ljava/lang/String;

    .line 982
    .line 983
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    invoke-static {}, Lcom/inmobi/media/h3;->c()Ljava/lang/String;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    const-string v5, "c_data"

    .line 991
    .line 992
    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    .line 996
    .line 997
    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 998
    .line 999
    .line 1000
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v5

    .line 1004
    if-eqz v5, :cond_2d

    .line 1005
    .line 1006
    sget-object v7, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1007
    .line 1008
    const-string v7, "c_data_store"

    .line 1009
    .line 1010
    invoke-static {v5, v7}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 1011
    .line 1012
    .line 1013
    move-result-object v5

    .line 1014
    const-string v7, "akv"

    .line 1015
    .line 1016
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1017
    .line 1018
    .line 1019
    iget-object v2, v5, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    .line 1020
    .line 1021
    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 1022
    .line 1023
    .line 1024
    move-result v2

    .line 1025
    goto :goto_10

    .line 1026
    :cond_2d
    move v2, v6

    .line 1027
    :goto_10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v1

    .line 1034
    const-string v2, "aKV"

    .line 1035
    .line 1036
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    .line 1038
    .line 1039
    :cond_2e
    sget-object v1, Lcom/inmobi/media/Zc;->a:Lcom/inmobi/media/Zc;

    .line 1040
    .line 1041
    invoke-virtual {v1}, Lcom/inmobi/media/Zc;->b()Lorg/json/JSONObject;

    .line 1042
    .line 1043
    .line 1044
    move-result-object v1

    .line 1045
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 1046
    .line 1047
    .line 1048
    move-result v2

    .line 1049
    if-lez v2, :cond_2f

    .line 1050
    .line 1051
    move v3, v6

    .line 1052
    :cond_2f
    if-eqz v3, :cond_30

    .line 1053
    .line 1054
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 1055
    .line 1056
    .line 1057
    move-result-object v1

    .line 1058
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1059
    .line 1060
    .line 1061
    const-string v2, "sData"

    .line 1062
    .line 1063
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1064
    .line 1065
    .line 1066
    :cond_30
    return-void
.end method
