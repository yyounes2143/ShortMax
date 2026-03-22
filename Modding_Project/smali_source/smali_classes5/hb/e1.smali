.class public Lhb/e1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lhb/u;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lhb/v0;->q()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p1, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p3, p0, Lhb/e1;->d:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lhb/f;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lhb/o0;->b(Ljava/lang/String;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    new-instance v1, Lhb/d1;

    .line 14
    .line 15
    iget-object v2, p0, Lhb/e1;->d:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v1, p2, v0, p1, v2}, Lhb/d1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Lhb/d1;->a()V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    const-string v0, "cached_v2_1"

    .line 2
    .line 3
    const-string v1, "stat_v2_1"

    .line 4
    .line 5
    const-string v2, "eventReportTask is running"

    .line 6
    .line 7
    const-string v3, "hmsSdk"

    .line 8
    .line 9
    invoke-static {v3, v2}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v2}, Lhb/h;->a(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v4, "alltype"

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    const-string v5, "workKey is refresh,begin report all data"

    .line 23
    .line 24
    invoke-static {v3, v5}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iput-object v4, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    const/4 v5, 0x0

    .line 30
    :try_start_0
    iget-object v6, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v7, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v8, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v6, v7, v8}, Lhb/i;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    invoke-interface {v6}, Ljava/util/Map;->size()I

    .line 41
    .line 42
    .line 43
    move-result v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    const-string v6, "no have events to report: tag:%s : type:%s"

    .line 47
    .line 48
    :try_start_1
    iget-object v7, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v8, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 51
    .line 52
    filled-new-array {v7, v8}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v7

    .line 56
    invoke-static {v3, v6, v7}, Lhb/f1;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    iget-object v2, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    if-eqz v2, :cond_1

    .line 66
    .line 67
    iget-object v2, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 68
    .line 69
    new-array v3, v5, [Ljava/lang/String;

    .line 70
    .line 71
    invoke-static {v2, v1, v3}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 75
    .line 76
    new-array v2, v5, [Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1, v0, v2}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_1
    iget-object v2, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 83
    .line 84
    iget-object v3, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v2, v3}, Lhb/o0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    iget-object v3, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 91
    .line 92
    filled-new-array {v2}, [Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v3, v1, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 100
    .line 101
    filled-new-array {v2}, [Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v1, v0, v2}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :goto_0
    return-void

    .line 109
    :catchall_0
    move-exception v2

    .line 110
    goto/16 :goto_5

    .line 111
    .line 112
    :catch_0
    move-exception v6

    .line 113
    goto :goto_2

    .line 114
    :catch_1
    move-exception v6

    .line 115
    goto/16 :goto_3

    .line 116
    .line 117
    :cond_2
    :try_start_2
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_3

    .line 130
    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Ljava/util/Map$Entry;

    .line 136
    .line 137
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    check-cast v8, Ljava/lang/String;

    .line 142
    .line 143
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v7

    .line 147
    check-cast v7, Ljava/util/List;

    .line 148
    .line 149
    invoke-direct {p0, v8, v7}, Lhb/e1;->a(Ljava/lang/String;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 150
    .line 151
    .line 152
    goto :goto_1

    .line 153
    :cond_3
    iget-object v6, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_4

    .line 160
    .line 161
    iget-object v4, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 162
    .line 163
    new-array v6, v5, [Ljava/lang/String;

    .line 164
    .line 165
    invoke-static {v4, v1, v6}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 169
    .line 170
    new-array v4, v5, [Ljava/lang/String;

    .line 171
    .line 172
    invoke-static {v1, v0, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    goto/16 :goto_4

    .line 176
    .line 177
    :cond_4
    iget-object v4, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 178
    .line 179
    iget-object v5, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 180
    .line 181
    invoke-static {v4, v5}, Lhb/o0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v4

    .line 185
    iget-object v5, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 186
    .line 187
    filled-new-array {v4}, [Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-static {v5, v1, v6}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 195
    .line 196
    filled-new-array {v4}, [Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    invoke-static {v1, v0, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_4

    .line 204
    .line 205
    :goto_2
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    const-string v8, "readEventRecords handData Exception:"

    .line 211
    .line 212
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v6

    .line 219
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v3, v6}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 227
    .line 228
    .line 229
    iget-object v6, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 230
    .line 231
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    if-eqz v4, :cond_5

    .line 236
    .line 237
    iget-object v4, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 238
    .line 239
    new-array v6, v5, [Ljava/lang/String;

    .line 240
    .line 241
    invoke-static {v4, v1, v6}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 245
    .line 246
    new-array v4, v5, [Ljava/lang/String;

    .line 247
    .line 248
    invoke-static {v1, v0, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    goto :goto_4

    .line 252
    :cond_5
    iget-object v4, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 253
    .line 254
    iget-object v5, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 255
    .line 256
    invoke-static {v4, v5}, Lhb/o0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    iget-object v5, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 261
    .line 262
    filled-new-array {v4}, [Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-static {v5, v1, v6}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 270
    .line 271
    filled-new-array {v4}, [Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v4

    .line 275
    invoke-static {v1, v0, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    goto :goto_4

    .line 279
    :goto_3
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v8, "readEventRecords handData IllegalArgumentException:"

    .line 285
    .line 286
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v6

    .line 300
    invoke-static {v3, v6}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 301
    .line 302
    .line 303
    iget-object v6, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 304
    .line 305
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    .line 307
    .line 308
    move-result v4

    .line 309
    if-eqz v4, :cond_6

    .line 310
    .line 311
    iget-object v4, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 312
    .line 313
    new-array v6, v5, [Ljava/lang/String;

    .line 314
    .line 315
    invoke-static {v4, v1, v6}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 316
    .line 317
    .line 318
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 319
    .line 320
    new-array v4, v5, [Ljava/lang/String;

    .line 321
    .line 322
    invoke-static {v1, v0, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    goto :goto_4

    .line 326
    :cond_6
    iget-object v4, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v5, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 329
    .line 330
    invoke-static {v4, v5}, Lhb/o0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v4

    .line 334
    iget-object v5, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 335
    .line 336
    filled-new-array {v4}, [Ljava/lang/String;

    .line 337
    .line 338
    .line 339
    move-result-object v6

    .line 340
    invoke-static {v5, v1, v6}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 344
    .line 345
    filled-new-array {v4}, [Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v4

    .line 349
    invoke-static {v1, v0, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    :goto_4
    if-eqz v2, :cond_7

    .line 353
    .line 354
    const-string v0, "refresh local key"

    .line 355
    .line 356
    invoke-static {v3, v0}, Lhb/f1;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {}, Lhb/q0;->g()Lhb/q0;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {v0}, Lhb/q0;->d()V

    .line 364
    .line 365
    .line 366
    :cond_7
    return-void

    .line 367
    :goto_5
    iget-object v3, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 370
    .line 371
    .line 372
    move-result v3

    .line 373
    if-eqz v3, :cond_8

    .line 374
    .line 375
    iget-object v3, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 376
    .line 377
    new-array v4, v5, [Ljava/lang/String;

    .line 378
    .line 379
    invoke-static {v3, v1, v4}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 383
    .line 384
    new-array v3, v5, [Ljava/lang/String;

    .line 385
    .line 386
    invoke-static {v1, v0, v3}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_6

    .line 390
    :cond_8
    iget-object v3, p0, Lhb/e1;->b:Ljava/lang/String;

    .line 391
    .line 392
    iget-object v4, p0, Lhb/e1;->c:Ljava/lang/String;

    .line 393
    .line 394
    invoke-static {v3, v4}, Lhb/o0;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v3

    .line 398
    iget-object v4, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 399
    .line 400
    filled-new-array {v3}, [Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-static {v4, v1, v5}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    iget-object v1, p0, Lhb/e1;->a:Landroid/content/Context;

    .line 408
    .line 409
    filled-new-array {v3}, [Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object v3

    .line 413
    invoke-static {v1, v0, v3}, Lhb/l;->d(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    :goto_6
    throw v2
.end method
