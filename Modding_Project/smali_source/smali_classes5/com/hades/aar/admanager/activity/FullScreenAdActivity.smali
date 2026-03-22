.class public final Lcom/hades/aar/admanager/activity/FullScreenAdActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFullScreenAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenAdActivity.kt\ncom/hades/aar/admanager/activity/FullScreenAdActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,274:1\n1#2:275\n256#3,2:276\n*S KotlinDebug\n*F\n+ 1 FullScreenAdActivity.kt\ncom/hades/aar/admanager/activity/FullScreenAdActivity\n*L\n157#1:276,2\n*E\n"
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/ConcurrentHashMap;

.field public static final g:Landroid/os/Handler;

.field public static final h:Lgt/g0;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lca/d;

.field public c:Lca/f;

.field public d:Lkotlinx/coroutines/r;

.field public e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->g:Landroid/os/Handler;

    .line 18
    .line 19
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->h:Lgt/g0;

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBackPressed()V
    .locals 3

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "AdManagerFullScreenAdActivity"

    .line 4
    .line 5
    const-string v2, "onBackPressed ignored"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "extra_ad_show_id"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->a:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_c

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :cond_0
    sget-object v0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    iget-object v1, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lkotlin/Pair;

    .line 37
    .line 38
    const-string v9, "AdManagerFullScreenAdActivity"

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "onCreate failed: Data missing for ID "

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    sget-object v1, Lga/a;->a:Lga/a;

    .line 59
    .line 60
    invoke-virtual {v1, v9, v0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_1
    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lca/d;

    .line 72
    .line 73
    iput-object v1, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->b:Lca/d;

    .line 74
    .line 75
    invoke-virtual {v0}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Lca/f;

    .line 80
    .line 81
    iput-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->c:Lca/f;

    .line 82
    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    const-string v1, "onCreate -> adShowId="

    .line 86
    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->a:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v1, ", adInfo="

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    iget-object v1, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->b:Lca/d;

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sget-object v1, Lga/a;->a:Lga/a;

    .line 110
    .line 111
    invoke-virtual {v1, v9, v0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->c:Lca/f;

    .line 115
    .line 116
    const/4 v10, 0x0

    .line 117
    if-eqz v0, :cond_2

    .line 118
    .line 119
    invoke-virtual {v0}, Lca/f;->b()Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_2

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    goto :goto_1

    .line 130
    :cond_2
    iget-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->b:Lca/d;

    .line 131
    .line 132
    if-eqz v0, :cond_3

    .line 133
    .line 134
    invoke-virtual {v0}, Lca/d;->h()Lcom/hades/aar/admanager/core/AdFormat;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    goto :goto_0

    .line 139
    :cond_3
    move-object v0, v10

    .line 140
    :goto_0
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->NATIVE:Lcom/hades/aar/admanager/core/AdFormat;

    .line 141
    .line 142
    if-ne v0, v1, :cond_4

    .line 143
    .line 144
    sget v0, Lba/b;->b:I

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_4
    sget v0, Lba/b;->a:I

    .line 148
    .line 149
    :goto_1
    invoke-virtual {v8, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 150
    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 154
    .line 155
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/high16 v2, -0x80000000

    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 162
    .line 163
    .line 164
    const/high16 v2, -0x1000000

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object v2

    .line 173
    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 174
    .line 175
    .line 176
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    goto :goto_2

    .line 181
    :catchall_0
    move-exception v0

    .line 182
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 183
    .line 184
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    if-eqz v0, :cond_5

    .line 197
    .line 198
    new-instance v2, Ljava/lang/StringBuilder;

    .line 199
    .line 200
    const-string v3, "setStatusBarColor error: "

    .line 201
    .line 202
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v0

    .line 216
    sget-object v2, Lga/a;->a:Lga/a;

    .line 217
    .line 218
    invoke-virtual {v2, v9, v0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    :cond_5
    iget-object v11, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->b:Lca/d;

    .line 222
    .line 223
    if-nez v11, :cond_7

    .line 224
    .line 225
    iget-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->c:Lca/f;

    .line 226
    .line 227
    if-eqz v0, :cond_6

    .line 228
    .line 229
    invoke-virtual {v0}, Lca/f;->n()Lca/f$e;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    if-eqz v0, :cond_6

    .line 234
    .line 235
    const-string v1, "AdInfo is null"

    .line 236
    .line 237
    invoke-interface {v0, v10, v1}, Lca/f$e;->a(Lca/d;Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_3

    .line 244
    .line 245
    :cond_7
    iget-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->c:Lca/f;

    .line 246
    .line 247
    if-nez v0, :cond_8

    .line 248
    .line 249
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_3

    .line 253
    .line 254
    :cond_8
    sget v2, Lba/a;->a:I

    .line 255
    .line 256
    invoke-virtual {v8, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    check-cast v2, Landroid/widget/FrameLayout;

    .line 261
    .line 262
    const-string v3, "container"

    .line 263
    .line 264
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    new-instance v12, Lca/f;

    .line 268
    .line 269
    invoke-direct {v12}, Lca/f;-><init>()V

    .line 270
    .line 271
    .line 272
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 273
    .line 274
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v12, v3}, Lca/f;->s(Ljava/lang/ref/WeakReference;)V

    .line 278
    .line 279
    .line 280
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 281
    .line 282
    invoke-direct {v2, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v12, v2}, Lca/f;->q(Ljava/lang/ref/WeakReference;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Lca/f;->e()Ljava/lang/Integer;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    invoke-virtual {v12, v2}, Lca/f;->u(Ljava/lang/Integer;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v0}, Lca/f;->f()Ljava/util/List;

    .line 296
    .line 297
    .line 298
    move-result-object v2

    .line 299
    invoke-virtual {v12, v2}, Lca/f;->v(Ljava/util/List;)V

    .line 300
    .line 301
    .line 302
    const-wide/16 v2, 0x0

    .line 303
    .line 304
    invoke-virtual {v12, v2, v3}, Lca/f;->z(J)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {v12, v2, v3}, Lca/f;->A(J)V

    .line 308
    .line 309
    .line 310
    new-instance v2, Lb/b;

    .line 311
    .line 312
    invoke-virtual {v0}, Lca/f;->n()Lca/f$e;

    .line 313
    .line 314
    .line 315
    move-result-object v3

    .line 316
    new-instance v4, Lad-manager/a/c;

    .line 317
    .line 318
    invoke-direct {v4, v8}, Lad-manager/a/c;-><init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;)V

    .line 319
    .line 320
    .line 321
    invoke-direct {v2, v3, v4}, Lb/b;-><init>(Lca/f$e;Lad-manager/a/c;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v12, v2}, Lca/f;->D(Lca/f$e;)V

    .line 325
    .line 326
    .line 327
    new-instance v2, Lb/a;

    .line 328
    .line 329
    invoke-virtual {v0}, Lca/f;->h()Lca/f$c;

    .line 330
    .line 331
    .line 332
    move-result-object v3

    .line 333
    new-instance v4, Lad-manager/a/d;

    .line 334
    .line 335
    invoke-direct {v4, v8}, Lad-manager/a/d;-><init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;)V

    .line 336
    .line 337
    .line 338
    invoke-direct {v2, v3, v4}, Lb/a;-><init>(Lca/f$c;Lad-manager/a/d;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v12, v2}, Lca/f;->x(Lca/f$c;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0}, Lca/f;->g()Lca/f$b;

    .line 345
    .line 346
    .line 347
    move-result-object v2

    .line 348
    invoke-virtual {v12, v2}, Lca/f;->w(Lca/f$b;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0}, Lca/f;->m()Lca/f$d;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    invoke-virtual {v12, v2}, Lca/f;->B(Lca/f$d;)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v0}, Lca/f;->d()Lca/f$a;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    invoke-virtual {v12, v0}, Lca/f;->t(Lca/f$a;)V

    .line 363
    .line 364
    .line 365
    :try_start_1
    sget-object v0, Lca/k;->a:Lca/k;

    .line 366
    .line 367
    invoke-virtual {v0, v11, v12}, Lca/k;->v(Lca/d;Lca/f;)V

    .line 368
    .line 369
    .line 370
    sget v0, Lba/a;->f:I

    .line 371
    .line 372
    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    move-object v3, v0

    .line 377
    check-cast v3, Landroid/widget/TextView;

    .line 378
    .line 379
    if-nez v3, :cond_9

    .line 380
    .line 381
    goto :goto_3

    .line 382
    :cond_9
    sget v0, Lba/a;->d:I

    .line 383
    .line 384
    invoke-virtual {v8, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 389
    .line 390
    .line 391
    sget-object v13, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->h:Lgt/g0;

    .line 392
    .line 393
    new-instance v16, Lad-manager/a/e;

    .line 394
    .line 395
    const/4 v7, 0x0

    .line 396
    move-object/from16 v1, v16

    .line 397
    .line 398
    move-object/from16 v2, p0

    .line 399
    .line 400
    move-object v5, v11

    .line 401
    move-object v6, v12

    .line 402
    invoke-direct/range {v1 .. v7}, Lad-manager/a/e;-><init>(Lcom/hades/aar/admanager/activity/FullScreenAdActivity;Landroid/widget/TextView;Landroid/view/View;Lca/d;Lca/f;Lrs/c;)V

    .line 403
    .line 404
    .line 405
    const/16 v17, 0x3

    .line 406
    .line 407
    const/16 v18, 0x0

    .line 408
    .line 409
    const/4 v14, 0x0

    .line 410
    const/4 v15, 0x0

    .line 411
    invoke-static/range {v13 .. v18}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    iput-object v0, v8, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->d:Lkotlinx/coroutines/r;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 416
    .line 417
    goto :goto_3

    .line 418
    :catch_0
    move-exception v0

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v2, "showAdContent exception: "

    .line 422
    .line 423
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v1

    .line 437
    sget-object v2, Lga/a;->a:Lga/a;

    .line 438
    .line 439
    invoke-virtual {v2, v9, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    sget-object v1, Lca/k;->a:Lca/k;

    .line 443
    .line 444
    invoke-virtual {v1}, Lca/k;->a()Ld/f;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    if-eqz v1, :cond_a

    .line 449
    .line 450
    invoke-interface {v1}, Ld/f;->b()Lda/f;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    if-eqz v1, :cond_a

    .line 455
    .line 456
    invoke-virtual {v1}, Lda/f;->r()Ld/a;

    .line 457
    .line 458
    .line 459
    move-result-object v10

    .line 460
    :cond_a
    if-eqz v10, :cond_b

    .line 461
    .line 462
    new-instance v1, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    const-string v2, "Exception: "

    .line 465
    .line 466
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 467
    .line 468
    .line 469
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v0

    .line 480
    invoke-static {v11, v0, v12}, Ld/a;->f(Lca/d;Ljava/lang/String;Lca/f;)V

    .line 481
    .line 482
    .line 483
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 484
    .line 485
    .line 486
    :goto_3
    return-void

    .line 487
    :cond_c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 488
    .line 489
    .line 490
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->d:Lkotlinx/coroutines/r;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->a:Ljava/lang/String;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->f:Ljava/util/concurrent/ConcurrentHashMap;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lkotlin/Pair;

    .line 24
    .line 25
    :cond_1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 26
    .line 27
    const-string v1, "AdManagerFullScreenAdActivity"

    .line 28
    .line 29
    const-string v2, "onDestroy"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method public final onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/hades/aar/admanager/activity/FullScreenAdActivity;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method public final overridePendingTransition(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-super {p0, p1, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
