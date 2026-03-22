.class public final Lcom/inmobi/media/a3;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lcom/inmobi/media/P9;

.field public final b:Ljava/util/TreeMap;

.field public final c:Ljava/util/LinkedHashMap;

.field public final d:Lcom/inmobi/media/R2;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/media/U2;Lcom/inmobi/media/P9;)V
    .locals 11

    .line 1
    const-string v0, "networkRequest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mNetworkResponse"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lcom/inmobi/media/a3;->a:Lcom/inmobi/media/P9;

    .line 15
    .line 16
    new-instance v0, Ljava/util/TreeMap;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/inmobi/media/U2;->y:Ljava/util/Map;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/inmobi/media/a3;->b:Ljava/util/TreeMap;

    .line 24
    .line 25
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 26
    .line 27
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p1, p0, Lcom/inmobi/media/a3;->c:Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    iget-object p1, p2, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 33
    .line 34
    const-string p2, "InvalidConfig"

    .line 35
    .line 36
    const-string v1, "networkType"

    .line 37
    .line 38
    const-string v2, "errorCode"

    .line 39
    .line 40
    const/4 v3, 0x0

    .line 41
    const-string v4, "lts"

    .line 42
    .line 43
    const-string v5, "name"

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    const/4 v7, 0x0

    .line 60
    if-eqz v6, :cond_0

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    check-cast v6, Ljava/util/Map$Entry;

    .line 67
    .line 68
    new-instance v8, Lcom/inmobi/media/W2;

    .line 69
    .line 70
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v9

    .line 74
    const-string v10, "<get-value>(...)"

    .line 75
    .line 76
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast v9, Lcom/inmobi/commons/core/configs/Config;

    .line 80
    .line 81
    invoke-direct {v8, v3, v9}, Lcom/inmobi/media/W2;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/Config;)V

    .line 82
    .line 83
    .line 84
    new-instance v9, Lcom/inmobi/media/R2;

    .line 85
    .line 86
    const-string v10, "Network error in fetching config."

    .line 87
    .line 88
    invoke-direct {v9, v7, v10}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iput-object v9, v8, Lcom/inmobi/media/W2;->c:Lcom/inmobi/media/R2;

    .line 92
    .line 93
    iget-object v7, p0, Lcom/inmobi/media/a3;->c:Ljava/util/LinkedHashMap;

    .line 94
    .line 95
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    const-string v9, "<get-key>(...)"

    .line 100
    .line 101
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Lcom/inmobi/media/R2;

    .line 109
    .line 110
    iget-object v3, p1, Lcom/inmobi/media/I9;->b:Ljava/lang/String;

    .line 111
    .line 112
    invoke-direct {v0, v7, v3}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 113
    .line 114
    .line 115
    iput-object v0, p0, Lcom/inmobi/media/a3;->d:Lcom/inmobi/media/R2;

    .line 116
    .line 117
    const-string v0, "a3"

    .line 118
    .line 119
    const-string v3, "TAG"

    .line 120
    .line 121
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/inmobi/media/a3;->b:Ljava/util/TreeMap;

    .line 125
    .line 126
    invoke-static {v0}, Lcom/inmobi/media/V2;->a(Ljava/util/TreeMap;)Lkotlin/Pair;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Ljava/util/List;

    .line 135
    .line 136
    invoke-virtual {v0}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Ljava/util/List;

    .line 141
    .line 142
    iget-object p1, p1, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 143
    .line 144
    iget p1, p1, Lcom/inmobi/media/o4;->a:I

    .line 145
    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-static {v2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v5, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    invoke-static {v4, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    invoke-static {v1, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    filled-new-array {p1, v3, v0, v6}, [Lkotlin/Pair;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 179
    .line 180
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 181
    .line 182
    invoke-static {p2, p1, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 183
    .line 184
    .line 185
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    :cond_1
    if-nez v3, :cond_5

    .line 188
    .line 189
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    .line 190
    .line 191
    iget-object v0, p0, Lcom/inmobi/media/a3;->a:Lcom/inmobi/media/P9;

    .line 192
    .line 193
    invoke-virtual {v0}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    .line 206
    .line 207
    move-result v3

    .line 208
    if-eqz v3, :cond_3

    .line 209
    .line 210
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    check-cast v3, Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 217
    .line 218
    .line 219
    move-result-object v6

    .line 220
    iget-object v7, p0, Lcom/inmobi/media/a3;->b:Ljava/util/TreeMap;

    .line 221
    .line 222
    invoke-virtual {v7, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v7

    .line 226
    check-cast v7, Lcom/inmobi/commons/core/configs/Config;

    .line 227
    .line 228
    if-eqz v7, :cond_2

    .line 229
    .line 230
    new-instance v8, Lcom/inmobi/media/W2;

    .line 231
    .line 232
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v8, v6, v7}, Lcom/inmobi/media/W2;-><init>(Lorg/json/JSONObject;Lcom/inmobi/commons/core/configs/Config;)V

    .line 236
    .line 237
    .line 238
    iget-object v6, p0, Lcom/inmobi/media/a3;->c:Ljava/util/LinkedHashMap;

    .line 239
    .line 240
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-interface {v6, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    goto :goto_1

    .line 247
    :catch_0
    move-exception p1

    .line 248
    goto :goto_2

    .line 249
    :cond_3
    iget-object p1, p0, Lcom/inmobi/media/a3;->b:Ljava/util/TreeMap;

    .line 250
    .line 251
    invoke-static {p1}, Lcom/inmobi/media/V2;->a(Ljava/util/TreeMap;)Lkotlin/Pair;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    check-cast v0, Ljava/util/List;

    .line 260
    .line 261
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    check-cast p1, Ljava/util/List;

    .line 266
    .line 267
    invoke-static {v5, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-static {v4, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    filled-new-array {v0, p1}, [Lkotlin/Pair;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 280
    .line 281
    .line 282
    move-result-object p1

    .line 283
    const-string v0, "ConfigFetched"

    .line 284
    .line 285
    sget-object v3, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 286
    .line 287
    sget-object v3, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 288
    .line 289
    invoke-static {v0, p1, v3}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .line 291
    .line 292
    goto :goto_4

    .line 293
    :goto_2
    new-instance v0, Lcom/inmobi/media/R2;

    .line 294
    .line 295
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object p1

    .line 299
    if-nez p1, :cond_4

    .line 300
    .line 301
    const-string p1, "Exception while parsing config"

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_4
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 305
    .line 306
    .line 307
    :goto_3
    const/4 v3, 0x2

    .line 308
    invoke-direct {v0, v3, p1}, Lcom/inmobi/media/R2;-><init>(BLjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    iput-object v0, p0, Lcom/inmobi/media/a3;->d:Lcom/inmobi/media/R2;

    .line 312
    .line 313
    iget-object p1, p0, Lcom/inmobi/media/a3;->b:Ljava/util/TreeMap;

    .line 314
    .line 315
    invoke-static {p1}, Lcom/inmobi/media/V2;->a(Ljava/util/TreeMap;)Lkotlin/Pair;

    .line 316
    .line 317
    .line 318
    move-result-object p1

    .line 319
    invoke-virtual {p1}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    check-cast v0, Ljava/util/List;

    .line 324
    .line 325
    invoke-virtual {p1}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Ljava/util/List;

    .line 330
    .line 331
    const/4 v3, 0x1

    .line 332
    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    .line 333
    .line 334
    .line 335
    move-result-object v3

    .line 336
    invoke-static {v2, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 337
    .line 338
    .line 339
    move-result-object v2

    .line 340
    invoke-static {v5, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-static {v4, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v3

    .line 352
    invoke-static {v1, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    filled-new-array {v2, v0, p1, v1}, [Lkotlin/Pair;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    invoke-static {p1}, Lkotlin/collections/p0;->o([Lkotlin/Pair;)Ljava/util/Map;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    sget-object v0, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 365
    .line 366
    sget-object v0, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 367
    .line 368
    invoke-static {p2, p1, v0}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    .line 369
    .line 370
    .line 371
    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/a3;->a:Lcom/inmobi/media/P9;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v1, v0, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    sget-object v2, Lcom/inmobi/media/o4;->i:Lcom/inmobi/media/o4;

    .line 12
    .line 13
    if-eq v1, v2, :cond_4

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object v0, v0, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 18
    .line 19
    if-nez v0, :cond_2

    .line 20
    .line 21
    :cond_1
    sget-object v0, Lcom/inmobi/media/o4;->e:Lcom/inmobi/media/o4;

    .line 22
    .line 23
    :cond_2
    iget v0, v0, Lcom/inmobi/media/o4;->a:I

    .line 24
    .line 25
    const/16 v1, 0x1f4

    .line 26
    .line 27
    if-gt v1, v0, :cond_3

    .line 28
    .line 29
    const/16 v1, 0x258

    .line 30
    .line 31
    if-ge v0, v1, :cond_3

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_3
    const/4 v0, 0x0

    .line 35
    goto :goto_2

    .line 36
    :cond_4
    :goto_1
    const/4 v0, 0x1

    .line 37
    :goto_2
    return v0
.end method
