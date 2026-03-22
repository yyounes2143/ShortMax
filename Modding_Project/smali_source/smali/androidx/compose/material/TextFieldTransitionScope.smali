.class final Landroidx/compose/material/TextFieldTransitionScope;
.super Ljava/lang/Object;
.source "TextFieldImpl.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/TextFieldTransitionScope;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/TextFieldTransitionScope;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/TextFieldTransitionScope;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope;

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

.method private static final Transition_DTcfvLk$lambda-1(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final Transition_DTcfvLk$lambda-3(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final Transition_DTcfvLk$lambda-5(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final Transition_DTcfvLk$lambda-6(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/Color;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method


# virtual methods
.method public final Transition-DTcfvLk(Landroidx/compose/material/InputPhase;JJLat/n;ZLat/q;Landroidx/compose/runtime/Composer;I)V
    .locals 27
    .param p1    # Landroidx/compose/material/InputPhase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lat/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[0[0][0]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/InputPhase;",
            "JJ",
            "Lat/n<",
            "-",
            "Landroidx/compose/material/InputPhase;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/graphics/Color;",
            ">;Z",
            "Lat/q<",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Landroidx/compose/ui/graphics/Color;",
            "-",
            "Ljava/lang/Float;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v2, p1

    .line 2
    .line 3
    move-object/from16 v7, p6

    .line 4
    .line 5
    move/from16 v8, p7

    .line 6
    .line 7
    move-object/from16 v5, p8

    .line 8
    .line 9
    move/from16 v6, p10

    .line 10
    .line 11
    const-string v0, "inputState"

    .line 12
    .line 13
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "contentColor"

    .line 17
    .line 18
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "content"

    .line 22
    .line 23
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const v0, 0x76899c6a

    .line 27
    .line 28
    .line 29
    move-object/from16 v1, p9

    .line 30
    .line 31
    invoke-interface {v1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    and-int/lit8 v1, v6, 0xe

    .line 36
    .line 37
    const/4 v3, 0x2

    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_0

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move v1, v3

    .line 49
    :goto_0
    or-int/2addr v1, v6

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    move v1, v6

    .line 52
    :goto_1
    and-int/lit8 v4, v6, 0x70

    .line 53
    .line 54
    move-wide/from16 v14, p2

    .line 55
    .line 56
    if-nez v4, :cond_3

    .line 57
    .line 58
    invoke-interface {v0, v14, v15}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    const/16 v4, 0x20

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    const/16 v4, 0x10

    .line 68
    .line 69
    :goto_2
    or-int/2addr v1, v4

    .line 70
    :cond_3
    and-int/lit16 v4, v6, 0x380

    .line 71
    .line 72
    move-wide/from16 v12, p4

    .line 73
    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    invoke-interface {v0, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    .line 77
    .line 78
    .line 79
    move-result v4

    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    const/16 v4, 0x100

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_4
    const/16 v4, 0x80

    .line 86
    .line 87
    :goto_3
    or-int/2addr v1, v4

    .line 88
    :cond_5
    and-int/lit16 v4, v6, 0x1c00

    .line 89
    .line 90
    if-nez v4, :cond_7

    .line 91
    .line 92
    invoke-interface {v0, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-eqz v4, :cond_6

    .line 97
    .line 98
    const/16 v4, 0x800

    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_6
    const/16 v4, 0x400

    .line 102
    .line 103
    :goto_4
    or-int/2addr v1, v4

    .line 104
    :cond_7
    const v4, 0xe000

    .line 105
    .line 106
    .line 107
    and-int v9, v6, v4

    .line 108
    .line 109
    if-nez v9, :cond_9

    .line 110
    .line 111
    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    .line 112
    .line 113
    .line 114
    move-result v9

    .line 115
    if-eqz v9, :cond_8

    .line 116
    .line 117
    const/16 v9, 0x4000

    .line 118
    .line 119
    goto :goto_5

    .line 120
    :cond_8
    const/16 v9, 0x2000

    .line 121
    .line 122
    :goto_5
    or-int/2addr v1, v9

    .line 123
    :cond_9
    const/high16 v9, 0x70000

    .line 124
    .line 125
    and-int/2addr v9, v6

    .line 126
    if-nez v9, :cond_b

    .line 127
    .line 128
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v9

    .line 132
    if-eqz v9, :cond_a

    .line 133
    .line 134
    const/high16 v9, 0x20000

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_a
    const/high16 v9, 0x10000

    .line 138
    .line 139
    :goto_6
    or-int/2addr v1, v9

    .line 140
    :cond_b
    const v9, 0x5b6db

    .line 141
    .line 142
    .line 143
    and-int/2addr v9, v1

    .line 144
    const v10, 0x12492

    .line 145
    .line 146
    .line 147
    if-ne v9, v10, :cond_d

    .line 148
    .line 149
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 150
    .line 151
    .line 152
    move-result v9

    .line 153
    if-nez v9, :cond_c

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 157
    .line 158
    .line 159
    goto/16 :goto_11

    .line 160
    .line 161
    :cond_d
    :goto_7
    and-int/lit8 v9, v1, 0xe

    .line 162
    .line 163
    or-int/lit8 v9, v9, 0x30

    .line 164
    .line 165
    const-string v10, "TextFieldInputState"

    .line 166
    .line 167
    const/4 v11, 0x0

    .line 168
    invoke-static {v2, v10, v0, v9, v11}, Landroidx/compose/animation/core/TransitionKt;->updateTransition(Ljava/lang/Object;Ljava/lang/String;Landroidx/compose/runtime/Composer;II)Landroidx/compose/animation/core/Transition;

    .line 169
    .line 170
    .line 171
    move-result-object v17

    .line 172
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelProgress$2;

    .line 173
    .line 174
    const v10, 0x5370a61d

    .line 175
    .line 176
    .line 177
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 178
    .line 179
    .line 180
    sget-object v18, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 181
    .line 182
    invoke-static/range {v18 .. v18}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 183
    .line 184
    .line 185
    move-result-object v16

    .line 186
    const v4, 0x6e220c08

    .line 187
    .line 188
    .line 189
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 190
    .line 191
    .line 192
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v19

    .line 196
    check-cast v19, Landroidx/compose/material/InputPhase;

    .line 197
    .line 198
    const v10, -0x4505bda8

    .line 199
    .line 200
    .line 201
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 202
    .line 203
    .line 204
    sget-object v21, Landroidx/compose/material/TextFieldTransitionScope$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 205
    .line 206
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Enum;->ordinal()I

    .line 207
    .line 208
    .line 209
    move-result v19

    .line 210
    aget v4, v21, v19

    .line 211
    .line 212
    const/16 v19, 0x0

    .line 213
    .line 214
    const/4 v11, 0x3

    .line 215
    const/4 v10, 0x1

    .line 216
    const/high16 v23, 0x3f800000    # 1.0f

    .line 217
    .line 218
    if-eq v4, v10, :cond_e

    .line 219
    .line 220
    if-eq v4, v3, :cond_10

    .line 221
    .line 222
    if-ne v4, v11, :cond_f

    .line 223
    .line 224
    :cond_e
    move/from16 v4, v23

    .line 225
    .line 226
    goto :goto_8

    .line 227
    :cond_f
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 228
    .line 229
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 230
    .line 231
    .line 232
    throw v0

    .line 233
    :cond_10
    move/from16 v4, v19

    .line 234
    .line 235
    :goto_8
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 236
    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 239
    .line 240
    .line 241
    move-result-object v4

    .line 242
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v24

    .line 246
    check-cast v24, Landroidx/compose/material/InputPhase;

    .line 247
    .line 248
    const v11, -0x4505bda8

    .line 249
    .line 250
    .line 251
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 252
    .line 253
    .line 254
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Enum;->ordinal()I

    .line 255
    .line 256
    .line 257
    move-result v11

    .line 258
    aget v11, v21, v11

    .line 259
    .line 260
    if-eq v11, v10, :cond_13

    .line 261
    .line 262
    if-eq v11, v3, :cond_12

    .line 263
    .line 264
    const/4 v3, 0x3

    .line 265
    if-ne v11, v3, :cond_11

    .line 266
    .line 267
    :goto_9
    move/from16 v11, v23

    .line 268
    .line 269
    goto :goto_a

    .line 270
    :cond_11
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 271
    .line 272
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 273
    .line 274
    .line 275
    throw v0

    .line 276
    :cond_12
    const/4 v3, 0x3

    .line 277
    move/from16 v11, v19

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_13
    const/4 v3, 0x3

    .line 281
    goto :goto_9

    .line 282
    :goto_a
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 283
    .line 284
    .line 285
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 286
    .line 287
    .line 288
    move-result-object v11

    .line 289
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 290
    .line 291
    .line 292
    move-result-object v3

    .line 293
    const/16 v22, 0x0

    .line 294
    .line 295
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    invoke-interface {v9, v3, v0, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 304
    .line 305
    const-string v25, "LabelProgress"

    .line 306
    .line 307
    const/high16 v26, 0x30000

    .line 308
    .line 309
    move-object/from16 v9, v17

    .line 310
    .line 311
    const v2, 0x5370a61d

    .line 312
    .line 313
    .line 314
    move-object v10, v4

    .line 315
    const/4 v4, 0x3

    .line 316
    move-object v12, v3

    .line 317
    move-object/from16 v13, v16

    .line 318
    .line 319
    move-object/from16 v14, v25

    .line 320
    .line 321
    move-object v15, v0

    .line 322
    move/from16 v16, v26

    .line 323
    .line 324
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 325
    .line 326
    .line 327
    move-result-object v3

    .line 328
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 329
    .line 330
    .line 331
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 332
    .line 333
    .line 334
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$placeholderOpacity$2;

    .line 335
    .line 336
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 337
    .line 338
    .line 339
    invoke-static/range {v18 .. v18}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 340
    .line 341
    .line 342
    move-result-object v13

    .line 343
    const v2, 0x6e220c08

    .line 344
    .line 345
    .line 346
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 347
    .line 348
    .line 349
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v2

    .line 353
    check-cast v2, Landroidx/compose/material/InputPhase;

    .line 354
    .line 355
    const v10, -0x52068529

    .line 356
    .line 357
    .line 358
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 362
    .line 363
    .line 364
    move-result v2

    .line 365
    aget v2, v21, v2

    .line 366
    .line 367
    const/4 v15, 0x1

    .line 368
    if-eq v2, v15, :cond_16

    .line 369
    .line 370
    const/4 v11, 0x2

    .line 371
    if-eq v2, v11, :cond_15

    .line 372
    .line 373
    if-ne v2, v4, :cond_14

    .line 374
    .line 375
    :goto_b
    move/from16 v2, v19

    .line 376
    .line 377
    goto :goto_c

    .line 378
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 379
    .line 380
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 381
    .line 382
    .line 383
    throw v0

    .line 384
    :cond_15
    if-eqz v8, :cond_16

    .line 385
    .line 386
    goto :goto_b

    .line 387
    :cond_16
    move/from16 v2, v23

    .line 388
    .line 389
    :goto_c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 390
    .line 391
    .line 392
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v11

    .line 400
    check-cast v11, Landroidx/compose/material/InputPhase;

    .line 401
    .line 402
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    .line 406
    .line 407
    .line 408
    move-result v10

    .line 409
    aget v10, v21, v10

    .line 410
    .line 411
    if-eq v10, v15, :cond_19

    .line 412
    .line 413
    const/4 v11, 0x2

    .line 414
    if-eq v10, v11, :cond_18

    .line 415
    .line 416
    if-ne v10, v4, :cond_17

    .line 417
    .line 418
    goto :goto_d

    .line 419
    :cond_17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 420
    .line 421
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 422
    .line 423
    .line 424
    throw v0

    .line 425
    :cond_18
    if-eqz v8, :cond_19

    .line 426
    .line 427
    goto :goto_d

    .line 428
    :cond_19
    move/from16 v19, v23

    .line 429
    .line 430
    :goto_d
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 431
    .line 432
    .line 433
    invoke-static/range {v19 .. v19}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 434
    .line 435
    .line 436
    move-result-object v11

    .line 437
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 438
    .line 439
    .line 440
    move-result-object v10

    .line 441
    const/4 v12, 0x0

    .line 442
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v14

    .line 446
    invoke-interface {v9, v10, v0, v14}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    .line 448
    .line 449
    move-result-object v9

    .line 450
    move-object v12, v9

    .line 451
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 452
    .line 453
    const-string v14, "PlaceholderOpacity"

    .line 454
    .line 455
    move-object/from16 v9, v17

    .line 456
    .line 457
    move-object v10, v2

    .line 458
    move v2, v15

    .line 459
    move-object v15, v0

    .line 460
    move/from16 v16, v26

    .line 461
    .line 462
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 463
    .line 464
    .line 465
    move-result-object v18

    .line 466
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 467
    .line 468
    .line 469
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 470
    .line 471
    .line 472
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelTextStyleColor$2;

    .line 473
    .line 474
    const v15, -0x57267098

    .line 475
    .line 476
    .line 477
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 478
    .line 479
    .line 480
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 481
    .line 482
    .line 483
    move-result-object v10

    .line 484
    check-cast v10, Landroidx/compose/material/InputPhase;

    .line 485
    .line 486
    const v11, -0x58d2cc88

    .line 487
    .line 488
    .line 489
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 490
    .line 491
    .line 492
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 493
    .line 494
    .line 495
    move-result v10

    .line 496
    aget v10, v21, v10

    .line 497
    .line 498
    if-ne v10, v2, :cond_1a

    .line 499
    .line 500
    move-wide/from16 v12, p2

    .line 501
    .line 502
    goto :goto_e

    .line 503
    :cond_1a
    move-wide/from16 v12, p4

    .line 504
    .line 505
    :goto_e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 506
    .line 507
    .line 508
    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 509
    .line 510
    .line 511
    move-result-object v10

    .line 512
    const v14, -0x384212

    .line 513
    .line 514
    .line 515
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 516
    .line 517
    .line 518
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 519
    .line 520
    .line 521
    move-result v12

    .line 522
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 523
    .line 524
    .line 525
    move-result-object v13

    .line 526
    if-nez v12, :cond_1b

    .line 527
    .line 528
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 529
    .line 530
    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v12

    .line 534
    if-ne v13, v12, :cond_1c

    .line 535
    .line 536
    :cond_1b
    sget-object v12, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 537
    .line 538
    invoke-static {v12}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    .line 539
    .line 540
    .line 541
    move-result-object v12

    .line 542
    invoke-interface {v12, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    move-result-object v10

    .line 546
    move-object v13, v10

    .line 547
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 548
    .line 549
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 550
    .line 551
    .line 552
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 553
    .line 554
    .line 555
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 556
    .line 557
    const v10, 0x6e220c08

    .line 558
    .line 559
    .line 560
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 561
    .line 562
    .line 563
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v10

    .line 567
    check-cast v10, Landroidx/compose/material/InputPhase;

    .line 568
    .line 569
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    .line 573
    .line 574
    .line 575
    move-result v10

    .line 576
    aget v10, v21, v10

    .line 577
    .line 578
    if-ne v10, v2, :cond_1d

    .line 579
    .line 580
    move-wide/from16 v19, p2

    .line 581
    .line 582
    goto :goto_f

    .line 583
    :cond_1d
    move-wide/from16 v19, p4

    .line 584
    .line 585
    :goto_f
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 586
    .line 587
    .line 588
    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 589
    .line 590
    .line 591
    move-result-object v10

    .line 592
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 593
    .line 594
    .line 595
    move-result-object v12

    .line 596
    check-cast v12, Landroidx/compose/material/InputPhase;

    .line 597
    .line 598
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 599
    .line 600
    .line 601
    invoke-virtual {v12}, Ljava/lang/Enum;->ordinal()I

    .line 602
    .line 603
    .line 604
    move-result v11

    .line 605
    aget v11, v21, v11

    .line 606
    .line 607
    if-ne v11, v2, :cond_1e

    .line 608
    .line 609
    move-wide/from16 v11, p2

    .line 610
    .line 611
    goto :goto_10

    .line 612
    :cond_1e
    move-wide/from16 v11, p4

    .line 613
    .line 614
    :goto_10
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 615
    .line 616
    .line 617
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 618
    .line 619
    .line 620
    move-result-object v11

    .line 621
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 622
    .line 623
    .line 624
    move-result-object v2

    .line 625
    const/4 v12, 0x0

    .line 626
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 627
    .line 628
    .line 629
    move-result-object v14

    .line 630
    invoke-interface {v9, v2, v0, v14}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    move-result-object v2

    .line 634
    move-object v12, v2

    .line 635
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 636
    .line 637
    const v2, 0x38000

    .line 638
    .line 639
    .line 640
    const-string v14, "LabelTextStyleColor"

    .line 641
    .line 642
    move-object/from16 v9, v17

    .line 643
    .line 644
    const v4, -0x384212

    .line 645
    .line 646
    .line 647
    move v4, v15

    .line 648
    move-object v15, v0

    .line 649
    move/from16 v16, v2

    .line 650
    .line 651
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 652
    .line 653
    .line 654
    move-result-object v2

    .line 655
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 656
    .line 657
    .line 658
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 659
    .line 660
    .line 661
    sget-object v9, Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;->INSTANCE:Landroidx/compose/material/TextFieldTransitionScope$Transition$labelContentColor$2;

    .line 662
    .line 663
    and-int/lit16 v10, v1, 0x1c00

    .line 664
    .line 665
    or-int/lit16 v10, v10, 0x180

    .line 666
    .line 667
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 668
    .line 669
    .line 670
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 671
    .line 672
    .line 673
    move-result-object v4

    .line 674
    shr-int/lit8 v11, v10, 0x6

    .line 675
    .line 676
    and-int/lit8 v11, v11, 0x70

    .line 677
    .line 678
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 679
    .line 680
    .line 681
    move-result-object v11

    .line 682
    invoke-interface {v7, v4, v0, v11}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    move-result-object v4

    .line 686
    check-cast v4, Landroidx/compose/ui/graphics/Color;

    .line 687
    .line 688
    invoke-virtual {v4}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 689
    .line 690
    .line 691
    move-result-wide v11

    .line 692
    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 693
    .line 694
    .line 695
    move-result-object v4

    .line 696
    const v11, -0x384212

    .line 697
    .line 698
    .line 699
    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 700
    .line 701
    .line 702
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v11

    .line 706
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v12

    .line 710
    if-nez v11, :cond_1f

    .line 711
    .line 712
    sget-object v11, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 713
    .line 714
    invoke-virtual {v11}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 715
    .line 716
    .line 717
    move-result-object v11

    .line 718
    if-ne v12, v11, :cond_20

    .line 719
    .line 720
    :cond_1f
    sget-object v11, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 721
    .line 722
    invoke-static {v11}, Landroidx/compose/animation/ColorVectorConverterKt;->getVectorConverter(Landroidx/compose/ui/graphics/Color$Companion;)Lkotlin/jvm/functions/Function1;

    .line 723
    .line 724
    .line 725
    move-result-object v11

    .line 726
    invoke-interface {v11, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    .line 728
    .line 729
    move-result-object v4

    .line 730
    move-object v12, v4

    .line 731
    check-cast v12, Landroidx/compose/animation/core/TwoWayConverter;

    .line 732
    .line 733
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 734
    .line 735
    .line 736
    :cond_20
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 737
    .line 738
    .line 739
    move-object v13, v12

    .line 740
    check-cast v13, Landroidx/compose/animation/core/TwoWayConverter;

    .line 741
    .line 742
    const/4 v4, 0x3

    .line 743
    shl-int/2addr v10, v4

    .line 744
    const/16 v4, 0xc40

    .line 745
    .line 746
    const v11, 0xe000

    .line 747
    .line 748
    .line 749
    and-int/2addr v10, v11

    .line 750
    or-int/2addr v4, v10

    .line 751
    const v10, 0x6e220c08

    .line 752
    .line 753
    .line 754
    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 755
    .line 756
    .line 757
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 758
    .line 759
    .line 760
    move-result-object v10

    .line 761
    shr-int/lit8 v4, v4, 0x9

    .line 762
    .line 763
    and-int/lit8 v4, v4, 0x70

    .line 764
    .line 765
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 766
    .line 767
    .line 768
    move-result-object v11

    .line 769
    invoke-interface {v7, v10, v0, v11}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 770
    .line 771
    .line 772
    move-result-object v10

    .line 773
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    move-result-object v11

    .line 777
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    invoke-interface {v7, v11, v0, v4}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 782
    .line 783
    .line 784
    move-result-object v11

    .line 785
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 786
    .line 787
    .line 788
    move-result-object v4

    .line 789
    const/4 v12, 0x0

    .line 790
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 791
    .line 792
    .line 793
    move-result-object v12

    .line 794
    invoke-interface {v9, v4, v0, v12}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    .line 796
    .line 797
    move-result-object v4

    .line 798
    move-object v12, v4

    .line 799
    check-cast v12, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 800
    .line 801
    const v16, 0x38000

    .line 802
    .line 803
    .line 804
    const-string v14, "LabelContentColor"

    .line 805
    .line 806
    move-object/from16 v9, v17

    .line 807
    .line 808
    move-object v15, v0

    .line 809
    invoke-static/range {v9 .. v16}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 810
    .line 811
    .line 812
    move-result-object v4

    .line 813
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 814
    .line 815
    .line 816
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 817
    .line 818
    .line 819
    invoke-static {v3}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda-1(Landroidx/compose/runtime/State;)F

    .line 820
    .line 821
    .line 822
    move-result v3

    .line 823
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 824
    .line 825
    .line 826
    move-result-object v10

    .line 827
    invoke-static {v2}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda-5(Landroidx/compose/runtime/State;)J

    .line 828
    .line 829
    .line 830
    move-result-wide v2

    .line 831
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 832
    .line 833
    .line 834
    move-result-object v11

    .line 835
    invoke-static {v4}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda-6(Landroidx/compose/runtime/State;)J

    .line 836
    .line 837
    .line 838
    move-result-wide v2

    .line 839
    invoke-static {v2, v3}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 840
    .line 841
    .line 842
    move-result-object v12

    .line 843
    invoke-static/range {v18 .. v18}, Landroidx/compose/material/TextFieldTransitionScope;->Transition_DTcfvLk$lambda-3(Landroidx/compose/runtime/State;)F

    .line 844
    .line 845
    .line 846
    move-result v2

    .line 847
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 848
    .line 849
    .line 850
    move-result-object v13

    .line 851
    const/4 v2, 0x3

    .line 852
    shr-int/2addr v1, v2

    .line 853
    const v2, 0xe000

    .line 854
    .line 855
    .line 856
    and-int/2addr v1, v2

    .line 857
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 858
    .line 859
    .line 860
    move-result-object v15

    .line 861
    move-object/from16 v9, p8

    .line 862
    .line 863
    move-object v14, v0

    .line 864
    invoke-interface/range {v9 .. v15}, Lat/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    :goto_11
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 868
    .line 869
    .line 870
    move-result-object v11

    .line 871
    if-nez v11, :cond_21

    .line 872
    .line 873
    goto :goto_12

    .line 874
    :cond_21
    new-instance v12, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;

    .line 875
    .line 876
    move-object v0, v12

    .line 877
    move-object/from16 v1, p0

    .line 878
    .line 879
    move-object/from16 v2, p1

    .line 880
    .line 881
    move-wide/from16 v3, p2

    .line 882
    .line 883
    move-wide/from16 v5, p4

    .line 884
    .line 885
    move-object/from16 v7, p6

    .line 886
    .line 887
    move/from16 v8, p7

    .line 888
    .line 889
    move-object/from16 v9, p8

    .line 890
    .line 891
    move/from16 v10, p10

    .line 892
    .line 893
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/TextFieldTransitionScope$Transition$1;-><init>(Landroidx/compose/material/TextFieldTransitionScope;Landroidx/compose/material/InputPhase;JJLat/n;ZLat/q;I)V

    .line 894
    .line 895
    .line 896
    invoke-interface {v11, v12}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 897
    .line 898
    .line 899
    :goto_12
    return-void
.end method
