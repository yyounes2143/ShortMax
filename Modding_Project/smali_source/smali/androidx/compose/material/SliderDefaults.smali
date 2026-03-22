.class public final Landroidx/compose/material/SliderDefaults;
.super Ljava/lang/Object;
.source "Slider.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x0

.field public static final DisabledActiveTrackAlpha:F = 0.32f

.field public static final DisabledInactiveTrackAlpha:F = 0.12f

.field public static final DisabledTickAlpha:F = 0.12f

.field public static final INSTANCE:Landroidx/compose/material/SliderDefaults;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final InactiveTrackAlpha:F = 0.24f

.field public static final TickAlpha:F = 0.54f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/SliderDefaults;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/SliderDefaults;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/SliderDefaults;->INSTANCE:Landroidx/compose/material/SliderDefaults;

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
.method public final colors-q0g_0yA(JJJJJJJJJJLandroidx/compose/runtime/Composer;III)Landroidx/compose/material/SliderColors;
    .locals 28
    .param p21    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p21

    .line 2
    .line 3
    move/from16 v1, p24

    .line 4
    .line 5
    const v2, 0x19fd1a17

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
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 23
    .line 24
    .line 25
    move-result-wide v4

    .line 26
    move-wide v7, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-wide/from16 v7, p1

    .line 29
    .line 30
    :goto_0
    and-int/lit8 v2, v1, 0x2

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 35
    .line 36
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v4}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 41
    .line 42
    .line 43
    move-result-wide v9

    .line 44
    sget-object v4, Landroidx/compose/material/ContentAlpha;->INSTANCE:Landroidx/compose/material/ContentAlpha;

    .line 45
    .line 46
    invoke-virtual {v4, v0, v3}, Landroidx/compose/material/ContentAlpha;->getDisabled(Landroidx/compose/runtime/Composer;I)F

    .line 47
    .line 48
    .line 49
    move-result v11

    .line 50
    const/16 v15, 0xe

    .line 51
    .line 52
    const/16 v16, 0x0

    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    invoke-static/range {v9 .. v16}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v4

    .line 61
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getSurface-0d7_KjU()J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    invoke-static {v4, v5, v9, v10}, Landroidx/compose/ui/graphics/ColorKt;->compositeOver--OWjLjI(JJ)J

    .line 70
    .line 71
    .line 72
    move-result-wide v4

    .line 73
    move-wide v9, v4

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    move-wide/from16 v9, p3

    .line 76
    .line 77
    :goto_1
    and-int/lit8 v2, v1, 0x4

    .line 78
    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 82
    .line 83
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 88
    .line 89
    .line 90
    move-result-wide v4

    .line 91
    move-wide v11, v4

    .line 92
    goto :goto_2

    .line 93
    :cond_2
    move-wide/from16 v11, p5

    .line 94
    .line 95
    :goto_2
    and-int/lit8 v2, v1, 0x8

    .line 96
    .line 97
    if-eqz v2, :cond_3

    .line 98
    .line 99
    const/16 v2, 0xe

    .line 100
    .line 101
    const/4 v4, 0x0

    .line 102
    const v5, 0x3e75c28f    # 0.24f

    .line 103
    .line 104
    .line 105
    const/4 v6, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    move-wide/from16 p1, v11

    .line 109
    .line 110
    move/from16 p3, v5

    .line 111
    .line 112
    move/from16 p4, v6

    .line 113
    .line 114
    move/from16 p5, v13

    .line 115
    .line 116
    move/from16 p6, v14

    .line 117
    .line 118
    move/from16 p7, v2

    .line 119
    .line 120
    move-object/from16 p8, v4

    .line 121
    .line 122
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 123
    .line 124
    .line 125
    move-result-wide v4

    .line 126
    move-wide v13, v4

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    move-wide/from16 v13, p7

    .line 129
    .line 130
    :goto_3
    and-int/lit8 v2, v1, 0x10

    .line 131
    .line 132
    if-eqz v2, :cond_4

    .line 133
    .line 134
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 135
    .line 136
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getOnSurface-0d7_KjU()J

    .line 141
    .line 142
    .line 143
    move-result-wide v4

    .line 144
    const/16 v2, 0xe

    .line 145
    .line 146
    const/4 v6, 0x0

    .line 147
    const v15, 0x3ea3d70a    # 0.32f

    .line 148
    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    const/16 v17, 0x0

    .line 153
    .line 154
    const/16 v18, 0x0

    .line 155
    .line 156
    move-wide/from16 p1, v4

    .line 157
    .line 158
    move/from16 p3, v15

    .line 159
    .line 160
    move/from16 p4, v16

    .line 161
    .line 162
    move/from16 p5, v17

    .line 163
    .line 164
    move/from16 p6, v18

    .line 165
    .line 166
    move/from16 p7, v2

    .line 167
    .line 168
    move-object/from16 p8, v6

    .line 169
    .line 170
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 171
    .line 172
    .line 173
    move-result-wide v4

    .line 174
    move-wide v15, v4

    .line 175
    goto :goto_4

    .line 176
    :cond_4
    move-wide/from16 v15, p9

    .line 177
    .line 178
    :goto_4
    and-int/lit8 v2, v1, 0x20

    .line 179
    .line 180
    if-eqz v2, :cond_5

    .line 181
    .line 182
    const/16 v2, 0xe

    .line 183
    .line 184
    const/4 v4, 0x0

    .line 185
    const v5, 0x3df5c28f    # 0.12f

    .line 186
    .line 187
    .line 188
    const/4 v6, 0x0

    .line 189
    const/16 v17, 0x0

    .line 190
    .line 191
    const/16 v18, 0x0

    .line 192
    .line 193
    move-wide/from16 p1, v15

    .line 194
    .line 195
    move/from16 p3, v5

    .line 196
    .line 197
    move/from16 p4, v6

    .line 198
    .line 199
    move/from16 p5, v17

    .line 200
    .line 201
    move/from16 p6, v18

    .line 202
    .line 203
    move/from16 p7, v2

    .line 204
    .line 205
    move-object/from16 p8, v4

    .line 206
    .line 207
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 208
    .line 209
    .line 210
    move-result-wide v4

    .line 211
    move-wide/from16 v17, v4

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_5
    move-wide/from16 v17, p11

    .line 215
    .line 216
    :goto_5
    and-int/lit8 v2, v1, 0x40

    .line 217
    .line 218
    if-eqz v2, :cond_6

    .line 219
    .line 220
    shr-int/lit8 v2, p22, 0x6

    .line 221
    .line 222
    and-int/lit8 v2, v2, 0xe

    .line 223
    .line 224
    invoke-static {v11, v12, v0, v2}, Landroidx/compose/material/ColorsKt;->contentColorFor-ek8zF_U(JLandroidx/compose/runtime/Composer;I)J

    .line 225
    .line 226
    .line 227
    move-result-wide v2

    .line 228
    const/16 v4, 0xe

    .line 229
    .line 230
    const/4 v5, 0x0

    .line 231
    const v6, 0x3f0a3d71    # 0.54f

    .line 232
    .line 233
    .line 234
    const/16 v19, 0x0

    .line 235
    .line 236
    const/16 v20, 0x0

    .line 237
    .line 238
    const/16 v21, 0x0

    .line 239
    .line 240
    move-wide/from16 p1, v2

    .line 241
    .line 242
    move/from16 p3, v6

    .line 243
    .line 244
    move/from16 p4, v19

    .line 245
    .line 246
    move/from16 p5, v20

    .line 247
    .line 248
    move/from16 p6, v21

    .line 249
    .line 250
    move/from16 p7, v4

    .line 251
    .line 252
    move-object/from16 p8, v5

    .line 253
    .line 254
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 255
    .line 256
    .line 257
    move-result-wide v2

    .line 258
    move-wide/from16 v19, v2

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_6
    move-wide/from16 v19, p13

    .line 262
    .line 263
    :goto_6
    and-int/lit16 v2, v1, 0x80

    .line 264
    .line 265
    if-eqz v2, :cond_7

    .line 266
    .line 267
    const/16 v2, 0xe

    .line 268
    .line 269
    const/4 v3, 0x0

    .line 270
    const v4, 0x3f0a3d71    # 0.54f

    .line 271
    .line 272
    .line 273
    const/4 v5, 0x0

    .line 274
    const/4 v6, 0x0

    .line 275
    const/16 v21, 0x0

    .line 276
    .line 277
    move-wide/from16 p1, v11

    .line 278
    .line 279
    move/from16 p3, v4

    .line 280
    .line 281
    move/from16 p4, v5

    .line 282
    .line 283
    move/from16 p5, v6

    .line 284
    .line 285
    move/from16 p6, v21

    .line 286
    .line 287
    move/from16 p7, v2

    .line 288
    .line 289
    move-object/from16 p8, v3

    .line 290
    .line 291
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 292
    .line 293
    .line 294
    move-result-wide v2

    .line 295
    move-wide/from16 v21, v2

    .line 296
    .line 297
    goto :goto_7

    .line 298
    :cond_7
    move-wide/from16 v21, p15

    .line 299
    .line 300
    :goto_7
    and-int/lit16 v2, v1, 0x100

    .line 301
    .line 302
    if-eqz v2, :cond_8

    .line 303
    .line 304
    const/16 v2, 0xe

    .line 305
    .line 306
    const/4 v3, 0x0

    .line 307
    const v4, 0x3df5c28f    # 0.12f

    .line 308
    .line 309
    .line 310
    const/4 v5, 0x0

    .line 311
    const/4 v6, 0x0

    .line 312
    const/16 v23, 0x0

    .line 313
    .line 314
    move-wide/from16 p1, v19

    .line 315
    .line 316
    move/from16 p3, v4

    .line 317
    .line 318
    move/from16 p4, v5

    .line 319
    .line 320
    move/from16 p5, v6

    .line 321
    .line 322
    move/from16 p6, v23

    .line 323
    .line 324
    move/from16 p7, v2

    .line 325
    .line 326
    move-object/from16 p8, v3

    .line 327
    .line 328
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 329
    .line 330
    .line 331
    move-result-wide v2

    .line 332
    move-wide/from16 v23, v2

    .line 333
    .line 334
    goto :goto_8

    .line 335
    :cond_8
    move-wide/from16 v23, p17

    .line 336
    .line 337
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 338
    .line 339
    if-eqz v1, :cond_9

    .line 340
    .line 341
    const/16 v1, 0xe

    .line 342
    .line 343
    const/4 v2, 0x0

    .line 344
    const v3, 0x3df5c28f    # 0.12f

    .line 345
    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    const/4 v5, 0x0

    .line 349
    const/4 v6, 0x0

    .line 350
    move-wide/from16 p1, v17

    .line 351
    .line 352
    move/from16 p3, v3

    .line 353
    .line 354
    move/from16 p4, v4

    .line 355
    .line 356
    move/from16 p5, v5

    .line 357
    .line 358
    move/from16 p6, v6

    .line 359
    .line 360
    move/from16 p7, v1

    .line 361
    .line 362
    move-object/from16 p8, v2

    .line 363
    .line 364
    invoke-static/range {p1 .. p8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 365
    .line 366
    .line 367
    move-result-wide v1

    .line 368
    move-wide/from16 v25, v1

    .line 369
    .line 370
    goto :goto_9

    .line 371
    :cond_9
    move-wide/from16 v25, p19

    .line 372
    .line 373
    :goto_9
    new-instance v1, Landroidx/compose/material/DefaultSliderColors;

    .line 374
    .line 375
    move-object v6, v1

    .line 376
    const/16 v27, 0x0

    .line 377
    .line 378
    invoke-direct/range {v6 .. v27}, Landroidx/compose/material/DefaultSliderColors;-><init>(JJJJJJJJJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 379
    .line 380
    .line 381
    invoke-interface/range {p21 .. p21}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 382
    .line 383
    .line 384
    return-object v1
.end method
