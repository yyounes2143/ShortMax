.class public final Lcom/inmobi/media/h5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/a4;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/j5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/j5;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/h5;->a:Lcom/inmobi/media/j5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/inmobi/media/Z3;FZJLcom/inmobi/media/R6;)V
    .locals 17

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "expandInput"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v3, "inputType"

    .line 11
    .line 12
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object/from16 v4, p0

    .line 16
    .line 17
    iget-object v5, v4, Lcom/inmobi/media/h5;->a:Lcom/inmobi/media/j5;

    .line 18
    .line 19
    iget-object v6, v5, Lcom/inmobi/media/j5;->a:Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    check-cast v6, Landroid/app/Activity;

    .line 26
    .line 27
    if-nez v6, :cond_0

    .line 28
    .line 29
    goto/16 :goto_d

    .line 30
    .line 31
    :cond_0
    iget-object v7, v5, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 32
    .line 33
    if-nez v7, :cond_2

    .line 34
    .line 35
    new-instance v7, Lcom/inmobi/media/Y3;

    .line 36
    .line 37
    invoke-direct {v7, v6}, Lcom/inmobi/media/Y3;-><init>(Landroid/app/Activity;)V

    .line 38
    .line 39
    .line 40
    iget-object v6, v5, Lcom/inmobi/media/j5;->h:Lcom/inmobi/media/z5;

    .line 41
    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    invoke-virtual {v7, v6}, Lcom/inmobi/media/Y3;->setLogger(Lcom/inmobi/media/z5;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    const v6, 0xffee

    .line 48
    .line 49
    .line 50
    invoke-virtual {v7, v6}, Landroid/view/View;->setId(I)V

    .line 51
    .line 52
    .line 53
    iget-object v6, v5, Lcom/inmobi/media/j5;->i:Lcom/inmobi/media/i5;

    .line 54
    .line 55
    invoke-virtual {v7, v6}, Lcom/inmobi/media/Y3;->setEmbeddedBrowserUpdateListener(Lcom/inmobi/media/b4;)V

    .line 56
    .line 57
    .line 58
    iput-object v7, v5, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 59
    .line 60
    :cond_2
    iget-object v6, v5, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 61
    .line 62
    instance-of v7, v6, Lcom/inmobi/media/ec;

    .line 63
    .line 64
    if-eqz v7, :cond_4

    .line 65
    .line 66
    iget-object v7, v5, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 67
    .line 68
    if-nez v7, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    check-cast v6, Lcom/inmobi/media/ec;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {v7, v6}, Lcom/inmobi/media/Y3;->setUserLeftApplicationListener(Lcom/inmobi/media/Fe;)V

    .line 78
    .line 79
    .line 80
    :cond_4
    :goto_0
    iget-object v6, v5, Lcom/inmobi/media/j5;->e:Lcom/inmobi/media/Y3;

    .line 81
    .line 82
    if-eqz v6, :cond_16

    .line 83
    .line 84
    iget-object v7, v5, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 85
    .line 86
    if-eqz v7, :cond_6

    .line 87
    .line 88
    invoke-interface {v7}, Lcom/inmobi/media/x;->getAdType()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    if-nez v7, :cond_5

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_5
    :goto_1
    move-object v12, v7

    .line 96
    goto :goto_3

    .line 97
    :cond_6
    :goto_2
    const-string v7, "banner"

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :goto_3
    iget-object v7, v5, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 101
    .line 102
    const-string v8, ""

    .line 103
    .line 104
    if-eqz v7, :cond_8

    .line 105
    .line 106
    invoke-interface {v7}, Lcom/inmobi/media/x;->getImpressionId()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    if-nez v7, :cond_7

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_7
    move-object v13, v7

    .line 114
    goto :goto_5

    .line 115
    :cond_8
    :goto_4
    move-object v13, v8

    .line 116
    :goto_5
    iget-object v7, v5, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 117
    .line 118
    if-eqz v7, :cond_a

    .line 119
    .line 120
    invoke-interface {v7}, Lcom/inmobi/media/x;->getCreativeId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    if-nez v7, :cond_9

    .line 125
    .line 126
    goto :goto_6

    .line 127
    :cond_9
    move-object v14, v7

    .line 128
    goto :goto_7

    .line 129
    :cond_a
    :goto_6
    move-object v14, v8

    .line 130
    :goto_7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v2, "placementType"

    .line 137
    .line 138
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v2, "impressionId"

    .line 142
    .line 143
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v2, "creativeId"

    .line 147
    .line 148
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    iget-object v2, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 152
    .line 153
    const v3, 0xffed

    .line 154
    .line 155
    .line 156
    if-nez v2, :cond_b

    .line 157
    .line 158
    new-instance v2, Lcom/inmobi/media/h4;

    .line 159
    .line 160
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 161
    .line 162
    .line 163
    move-result-object v9

    .line 164
    const-string v7, "getContext(...)"

    .line 165
    .line 166
    invoke-static {v9, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v15, Lcom/inmobi/media/X3;

    .line 170
    .line 171
    invoke-direct {v15, v6}, Lcom/inmobi/media/X3;-><init>(Lcom/inmobi/media/Y3;)V

    .line 172
    .line 173
    .line 174
    iget-object v7, v6, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    .line 175
    .line 176
    move-object v8, v2

    .line 177
    move-wide/from16 v10, p5

    .line 178
    .line 179
    move-object/from16 v16, v7

    .line 180
    .line 181
    invoke-direct/range {v8 .. v16}, Lcom/inmobi/media/h4;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/X3;Lcom/inmobi/media/z5;)V

    .line 182
    .line 183
    .line 184
    iput-object v2, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 187
    .line 188
    .line 189
    :cond_b
    iget-object v2, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 190
    .line 191
    if-nez v2, :cond_c

    .line 192
    .line 193
    goto :goto_8

    .line 194
    :cond_c
    move-object/from16 v7, p7

    .line 195
    .line 196
    invoke-virtual {v2, v7}, Lcom/inmobi/media/h4;->setLandingPageTelemetryControlInfo(Lcom/inmobi/media/R6;)V

    .line 197
    .line 198
    .line 199
    :goto_8
    iget v2, v6, Lcom/inmobi/media/Y3;->b:I

    .line 200
    .line 201
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    const v8, 0xfffd

    .line 206
    .line 207
    .line 208
    const/4 v9, -0x1

    .line 209
    if-ne v2, v7, :cond_d

    .line 210
    .line 211
    goto :goto_b

    .line 212
    :cond_d
    sget-object v2, Lcom/inmobi/media/Z3;->a:Lcom/inmobi/media/Z3;

    .line 213
    .line 214
    if-ne v1, v2, :cond_e

    .line 215
    .line 216
    iget-object v1, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 217
    .line 218
    if-eqz v1, :cond_f

    .line 219
    .line 220
    invoke-virtual {v1, v0}, Lcom/inmobi/media/h4;->loadUrl(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    goto :goto_9

    .line 224
    :cond_e
    iget-object v1, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 225
    .line 226
    if-eqz v1, :cond_f

    .line 227
    .line 228
    const-string v2, "text/html"

    .line 229
    .line 230
    const-string v7, "UTF-8"

    .line 231
    .line 232
    invoke-virtual {v1, v0, v2, v7}, Lcom/inmobi/media/h4;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_f
    :goto_9
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 236
    .line 237
    invoke-direct {v1, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .line 239
    .line 240
    const/16 v2, 0xa

    .line 241
    .line 242
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 243
    .line 244
    .line 245
    const/4 v2, 0x2

    .line 246
    invoke-virtual {v1, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 247
    .line 248
    .line 249
    iget-object v2, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 250
    .line 251
    if-nez v2, :cond_10

    .line 252
    .line 253
    goto :goto_a

    .line 254
    :cond_10
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 255
    .line 256
    .line 257
    :goto_a
    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 258
    .line 259
    .line 260
    move-result-object v2

    .line 261
    if-eqz v2, :cond_11

    .line 262
    .line 263
    goto :goto_b

    .line 264
    :cond_11
    iget-object v2, v6, Lcom/inmobi/media/Y3;->c:Lcom/inmobi/media/h4;

    .line 265
    .line 266
    invoke-virtual {v6, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 267
    .line 268
    .line 269
    :goto_b
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 270
    .line 271
    .line 272
    move-result v0

    .line 273
    iput v0, v6, Lcom/inmobi/media/Y3;->b:I

    .line 274
    .line 275
    if-eqz p4, :cond_15

    .line 276
    .line 277
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-eqz v0, :cond_12

    .line 282
    .line 283
    goto/16 :goto_c

    .line 284
    .line 285
    :cond_12
    invoke-static {}, Lcom/inmobi/media/U3;->d()Lcom/inmobi/media/V3;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    iget v0, v0, Lcom/inmobi/media/V3;->c:F

    .line 290
    .line 291
    new-instance v1, Landroid/widget/LinearLayout;

    .line 292
    .line 293
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 298
    .line 299
    .line 300
    const/4 v2, 0x0

    .line 301
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v1, v8}, Landroid/view/View;->setId(I)V

    .line 305
    .line 306
    .line 307
    const/high16 v2, 0x42c80000    # 100.0f

    .line 308
    .line 309
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 310
    .line 311
    .line 312
    const v2, 0x108009a

    .line 313
    .line 314
    .line 315
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 316
    .line 317
    .line 318
    const v2, -0x777778

    .line 319
    .line 320
    .line 321
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v6, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 325
    .line 326
    .line 327
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 328
    .line 329
    const/16 v3, 0x30

    .line 330
    .line 331
    int-to-float v3, v3

    .line 332
    mul-float/2addr v3, v0

    .line 333
    float-to-int v0, v3

    .line 334
    invoke-direct {v2, v9, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 335
    .line 336
    .line 337
    const/16 v0, 0xc

    .line 338
    .line 339
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 340
    .line 341
    .line 342
    invoke-virtual {v6, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 343
    .line 344
    .line 345
    iget-object v0, v6, Lcom/inmobi/media/Y3;->a:Landroid/app/Activity;

    .line 346
    .line 347
    invoke-static {v0}, Lcom/inmobi/media/B2;->a(Landroid/content/Context;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_14

    .line 352
    .line 353
    iget-object v0, v6, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/Df;

    .line 354
    .line 355
    if-eqz v0, :cond_13

    .line 356
    .line 357
    invoke-virtual {v0}, Lcom/inmobi/media/Df;->a()V

    .line 358
    .line 359
    .line 360
    :cond_13
    new-instance v0, Lcom/inmobi/media/Df;

    .line 361
    .line 362
    iget-object v3, v6, Lcom/inmobi/media/Y3;->a:Landroid/app/Activity;

    .line 363
    .line 364
    new-instance v7, Lcom/inmobi/media/W3;

    .line 365
    .line 366
    invoke-direct {v7, v2}, Lcom/inmobi/media/W3;-><init>(Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 367
    .line 368
    .line 369
    iget-object v2, v6, Lcom/inmobi/media/Y3;->f:Lcom/inmobi/media/z5;

    .line 370
    .line 371
    invoke-direct {v0, v3, v7, v2}, Lcom/inmobi/media/Df;-><init>(Landroid/app/Activity;Lcom/inmobi/media/Af;Lcom/inmobi/media/z5;)V

    .line 372
    .line 373
    .line 374
    iput-object v0, v6, Lcom/inmobi/media/Y3;->g:Lcom/inmobi/media/Df;

    .line 375
    .line 376
    :cond_14
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 377
    .line 378
    invoke-direct {v0, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 379
    .line 380
    .line 381
    const/high16 v2, 0x41c80000    # 25.0f

    .line 382
    .line 383
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 384
    .line 385
    invoke-virtual {v6, v1, v0}, Lcom/inmobi/media/Y3;->b(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v6, v1, v0}, Lcom/inmobi/media/Y3;->d(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 389
    .line 390
    .line 391
    invoke-virtual {v6, v1, v0}, Lcom/inmobi/media/Y3;->a(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v6, v1, v0}, Lcom/inmobi/media/Y3;->c(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout$LayoutParams;)V

    .line 395
    .line 396
    .line 397
    goto :goto_c

    .line 398
    :cond_15
    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    if-eqz v0, :cond_16

    .line 403
    .line 404
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 405
    .line 406
    .line 407
    :cond_16
    :goto_c
    const/4 v0, 0x1

    .line 408
    int-to-float v0, v0

    .line 409
    sub-float v0, v0, p3

    .line 410
    .line 411
    iput v0, v5, Lcom/inmobi/media/j5;->g:F

    .line 412
    .line 413
    iget-object v1, v5, Lcom/inmobi/media/j5;->c:Lcom/inmobi/media/P;

    .line 414
    .line 415
    if-eqz v1, :cond_17

    .line 416
    .line 417
    iput v0, v1, Lcom/inmobi/media/P;->c:F

    .line 418
    .line 419
    invoke-virtual {v1}, Lcom/inmobi/media/P;->e()V

    .line 420
    .line 421
    .line 422
    :cond_17
    invoke-virtual {v5}, Lcom/inmobi/media/j5;->c()V

    .line 423
    .line 424
    .line 425
    :goto_d
    return-void
.end method
