.class public final Landroidx/compose/material/DividerKt;
.super Ljava/lang/Object;
.source "Divider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DividerAlpha:F = 0.12f


# direct methods
.method public static final Divider-oMI9zvI(Landroidx/compose/ui/Modifier;JFFLandroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .line 1
    move/from16 v6, p6

    .line 2
    .line 3
    const v0, -0x4a783646

    .line 4
    .line 5
    .line 6
    move-object/from16 v1, p5

    .line 7
    .line 8
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    and-int/lit8 v1, p7, 0x1

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    or-int/lit8 v2, v6, 0x6

    .line 17
    .line 18
    move v3, v2

    .line 19
    move-object/from16 v2, p0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    and-int/lit8 v2, v6, 0xe

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    const/4 v3, 0x4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x2

    .line 37
    :goto_0
    or-int/2addr v3, v6

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object/from16 v2, p0

    .line 40
    .line 41
    move v3, v6

    .line 42
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 43
    .line 44
    if-nez v4, :cond_5

    .line 45
    .line 46
    and-int/lit8 v4, p7, 0x2

    .line 47
    .line 48
    if-nez v4, :cond_3

    .line 49
    .line 50
    move-wide/from16 v4, p1

    .line 51
    .line 52
    invoke-interface {v0, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    if-eqz v7, :cond_4

    .line 57
    .line 58
    const/16 v7, 0x20

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    move-wide/from16 v4, p1

    .line 62
    .line 63
    :cond_4
    const/16 v7, 0x10

    .line 64
    .line 65
    :goto_2
    or-int/2addr v3, v7

    .line 66
    goto :goto_3

    .line 67
    :cond_5
    move-wide/from16 v4, p1

    .line 68
    .line 69
    :goto_3
    and-int/lit8 v7, p7, 0x4

    .line 70
    .line 71
    if-eqz v7, :cond_7

    .line 72
    .line 73
    or-int/lit16 v3, v3, 0x180

    .line 74
    .line 75
    :cond_6
    move/from16 v8, p3

    .line 76
    .line 77
    goto :goto_5

    .line 78
    :cond_7
    and-int/lit16 v8, v6, 0x380

    .line 79
    .line 80
    if-nez v8, :cond_6

    .line 81
    .line 82
    move/from16 v8, p3

    .line 83
    .line 84
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 85
    .line 86
    .line 87
    move-result v9

    .line 88
    if-eqz v9, :cond_8

    .line 89
    .line 90
    const/16 v9, 0x100

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_8
    const/16 v9, 0x80

    .line 94
    .line 95
    :goto_4
    or-int/2addr v3, v9

    .line 96
    :goto_5
    and-int/lit8 v9, p7, 0x8

    .line 97
    .line 98
    if-eqz v9, :cond_a

    .line 99
    .line 100
    or-int/lit16 v3, v3, 0xc00

    .line 101
    .line 102
    :cond_9
    move/from16 v10, p4

    .line 103
    .line 104
    goto :goto_7

    .line 105
    :cond_a
    and-int/lit16 v10, v6, 0x1c00

    .line 106
    .line 107
    if-nez v10, :cond_9

    .line 108
    .line 109
    move/from16 v10, p4

    .line 110
    .line 111
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(F)Z

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    if-eqz v11, :cond_b

    .line 116
    .line 117
    const/16 v11, 0x800

    .line 118
    .line 119
    goto :goto_6

    .line 120
    :cond_b
    const/16 v11, 0x400

    .line 121
    .line 122
    :goto_6
    or-int/2addr v3, v11

    .line 123
    :goto_7
    and-int/lit16 v3, v3, 0x16db

    .line 124
    .line 125
    const/16 v11, 0x492

    .line 126
    .line 127
    if-ne v3, v11, :cond_d

    .line 128
    .line 129
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 130
    .line 131
    .line 132
    move-result v3

    .line 133
    if-nez v3, :cond_c

    .line 134
    .line 135
    goto :goto_9

    .line 136
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 137
    .line 138
    .line 139
    move-object v1, v2

    .line 140
    move-wide v2, v4

    .line 141
    :goto_8
    move v4, v8

    .line 142
    move v5, v10

    .line 143
    goto/16 :goto_10

    .line 144
    .line 145
    :cond_d
    :goto_9
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 146
    .line 147
    .line 148
    and-int/lit8 v3, v6, 0x1

    .line 149
    .line 150
    const/4 v11, 0x0

    .line 151
    const/4 v12, 0x1

    .line 152
    if-eqz v3, :cond_f

    .line 153
    .line 154
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 155
    .line 156
    .line 157
    move-result v3

    .line 158
    if-eqz v3, :cond_e

    .line 159
    .line 160
    goto :goto_a

    .line 161
    :cond_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 162
    .line 163
    .line 164
    move-object v1, v2

    .line 165
    move-wide v2, v4

    .line 166
    goto :goto_d

    .line 167
    :cond_f
    :goto_a
    if-eqz v1, :cond_10

    .line 168
    .line 169
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 170
    .line 171
    goto :goto_b

    .line 172
    :cond_10
    move-object v1, v2

    .line 173
    :goto_b
    and-int/lit8 v2, p7, 0x2

    .line 174
    .line 175
    if-eqz v2, :cond_11

    .line 176
    .line 177
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 178
    .line 179
    const/4 v3, 0x6

    .line 180
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 185
    .line 186
    .line 187
    move-result-wide v13

    .line 188
    const/16 v19, 0xe

    .line 189
    .line 190
    const/16 v20, 0x0

    .line 191
    .line 192
    const v15, 0x3df5c28f    # 0.12f

    .line 193
    .line 194
    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 202
    .line 203
    .line 204
    move-result-wide v2

    .line 205
    goto :goto_c

    .line 206
    :cond_11
    move-wide v2, v4

    .line 207
    :goto_c
    if-eqz v7, :cond_12

    .line 208
    .line 209
    int-to-float v4, v12

    .line 210
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 211
    .line 212
    .line 213
    move-result v4

    .line 214
    move v8, v4

    .line 215
    :cond_12
    if-eqz v9, :cond_13

    .line 216
    .line 217
    int-to-float v4, v11

    .line 218
    invoke-static {v4}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 219
    .line 220
    .line 221
    move-result v4

    .line 222
    move v10, v4

    .line 223
    :cond_13
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 224
    .line 225
    .line 226
    const/4 v4, 0x0

    .line 227
    cmpg-float v5, v10, v4

    .line 228
    .line 229
    if-nez v5, :cond_14

    .line 230
    .line 231
    sget-object v5, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 232
    .line 233
    goto :goto_e

    .line 234
    :cond_14
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 235
    .line 236
    const/16 v18, 0xe

    .line 237
    .line 238
    const/16 v19, 0x0

    .line 239
    .line 240
    const/4 v15, 0x0

    .line 241
    const/16 v16, 0x0

    .line 242
    .line 243
    const/16 v17, 0x0

    .line 244
    .line 245
    move v14, v10

    .line 246
    invoke-static/range {v13 .. v19}, Landroidx/compose/foundation/layout/PaddingKt;->padding-qDBjuR0$default(Landroidx/compose/ui/Modifier;FFFFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 247
    .line 248
    .line 249
    move-result-object v5

    .line 250
    :goto_e
    const v7, 0x493fbe0d

    .line 251
    .line 252
    .line 253
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 254
    .line 255
    .line 256
    sget-object v7, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 257
    .line 258
    invoke-virtual {v7}, Landroidx/compose/ui/unit/Dp$Companion;->getHairline-D9Ej5fM()F

    .line 259
    .line 260
    .line 261
    move-result v7

    .line 262
    invoke-static {v8, v7}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 263
    .line 264
    .line 265
    move-result v7

    .line 266
    if-eqz v7, :cond_15

    .line 267
    .line 268
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 273
    .line 274
    .line 275
    move-result-object v7

    .line 276
    check-cast v7, Landroidx/compose/ui/unit/Density;

    .line 277
    .line 278
    invoke-interface {v7}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 279
    .line 280
    .line 281
    move-result v7

    .line 282
    const/high16 v9, 0x3f800000    # 1.0f

    .line 283
    .line 284
    div-float/2addr v9, v7

    .line 285
    invoke-static {v9}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 286
    .line 287
    .line 288
    move-result v7

    .line 289
    goto :goto_f

    .line 290
    :cond_15
    move v7, v8

    .line 291
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 292
    .line 293
    .line 294
    invoke-interface {v1, v5}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 295
    .line 296
    .line 297
    move-result-object v5

    .line 298
    const/4 v9, 0x0

    .line 299
    invoke-static {v5, v4, v12, v9}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxWidth$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 300
    .line 301
    .line 302
    move-result-object v4

    .line 303
    invoke-static {v4, v7}, Landroidx/compose/foundation/layout/SizeKt;->height-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    const/4 v5, 0x2

    .line 308
    const/4 v7, 0x0

    .line 309
    move-object/from16 p0, v4

    .line 310
    .line 311
    move-wide/from16 p1, v2

    .line 312
    .line 313
    move-object/from16 p3, v9

    .line 314
    .line 315
    move/from16 p4, v5

    .line 316
    .line 317
    move-object/from16 p5, v7

    .line 318
    .line 319
    invoke-static/range {p0 .. p5}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-static {v4, v0, v11}, Landroidx/compose/foundation/layout/BoxKt;->Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)V

    .line 324
    .line 325
    .line 326
    goto/16 :goto_8

    .line 327
    .line 328
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 329
    .line 330
    .line 331
    move-result-object v8

    .line 332
    if-nez v8, :cond_16

    .line 333
    .line 334
    goto :goto_11

    .line 335
    :cond_16
    new-instance v9, Landroidx/compose/material/DividerKt$Divider$1;

    .line 336
    .line 337
    move-object v0, v9

    .line 338
    move/from16 v6, p6

    .line 339
    .line 340
    move/from16 v7, p7

    .line 341
    .line 342
    invoke-direct/range {v0 .. v7}, Landroidx/compose/material/DividerKt$Divider$1;-><init>(Landroidx/compose/ui/Modifier;JFFII)V

    .line 343
    .line 344
    .line 345
    invoke-interface {v8, v9}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 346
    .line 347
    .line 348
    :goto_11
    return-void
.end method
