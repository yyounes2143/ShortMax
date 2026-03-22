.class public final Landroidx/compose/ui/graphics/vector/PathNodeKt;
.super Ljava/lang/Object;
.source "PathNode.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final ArcToKey:C = 'A'

.field private static final CloseKey:C = 'Z'

.field private static final CurveToKey:C = 'C'

.field private static final HorizontalToKey:C = 'H'

.field private static final LineToKey:C = 'L'

.field private static final MoveToKey:C = 'M'

.field private static final NUM_ARC_TO_ARGS:I = 0x7

.field private static final NUM_CURVE_TO_ARGS:I = 0x6

.field private static final NUM_HORIZONTAL_TO_ARGS:I = 0x1

.field private static final NUM_LINE_TO_ARGS:I = 0x2

.field private static final NUM_MOVE_TO_ARGS:I = 0x2

.field private static final NUM_QUAD_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_CURVE_TO_ARGS:I = 0x4

.field private static final NUM_REFLECTIVE_QUAD_TO_ARGS:I = 0x2

.field private static final NUM_VERTICAL_TO_ARGS:I = 0x1

.field private static final QuadToKey:C = 'Q'

.field private static final ReflectiveCurveToKey:C = 'S'

.field private static final ReflectiveQuadToKey:C = 'T'

.field private static final RelativeArcToKey:C = 'a'

.field private static final RelativeCloseKey:C = 'z'

.field private static final RelativeCurveToKey:C = 'c'

.field private static final RelativeHorizontalToKey:C = 'h'

.field private static final RelativeLineToKey:C = 'l'

.field private static final RelativeMoveToKey:C = 'm'

.field private static final RelativeQuadToKey:C = 'q'

.field private static final RelativeReflectiveCurveToKey:C = 's'

.field private static final RelativeReflectiveQuadToKey:C = 't'

.field private static final RelativeVerticalToKey:C = 'v'

.field private static final VerticalToKey:C = 'V'


# direct methods
.method private static final pathNodesFromArgs([FILkotlin/jvm/functions/Function1;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([FI",
            "Lkotlin/jvm/functions/Function1<",
            "-[F+",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 2
    .line 3
    array-length v1, p0

    .line 4
    sub-int/2addr v1, p1

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v2, v1}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0, p1}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v3, 0xa

    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    move-object v3, v0

    .line 35
    check-cast v3, Lkotlin/collections/m0;

    .line 36
    .line 37
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    add-int v4, v3, p1

    .line 42
    .line 43
    invoke-static {p0, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {p2, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    check-cast v5, Landroidx/compose/ui/graphics/vector/PathNode;

    .line 52
    .line 53
    instance-of v6, v5, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 54
    .line 55
    const/4 v7, 0x1

    .line 56
    if-eqz v6, :cond_0

    .line 57
    .line 58
    if-lez v3, :cond_0

    .line 59
    .line 60
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 61
    .line 62
    aget v3, v4, v2

    .line 63
    .line 64
    aget v4, v4, v7

    .line 65
    .line 66
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_0
    instance-of v6, v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 71
    .line 72
    if-eqz v6, :cond_1

    .line 73
    .line 74
    if-lez v3, :cond_1

    .line 75
    .line 76
    new-instance v5, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 77
    .line 78
    aget v3, v4, v2

    .line 79
    .line 80
    aget v4, v4, v7

    .line 81
    .line 82
    invoke-direct {v5, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 83
    .line 84
    .line 85
    :cond_1
    :goto_1
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_2
    return-object v1
.end method

.method public static final toPathNodes(C[F)Ljava/util/List;
    .locals 21
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C[F)",
            "Ljava/util/List<",
            "Landroidx/compose/ui/graphics/vector/PathNode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "args"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/16 v2, 0x7a

    .line 11
    .line 12
    if-ne v0, v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 v2, 0x5a

    .line 16
    .line 17
    if-ne v0, v2, :cond_1

    .line 18
    .line 19
    :goto_0
    sget-object v0, Landroidx/compose/ui/graphics/vector/PathNode$Close;->INSTANCE:Landroidx/compose/ui/graphics/vector/PathNode$Close;

    .line 20
    .line 21
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    goto/16 :goto_17

    .line 26
    .line 27
    :cond_1
    const/16 v2, 0x6d

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const/16 v4, 0xa

    .line 31
    .line 32
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    if-ne v0, v2, :cond_4

    .line 35
    .line 36
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 37
    .line 38
    array-length v2, v1

    .line 39
    sub-int/2addr v2, v3

    .line 40
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_3

    .line 65
    .line 66
    move-object v3, v0

    .line 67
    check-cast v3, Lkotlin/collections/m0;

    .line 68
    .line 69
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    add-int/lit8 v4, v3, 0x2

    .line 74
    .line 75
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;

    .line 80
    .line 81
    aget v8, v4, v6

    .line 82
    .line 83
    aget v9, v4, v5

    .line 84
    .line 85
    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeMoveTo;-><init>(FF)V

    .line 86
    .line 87
    .line 88
    if-lez v3, :cond_2

    .line 89
    .line 90
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 91
    .line 92
    aget v3, v4, v6

    .line 93
    .line 94
    aget v4, v4, v5

    .line 95
    .line 96
    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    move-object v0, v2

    .line 104
    goto/16 :goto_17

    .line 105
    .line 106
    :cond_4
    const/16 v2, 0x4d

    .line 107
    .line 108
    if-ne v0, v2, :cond_6

    .line 109
    .line 110
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 111
    .line 112
    array-length v2, v1

    .line 113
    sub-int/2addr v2, v3

    .line 114
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0, v3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    new-instance v2, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    .line 129
    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    move-object v3, v0

    .line 141
    check-cast v3, Lkotlin/collections/m0;

    .line 142
    .line 143
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    add-int/lit8 v4, v3, 0x2

    .line 148
    .line 149
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;

    .line 154
    .line 155
    aget v8, v4, v6

    .line 156
    .line 157
    aget v9, v4, v5

    .line 158
    .line 159
    invoke-direct {v7, v8, v9}, Landroidx/compose/ui/graphics/vector/PathNode$MoveTo;-><init>(FF)V

    .line 160
    .line 161
    .line 162
    if-lez v3, :cond_5

    .line 163
    .line 164
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 165
    .line 166
    aget v3, v4, v6

    .line 167
    .line 168
    aget v4, v4, v5

    .line 169
    .line 170
    invoke-direct {v7, v3, v4}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 171
    .line 172
    .line 173
    :cond_5
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    goto :goto_2

    .line 177
    :cond_6
    const/16 v2, 0x6c

    .line 178
    .line 179
    if-ne v0, v2, :cond_7

    .line 180
    .line 181
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 182
    .line 183
    array-length v2, v1

    .line 184
    sub-int/2addr v2, v3

    .line 185
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-static {v0, v3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    .line 193
    .line 194
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 195
    .line 196
    .line 197
    move-result v3

    .line 198
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 199
    .line 200
    .line 201
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 206
    .line 207
    .line 208
    move-result v3

    .line 209
    if-eqz v3, :cond_3

    .line 210
    .line 211
    move-object v3, v0

    .line 212
    check-cast v3, Lkotlin/collections/m0;

    .line 213
    .line 214
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 215
    .line 216
    .line 217
    move-result v3

    .line 218
    add-int/lit8 v4, v3, 0x2

    .line 219
    .line 220
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;

    .line 225
    .line 226
    aget v7, v3, v6

    .line 227
    .line 228
    aget v3, v3, v5

    .line 229
    .line 230
    invoke-direct {v4, v7, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeLineTo;-><init>(FF)V

    .line 231
    .line 232
    .line 233
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_7
    const/16 v2, 0x4c

    .line 238
    .line 239
    if-ne v0, v2, :cond_8

    .line 240
    .line 241
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 242
    .line 243
    array-length v2, v1

    .line 244
    sub-int/2addr v2, v3

    .line 245
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 246
    .line 247
    .line 248
    invoke-static {v0, v3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    .line 260
    .line 261
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    .line 267
    .line 268
    move-result v3

    .line 269
    if-eqz v3, :cond_3

    .line 270
    .line 271
    move-object v3, v0

    .line 272
    check-cast v3, Lkotlin/collections/m0;

    .line 273
    .line 274
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 275
    .line 276
    .line 277
    move-result v3

    .line 278
    add-int/lit8 v4, v3, 0x2

    .line 279
    .line 280
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 281
    .line 282
    .line 283
    move-result-object v3

    .line 284
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;

    .line 285
    .line 286
    aget v7, v3, v6

    .line 287
    .line 288
    aget v3, v3, v5

    .line 289
    .line 290
    invoke-direct {v4, v7, v3}, Landroidx/compose/ui/graphics/vector/PathNode$LineTo;-><init>(FF)V

    .line 291
    .line 292
    .line 293
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 294
    .line 295
    .line 296
    goto :goto_4

    .line 297
    :cond_8
    const/16 v2, 0x68

    .line 298
    .line 299
    if-ne v0, v2, :cond_9

    .line 300
    .line 301
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 302
    .line 303
    array-length v2, v1

    .line 304
    sub-int/2addr v2, v5

    .line 305
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 306
    .line 307
    .line 308
    invoke-static {v0, v5}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    new-instance v2, Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 315
    .line 316
    .line 317
    move-result v3

    .line 318
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 319
    .line 320
    .line 321
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 326
    .line 327
    .line 328
    move-result v3

    .line 329
    if-eqz v3, :cond_3

    .line 330
    .line 331
    move-object v3, v0

    .line 332
    check-cast v3, Lkotlin/collections/m0;

    .line 333
    .line 334
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 335
    .line 336
    .line 337
    move-result v3

    .line 338
    add-int/lit8 v4, v3, 0x1

    .line 339
    .line 340
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 341
    .line 342
    .line 343
    move-result-object v3

    .line 344
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;

    .line 345
    .line 346
    aget v3, v3, v6

    .line 347
    .line 348
    invoke-direct {v4, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeHorizontalTo;-><init>(F)V

    .line 349
    .line 350
    .line 351
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    goto :goto_5

    .line 355
    :cond_9
    const/16 v2, 0x48

    .line 356
    .line 357
    if-ne v0, v2, :cond_a

    .line 358
    .line 359
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 360
    .line 361
    array-length v2, v1

    .line 362
    sub-int/2addr v2, v5

    .line 363
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 364
    .line 365
    .line 366
    invoke-static {v0, v5}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 367
    .line 368
    .line 369
    move-result-object v0

    .line 370
    new-instance v2, Ljava/util/ArrayList;

    .line 371
    .line 372
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 377
    .line 378
    .line 379
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v3

    .line 387
    if-eqz v3, :cond_3

    .line 388
    .line 389
    move-object v3, v0

    .line 390
    check-cast v3, Lkotlin/collections/m0;

    .line 391
    .line 392
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 393
    .line 394
    .line 395
    move-result v3

    .line 396
    add-int/lit8 v4, v3, 0x1

    .line 397
    .line 398
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 399
    .line 400
    .line 401
    move-result-object v3

    .line 402
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;

    .line 403
    .line 404
    aget v3, v3, v6

    .line 405
    .line 406
    invoke-direct {v4, v3}, Landroidx/compose/ui/graphics/vector/PathNode$HorizontalTo;-><init>(F)V

    .line 407
    .line 408
    .line 409
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 410
    .line 411
    .line 412
    goto :goto_6

    .line 413
    :cond_a
    const/16 v2, 0x76

    .line 414
    .line 415
    if-ne v0, v2, :cond_b

    .line 416
    .line 417
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 418
    .line 419
    array-length v2, v1

    .line 420
    sub-int/2addr v2, v5

    .line 421
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 422
    .line 423
    .line 424
    invoke-static {v0, v5}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    new-instance v2, Ljava/util/ArrayList;

    .line 429
    .line 430
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 435
    .line 436
    .line 437
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v3

    .line 445
    if-eqz v3, :cond_3

    .line 446
    .line 447
    move-object v3, v0

    .line 448
    check-cast v3, Lkotlin/collections/m0;

    .line 449
    .line 450
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 451
    .line 452
    .line 453
    move-result v3

    .line 454
    add-int/lit8 v4, v3, 0x1

    .line 455
    .line 456
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 457
    .line 458
    .line 459
    move-result-object v3

    .line 460
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;

    .line 461
    .line 462
    aget v3, v3, v6

    .line 463
    .line 464
    invoke-direct {v4, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeVerticalTo;-><init>(F)V

    .line 465
    .line 466
    .line 467
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    goto :goto_7

    .line 471
    :cond_b
    const/16 v2, 0x56

    .line 472
    .line 473
    if-ne v0, v2, :cond_c

    .line 474
    .line 475
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 476
    .line 477
    array-length v2, v1

    .line 478
    sub-int/2addr v2, v5

    .line 479
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 480
    .line 481
    .line 482
    invoke-static {v0, v5}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    new-instance v2, Ljava/util/ArrayList;

    .line 487
    .line 488
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 493
    .line 494
    .line 495
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 500
    .line 501
    .line 502
    move-result v3

    .line 503
    if-eqz v3, :cond_3

    .line 504
    .line 505
    move-object v3, v0

    .line 506
    check-cast v3, Lkotlin/collections/m0;

    .line 507
    .line 508
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    add-int/lit8 v4, v3, 0x1

    .line 513
    .line 514
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 515
    .line 516
    .line 517
    move-result-object v3

    .line 518
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;

    .line 519
    .line 520
    aget v3, v3, v6

    .line 521
    .line 522
    invoke-direct {v4, v3}, Landroidx/compose/ui/graphics/vector/PathNode$VerticalTo;-><init>(F)V

    .line 523
    .line 524
    .line 525
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 526
    .line 527
    .line 528
    goto :goto_8

    .line 529
    :cond_c
    const/16 v2, 0x63

    .line 530
    .line 531
    const/4 v7, 0x5

    .line 532
    const/4 v8, 0x6

    .line 533
    const/4 v9, 0x4

    .line 534
    const/4 v10, 0x3

    .line 535
    if-ne v0, v2, :cond_d

    .line 536
    .line 537
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 538
    .line 539
    array-length v2, v1

    .line 540
    sub-int/2addr v2, v8

    .line 541
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 542
    .line 543
    .line 544
    invoke-static {v0, v8}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 545
    .line 546
    .line 547
    move-result-object v0

    .line 548
    new-instance v2, Ljava/util/ArrayList;

    .line 549
    .line 550
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 551
    .line 552
    .line 553
    move-result v4

    .line 554
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 555
    .line 556
    .line 557
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 558
    .line 559
    .line 560
    move-result-object v0

    .line 561
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 562
    .line 563
    .line 564
    move-result v4

    .line 565
    if-eqz v4, :cond_3

    .line 566
    .line 567
    move-object v4, v0

    .line 568
    check-cast v4, Lkotlin/collections/m0;

    .line 569
    .line 570
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 571
    .line 572
    .line 573
    move-result v4

    .line 574
    add-int/lit8 v8, v4, 0x6

    .line 575
    .line 576
    invoke-static {v1, v4, v8}, Lkotlin/collections/n;->x([FII)[F

    .line 577
    .line 578
    .line 579
    move-result-object v4

    .line 580
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;

    .line 581
    .line 582
    aget v12, v4, v6

    .line 583
    .line 584
    aget v13, v4, v5

    .line 585
    .line 586
    aget v14, v4, v3

    .line 587
    .line 588
    aget v15, v4, v10

    .line 589
    .line 590
    aget v16, v4, v9

    .line 591
    .line 592
    aget v17, v4, v7

    .line 593
    .line 594
    move-object v11, v8

    .line 595
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeCurveTo;-><init>(FFFFFF)V

    .line 596
    .line 597
    .line 598
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    goto :goto_9

    .line 602
    :cond_d
    const/16 v2, 0x43

    .line 603
    .line 604
    if-ne v0, v2, :cond_e

    .line 605
    .line 606
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 607
    .line 608
    array-length v2, v1

    .line 609
    sub-int/2addr v2, v8

    .line 610
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 611
    .line 612
    .line 613
    invoke-static {v0, v8}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    new-instance v2, Ljava/util/ArrayList;

    .line 618
    .line 619
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 620
    .line 621
    .line 622
    move-result v4

    .line 623
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 624
    .line 625
    .line 626
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 627
    .line 628
    .line 629
    move-result-object v0

    .line 630
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 631
    .line 632
    .line 633
    move-result v4

    .line 634
    if-eqz v4, :cond_3

    .line 635
    .line 636
    move-object v4, v0

    .line 637
    check-cast v4, Lkotlin/collections/m0;

    .line 638
    .line 639
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 640
    .line 641
    .line 642
    move-result v4

    .line 643
    add-int/lit8 v8, v4, 0x6

    .line 644
    .line 645
    invoke-static {v1, v4, v8}, Lkotlin/collections/n;->x([FII)[F

    .line 646
    .line 647
    .line 648
    move-result-object v4

    .line 649
    new-instance v8, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;

    .line 650
    .line 651
    aget v12, v4, v6

    .line 652
    .line 653
    aget v13, v4, v5

    .line 654
    .line 655
    aget v14, v4, v3

    .line 656
    .line 657
    aget v15, v4, v10

    .line 658
    .line 659
    aget v16, v4, v9

    .line 660
    .line 661
    aget v17, v4, v7

    .line 662
    .line 663
    move-object v11, v8

    .line 664
    invoke-direct/range {v11 .. v17}, Landroidx/compose/ui/graphics/vector/PathNode$CurveTo;-><init>(FFFFFF)V

    .line 665
    .line 666
    .line 667
    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto :goto_a

    .line 671
    :cond_e
    const/16 v2, 0x73

    .line 672
    .line 673
    if-ne v0, v2, :cond_f

    .line 674
    .line 675
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 676
    .line 677
    array-length v2, v1

    .line 678
    sub-int/2addr v2, v9

    .line 679
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 680
    .line 681
    .line 682
    invoke-static {v0, v9}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    new-instance v2, Ljava/util/ArrayList;

    .line 687
    .line 688
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 689
    .line 690
    .line 691
    move-result v4

    .line 692
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 693
    .line 694
    .line 695
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 700
    .line 701
    .line 702
    move-result v4

    .line 703
    if-eqz v4, :cond_3

    .line 704
    .line 705
    move-object v4, v0

    .line 706
    check-cast v4, Lkotlin/collections/m0;

    .line 707
    .line 708
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 709
    .line 710
    .line 711
    move-result v4

    .line 712
    add-int/lit8 v7, v4, 0x4

    .line 713
    .line 714
    invoke-static {v1, v4, v7}, Lkotlin/collections/n;->x([FII)[F

    .line 715
    .line 716
    .line 717
    move-result-object v4

    .line 718
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;

    .line 719
    .line 720
    aget v8, v4, v6

    .line 721
    .line 722
    aget v9, v4, v5

    .line 723
    .line 724
    aget v11, v4, v3

    .line 725
    .line 726
    aget v4, v4, v10

    .line 727
    .line 728
    invoke-direct {v7, v8, v9, v11, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveCurveTo;-><init>(FFFF)V

    .line 729
    .line 730
    .line 731
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    goto :goto_b

    .line 735
    :cond_f
    const/16 v2, 0x53

    .line 736
    .line 737
    if-ne v0, v2, :cond_10

    .line 738
    .line 739
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 740
    .line 741
    array-length v2, v1

    .line 742
    sub-int/2addr v2, v9

    .line 743
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 744
    .line 745
    .line 746
    invoke-static {v0, v9}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 747
    .line 748
    .line 749
    move-result-object v0

    .line 750
    new-instance v2, Ljava/util/ArrayList;

    .line 751
    .line 752
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 753
    .line 754
    .line 755
    move-result v4

    .line 756
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 757
    .line 758
    .line 759
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 764
    .line 765
    .line 766
    move-result v4

    .line 767
    if-eqz v4, :cond_3

    .line 768
    .line 769
    move-object v4, v0

    .line 770
    check-cast v4, Lkotlin/collections/m0;

    .line 771
    .line 772
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 773
    .line 774
    .line 775
    move-result v4

    .line 776
    add-int/lit8 v7, v4, 0x4

    .line 777
    .line 778
    invoke-static {v1, v4, v7}, Lkotlin/collections/n;->x([FII)[F

    .line 779
    .line 780
    .line 781
    move-result-object v4

    .line 782
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;

    .line 783
    .line 784
    aget v8, v4, v6

    .line 785
    .line 786
    aget v9, v4, v5

    .line 787
    .line 788
    aget v11, v4, v3

    .line 789
    .line 790
    aget v4, v4, v10

    .line 791
    .line 792
    invoke-direct {v7, v8, v9, v11, v4}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveCurveTo;-><init>(FFFF)V

    .line 793
    .line 794
    .line 795
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 796
    .line 797
    .line 798
    goto :goto_c

    .line 799
    :cond_10
    const/16 v2, 0x71

    .line 800
    .line 801
    if-ne v0, v2, :cond_11

    .line 802
    .line 803
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 804
    .line 805
    array-length v2, v1

    .line 806
    sub-int/2addr v2, v9

    .line 807
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 808
    .line 809
    .line 810
    invoke-static {v0, v9}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 811
    .line 812
    .line 813
    move-result-object v0

    .line 814
    new-instance v2, Ljava/util/ArrayList;

    .line 815
    .line 816
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 817
    .line 818
    .line 819
    move-result v4

    .line 820
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 821
    .line 822
    .line 823
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 824
    .line 825
    .line 826
    move-result-object v0

    .line 827
    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 828
    .line 829
    .line 830
    move-result v4

    .line 831
    if-eqz v4, :cond_3

    .line 832
    .line 833
    move-object v4, v0

    .line 834
    check-cast v4, Lkotlin/collections/m0;

    .line 835
    .line 836
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 837
    .line 838
    .line 839
    move-result v4

    .line 840
    add-int/lit8 v7, v4, 0x4

    .line 841
    .line 842
    invoke-static {v1, v4, v7}, Lkotlin/collections/n;->x([FII)[F

    .line 843
    .line 844
    .line 845
    move-result-object v4

    .line 846
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;

    .line 847
    .line 848
    aget v8, v4, v6

    .line 849
    .line 850
    aget v9, v4, v5

    .line 851
    .line 852
    aget v11, v4, v3

    .line 853
    .line 854
    aget v4, v4, v10

    .line 855
    .line 856
    invoke-direct {v7, v8, v9, v11, v4}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeQuadTo;-><init>(FFFF)V

    .line 857
    .line 858
    .line 859
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 860
    .line 861
    .line 862
    goto :goto_d

    .line 863
    :cond_11
    const/16 v2, 0x51

    .line 864
    .line 865
    if-ne v0, v2, :cond_12

    .line 866
    .line 867
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 868
    .line 869
    array-length v2, v1

    .line 870
    sub-int/2addr v2, v9

    .line 871
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 872
    .line 873
    .line 874
    invoke-static {v0, v9}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 875
    .line 876
    .line 877
    move-result-object v0

    .line 878
    new-instance v2, Ljava/util/ArrayList;

    .line 879
    .line 880
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 881
    .line 882
    .line 883
    move-result v4

    .line 884
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 885
    .line 886
    .line 887
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 888
    .line 889
    .line 890
    move-result-object v0

    .line 891
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 892
    .line 893
    .line 894
    move-result v4

    .line 895
    if-eqz v4, :cond_3

    .line 896
    .line 897
    move-object v4, v0

    .line 898
    check-cast v4, Lkotlin/collections/m0;

    .line 899
    .line 900
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 901
    .line 902
    .line 903
    move-result v4

    .line 904
    add-int/lit8 v7, v4, 0x4

    .line 905
    .line 906
    invoke-static {v1, v4, v7}, Lkotlin/collections/n;->x([FII)[F

    .line 907
    .line 908
    .line 909
    move-result-object v4

    .line 910
    new-instance v7, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;

    .line 911
    .line 912
    aget v8, v4, v6

    .line 913
    .line 914
    aget v9, v4, v5

    .line 915
    .line 916
    aget v11, v4, v3

    .line 917
    .line 918
    aget v4, v4, v10

    .line 919
    .line 920
    invoke-direct {v7, v8, v9, v11, v4}, Landroidx/compose/ui/graphics/vector/PathNode$QuadTo;-><init>(FFFF)V

    .line 921
    .line 922
    .line 923
    invoke-interface {v2, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    goto :goto_e

    .line 927
    :cond_12
    const/16 v2, 0x74

    .line 928
    .line 929
    if-ne v0, v2, :cond_13

    .line 930
    .line 931
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 932
    .line 933
    array-length v2, v1

    .line 934
    sub-int/2addr v2, v3

    .line 935
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 936
    .line 937
    .line 938
    invoke-static {v0, v3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 939
    .line 940
    .line 941
    move-result-object v0

    .line 942
    new-instance v2, Ljava/util/ArrayList;

    .line 943
    .line 944
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 945
    .line 946
    .line 947
    move-result v3

    .line 948
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 949
    .line 950
    .line 951
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 956
    .line 957
    .line 958
    move-result v3

    .line 959
    if-eqz v3, :cond_3

    .line 960
    .line 961
    move-object v3, v0

    .line 962
    check-cast v3, Lkotlin/collections/m0;

    .line 963
    .line 964
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 965
    .line 966
    .line 967
    move-result v3

    .line 968
    add-int/lit8 v4, v3, 0x2

    .line 969
    .line 970
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 971
    .line 972
    .line 973
    move-result-object v3

    .line 974
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;

    .line 975
    .line 976
    aget v7, v3, v6

    .line 977
    .line 978
    aget v3, v3, v5

    .line 979
    .line 980
    invoke-direct {v4, v7, v3}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeReflectiveQuadTo;-><init>(FF)V

    .line 981
    .line 982
    .line 983
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 984
    .line 985
    .line 986
    goto :goto_f

    .line 987
    :cond_13
    const/16 v2, 0x54

    .line 988
    .line 989
    if-ne v0, v2, :cond_14

    .line 990
    .line 991
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 992
    .line 993
    array-length v2, v1

    .line 994
    sub-int/2addr v2, v3

    .line 995
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 996
    .line 997
    .line 998
    invoke-static {v0, v3}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 999
    .line 1000
    .line 1001
    move-result-object v0

    .line 1002
    new-instance v2, Ljava/util/ArrayList;

    .line 1003
    .line 1004
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 1005
    .line 1006
    .line 1007
    move-result v3

    .line 1008
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1009
    .line 1010
    .line 1011
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1012
    .line 1013
    .line 1014
    move-result-object v0

    .line 1015
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1016
    .line 1017
    .line 1018
    move-result v3

    .line 1019
    if-eqz v3, :cond_3

    .line 1020
    .line 1021
    move-object v3, v0

    .line 1022
    check-cast v3, Lkotlin/collections/m0;

    .line 1023
    .line 1024
    invoke-virtual {v3}, Lkotlin/collections/m0;->nextInt()I

    .line 1025
    .line 1026
    .line 1027
    move-result v3

    .line 1028
    add-int/lit8 v4, v3, 0x2

    .line 1029
    .line 1030
    invoke-static {v1, v3, v4}, Lkotlin/collections/n;->x([FII)[F

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    new-instance v4, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;

    .line 1035
    .line 1036
    aget v7, v3, v6

    .line 1037
    .line 1038
    aget v3, v3, v5

    .line 1039
    .line 1040
    invoke-direct {v4, v7, v3}, Landroidx/compose/ui/graphics/vector/PathNode$ReflectiveQuadTo;-><init>(FF)V

    .line 1041
    .line 1042
    .line 1043
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1044
    .line 1045
    .line 1046
    goto :goto_10

    .line 1047
    :cond_14
    const/16 v2, 0x61

    .line 1048
    .line 1049
    const/4 v11, 0x7

    .line 1050
    const/4 v12, 0x0

    .line 1051
    if-ne v0, v2, :cond_17

    .line 1052
    .line 1053
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 1054
    .line 1055
    array-length v2, v1

    .line 1056
    sub-int/2addr v2, v11

    .line 1057
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v0, v11}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 1061
    .line 1062
    .line 1063
    move-result-object v0

    .line 1064
    new-instance v2, Ljava/util/ArrayList;

    .line 1065
    .line 1066
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 1067
    .line 1068
    .line 1069
    move-result v4

    .line 1070
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1071
    .line 1072
    .line 1073
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1074
    .line 1075
    .line 1076
    move-result-object v0

    .line 1077
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1078
    .line 1079
    .line 1080
    move-result v4

    .line 1081
    if-eqz v4, :cond_3

    .line 1082
    .line 1083
    move-object v4, v0

    .line 1084
    check-cast v4, Lkotlin/collections/m0;

    .line 1085
    .line 1086
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 1087
    .line 1088
    .line 1089
    move-result v4

    .line 1090
    add-int/lit8 v11, v4, 0x7

    .line 1091
    .line 1092
    invoke-static {v1, v4, v11}, Lkotlin/collections/n;->x([FII)[F

    .line 1093
    .line 1094
    .line 1095
    move-result-object v4

    .line 1096
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;

    .line 1097
    .line 1098
    aget v14, v4, v6

    .line 1099
    .line 1100
    aget v15, v4, v5

    .line 1101
    .line 1102
    aget v16, v4, v3

    .line 1103
    .line 1104
    aget v13, v4, v10

    .line 1105
    .line 1106
    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    .line 1107
    .line 1108
    .line 1109
    move-result v13

    .line 1110
    if-eqz v13, :cond_15

    .line 1111
    .line 1112
    move/from16 v17, v5

    .line 1113
    .line 1114
    goto :goto_12

    .line 1115
    :cond_15
    move/from16 v17, v6

    .line 1116
    .line 1117
    :goto_12
    aget v13, v4, v9

    .line 1118
    .line 1119
    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    .line 1120
    .line 1121
    .line 1122
    move-result v13

    .line 1123
    if-eqz v13, :cond_16

    .line 1124
    .line 1125
    move/from16 v18, v5

    .line 1126
    .line 1127
    goto :goto_13

    .line 1128
    :cond_16
    move/from16 v18, v6

    .line 1129
    .line 1130
    :goto_13
    aget v19, v4, v7

    .line 1131
    .line 1132
    aget v20, v4, v8

    .line 1133
    .line 1134
    move-object v13, v11

    .line 1135
    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/vector/PathNode$RelativeArcTo;-><init>(FFFZZFF)V

    .line 1136
    .line 1137
    .line 1138
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1139
    .line 1140
    .line 1141
    goto :goto_11

    .line 1142
    :cond_17
    const/16 v2, 0x41

    .line 1143
    .line 1144
    if-ne v0, v2, :cond_1a

    .line 1145
    .line 1146
    new-instance v0, Lkotlin/ranges/IntRange;

    .line 1147
    .line 1148
    array-length v2, v1

    .line 1149
    sub-int/2addr v2, v11

    .line 1150
    invoke-direct {v0, v6, v2}, Lkotlin/ranges/IntRange;-><init>(II)V

    .line 1151
    .line 1152
    .line 1153
    invoke-static {v0, v11}, Lkotlin/ranges/e;->u(Lkotlin/ranges/d;I)Lkotlin/ranges/d;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v0

    .line 1157
    new-instance v2, Ljava/util/ArrayList;

    .line 1158
    .line 1159
    invoke-static {v0, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 1160
    .line 1161
    .line 1162
    move-result v4

    .line 1163
    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 1164
    .line 1165
    .line 1166
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v0

    .line 1170
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1171
    .line 1172
    .line 1173
    move-result v4

    .line 1174
    if-eqz v4, :cond_3

    .line 1175
    .line 1176
    move-object v4, v0

    .line 1177
    check-cast v4, Lkotlin/collections/m0;

    .line 1178
    .line 1179
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 1180
    .line 1181
    .line 1182
    move-result v4

    .line 1183
    add-int/lit8 v11, v4, 0x7

    .line 1184
    .line 1185
    invoke-static {v1, v4, v11}, Lkotlin/collections/n;->x([FII)[F

    .line 1186
    .line 1187
    .line 1188
    move-result-object v4

    .line 1189
    new-instance v11, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;

    .line 1190
    .line 1191
    aget v14, v4, v6

    .line 1192
    .line 1193
    aget v15, v4, v5

    .line 1194
    .line 1195
    aget v16, v4, v3

    .line 1196
    .line 1197
    aget v13, v4, v10

    .line 1198
    .line 1199
    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    .line 1200
    .line 1201
    .line 1202
    move-result v13

    .line 1203
    if-eqz v13, :cond_18

    .line 1204
    .line 1205
    move/from16 v17, v5

    .line 1206
    .line 1207
    goto :goto_15

    .line 1208
    :cond_18
    move/from16 v17, v6

    .line 1209
    .line 1210
    :goto_15
    aget v13, v4, v9

    .line 1211
    .line 1212
    invoke-static {v13, v12}, Ljava/lang/Float;->compare(FF)I

    .line 1213
    .line 1214
    .line 1215
    move-result v13

    .line 1216
    if-eqz v13, :cond_19

    .line 1217
    .line 1218
    move/from16 v18, v5

    .line 1219
    .line 1220
    goto :goto_16

    .line 1221
    :cond_19
    move/from16 v18, v6

    .line 1222
    .line 1223
    :goto_16
    aget v19, v4, v7

    .line 1224
    .line 1225
    aget v20, v4, v8

    .line 1226
    .line 1227
    move-object v13, v11

    .line 1228
    invoke-direct/range {v13 .. v20}, Landroidx/compose/ui/graphics/vector/PathNode$ArcTo;-><init>(FFFZZFF)V

    .line 1229
    .line 1230
    .line 1231
    invoke-interface {v2, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1232
    .line 1233
    .line 1234
    goto :goto_14

    .line 1235
    :goto_17
    return-object v0

    .line 1236
    :cond_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 1237
    .line 1238
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1239
    .line 1240
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1241
    .line 1242
    .line 1243
    const-string v3, "Unknown command for: "

    .line 1244
    .line 1245
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1246
    .line 1247
    .line 1248
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    .line 1250
    .line 1251
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1252
    .line 1253
    .line 1254
    move-result-object v0

    .line 1255
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 1256
    .line 1257
    .line 1258
    throw v1
.end method
