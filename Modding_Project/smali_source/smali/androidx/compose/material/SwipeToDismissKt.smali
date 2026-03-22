.class public final Landroidx/compose/material/SwipeToDismissKt;
.super Ljava/lang/Object;
.source "SwipeToDismiss.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final SwipeToDismiss(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;Landroidx/compose/runtime/Composer;II)V
    .locals 21
    .param p0    # Landroidx/compose/material/DismissState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DismissState;",
            "Landroidx/compose/ui/Modifier;",
            "Ljava/util/Set<",
            "+",
            "Landroidx/compose/material/DismissDirection;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DismissDirection;",
            "+",
            "Landroidx/compose/material/ThresholdConfig;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v8, p4

    .line 4
    .line 5
    move-object/from16 v9, p5

    .line 6
    .line 7
    move/from16 v10, p7

    .line 8
    .line 9
    const-string v0, "state"

    .line 10
    .line 11
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "background"

    .line 15
    .line 16
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "dismissContent"

    .line 20
    .line 21
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x25cfdf6f

    .line 25
    .line 26
    .line 27
    move-object/from16 v1, p6

    .line 28
    .line 29
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 30
    .line 31
    .line 32
    move-result-object v15

    .line 33
    and-int/lit8 v0, p8, 0x1

    .line 34
    .line 35
    const/4 v1, 0x4

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    or-int/lit8 v0, v10, 0x6

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_0
    and-int/lit8 v0, v10, 0xe

    .line 42
    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    invoke-interface {v15, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/4 v0, 0x2

    .line 54
    :goto_0
    or-int/2addr v0, v10

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    move v0, v10

    .line 57
    :goto_1
    and-int/lit8 v2, p8, 0x2

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    or-int/lit8 v0, v0, 0x30

    .line 62
    .line 63
    :cond_3
    move-object/from16 v3, p1

    .line 64
    .line 65
    goto :goto_3

    .line 66
    :cond_4
    and-int/lit8 v3, v10, 0x70

    .line 67
    .line 68
    if-nez v3, :cond_3

    .line 69
    .line 70
    move-object/from16 v3, p1

    .line 71
    .line 72
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_5

    .line 77
    .line 78
    const/16 v4, 0x20

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_5
    const/16 v4, 0x10

    .line 82
    .line 83
    :goto_2
    or-int/2addr v0, v4

    .line 84
    :goto_3
    and-int/lit8 v4, p8, 0x4

    .line 85
    .line 86
    if-eqz v4, :cond_6

    .line 87
    .line 88
    or-int/lit16 v0, v0, 0x80

    .line 89
    .line 90
    :cond_6
    and-int/lit8 v5, p8, 0x8

    .line 91
    .line 92
    if-eqz v5, :cond_8

    .line 93
    .line 94
    or-int/lit16 v0, v0, 0xc00

    .line 95
    .line 96
    :cond_7
    move-object/from16 v6, p3

    .line 97
    .line 98
    goto :goto_5

    .line 99
    :cond_8
    and-int/lit16 v6, v10, 0x1c00

    .line 100
    .line 101
    if-nez v6, :cond_7

    .line 102
    .line 103
    move-object/from16 v6, p3

    .line 104
    .line 105
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_9

    .line 110
    .line 111
    const/16 v11, 0x800

    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_9
    const/16 v11, 0x400

    .line 115
    .line 116
    :goto_4
    or-int/2addr v0, v11

    .line 117
    :goto_5
    and-int/lit8 v11, p8, 0x10

    .line 118
    .line 119
    if-eqz v11, :cond_a

    .line 120
    .line 121
    or-int/lit16 v0, v0, 0x6000

    .line 122
    .line 123
    goto :goto_7

    .line 124
    :cond_a
    const v11, 0xe000

    .line 125
    .line 126
    .line 127
    and-int/2addr v11, v10

    .line 128
    if-nez v11, :cond_c

    .line 129
    .line 130
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v11

    .line 134
    if-eqz v11, :cond_b

    .line 135
    .line 136
    const/16 v11, 0x4000

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_b
    const/16 v11, 0x2000

    .line 140
    .line 141
    :goto_6
    or-int/2addr v0, v11

    .line 142
    :cond_c
    :goto_7
    and-int/lit8 v11, p8, 0x20

    .line 143
    .line 144
    if-eqz v11, :cond_d

    .line 145
    .line 146
    const/high16 v11, 0x30000

    .line 147
    .line 148
    :goto_8
    or-int/2addr v0, v11

    .line 149
    goto :goto_9

    .line 150
    :cond_d
    const/high16 v11, 0x70000

    .line 151
    .line 152
    and-int/2addr v11, v10

    .line 153
    if-nez v11, :cond_f

    .line 154
    .line 155
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v11

    .line 159
    if-eqz v11, :cond_e

    .line 160
    .line 161
    const/high16 v11, 0x20000

    .line 162
    .line 163
    goto :goto_8

    .line 164
    :cond_e
    const/high16 v11, 0x10000

    .line 165
    .line 166
    goto :goto_8

    .line 167
    :cond_f
    :goto_9
    if-ne v4, v1, :cond_11

    .line 168
    .line 169
    const v1, 0x5b6db

    .line 170
    .line 171
    .line 172
    and-int/2addr v1, v0

    .line 173
    const v11, 0x12492

    .line 174
    .line 175
    .line 176
    if-ne v1, v11, :cond_11

    .line 177
    .line 178
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-nez v1, :cond_10

    .line 183
    .line 184
    goto :goto_a

    .line 185
    :cond_10
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 186
    .line 187
    .line 188
    move-object v2, v3

    .line 189
    move-object v4, v6

    .line 190
    move-object v1, v15

    .line 191
    move-object/from16 v3, p2

    .line 192
    .line 193
    goto/16 :goto_10

    .line 194
    .line 195
    :cond_11
    :goto_a
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startDefaults()V

    .line 196
    .line 197
    .line 198
    and-int/lit8 v1, v10, 0x1

    .line 199
    .line 200
    if-eqz v1, :cond_14

    .line 201
    .line 202
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-eqz v1, :cond_12

    .line 207
    .line 208
    goto :goto_c

    .line 209
    :cond_12
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 210
    .line 211
    .line 212
    if-eqz v4, :cond_13

    .line 213
    .line 214
    and-int/lit16 v0, v0, -0x381

    .line 215
    .line 216
    :cond_13
    move-object/from16 v19, p2

    .line 217
    .line 218
    move v11, v0

    .line 219
    move-object/from16 v18, v3

    .line 220
    .line 221
    :goto_b
    move-object/from16 v20, v6

    .line 222
    .line 223
    goto :goto_f

    .line 224
    :cond_14
    :goto_c
    if-eqz v2, :cond_15

    .line 225
    .line 226
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 227
    .line 228
    goto :goto_d

    .line 229
    :cond_15
    move-object v1, v3

    .line 230
    :goto_d
    if-eqz v4, :cond_16

    .line 231
    .line 232
    sget-object v2, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 233
    .line 234
    sget-object v3, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 235
    .line 236
    filled-new-array {v2, v3}, [Landroidx/compose/material/DismissDirection;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-static {v2}, Lkotlin/collections/y0;->j([Ljava/lang/Object;)Ljava/util/Set;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    and-int/lit16 v0, v0, -0x381

    .line 245
    .line 246
    goto :goto_e

    .line 247
    :cond_16
    move-object/from16 v2, p2

    .line 248
    .line 249
    :goto_e
    if-eqz v5, :cond_17

    .line 250
    .line 251
    sget-object v3, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;->INSTANCE:Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$1;

    .line 252
    .line 253
    move v11, v0

    .line 254
    move-object/from16 v18, v1

    .line 255
    .line 256
    move-object/from16 v19, v2

    .line 257
    .line 258
    move-object/from16 v20, v3

    .line 259
    .line 260
    goto :goto_f

    .line 261
    :cond_17
    move v11, v0

    .line 262
    move-object/from16 v18, v1

    .line 263
    .line 264
    move-object/from16 v19, v2

    .line 265
    .line 266
    goto :goto_b

    .line 267
    :goto_f
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endDefaults()V

    .line 268
    .line 269
    .line 270
    new-instance v12, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;

    .line 271
    .line 272
    move-object v0, v12

    .line 273
    move-object/from16 v1, v19

    .line 274
    .line 275
    move-object/from16 v2, v20

    .line 276
    .line 277
    move v3, v11

    .line 278
    move-object/from16 v4, p0

    .line 279
    .line 280
    move-object/from16 v5, p4

    .line 281
    .line 282
    move-object/from16 v6, p5

    .line 283
    .line 284
    invoke-direct/range {v0 .. v6}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$2;-><init>(Ljava/util/Set;Lkotlin/jvm/functions/Function1;ILandroidx/compose/material/DismissState;Lat/n;Lat/n;)V

    .line 285
    .line 286
    .line 287
    const v0, 0x14259659

    .line 288
    .line 289
    .line 290
    const/4 v1, 0x1

    .line 291
    invoke-static {v15, v0, v1, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 292
    .line 293
    .line 294
    move-result-object v14

    .line 295
    shr-int/lit8 v0, v11, 0x3

    .line 296
    .line 297
    and-int/lit8 v0, v0, 0xe

    .line 298
    .line 299
    or-int/lit16 v0, v0, 0xc00

    .line 300
    .line 301
    const/16 v17, 0x6

    .line 302
    .line 303
    const/4 v12, 0x0

    .line 304
    const/4 v13, 0x0

    .line 305
    move-object/from16 v11, v18

    .line 306
    .line 307
    move-object v1, v15

    .line 308
    move/from16 v16, v0

    .line 309
    .line 310
    invoke-static/range {v11 .. v17}, Landroidx/compose/foundation/layout/BoxWithConstraintsKt;->BoxWithConstraints(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;ZLat/n;Landroidx/compose/runtime/Composer;II)V

    .line 311
    .line 312
    .line 313
    move-object/from16 v2, v18

    .line 314
    .line 315
    move-object/from16 v3, v19

    .line 316
    .line 317
    move-object/from16 v4, v20

    .line 318
    .line 319
    :goto_10
    invoke-interface {v1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 320
    .line 321
    .line 322
    move-result-object v11

    .line 323
    if-nez v11, :cond_18

    .line 324
    .line 325
    goto :goto_11

    .line 326
    :cond_18
    new-instance v12, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;

    .line 327
    .line 328
    move-object v0, v12

    .line 329
    move-object/from16 v1, p0

    .line 330
    .line 331
    move-object/from16 v5, p4

    .line 332
    .line 333
    move-object/from16 v6, p5

    .line 334
    .line 335
    move/from16 v7, p7

    .line 336
    .line 337
    move/from16 v8, p8

    .line 338
    .line 339
    invoke-direct/range {v0 .. v8}, Landroidx/compose/material/SwipeToDismissKt$SwipeToDismiss$3;-><init>(Landroidx/compose/material/DismissState;Landroidx/compose/ui/Modifier;Ljava/util/Set;Lkotlin/jvm/functions/Function1;Lat/n;Lat/n;II)V

    .line 340
    .line 341
    .line 342
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 343
    .line 344
    .line 345
    :goto_11
    return-void
.end method

.method public static final synthetic access$getDismissDirection(Landroidx/compose/material/DismissValue;Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissDirection;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/material/SwipeToDismissKt;->getDismissDirection(Landroidx/compose/material/DismissValue;Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissDirection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final getDismissDirection(Landroidx/compose/material/DismissValue;Landroidx/compose/material/DismissValue;)Landroidx/compose/material/DismissDirection;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    sget-object v1, Landroidx/compose/material/DismissValue;->Default:Landroidx/compose/material/DismissValue;

    .line 5
    .line 6
    if-ne p0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-ne p0, p1, :cond_1

    .line 10
    .line 11
    sget-object v1, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 12
    .line 13
    if-ne p0, v1, :cond_1

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    if-ne p0, p1, :cond_2

    .line 19
    .line 20
    sget-object v1, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 21
    .line 22
    if-ne p0, v1, :cond_2

    .line 23
    .line 24
    sget-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    sget-object v1, Landroidx/compose/material/DismissValue;->Default:Landroidx/compose/material/DismissValue;

    .line 28
    .line 29
    if-ne p0, v1, :cond_3

    .line 30
    .line 31
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 32
    .line 33
    if-ne p1, v2, :cond_3

    .line 34
    .line 35
    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_3
    if-ne p0, v1, :cond_4

    .line 39
    .line 40
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 41
    .line 42
    if-ne p1, v2, :cond_4

    .line 43
    .line 44
    sget-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_4
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToEnd:Landroidx/compose/material/DismissValue;

    .line 48
    .line 49
    if-ne p0, v2, :cond_5

    .line 50
    .line 51
    if-ne p1, v1, :cond_5

    .line 52
    .line 53
    sget-object v0, Landroidx/compose/material/DismissDirection;->StartToEnd:Landroidx/compose/material/DismissDirection;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_5
    sget-object v2, Landroidx/compose/material/DismissValue;->DismissedToStart:Landroidx/compose/material/DismissValue;

    .line 57
    .line 58
    if-ne p0, v2, :cond_6

    .line 59
    .line 60
    if-ne p1, v1, :cond_6

    .line 61
    .line 62
    sget-object v0, Landroidx/compose/material/DismissDirection;->EndToStart:Landroidx/compose/material/DismissDirection;

    .line 63
    .line 64
    :cond_6
    :goto_0
    return-object v0
.end method

.method public static final rememberDismissState(Landroidx/compose/material/DismissValue;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Landroidx/compose/material/DismissState;
    .locals 7
    .param p0    # Landroidx/compose/material/DismissValue;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/material/ExperimentalMaterialApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/DismissValue;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/material/DismissValue;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Landroidx/compose/material/DismissState;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const p3, -0x6884a20e

    .line 2
    .line 3
    .line 4
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 p3, p4, 0x1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    sget-object p0, Landroidx/compose/material/DismissValue;->Default:Landroidx/compose/material/DismissValue;

    .line 12
    .line 13
    :cond_0
    and-int/lit8 p3, p4, 0x2

    .line 14
    .line 15
    if-eqz p3, :cond_1

    .line 16
    .line 17
    sget-object p1, Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$1;->INSTANCE:Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$1;

    .line 18
    .line 19
    :cond_1
    const/4 p3, 0x0

    .line 20
    new-array v0, p3, [Ljava/lang/Object;

    .line 21
    .line 22
    sget-object p3, Landroidx/compose/material/DismissState;->Companion:Landroidx/compose/material/DismissState$Companion;

    .line 23
    .line 24
    invoke-virtual {p3, p1}, Landroidx/compose/material/DismissState$Companion;->Saver(Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v3, Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$2;

    .line 29
    .line 30
    invoke-direct {v3, p0, p1}, Landroidx/compose/material/SwipeToDismissKt$rememberDismissState$2;-><init>(Landroidx/compose/material/DismissValue;Lkotlin/jvm/functions/Function1;)V

    .line 31
    .line 32
    .line 33
    const/16 v5, 0x48

    .line 34
    .line 35
    const/4 v6, 0x4

    .line 36
    const/4 v2, 0x0

    .line 37
    move-object v4, p2

    .line 38
    invoke-static/range {v0 .. v6}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Landroidx/compose/material/DismissState;

    .line 43
    .line 44
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 45
    .line 46
    .line 47
    return-object p0
.end method
