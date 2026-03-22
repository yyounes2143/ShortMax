.class public final Landroidx/compose/ui/graphics/vector/VectorPainterKt;
.super Ljava/lang/Object;
.source "VectorPainter.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final RootGroupName:Ljava/lang/String; = "VectorRootGroup"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static final RenderVectorGroup(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;Landroidx/compose/runtime/Composer;II)V
    .locals 23
    .param p0    # Landroidx/compose/ui/graphics/vector/VectorGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.graphics.vector.VectorComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/vector/VectorGroup;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Landroidx/compose/ui/graphics/vector/VectorConfig;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    const-string v3, "group"

    .line 8
    .line 9
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v3, -0x1a9827a1

    .line 13
    .line 14
    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    invoke-interface {v4, v3}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    and-int/lit8 v4, v2, 0x1

    .line 22
    .line 23
    const/4 v5, 0x2

    .line 24
    if-eqz v4, :cond_0

    .line 25
    .line 26
    or-int/lit8 v4, v1, 0x6

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    and-int/lit8 v4, v1, 0xe

    .line 30
    .line 31
    if-nez v4, :cond_2

    .line 32
    .line 33
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    const/4 v4, 0x4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v4, v5

    .line 42
    :goto_0
    or-int/2addr v4, v1

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    move v4, v1

    .line 45
    :goto_1
    and-int/lit8 v6, v2, 0x2

    .line 46
    .line 47
    if-eqz v6, :cond_3

    .line 48
    .line 49
    or-int/lit8 v4, v4, 0x10

    .line 50
    .line 51
    :cond_3
    if-ne v6, v5, :cond_5

    .line 52
    .line 53
    and-int/lit8 v4, v4, 0x5b

    .line 54
    .line 55
    const/16 v5, 0x12

    .line 56
    .line 57
    if-ne v4, v5, :cond_5

    .line 58
    .line 59
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-nez v4, :cond_4

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_4
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 67
    .line 68
    .line 69
    move-object/from16 v2, p1

    .line 70
    .line 71
    goto/16 :goto_9

    .line 72
    .line 73
    :cond_5
    :goto_2
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 74
    .line 75
    .line 76
    and-int/lit8 v4, v1, 0x1

    .line 77
    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_6

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_6
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 88
    .line 89
    .line 90
    goto :goto_4

    .line 91
    :cond_7
    :goto_3
    if-eqz v6, :cond_8

    .line 92
    .line 93
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    move-object v15, v4

    .line 98
    goto :goto_5

    .line 99
    :cond_8
    :goto_4
    move-object/from16 v15, p1

    .line 100
    .line 101
    :goto_5
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 102
    .line 103
    .line 104
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v22

    .line 108
    :goto_6
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_d

    .line 113
    .line 114
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorNode;

    .line 119
    .line 120
    instance-of v5, v4, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 121
    .line 122
    if-eqz v5, :cond_a

    .line 123
    .line 124
    const v5, -0x1372ba0b

    .line 125
    .line 126
    .line 127
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 128
    .line 129
    .line 130
    move-object/from16 v17, v4

    .line 131
    .line 132
    check-cast v17, Landroidx/compose/ui/graphics/vector/VectorPath;

    .line 133
    .line 134
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v15, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    check-cast v4, Landroidx/compose/ui/graphics/vector/VectorConfig;

    .line 143
    .line 144
    if-nez v4, :cond_9

    .line 145
    .line 146
    new-instance v4, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;

    .line 147
    .line 148
    invoke-direct {v4}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$1;-><init>()V

    .line 149
    .line 150
    .line 151
    :cond_9
    move-object v14, v4

    .line 152
    sget-object v4, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    .line 153
    .line 154
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathData()Ljava/util/List;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    invoke-interface {v14, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    check-cast v4, Ljava/util/List;

    .line 163
    .line 164
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getPathFillType-Rg-k1Os()I

    .line 165
    .line 166
    .line 167
    move-result v5

    .line 168
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Fill;

    .line 173
    .line 174
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFill()Landroidx/compose/ui/graphics/Brush;

    .line 175
    .line 176
    .line 177
    move-result-object v8

    .line 178
    invoke-interface {v14, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    check-cast v7, Landroidx/compose/ui/graphics/Brush;

    .line 183
    .line 184
    sget-object v8, Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$FillAlpha;

    .line 185
    .line 186
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getFillAlpha()F

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 191
    .line 192
    .line 193
    move-result-object v9

    .line 194
    invoke-interface {v14, v8, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v8

    .line 198
    check-cast v8, Ljava/lang/Number;

    .line 199
    .line 200
    invoke-virtual {v8}, Ljava/lang/Number;->floatValue()F

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    sget-object v9, Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Stroke;

    .line 205
    .line 206
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStroke()Landroidx/compose/ui/graphics/Brush;

    .line 207
    .line 208
    .line 209
    move-result-object v10

    .line 210
    invoke-interface {v14, v9, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v9

    .line 214
    check-cast v9, Landroidx/compose/ui/graphics/Brush;

    .line 215
    .line 216
    sget-object v10, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeAlpha;

    .line 217
    .line 218
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeAlpha()F

    .line 219
    .line 220
    .line 221
    move-result v11

    .line 222
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 223
    .line 224
    .line 225
    move-result-object v11

    .line 226
    invoke-interface {v14, v10, v11}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v10

    .line 230
    check-cast v10, Ljava/lang/Number;

    .line 231
    .line 232
    invoke-virtual {v10}, Ljava/lang/Number;->floatValue()F

    .line 233
    .line 234
    .line 235
    move-result v10

    .line 236
    sget-object v11, Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$StrokeLineWidth;

    .line 237
    .line 238
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineWidth()F

    .line 239
    .line 240
    .line 241
    move-result v12

    .line 242
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 243
    .line 244
    .line 245
    move-result-object v12

    .line 246
    invoke-interface {v14, v11, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v11

    .line 250
    check-cast v11, Ljava/lang/Number;

    .line 251
    .line 252
    invoke-virtual {v11}, Ljava/lang/Number;->floatValue()F

    .line 253
    .line 254
    .line 255
    move-result v11

    .line 256
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineCap-KaPHkGw()I

    .line 257
    .line 258
    .line 259
    move-result v12

    .line 260
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineJoin-LxFBmk8()I

    .line 261
    .line 262
    .line 263
    move-result v13

    .line 264
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getStrokeLineMiter()F

    .line 265
    .line 266
    .line 267
    move-result v16

    .line 268
    move-object v0, v14

    .line 269
    move/from16 v14, v16

    .line 270
    .line 271
    move-object/from16 v16, v15

    .line 272
    .line 273
    sget-object v15, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathStart;

    .line 274
    .line 275
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathStart()F

    .line 276
    .line 277
    .line 278
    move-result v18

    .line 279
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-interface {v0, v15, v1}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Ljava/lang/Number;

    .line 288
    .line 289
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 290
    .line 291
    .line 292
    move-result v15

    .line 293
    move-object/from16 v1, v16

    .line 294
    .line 295
    sget-object v2, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathEnd;

    .line 296
    .line 297
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathEnd()F

    .line 298
    .line 299
    .line 300
    move-result v16

    .line 301
    move-object/from16 p1, v1

    .line 302
    .line 303
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    invoke-interface {v0, v2, v1}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v1

    .line 311
    check-cast v1, Ljava/lang/Number;

    .line 312
    .line 313
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 314
    .line 315
    .line 316
    move-result v16

    .line 317
    sget-object v1, Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TrimPathOffset;

    .line 318
    .line 319
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/vector/VectorPath;->getTrimPathOffset()F

    .line 320
    .line 321
    .line 322
    move-result v2

    .line 323
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 324
    .line 325
    .line 326
    move-result-object v2

    .line 327
    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    check-cast v0, Ljava/lang/Number;

    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 334
    .line 335
    .line 336
    move-result v17

    .line 337
    const/16 v20, 0x0

    .line 338
    .line 339
    const/16 v21, 0x0

    .line 340
    .line 341
    const/16 v19, 0x8

    .line 342
    .line 343
    move-object/from16 v18, v3

    .line 344
    .line 345
    invoke-static/range {v4 .. v21}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Path-9cdaXJ4(Ljava/util/List;ILjava/lang/String;Landroidx/compose/ui/graphics/Brush;FLandroidx/compose/ui/graphics/Brush;FFIIFFFFLandroidx/compose/runtime/Composer;III)V

    .line 346
    .line 347
    .line 348
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 349
    .line 350
    .line 351
    move-object/from16 v0, p0

    .line 352
    .line 353
    move-object/from16 v15, p1

    .line 354
    .line 355
    move/from16 v1, p3

    .line 356
    .line 357
    :goto_7
    move/from16 v2, p4

    .line 358
    .line 359
    goto/16 :goto_6

    .line 360
    .line 361
    :cond_a
    move-object/from16 p1, v15

    .line 362
    .line 363
    instance-of v0, v4, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 364
    .line 365
    if-eqz v0, :cond_c

    .line 366
    .line 367
    const v0, -0x1372b2c9

    .line 368
    .line 369
    .line 370
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 371
    .line 372
    .line 373
    move-object v0, v4

    .line 374
    check-cast v0, Landroidx/compose/ui/graphics/vector/VectorGroup;

    .line 375
    .line 376
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    move-object/from16 v2, p1

    .line 381
    .line 382
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    .line 384
    .line 385
    move-result-object v1

    .line 386
    check-cast v1, Landroidx/compose/ui/graphics/vector/VectorConfig;

    .line 387
    .line 388
    if-nez v1, :cond_b

    .line 389
    .line 390
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;

    .line 391
    .line 392
    invoke-direct {v1}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$config$2;-><init>()V

    .line 393
    .line 394
    .line 395
    :cond_b
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getName()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v5

    .line 399
    sget-object v6, Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$Rotation;

    .line 400
    .line 401
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getRotation()F

    .line 402
    .line 403
    .line 404
    move-result v7

    .line 405
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 406
    .line 407
    .line 408
    move-result-object v7

    .line 409
    invoke-interface {v1, v6, v7}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    move-result-object v6

    .line 413
    check-cast v6, Ljava/lang/Number;

    .line 414
    .line 415
    invoke-virtual {v6}, Ljava/lang/Number;->floatValue()F

    .line 416
    .line 417
    .line 418
    move-result v6

    .line 419
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleX;

    .line 420
    .line 421
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleX()F

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 426
    .line 427
    .line 428
    move-result-object v8

    .line 429
    invoke-interface {v1, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v7

    .line 433
    check-cast v7, Ljava/lang/Number;

    .line 434
    .line 435
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$ScaleY;

    .line 440
    .line 441
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getScaleY()F

    .line 442
    .line 443
    .line 444
    move-result v9

    .line 445
    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 446
    .line 447
    .line 448
    move-result-object v9

    .line 449
    invoke-interface {v1, v7, v9}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    .line 451
    .line 452
    move-result-object v7

    .line 453
    check-cast v7, Ljava/lang/Number;

    .line 454
    .line 455
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 456
    .line 457
    .line 458
    move-result v9

    .line 459
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateX;

    .line 460
    .line 461
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationX()F

    .line 462
    .line 463
    .line 464
    move-result v10

    .line 465
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 466
    .line 467
    .line 468
    move-result-object v10

    .line 469
    invoke-interface {v1, v7, v10}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v7

    .line 473
    check-cast v7, Ljava/lang/Number;

    .line 474
    .line 475
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 476
    .line 477
    .line 478
    move-result v10

    .line 479
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$TranslateY;

    .line 480
    .line 481
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getTranslationY()F

    .line 482
    .line 483
    .line 484
    move-result v11

    .line 485
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 486
    .line 487
    .line 488
    move-result-object v11

    .line 489
    invoke-interface {v1, v7, v11}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    .line 491
    .line 492
    move-result-object v7

    .line 493
    check-cast v7, Ljava/lang/Number;

    .line 494
    .line 495
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 496
    .line 497
    .line 498
    move-result v11

    .line 499
    sget-object v7, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotX;

    .line 500
    .line 501
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotX()F

    .line 502
    .line 503
    .line 504
    move-result v12

    .line 505
    invoke-static {v12}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 506
    .line 507
    .line 508
    move-result-object v12

    .line 509
    invoke-interface {v1, v7, v12}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    .line 511
    .line 512
    move-result-object v7

    .line 513
    check-cast v7, Ljava/lang/Number;

    .line 514
    .line 515
    invoke-virtual {v7}, Ljava/lang/Number;->floatValue()F

    .line 516
    .line 517
    .line 518
    move-result v7

    .line 519
    sget-object v12, Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PivotY;

    .line 520
    .line 521
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getPivotY()F

    .line 522
    .line 523
    .line 524
    move-result v13

    .line 525
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 526
    .line 527
    .line 528
    move-result-object v13

    .line 529
    invoke-interface {v1, v12, v13}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    move-result-object v12

    .line 533
    check-cast v12, Ljava/lang/Number;

    .line 534
    .line 535
    invoke-virtual {v12}, Ljava/lang/Number;->floatValue()F

    .line 536
    .line 537
    .line 538
    move-result v12

    .line 539
    sget-object v13, Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;->INSTANCE:Landroidx/compose/ui/graphics/vector/VectorProperty$PathData;

    .line 540
    .line 541
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/vector/VectorGroup;->getClipPathData()Ljava/util/List;

    .line 542
    .line 543
    .line 544
    move-result-object v0

    .line 545
    invoke-interface {v1, v13, v0}, Landroidx/compose/ui/graphics/vector/VectorConfig;->getOrDefault(Landroidx/compose/ui/graphics/vector/VectorProperty;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    move-result-object v0

    .line 549
    check-cast v0, Ljava/util/List;

    .line 550
    .line 551
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;

    .line 552
    .line 553
    invoke-direct {v1, v4, v2}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$1;-><init>(Landroidx/compose/ui/graphics/vector/VectorNode;Ljava/util/Map;)V

    .line 554
    .line 555
    .line 556
    const v4, 0x566df4ae

    .line 557
    .line 558
    .line 559
    const/4 v13, 0x1

    .line 560
    invoke-static {v3, v4, v13, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    const/high16 v15, 0x38000000

    .line 565
    .line 566
    const/16 v16, 0x0

    .line 567
    .line 568
    move-object v4, v5

    .line 569
    move v5, v6

    .line 570
    move v6, v7

    .line 571
    move v7, v12

    .line 572
    move-object v12, v0

    .line 573
    move-object v14, v3

    .line 574
    invoke-static/range {v4 .. v16}, Landroidx/compose/ui/graphics/vector/VectorComposeKt;->Group(Ljava/lang/String;FFFFFFFLjava/util/List;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    .line 575
    .line 576
    .line 577
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 578
    .line 579
    .line 580
    :goto_8
    move-object/from16 v0, p0

    .line 581
    .line 582
    move/from16 v1, p3

    .line 583
    .line 584
    move-object v15, v2

    .line 585
    goto/16 :goto_7

    .line 586
    .line 587
    :cond_c
    move-object/from16 v2, p1

    .line 588
    .line 589
    const v0, -0x1372ad0b

    .line 590
    .line 591
    .line 592
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 593
    .line 594
    .line 595
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 596
    .line 597
    .line 598
    goto :goto_8

    .line 599
    :cond_d
    move-object v2, v15

    .line 600
    :goto_9
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 601
    .line 602
    .line 603
    move-result-object v0

    .line 604
    if-nez v0, :cond_e

    .line 605
    .line 606
    goto :goto_a

    .line 607
    :cond_e
    new-instance v1, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;

    .line 608
    .line 609
    move-object/from16 v3, p0

    .line 610
    .line 611
    move/from16 v4, p3

    .line 612
    .line 613
    move/from16 v5, p4

    .line 614
    .line 615
    invoke-direct {v1, v3, v2, v4, v5}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$RenderVectorGroup$2;-><init>(Landroidx/compose/ui/graphics/vector/VectorGroup;Ljava/util/Map;II)V

    .line 616
    .line 617
    .line 618
    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 619
    .line 620
    .line 621
    :goto_a
    return-void
.end method

.method private static final mirror(Landroidx/compose/ui/graphics/drawscope/DrawScope;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/graphics/drawscope/DrawScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-interface {p0}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getSize-NH-jbRc()J

    .line 10
    .line 11
    .line 12
    move-result-wide v3

    .line 13
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-interface {v5}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 18
    .line 19
    .line 20
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getTransform()Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const/high16 v6, -0x40800000    # -1.0f

    .line 25
    .line 26
    const/high16 v7, 0x3f800000    # 1.0f

    .line 27
    .line 28
    invoke-interface {v5, v6, v7, v0, v1}, Landroidx/compose/ui/graphics/drawscope/DrawTransform;->scale-0AR0LA0(FFJ)V

    .line 29
    .line 30
    .line 31
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    invoke-interface {v2}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-interface {p0}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 39
    .line 40
    .line 41
    invoke-interface {v2, v3, v4}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->setSize-uvyYCjk(J)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final rememberVectorPainter(Landroidx/compose/ui/graphics/vector/ImageVector;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 13
    .param p0    # Landroidx/compose/ui/graphics/vector/ImageVector;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "image"

    .line 2
    .line 3
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p2, 0x544566b0

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, p2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getDefaultWidth-D9Ej5fM()F

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getDefaultHeight-D9Ej5fM()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getViewportWidth()F

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getViewportHeight()F

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getTintColor-0d7_KjU()J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getTintBlendMode-0nO6VwU()I

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/vector/ImageVector;->getAutoMirror()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    new-instance p2, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$3;

    .line 45
    .line 46
    invoke-direct {p2, p0}, Landroidx/compose/ui/graphics/vector/VectorPainterKt$rememberVectorPainter$3;-><init>(Landroidx/compose/ui/graphics/vector/ImageVector;)V

    .line 47
    .line 48
    .line 49
    const p0, 0x6fa7e78e

    .line 50
    .line 51
    .line 52
    const/4 v9, 0x1

    .line 53
    invoke-static {p1, p0, v9, p2}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const/high16 v11, 0x6000000

    .line 58
    .line 59
    const/4 v12, 0x0

    .line 60
    move-object v10, p1

    .line 61
    invoke-static/range {v0 .. v12}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLat/o;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 66
    .line 67
    .line 68
    return-object p0
.end method

.method public static final rememberVectorPainter-mlNsNFs(FFFFLjava/lang/String;JILat/o;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 16
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableOpenTarget;
        index = -0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JI",
            "Lat/o<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v0, p10

    .line 2
    .line 3
    const-string v1, "content"

    .line 4
    .line 5
    move-object/from16 v11, p8

    .line 6
    .line 7
    invoke-static {v11, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const v1, -0x397b0b9a

    .line 11
    .line 12
    .line 13
    move-object/from16 v15, p9

    .line 14
    .line 15
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    .line 17
    .line 18
    and-int/lit8 v1, p11, 0x4

    .line 19
    .line 20
    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    move v4, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move/from16 v4, p2

    .line 27
    .line 28
    :goto_0
    and-int/lit8 v1, p11, 0x8

    .line 29
    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    move v5, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    move/from16 v5, p3

    .line 35
    .line 36
    :goto_1
    and-int/lit8 v1, p11, 0x10

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const-string v1, "VectorRootGroup"

    .line 41
    .line 42
    move-object v6, v1

    .line 43
    goto :goto_2

    .line 44
    :cond_2
    move-object/from16 v6, p4

    .line 45
    .line 46
    :goto_2
    and-int/lit8 v1, p11, 0x20

    .line 47
    .line 48
    if-eqz v1, :cond_3

    .line 49
    .line 50
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 51
    .line 52
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 53
    .line 54
    .line 55
    move-result-wide v1

    .line 56
    move-wide v7, v1

    .line 57
    goto :goto_3

    .line 58
    :cond_3
    move-wide/from16 v7, p5

    .line 59
    .line 60
    :goto_3
    and-int/lit8 v1, p11, 0x40

    .line 61
    .line 62
    if-eqz v1, :cond_4

    .line 63
    .line 64
    sget-object v1, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    move v9, v1

    .line 71
    goto :goto_4

    .line 72
    :cond_4
    move/from16 v9, p7

    .line 73
    .line 74
    :goto_4
    and-int/lit8 v1, v0, 0xe

    .line 75
    .line 76
    const/high16 v2, 0xc00000

    .line 77
    .line 78
    or-int/2addr v1, v2

    .line 79
    and-int/lit8 v2, v0, 0x70

    .line 80
    .line 81
    or-int/2addr v1, v2

    .line 82
    and-int/lit16 v2, v0, 0x380

    .line 83
    .line 84
    or-int/2addr v1, v2

    .line 85
    and-int/lit16 v2, v0, 0x1c00

    .line 86
    .line 87
    or-int/2addr v1, v2

    .line 88
    const v2, 0xe000

    .line 89
    .line 90
    .line 91
    and-int/2addr v2, v0

    .line 92
    or-int/2addr v1, v2

    .line 93
    const/high16 v2, 0x70000

    .line 94
    .line 95
    and-int/2addr v2, v0

    .line 96
    or-int/2addr v1, v2

    .line 97
    const/high16 v2, 0x380000

    .line 98
    .line 99
    and-int/2addr v2, v0

    .line 100
    or-int/2addr v1, v2

    .line 101
    shl-int/lit8 v0, v0, 0x3

    .line 102
    .line 103
    const/high16 v2, 0xe000000

    .line 104
    .line 105
    and-int/2addr v0, v2

    .line 106
    or-int v13, v1, v0

    .line 107
    .line 108
    const/4 v14, 0x0

    .line 109
    const/4 v10, 0x0

    .line 110
    move/from16 v2, p0

    .line 111
    .line 112
    move/from16 v3, p1

    .line 113
    .line 114
    move-object/from16 v11, p8

    .line 115
    .line 116
    move-object/from16 v12, p9

    .line 117
    .line 118
    invoke-static/range {v2 .. v14}, Landroidx/compose/ui/graphics/vector/VectorPainterKt;->rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLat/o;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-interface/range {p9 .. p9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public static final rememberVectorPainter-vIP8VLU(FFFFLjava/lang/String;JIZLat/o;Landroidx/compose/runtime/Composer;II)Landroidx/compose/ui/graphics/vector/VectorPainter;
    .locals 15
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lat/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableOpenTarget;
        index = -0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FFFF",
            "Ljava/lang/String;",
            "JIZ",
            "Lat/o<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/ui/graphics/vector/VectorPainter;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    move/from16 v1, p12

    .line 4
    .line 5
    const-string v2, "content"

    .line 6
    .line 7
    move-object/from16 v3, p9

    .line 8
    .line 9
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const v2, 0x3fb166c2

    .line 13
    .line 14
    .line 15
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    .line 17
    .line 18
    and-int/lit8 v2, v1, 0x4

    .line 19
    .line 20
    const/high16 v4, 0x7fc00000    # Float.NaN

    .line 21
    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    move v2, v4

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move/from16 v2, p2

    .line 27
    .line 28
    :goto_0
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    move/from16 v4, p3

    .line 34
    .line 35
    :goto_1
    and-int/lit8 v5, v1, 0x10

    .line 36
    .line 37
    if-eqz v5, :cond_2

    .line 38
    .line 39
    const-string v5, "VectorRootGroup"

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object/from16 v5, p4

    .line 43
    .line 44
    :goto_2
    and-int/lit8 v6, v1, 0x20

    .line 45
    .line 46
    if-eqz v6, :cond_3

    .line 47
    .line 48
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 49
    .line 50
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 51
    .line 52
    .line 53
    move-result-wide v6

    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move-wide/from16 v6, p5

    .line 56
    .line 57
    :goto_3
    and-int/lit8 v8, v1, 0x40

    .line 58
    .line 59
    if-eqz v8, :cond_4

    .line 60
    .line 61
    sget-object v8, Landroidx/compose/ui/graphics/BlendMode;->Companion:Landroidx/compose/ui/graphics/BlendMode$Companion;

    .line 62
    .line 63
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/BlendMode$Companion;->getSrcIn-0nO6VwU()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    move/from16 v8, p7

    .line 69
    .line 70
    :goto_4
    and-int/lit16 v1, v1, 0x80

    .line 71
    .line 72
    if-eqz v1, :cond_5

    .line 73
    .line 74
    const/4 v1, 0x0

    .line 75
    goto :goto_5

    .line 76
    :cond_5
    move/from16 v1, p8

    .line 77
    .line 78
    :goto_5
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 79
    .line 80
    .line 81
    move-result-object v9

    .line 82
    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v9

    .line 86
    check-cast v9, Landroidx/compose/ui/unit/Density;

    .line 87
    .line 88
    move v10, p0

    .line 89
    invoke-interface {v9, p0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 90
    .line 91
    .line 92
    move-result v10

    .line 93
    move/from16 v11, p1

    .line 94
    .line 95
    invoke-interface {v9, v11}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    .line 100
    .line 101
    .line 102
    move-result v11

    .line 103
    if-eqz v11, :cond_6

    .line 104
    .line 105
    move v2, v10

    .line 106
    :cond_6
    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    .line 107
    .line 108
    .line 109
    move-result v11

    .line 110
    if-eqz v11, :cond_7

    .line 111
    .line 112
    move v4, v9

    .line 113
    :cond_7
    invoke-static {v6, v7}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 114
    .line 115
    .line 116
    move-result-object v11

    .line 117
    invoke-static {v8}, Landroidx/compose/ui/graphics/BlendMode;->box-impl(I)Landroidx/compose/ui/graphics/BlendMode;

    .line 118
    .line 119
    .line 120
    move-result-object v12

    .line 121
    shr-int/lit8 v13, p11, 0xf

    .line 122
    .line 123
    const v14, 0x1e7b2b64

    .line 124
    .line 125
    .line 126
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v11

    .line 133
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v12

    .line 137
    or-int/2addr v11, v12

    .line 138
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object v12

    .line 142
    if-nez v11, :cond_8

    .line 143
    .line 144
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 145
    .line 146
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v11

    .line 150
    if-ne v12, v11, :cond_a

    .line 151
    .line 152
    :cond_8
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 153
    .line 154
    invoke-virtual {v11}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 155
    .line 156
    .line 157
    move-result-wide v11

    .line 158
    invoke-static {v6, v7, v11, v12}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    .line 159
    .line 160
    .line 161
    move-result v11

    .line 162
    if-nez v11, :cond_9

    .line 163
    .line 164
    sget-object v11, Landroidx/compose/ui/graphics/ColorFilter;->Companion:Landroidx/compose/ui/graphics/ColorFilter$Companion;

    .line 165
    .line 166
    invoke-virtual {v11, v6, v7, v8}, Landroidx/compose/ui/graphics/ColorFilter$Companion;->tint-xETnrds(JI)Landroidx/compose/ui/graphics/ColorFilter;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    :goto_6
    move-object v12, v6

    .line 171
    goto :goto_7

    .line 172
    :cond_9
    const/4 v6, 0x0

    .line 173
    goto :goto_6

    .line 174
    :goto_7
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    :cond_a
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 178
    .line 179
    .line 180
    check-cast v12, Landroidx/compose/ui/graphics/ColorFilter;

    .line 181
    .line 182
    const v6, -0x1d58f75c

    .line 183
    .line 184
    .line 185
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 186
    .line 187
    .line 188
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 193
    .line 194
    invoke-virtual {v7}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v7

    .line 198
    if-ne v6, v7, :cond_b

    .line 199
    .line 200
    new-instance v6, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 201
    .line 202
    invoke-direct {v6}, Landroidx/compose/ui/graphics/vector/VectorPainter;-><init>()V

    .line 203
    .line 204
    .line 205
    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    :cond_b
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 209
    .line 210
    .line 211
    check-cast v6, Landroidx/compose/ui/graphics/vector/VectorPainter;

    .line 212
    .line 213
    invoke-static {v10, v9}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 214
    .line 215
    .line 216
    move-result-wide v7

    .line 217
    invoke-virtual {v6, v7, v8}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setSize-uvyYCjk$ui_release(J)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v6, v1}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setAutoMirror$ui_release(Z)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v6, v12}, Landroidx/compose/ui/graphics/vector/VectorPainter;->setIntrinsicColorFilter$ui_release(Landroidx/compose/ui/graphics/ColorFilter;)V

    .line 224
    .line 225
    .line 226
    shr-int/lit8 v1, p11, 0xc

    .line 227
    .line 228
    and-int/lit8 v1, v1, 0xe

    .line 229
    .line 230
    const v7, 0x8000

    .line 231
    .line 232
    .line 233
    or-int/2addr v1, v7

    .line 234
    and-int/lit16 v7, v13, 0x1c00

    .line 235
    .line 236
    or-int/2addr v1, v7

    .line 237
    move-object p0, v6

    .line 238
    move-object/from16 p1, v5

    .line 239
    .line 240
    move/from16 p2, v2

    .line 241
    .line 242
    move/from16 p3, v4

    .line 243
    .line 244
    move-object/from16 p4, p9

    .line 245
    .line 246
    move-object/from16 p5, p10

    .line 247
    .line 248
    move/from16 p6, v1

    .line 249
    .line 250
    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/graphics/vector/VectorPainter;->RenderVector$ui_release(Ljava/lang/String;FFLat/o;Landroidx/compose/runtime/Composer;I)V

    .line 251
    .line 252
    .line 253
    invoke-interface/range {p10 .. p10}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 254
    .line 255
    .line 256
    return-object v6
.end method
