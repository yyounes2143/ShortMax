.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/a;
.super Ljava/lang/Object;
.source "AdFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;,
        Lcom/startshorts/androidplayer/manager/immersion/feature/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/immersion/feature/a;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/a;->c(Lcom/startshorts/androidplayer/manager/immersion/feature/a;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/manager/immersion/feature/a;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/a;->a:Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 25
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/feature/a$b;->$EnumSwitchMapping$0:[I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    aget v0, v2, v0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    if-eq v0, v2, :cond_20

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    const-string v3, ""

    .line 25
    .line 26
    const-string v4, "from"

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v6, 0x0

    .line 30
    if-eq v0, v2, :cond_12

    .line 31
    .line 32
    const/4 v2, 0x3

    .line 33
    if-eq v0, v2, :cond_0

    .line 34
    .line 35
    :goto_0
    move-object/from16 v2, p0

    .line 36
    .line 37
    goto/16 :goto_18

    .line 38
    .line 39
    :cond_0
    sget-object v0, Lud/a;->a:Lud/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lud/a;->a()Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/AdNewConfig;->getAdConfig()Lcom/startshorts/androidplayer/bean/ad/AdConfig;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/AdConfig;->getBackHomeInt()Lcom/startshorts/androidplayer/bean/ad/BackHomeInt;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/BackHomeInt;->isEnableShow()Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    :cond_1
    const-string v0, "finished_by_other_immersion_activity"

    .line 64
    .line 65
    const-string/jumbo v2, "show_mini_window"

    .line 66
    .line 67
    .line 68
    if-eqz v5, :cond_9

    .line 69
    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    if-eqz v5, :cond_2

    .line 75
    .line 76
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    goto :goto_1

    .line 81
    :cond_2
    move-object v5, v6

    .line 82
    :goto_1
    instance-of v7, v5, Ljava/lang/Boolean;

    .line 83
    .line 84
    if-eqz v7, :cond_3

    .line 85
    .line 86
    check-cast v5, Ljava/lang/Boolean;

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_3
    move-object v5, v6

    .line 90
    :goto_2
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 91
    .line 92
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    if-eqz v8, :cond_4

    .line 101
    .line 102
    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move-object v8, v6

    .line 108
    :goto_3
    instance-of v9, v8, Ljava/lang/Boolean;

    .line 109
    .line 110
    if-eqz v9, :cond_5

    .line 111
    .line 112
    check-cast v8, Ljava/lang/Boolean;

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    move-object v8, v6

    .line 116
    :goto_4
    invoke-static {v8, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v7

    .line 120
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    if-eqz v8, :cond_6

    .line 125
    .line 126
    invoke-virtual {v8, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    goto :goto_5

    .line 131
    :cond_6
    move-object v8, v6

    .line 132
    :goto_5
    instance-of v9, v8, Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v9, :cond_7

    .line 135
    .line 136
    check-cast v8, Ljava/lang/String;

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_7
    move-object v8, v6

    .line 140
    :goto_6
    if-nez v8, :cond_8

    .line 141
    .line 142
    move-object v10, v3

    .line 143
    goto :goto_7

    .line 144
    :cond_8
    move-object v10, v8

    .line 145
    :goto_7
    if-nez v5, :cond_9

    .line 146
    .line 147
    if-nez v7, :cond_9

    .line 148
    .line 149
    sget-object v9, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 150
    .line 151
    sget-object v0, Lfk/a;->a:Lfk/a;

    .line 152
    .line 153
    invoke-virtual {v0}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 154
    .line 155
    .line 156
    move-result-object v11

    .line 157
    const/16 v23, 0x7e8

    .line 158
    .line 159
    const/16 v24, 0x0

    .line 160
    .line 161
    const-string v12, "exit_immersion_page"

    .line 162
    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x1

    .line 165
    const/4 v15, 0x0

    .line 166
    const/16 v16, 0x0

    .line 167
    .line 168
    const-wide/16 v17, 0x0

    .line 169
    .line 170
    const-wide/16 v19, 0x0

    .line 171
    .line 172
    const/16 v21, 0x0

    .line 173
    .line 174
    const/16 v22, 0x0

    .line 175
    .line 176
    invoke-static/range {v9 .. v24}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    if-eqz v5, :cond_a

    .line 185
    .line 186
    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    goto :goto_8

    .line 191
    :cond_a
    move-object v2, v6

    .line 192
    :goto_8
    instance-of v5, v2, Ljava/lang/Boolean;

    .line 193
    .line 194
    if-eqz v5, :cond_b

    .line 195
    .line 196
    check-cast v2, Ljava/lang/Boolean;

    .line 197
    .line 198
    goto :goto_9

    .line 199
    :cond_b
    move-object v2, v6

    .line 200
    :goto_9
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 201
    .line 202
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 207
    .line 208
    .line 209
    move-result-object v7

    .line 210
    if-eqz v7, :cond_c

    .line 211
    .line 212
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    goto :goto_a

    .line 217
    :cond_c
    move-object v4, v6

    .line 218
    :goto_a
    instance-of v7, v4, Ljava/lang/String;

    .line 219
    .line 220
    if-eqz v7, :cond_d

    .line 221
    .line 222
    check-cast v4, Ljava/lang/String;

    .line 223
    .line 224
    goto :goto_b

    .line 225
    :cond_d
    move-object v4, v6

    .line 226
    :goto_b
    if-nez v4, :cond_e

    .line 227
    .line 228
    goto :goto_c

    .line 229
    :cond_e
    move-object v3, v4

    .line 230
    :goto_c
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz v1, :cond_f

    .line 235
    .line 236
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    goto :goto_d

    .line 241
    :cond_f
    move-object v0, v6

    .line 242
    :goto_d
    instance-of v1, v0, Ljava/lang/Boolean;

    .line 243
    .line 244
    if-eqz v1, :cond_10

    .line 245
    .line 246
    move-object v6, v0

    .line 247
    check-cast v6, Ljava/lang/Boolean;

    .line 248
    .line 249
    :cond_10
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-nez v2, :cond_11

    .line 254
    .line 255
    if-nez v0, :cond_11

    .line 256
    .line 257
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 258
    .line 259
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->m()V

    .line 260
    .line 261
    .line 262
    sget-object v1, Lfk/a;->a:Lfk/a;

    .line 263
    .line 264
    invoke-virtual {v1}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->r(Ljava/lang/String;Landroid/app/Activity;)Z

    .line 269
    .line 270
    .line 271
    :cond_11
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 272
    .line 273
    const-string/jumbo v1, "watch_continuous"

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->g(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_12
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    if-eqz v2, :cond_13

    .line 288
    .line 289
    return-void

    .line 290
    :cond_13
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 291
    .line 292
    .line 293
    move-result-object v2

    .line 294
    if-eqz v2, :cond_14

    .line 295
    .line 296
    const-string v7, "is_enable_interstitial_ad"

    .line 297
    .line 298
    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v2

    .line 302
    goto :goto_e

    .line 303
    :cond_14
    move-object v2, v6

    .line 304
    :goto_e
    instance-of v7, v2, Ljava/lang/Boolean;

    .line 305
    .line 306
    if-eqz v7, :cond_15

    .line 307
    .line 308
    check-cast v2, Ljava/lang/Boolean;

    .line 309
    .line 310
    goto :goto_f

    .line 311
    :cond_15
    move-object v2, v6

    .line 312
    :goto_f
    if-eqz v2, :cond_16

    .line 313
    .line 314
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 315
    .line 316
    .line 317
    move-result v2

    .line 318
    goto :goto_10

    .line 319
    :cond_16
    move v2, v5

    .line 320
    :goto_10
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 321
    .line 322
    .line 323
    move-result-object v7

    .line 324
    if-eqz v7, :cond_17

    .line 325
    .line 326
    const-string v8, "is_show_interstitial_ad"

    .line 327
    .line 328
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object v7

    .line 332
    goto :goto_11

    .line 333
    :cond_17
    move-object v7, v6

    .line 334
    :goto_11
    instance-of v8, v7, Ljava/lang/Boolean;

    .line 335
    .line 336
    if-eqz v8, :cond_18

    .line 337
    .line 338
    check-cast v7, Ljava/lang/Boolean;

    .line 339
    .line 340
    goto :goto_12

    .line 341
    :cond_18
    move-object v7, v6

    .line 342
    :goto_12
    if-eqz v7, :cond_19

    .line 343
    .line 344
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    :cond_19
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 349
    .line 350
    .line 351
    move-result-object v7

    .line 352
    if-eqz v7, :cond_1a

    .line 353
    .line 354
    invoke-virtual {v7, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    .line 356
    .line 357
    move-result-object v4

    .line 358
    goto :goto_13

    .line 359
    :cond_1a
    move-object v4, v6

    .line 360
    :goto_13
    instance-of v7, v4, Ljava/lang/String;

    .line 361
    .line 362
    if-eqz v7, :cond_1b

    .line 363
    .line 364
    check-cast v4, Ljava/lang/String;

    .line 365
    .line 366
    goto :goto_14

    .line 367
    :cond_1b
    move-object v4, v6

    .line 368
    :goto_14
    if-nez v4, :cond_1c

    .line 369
    .line 370
    move-object v8, v3

    .line 371
    goto :goto_15

    .line 372
    :cond_1c
    move-object v8, v4

    .line 373
    :goto_15
    if-eqz v2, :cond_1f

    .line 374
    .line 375
    if-eqz v5, :cond_1f

    .line 376
    .line 377
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    if-eqz v1, :cond_1d

    .line 382
    .line 383
    const-string v2, "episode"

    .line 384
    .line 385
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v1

    .line 389
    goto :goto_16

    .line 390
    :cond_1d
    move-object v1, v6

    .line 391
    :goto_16
    instance-of v2, v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 392
    .line 393
    if-eqz v2, :cond_1e

    .line 394
    .line 395
    move-object v6, v1

    .line 396
    check-cast v6, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 397
    .line 398
    :cond_1e
    move-object v11, v6

    .line 399
    sget-object v7, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 400
    .line 401
    sget-object v1, Lfk/a;->a:Lfk/a;

    .line 402
    .line 403
    invoke-virtual {v1}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 404
    .line 405
    .line 406
    move-result-object v9

    .line 407
    new-instance v1, Lhf/a;

    .line 408
    .line 409
    move-object/from16 v2, p0

    .line 410
    .line 411
    invoke-direct {v1, v2}, Lhf/a;-><init>(Lcom/startshorts/androidplayer/manager/immersion/feature/a;)V

    .line 412
    .line 413
    .line 414
    const/16 v21, 0x3e0

    .line 415
    .line 416
    const/16 v22, 0x0

    .line 417
    .line 418
    const-string v10, "immersion_switch_episode"

    .line 419
    .line 420
    const/4 v12, 0x1

    .line 421
    const/4 v13, 0x0

    .line 422
    const/4 v14, 0x0

    .line 423
    const-wide/16 v15, 0x0

    .line 424
    .line 425
    const-wide/16 v17, 0x0

    .line 426
    .line 427
    const/16 v19, 0x0

    .line 428
    .line 429
    move-object/from16 v20, v1

    .line 430
    .line 431
    invoke-static/range {v7 .. v22}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->w(Lcom/startshorts/androidplayer/manager/configure/ad/c;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;JJZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Z

    .line 432
    .line 433
    .line 434
    goto :goto_17

    .line 435
    :cond_1f
    move-object/from16 v2, p0

    .line 436
    .line 437
    :goto_17
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 438
    .line 439
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 440
    .line 441
    .line 442
    goto :goto_18

    .line 443
    :cond_20
    move-object/from16 v2, p0

    .line 444
    .line 445
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 446
    .line 447
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 448
    .line 449
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 450
    .line 451
    .line 452
    sget-object v1, Lcom/startshorts/androidplayer/bean/ad/AdScene;->INTERSTITIAL:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 453
    .line 454
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 455
    .line 456
    .line 457
    :goto_18
    return-void
.end method

.method public final d(Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/a;->a:Lcom/startshorts/androidplayer/manager/immersion/feature/a$a;

    .line 2
    .line 3
    return-void
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->AD:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
