.class public final Landroidx/compose/material/SwitchDefaults;
.super Ljava/lang/Object;
.source "Switch.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I

.field public static final INSTANCE:Landroidx/compose/material/SwitchDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/SwitchDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/SwitchDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/SwitchDefaults;->INSTANCE:Landroidx/compose/material/SwitchDefaults;

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


# virtual methods
.method public final colors-SQMK_m0(JJFJJFJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SwitchColors;
    .locals 25
    .param p19    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p19

    .line 2
    .line 3
    move/from16 v1, p22

    .line 4
    .line 5
    const v2, -0x3d85042e

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v2, v1, 0x1

    .line 12
    .line 13
    const/4 v3, 0x6

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 17
    .line 18
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSecondaryVariant-0d7_KjU()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-wide/from16 v4, p1

    .line 28
    .line 29
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 30
    .line 31
    if-eqz v2, :cond_1

    .line 32
    .line 33
    move-wide v6, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    move-wide/from16 v6, p3

    .line 36
    .line 37
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const v2, 0x3f0a3d71    # 0.54f

    .line 42
    .line 43
    .line 44
    goto :goto_2

    .line 45
    :cond_2
    move/from16 v2, p5

    .line 46
    .line 47
    :goto_2
    and-int/lit8 v8, v1, 0x8

    .line 48
    .line 49
    if-eqz v8, :cond_3

    .line 50
    .line 51
    sget-object v8, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 52
    .line 53
    invoke-virtual {v8, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 54
    .line 55
    .line 56
    move-result-object v8

    .line 57
    invoke-virtual {v8}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 58
    .line 59
    .line 60
    move-result-wide v8

    .line 61
    goto :goto_3

    .line 62
    :cond_3
    move-wide/from16 v8, p6

    .line 63
    .line 64
    :goto_3
    and-int/lit8 v10, v1, 0x10

    .line 65
    .line 66
    if-eqz v10, :cond_4

    .line 67
    .line 68
    sget-object v10, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 69
    .line 70
    invoke-virtual {v10, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    invoke-virtual {v10}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 75
    .line 76
    .line 77
    move-result-wide v10

    .line 78
    goto :goto_4

    .line 79
    :cond_4
    move-wide/from16 v10, p8

    .line 80
    .line 81
    :goto_4
    and-int/lit8 v12, v1, 0x20

    .line 82
    .line 83
    if-eqz v12, :cond_5

    .line 84
    .line 85
    const v12, 0x3ec28f5c    # 0.38f

    .line 86
    .line 87
    .line 88
    move v15, v12

    .line 89
    goto :goto_5

    .line 90
    :cond_5
    move/from16 v15, p10

    .line 91
    .line 92
    :goto_5
    and-int/lit8 v12, v1, 0x40

    .line 93
    .line 94
    if-eqz v12, :cond_6

    .line 95
    .line 96
    sget-object v12, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 97
    .line 98
    invoke-virtual {v12, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    const/16 v13, 0xe

    .line 103
    .line 104
    const/4 v14, 0x0

    .line 105
    const/16 v16, 0x0

    .line 106
    .line 107
    const/16 v17, 0x0

    .line 108
    .line 109
    const/16 v18, 0x0

    .line 110
    .line 111
    move-wide/from16 p1, v4

    .line 112
    .line 113
    move/from16 p3, v12

    .line 114
    .line 115
    move/from16 p4, v16

    .line 116
    .line 117
    move/from16 p5, v17

    .line 118
    .line 119
    move/from16 p6, v18

    .line 120
    .line 121
    move/from16 p7, v13

    .line 122
    .line 123
    move-object/from16 p8, v14

    .line 124
    .line 125
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 126
    .line 127
    .line 128
    move-result-wide v12

    .line 129
    sget-object v14, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 130
    .line 131
    invoke-virtual {v14, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    move-wide/from16 v21, v4

    .line 136
    .line 137
    invoke-virtual {v14}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    invoke-static {v12, v13, v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 142
    .line 143
    .line 144
    move-result-wide v3

    .line 145
    goto :goto_6

    .line 146
    :cond_6
    move-wide/from16 v21, v4

    .line 147
    .line 148
    move-wide/from16 v3, p11

    .line 149
    .line 150
    :goto_6
    and-int/lit16 v5, v1, 0x80

    .line 151
    .line 152
    if-eqz v5, :cond_7

    .line 153
    .line 154
    sget-object v5, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 155
    .line 156
    const/4 v12, 0x6

    .line 157
    invoke-virtual {v5, v0, v12}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    const/16 v12, 0xe

    .line 162
    .line 163
    const/4 v13, 0x0

    .line 164
    const/4 v14, 0x0

    .line 165
    const/16 v16, 0x0

    .line 166
    .line 167
    const/16 v17, 0x0

    .line 168
    .line 169
    move-wide/from16 p1, v6

    .line 170
    .line 171
    move/from16 p3, v5

    .line 172
    .line 173
    move/from16 p4, v14

    .line 174
    .line 175
    move/from16 p5, v16

    .line 176
    .line 177
    move/from16 p6, v17

    .line 178
    .line 179
    move/from16 p7, v12

    .line 180
    .line 181
    move-object/from16 p8, v13

    .line 182
    .line 183
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 184
    .line 185
    .line 186
    move-result-wide v12

    .line 187
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 188
    .line 189
    const/4 v14, 0x6

    .line 190
    invoke-virtual {v5, v0, v14}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 191
    .line 192
    .line 193
    move-result-object v5

    .line 194
    move/from16 p21, v15

    .line 195
    .line 196
    invoke-virtual {v5}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 197
    .line 198
    .line 199
    move-result-wide v14

    .line 200
    invoke-static {v12, v13, v14, v15}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 201
    .line 202
    .line 203
    move-result-wide v12

    .line 204
    goto :goto_7

    .line 205
    :cond_7
    move/from16 p21, v15

    .line 206
    .line 207
    move-wide/from16 v12, p13

    .line 208
    .line 209
    :goto_7
    and-int/lit16 v5, v1, 0x100

    .line 210
    .line 211
    if-eqz v5, :cond_8

    .line 212
    .line 213
    sget-object v5, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 214
    .line 215
    const/4 v14, 0x6

    .line 216
    invoke-virtual {v5, v0, v14}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    const/16 v14, 0xe

    .line 221
    .line 222
    const/4 v15, 0x0

    .line 223
    const/16 v16, 0x0

    .line 224
    .line 225
    const/16 v17, 0x0

    .line 226
    .line 227
    const/16 v18, 0x0

    .line 228
    .line 229
    move-wide/from16 p1, v8

    .line 230
    .line 231
    move/from16 p3, v5

    .line 232
    .line 233
    move/from16 p4, v16

    .line 234
    .line 235
    move/from16 p5, v17

    .line 236
    .line 237
    move/from16 p6, v18

    .line 238
    .line 239
    move/from16 p7, v14

    .line 240
    .line 241
    move-object/from16 p8, v15

    .line 242
    .line 243
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 244
    .line 245
    .line 246
    move-result-wide v14

    .line 247
    sget-object v5, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 248
    .line 249
    move-wide/from16 v23, v3

    .line 250
    .line 251
    const/4 v3, 0x6

    .line 252
    invoke-virtual {v5, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 257
    .line 258
    .line 259
    move-result-wide v4

    .line 260
    invoke-static {v14, v15, v4, v5}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 261
    .line 262
    .line 263
    move-result-wide v4

    .line 264
    goto :goto_8

    .line 265
    :cond_8
    move-wide/from16 v23, v3

    .line 266
    .line 267
    const/4 v3, 0x6

    .line 268
    move-wide/from16 v4, p15

    .line 269
    .line 270
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 271
    .line 272
    if-eqz v1, :cond_9

    .line 273
    .line 274
    sget-object v1, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 275
    .line 276
    invoke-virtual {v1, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 277
    .line 278
    .line 279
    move-result v1

    .line 280
    const/16 v3, 0xe

    .line 281
    .line 282
    const/4 v14, 0x0

    .line 283
    const/4 v15, 0x0

    .line 284
    const/16 v16, 0x0

    .line 285
    .line 286
    const/16 v17, 0x0

    .line 287
    .line 288
    move-wide/from16 p1, v10

    .line 289
    .line 290
    move/from16 p3, v1

    .line 291
    .line 292
    move/from16 p4, v15

    .line 293
    .line 294
    move/from16 p5, v16

    .line 295
    .line 296
    move/from16 p6, v17

    .line 297
    .line 298
    move/from16 p7, v3

    .line 299
    .line 300
    move-object/from16 p8, v14

    .line 301
    .line 302
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 303
    .line 304
    .line 305
    move-result-wide v14

    .line 306
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 307
    .line 308
    const/4 v3, 0x6

    .line 309
    invoke-virtual {v1, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v1}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 314
    .line 315
    .line 316
    move-result-wide v0

    .line 317
    invoke-static {v14, v15, v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 318
    .line 319
    .line 320
    move-result-wide v0

    .line 321
    goto :goto_9

    .line 322
    :cond_9
    move-wide/from16 v0, p17

    .line 323
    .line 324
    :goto_9
    new-instance v3, Landroidx/compose/material/DefaultSwitchColors;

    .line 325
    .line 326
    move-object/from16 p1, v3

    .line 327
    .line 328
    const/16 v14, 0xe

    .line 329
    .line 330
    const/4 v15, 0x0

    .line 331
    const/16 v16, 0x0

    .line 332
    .line 333
    const/16 v17, 0x0

    .line 334
    .line 335
    const/16 v18, 0x0

    .line 336
    .line 337
    move-wide/from16 p2, v6

    .line 338
    .line 339
    move/from16 p4, v2

    .line 340
    .line 341
    move/from16 p5, v16

    .line 342
    .line 343
    move/from16 p6, v17

    .line 344
    .line 345
    move/from16 p7, v18

    .line 346
    .line 347
    move/from16 p8, v14

    .line 348
    .line 349
    move-object/from16 p9, v15

    .line 350
    .line 351
    invoke-static/range {p2 .. p9}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 352
    .line 353
    .line 354
    move-result-wide v6

    .line 355
    move-wide/from16 p4, v6

    .line 356
    .line 357
    const/16 v6, 0xe

    .line 358
    .line 359
    const/4 v7, 0x0

    .line 360
    const/4 v14, 0x0

    .line 361
    const/4 v15, 0x0

    .line 362
    move-wide/from16 p6, v10

    .line 363
    .line 364
    move/from16 p8, p21

    .line 365
    .line 366
    move/from16 p9, v14

    .line 367
    .line 368
    move/from16 p10, v15

    .line 369
    .line 370
    move/from16 p11, v16

    .line 371
    .line 372
    move/from16 p12, v6

    .line 373
    .line 374
    move-object/from16 p13, v7

    .line 375
    .line 376
    invoke-static/range {p6 .. p13}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 377
    .line 378
    .line 379
    move-result-wide v6

    .line 380
    move-wide/from16 p8, v6

    .line 381
    .line 382
    const/16 v6, 0xe

    .line 383
    .line 384
    const/4 v7, 0x0

    .line 385
    const/4 v10, 0x0

    .line 386
    const/4 v11, 0x0

    .line 387
    move-wide/from16 p10, v12

    .line 388
    .line 389
    move/from16 p12, v2

    .line 390
    .line 391
    move/from16 p13, v10

    .line 392
    .line 393
    move/from16 p14, v11

    .line 394
    .line 395
    move/from16 p15, v14

    .line 396
    .line 397
    move/from16 p16, v6

    .line 398
    .line 399
    move-object/from16 p17, v7

    .line 400
    .line 401
    invoke-static/range {p10 .. p17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 402
    .line 403
    .line 404
    move-result-wide v6

    .line 405
    move-wide/from16 p12, v6

    .line 406
    .line 407
    const/16 v19, 0xe

    .line 408
    .line 409
    const/16 v20, 0x0

    .line 410
    .line 411
    move-wide v13, v0

    .line 412
    move/from16 v15, p21

    .line 413
    .line 414
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 415
    .line 416
    .line 417
    move-result-wide v0

    .line 418
    move-wide/from16 p16, v0

    .line 419
    .line 420
    const/4 v0, 0x0

    .line 421
    move-object/from16 p18, v0

    .line 422
    .line 423
    move-wide/from16 p2, v21

    .line 424
    .line 425
    move-wide/from16 p6, v8

    .line 426
    .line 427
    move-wide/from16 p10, v23

    .line 428
    .line 429
    move-wide/from16 p14, v4

    .line 430
    .line 431
    invoke-direct/range {p1 .. p18}, Landroidx/compose/material/DefaultSwitchColors;-><init>(JJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 432
    .line 433
    .line 434
    invoke-interface/range {p19 .. p19}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 435
    .line 436
    .line 437
    return-object v3
.end method
