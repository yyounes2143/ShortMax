.class public final Lng/g;
.super Ljava/lang/Object;
.source "TurboLinkManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTurboLinkManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TurboLinkManager.kt\ncom/startshorts/androidplayer/repo/config/appConfig/TurboLinkManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,296:1\n1#2:297\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lng/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lng/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lng/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lng/g;->a:Lng/g;

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

.method public static synthetic a(Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lng/g;->n(Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lng/g;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lng/g;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    .line 1
    move-object v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    :try_start_0
    const-string v3, "//"

    .line 5
    .line 6
    filled-new-array {v3}, [Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v5

    .line 10
    const/4 v8, 0x6

    .line 11
    const/4 v9, 0x0

    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object/from16 v4, p2

    .line 15
    .line 16
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    move-object v4, v3

    .line 25
    check-cast v4, Ljava/lang/CharSequence;

    .line 26
    .line 27
    const-string v3, ":"

    .line 28
    .line 29
    filled-new-array {v3}, [Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    const/4 v8, 0x6

    .line 34
    const/4 v9, 0x0

    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v7, 0x0

    .line 37
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v7, v3

    .line 46
    check-cast v7, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v7, :cond_13

    .line 49
    .line 50
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    .line 51
    .line 52
    .line 53
    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    const-string v4, "TurboLink"

    .line 55
    .line 56
    const-string v5, "from"

    .line 57
    .line 58
    const/4 v6, 0x0

    .line 59
    sparse-switch v3, :sswitch_data_0

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :sswitch_0
    :try_start_1
    const-string v3, "tbo_account_login_result"

    .line 65
    .line 66
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    goto/16 :goto_2

    .line 73
    .line 74
    :cond_0
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 75
    .line 76
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->O0()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    if-eqz v3, :cond_2

    .line 81
    .line 82
    new-instance v1, Landroid/content/Intent;

    .line 83
    .line 84
    const-class v3, Lcom/startshorts/androidplayer/ui/activity/auth/Login2Activity;

    .line 85
    .line 86
    invoke-direct {v1, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    .line 91
    .line 92
    const-string v3, "isFromTurboLink"

    .line 93
    .line 94
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    instance-of v2, v0, Landroid/app/Activity;

    .line 98
    .line 99
    if-nez v2, :cond_1

    .line 100
    .line 101
    const/high16 v2, 0x10000000

    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    goto/16 :goto_3

    .line 109
    .line 110
    :cond_1
    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 115
    .line 116
    sget-object v3, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 117
    .line 118
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/ui/fragment/a;->b()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    new-array v1, v1, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 123
    .line 124
    invoke-virtual {v2, p1, v3, v1}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 125
    .line 126
    .line 127
    :goto_1
    instance-of v1, v0, Landroid/app/Activity;

    .line 128
    .line 129
    if-eqz v1, :cond_3

    .line 130
    .line 131
    move-object v6, v0

    .line 132
    check-cast v6, Landroid/app/Activity;

    .line 133
    .line 134
    :cond_3
    if-eqz v6, :cond_14

    .line 135
    .line 136
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 137
    .line 138
    .line 139
    goto/16 :goto_4

    .line 140
    .line 141
    :sswitch_1
    const-string v1, "tbo_play_series"

    .line 142
    .line 143
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-nez v1, :cond_4

    .line 148
    .line 149
    goto/16 :goto_2

    .line 150
    .line 151
    :cond_4
    invoke-direct {p0}, Lng/g;->i()V

    .line 152
    .line 153
    .line 154
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 159
    .line 160
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 161
    .line 162
    const-string v10, "TurboLink"

    .line 163
    .line 164
    const/16 v12, 0xa

    .line 165
    .line 166
    const/4 v13, 0x0

    .line 167
    const/4 v9, 0x0

    .line 168
    const/4 v11, 0x0

    .line 169
    move-object v7, v2

    .line 170
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    instance-of v1, v0, Landroid/app/Activity;

    .line 177
    .line 178
    if-eqz v1, :cond_5

    .line 179
    .line 180
    move-object v6, v0

    .line 181
    check-cast v6, Landroid/app/Activity;

    .line 182
    .line 183
    :cond_5
    if-eqz v6, :cond_14

    .line 184
    .line 185
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 186
    .line 187
    .line 188
    goto/16 :goto_4

    .line 189
    .line 190
    :sswitch_2
    const-string v3, "tbo_purchase_success"

    .line 191
    .line 192
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v3

    .line 196
    if-nez v3, :cond_6

    .line 197
    .line 198
    goto/16 :goto_2

    .line 199
    .line 200
    :cond_6
    sget-object v3, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 201
    .line 202
    sget-object v6, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 203
    .line 204
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/fragment/a;->n()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    new-instance v7, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 209
    .line 210
    invoke-direct {v7, v5, v4}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    new-array v2, v2, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 214
    .line 215
    aput-object v7, v2, v1

    .line 216
    .line 217
    invoke-virtual {v3, p1, v6, v2}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->b(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)V

    .line 218
    .line 219
    .line 220
    goto/16 :goto_4

    .line 221
    .line 222
    :sswitch_3
    const-string v1, "tbo_watch_ad_success"

    .line 223
    .line 224
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_7

    .line 229
    .line 230
    goto/16 :goto_2

    .line 231
    .line 232
    :cond_7
    instance-of v1, v0, Landroid/app/Activity;

    .line 233
    .line 234
    if-eqz v1, :cond_8

    .line 235
    .line 236
    move-object v6, v0

    .line 237
    check-cast v6, Landroid/app/Activity;

    .line 238
    .line 239
    :cond_8
    if-eqz v6, :cond_14

    .line 240
    .line 241
    sget-object v0, Lng/g;->a:Lng/g;

    .line 242
    .line 243
    invoke-direct {v0, v6}, Lng/g;->m(Landroid/app/Activity;)V

    .line 244
    .line 245
    .line 246
    goto/16 :goto_4

    .line 247
    .line 248
    :sswitch_4
    const-string v1, "tbo_reel_play"

    .line 249
    .line 250
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_9

    .line 255
    .line 256
    goto/16 :goto_2

    .line 257
    .line 258
    :cond_9
    invoke-direct {p0}, Lng/g;->i()V

    .line 259
    .line 260
    .line 261
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 266
    .line 267
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 268
    .line 269
    const-string v10, "TurboLink"

    .line 270
    .line 271
    const/16 v12, 0xa

    .line 272
    .line 273
    const/4 v13, 0x0

    .line 274
    const/4 v9, 0x0

    .line 275
    const/4 v11, 0x0

    .line 276
    move-object v7, v2

    .line 277
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 281
    .line 282
    .line 283
    instance-of v1, v0, Landroid/app/Activity;

    .line 284
    .line 285
    if-eqz v1, :cond_a

    .line 286
    .line 287
    move-object v6, v0

    .line 288
    check-cast v6, Landroid/app/Activity;

    .line 289
    .line 290
    :cond_a
    if-eqz v6, :cond_14

    .line 291
    .line 292
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_4

    .line 296
    .line 297
    :sswitch_5
    const-string v1, "tbo_share_task"

    .line 298
    .line 299
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-nez v1, :cond_b

    .line 304
    .line 305
    goto/16 :goto_2

    .line 306
    .line 307
    :cond_b
    sget-object v1, Lcom/startshorts/androidplayer/utils/IntentUtil;->a:Lcom/startshorts/androidplayer/utils/IntentUtil;

    .line 308
    .line 309
    const/4 v5, 0x4

    .line 310
    const/4 v6, 0x0

    .line 311
    const/4 v4, 0x0

    .line 312
    move-object v2, p1

    .line 313
    move-object/from16 v3, p3

    .line 314
    .line 315
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/IntentUtil;->g(Lcom/startshorts/androidplayer/utils/IntentUtil;Landroid/content/Context;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/IntentUtil$a;ILjava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 319
    .line 320
    new-instance v1, Ljava/util/HashMap;

    .line 321
    .line 322
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 323
    .line 324
    .line 325
    const-string v2, "share_result"

    .line 326
    .line 327
    const-string v3, "1"

    .line 328
    .line 329
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    .line 331
    .line 332
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 333
    .line 334
    invoke-virtual {v0, v7, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_4

    .line 338
    .line 339
    :sswitch_6
    const-string v1, "tbo_play_time"

    .line 340
    .line 341
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v1

    .line 345
    if-nez v1, :cond_c

    .line 346
    .line 347
    goto/16 :goto_2

    .line 348
    .line 349
    :cond_c
    invoke-direct {p0}, Lng/g;->i()V

    .line 350
    .line 351
    .line 352
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 357
    .line 358
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 359
    .line 360
    const-string v10, "TurboLink"

    .line 361
    .line 362
    const/16 v12, 0xa

    .line 363
    .line 364
    const/4 v13, 0x0

    .line 365
    const/4 v9, 0x0

    .line 366
    const/4 v11, 0x0

    .line 367
    move-object v7, v2

    .line 368
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 372
    .line 373
    .line 374
    instance-of v1, v0, Landroid/app/Activity;

    .line 375
    .line 376
    if-eqz v1, :cond_d

    .line 377
    .line 378
    move-object v6, v0

    .line 379
    check-cast v6, Landroid/app/Activity;

    .line 380
    .line 381
    :cond_d
    if-eqz v6, :cond_14

    .line 382
    .line 383
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 384
    .line 385
    .line 386
    goto/16 :goto_4

    .line 387
    .line 388
    :sswitch_7
    const-string v1, "tbo_favorite"

    .line 389
    .line 390
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 391
    .line 392
    .line 393
    move-result v1

    .line 394
    if-nez v1, :cond_e

    .line 395
    .line 396
    goto/16 :goto_2

    .line 397
    .line 398
    :cond_e
    sget-object v1, Lud/b;->a:Lud/b;

    .line 399
    .line 400
    invoke-virtual {v1, v2}, Lud/b;->h5(Z)V

    .line 401
    .line 402
    .line 403
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 408
    .line 409
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 410
    .line 411
    const-string v10, "TurboLink"

    .line 412
    .line 413
    const/16 v12, 0xa

    .line 414
    .line 415
    const/4 v13, 0x0

    .line 416
    const/4 v9, 0x0

    .line 417
    const/4 v11, 0x0

    .line 418
    move-object v7, v2

    .line 419
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 423
    .line 424
    .line 425
    instance-of v1, v0, Landroid/app/Activity;

    .line 426
    .line 427
    if-eqz v1, :cond_f

    .line 428
    .line 429
    move-object v6, v0

    .line 430
    check-cast v6, Landroid/app/Activity;

    .line 431
    .line 432
    :cond_f
    if-eqz v6, :cond_14

    .line 433
    .line 434
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_4

    .line 438
    .line 439
    :sswitch_8
    const-string v1, "tbo_reel_play_go"

    .line 440
    .line 441
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-nez v1, :cond_10

    .line 446
    .line 447
    goto :goto_2

    .line 448
    :cond_10
    invoke-direct {p0}, Lng/g;->i()V

    .line 449
    .line 450
    .line 451
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    new-instance v2, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;

    .line 456
    .line 457
    sget-object v8, Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;->SHORTS:Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;

    .line 458
    .line 459
    const-string v10, "TurboLink"

    .line 460
    .line 461
    const/16 v12, 0xa

    .line 462
    .line 463
    const/4 v13, 0x0

    .line 464
    const/4 v9, 0x0

    .line 465
    const/4 v11, 0x0

    .line 466
    move-object v7, v2

    .line 467
    invoke-direct/range {v7 .. v13}, Lcom/startshorts/androidplayer/bean/eventbus/UpdateMainTabEvent;-><init>(Lcom/startshorts/androidplayer/bean/tab/MainTab$Type;ZLjava/lang/String;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v1, v2}, Lau/c;->l(Ljava/lang/Object;)V

    .line 471
    .line 472
    .line 473
    instance-of v1, v0, Landroid/app/Activity;

    .line 474
    .line 475
    if-eqz v1, :cond_11

    .line 476
    .line 477
    move-object v6, v0

    .line 478
    check-cast v6, Landroid/app/Activity;

    .line 479
    .line 480
    :cond_11
    if-eqz v6, :cond_14

    .line 481
    .line 482
    invoke-virtual {v6}, Landroid/app/Activity;->finish()V

    .line 483
    .line 484
    .line 485
    goto :goto_4

    .line 486
    :sswitch_9
    const-string v1, "tbo_subscribe_success"

    .line 487
    .line 488
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 489
    .line 490
    .line 491
    move-result v1

    .line 492
    if-nez v1, :cond_12

    .line 493
    .line 494
    goto :goto_2

    .line 495
    :cond_12
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity;->Q:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;

    .line 496
    .line 497
    const-string v3, "TurboLink"

    .line 498
    .line 499
    const/16 v8, 0x1c

    .line 500
    .line 501
    const/4 v9, 0x0

    .line 502
    const/4 v4, 0x0

    .line 503
    const/4 v5, 0x0

    .line 504
    const/4 v6, 0x0

    .line 505
    const/4 v7, 0x0

    .line 506
    move-object v2, p1

    .line 507
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;->b(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetailActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    goto :goto_4

    .line 511
    :cond_13
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 514
    .line 515
    .line 516
    const-string v1, "parseEventProperties_unknown event: "

    .line 517
    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 529
    .line 530
    .line 531
    goto :goto_4

    .line 532
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    const-string v2, "parseEventProperties error: "

    .line 538
    .line 539
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    move-object/from16 v2, p2

    .line 543
    .line 544
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    const-string v2, " \n_"

    .line 548
    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    .line 551
    .line 552
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    :cond_14
    :goto_4
    return-void

    .line 563
    :sswitch_data_0
    .sparse-switch
        -0x73298af0 -> :sswitch_9
        -0x69cc0394 -> :sswitch_8
        -0x54159ba6 -> :sswitch_7
        -0x341de206 -> :sswitch_6
        -0x2d056add -> :sswitch_5
        -0x255518c5 -> :sswitch_4
        0x4fd2e615 -> :sswitch_3
        0x51765783 -> :sswitch_2
        0x59e7b264 -> :sswitch_1
        0x67015c43 -> :sswitch_0
    .end sparse-switch
.end method

.method private final i()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "go_watch"

    .line 9
    .line 10
    const-string v3, "1"

    .line 11
    .line 12
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    const-string v2, "tbo_reel_play_go"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final m(Landroid/app/Activity;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 2
    .line 3
    new-instance v5, Lng/f;

    .line 4
    .line 5
    invoke-direct {v5}, Lng/f;-><init>()V

    .line 6
    .line 7
    .line 8
    const/16 v6, 0x8

    .line 9
    .line 10
    const/4 v7, 0x0

    .line 11
    const-string v1, ""

    .line 12
    .line 13
    const-string v3, "TurboLink"

    .line 14
    .line 15
    const/4 v4, 0x0

    .line 16
    move-object v2, p1

    .line 17
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->q0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final n(Z)Lkotlin/Unit;
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 6
    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string p0, "1"

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "0"

    .line 14
    .line 15
    :goto_0
    const-string v2, "ad_watch"

    .line 16
    .line 17
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    const-string p0, "tbo_watch_ad_success"

    .line 23
    .line 24
    invoke-virtual {v0, p0, v1}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->b(Ljava/lang/String;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    const/4 p0, 0x2

    .line 28
    invoke-static {p0}, Lai/turbolink/sdk/TurboLink$Campaign;->reLoadUrl(I)V

    .line 29
    .line 30
    .line 31
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method


# virtual methods
.method public final c(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lng/g;->b:Ljava/lang/String;

    .line 13
    .line 14
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lai/turbolink/sdk/TurboLink$Companion;->enableLogger()V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lng/g$a;

    .line 20
    .line 21
    invoke-direct {v0}, Lng/g$a;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lai/turbolink/sdk/TurboLink$Companion;->withEventCallback(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 28
    .line 29
    sget v2, Lcom/startshorts/androidplayer/R$string;->tblink_project_id:I

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget v2, Lcom/startshorts/androidplayer/R$string;->tblink_app_key:I

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget v2, Lcom/startshorts/androidplayer/R$string;->tblink_app_secret:I

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sget-object v6, Lng/g;->b:Ljava/lang/String;

    .line 48
    .line 49
    const/4 v7, 0x0

    .line 50
    move-object v2, p1

    .line 51
    invoke-virtual/range {v1 .. v7}, Lai/turbolink/sdk/TurboLink$Companion;->autoInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)Lai/turbolink/sdk/TurboLink;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final d(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lai/turbolink/sdk/TurboLink$Campaign;->loadUrl(Landroid/content/Context;Ljava/lang/String;)Lai/turbolink/sdk/campaign/CampaignBuilder;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lai/turbolink/sdk/campaign/CampaignBuilder;->build()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final e(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appUserId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-static {p1, p2}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->login(Landroid/app/Activity;Ljava/lang/String;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance p2, Lng/g$b;

    .line 36
    .line 37
    invoke-direct {p2}, Lng/g$b;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_0
    return-void
.end method

.method public final f(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->logout(Landroid/app/Activity;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lai/turbolink/sdk/events/TurboLinkEvent;->build()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final h(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 9
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "appUserId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    const/16 v7, 0x3c

    .line 32
    .line 33
    const/4 v8, 0x0

    .line 34
    const/4 v3, 0x0

    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    const/4 v6, 0x0

    .line 38
    move-object v1, p1

    .line 39
    move-object v2, p2

    .line 40
    invoke-static/range {v1 .. v8}, Lai/turbolink/sdk/TurboLink$DefaultEvent;->register$default(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lai/turbolink/sdk/events/TurboLinkEvent;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lng/g$c;

    .line 45
    .line 46
    invoke-direct {p2}, Lng/g$c;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p2}, Lai/turbolink/sdk/events/TurboLinkEvent;->build(Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method

.method public final j()V
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    new-instance v1, Lng/g$d;

    .line 4
    .line 5
    invoke-direct {v1}, Lng/g$d;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lai/turbolink/sdk/TurboLink$Companion;->withEventListenerCallback(Lai/turbolink/sdk/campaign/CampaignBuilder$EventListenerCallback;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final k(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "lang"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lai/turbolink/sdk/TurboLink$Campaign;->setLang(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final l(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appUserId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sput-object p1, Lng/g;->b:Ljava/lang/String;

    .line 14
    .line 15
    sget-object v1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v5, v0, [Ljava/lang/String;

    .line 19
    .line 20
    const-string v6, ""

    .line 21
    .line 22
    const-string v3, ""

    .line 23
    .line 24
    const-string v4, ""

    .line 25
    .line 26
    move-object v2, p1

    .line 27
    invoke-virtual/range {v1 .. v6}, Lai/turbolink/sdk/TurboLink$Companion;->setAppUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
