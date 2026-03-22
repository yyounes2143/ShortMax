.class final Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;
.super Ljava/lang/Object;
.source "Box.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/layout/BoxKt;->boxMeasurePolicy(Landroidx/compose/ui/Alignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $alignment:Landroidx/compose/ui/Alignment;

.field final synthetic $propagateMinConstraints:Z


# direct methods
.method constructor <init>(ZLandroidx/compose/ui/Alignment;)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$propagateMinConstraints:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 18
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    const-string v1, "$this$MeasurePolicy"

    .line 6
    .line 7
    move-object/from16 v9, p1

    .line 8
    .line 9
    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "measurables"

    .line 13
    .line 14
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    sget-object v6, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$1;

    .line 32
    .line 33
    const/4 v7, 0x4

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object/from16 v2, p1

    .line 37
    .line 38
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    return-object v1

    .line 43
    :cond_0
    iget-boolean v1, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$propagateMinConstraints:Z

    .line 44
    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    move-wide/from16 v1, p3

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const/16 v16, 0xa

    .line 51
    .line 52
    const/16 v17, 0x0

    .line 53
    .line 54
    const/4 v12, 0x0

    .line 55
    const/4 v13, 0x0

    .line 56
    const/4 v14, 0x0

    .line 57
    const/4 v15, 0x0

    .line 58
    move-wide/from16 v10, p3

    .line 59
    .line 60
    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 61
    .line 62
    .line 63
    move-result-wide v1

    .line 64
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    const/4 v5, 0x1

    .line 69
    const/4 v6, 0x0

    .line 70
    if-ne v4, v5, :cond_3

    .line 71
    .line 72
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move-object v4, v3

    .line 77
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 78
    .line 79
    invoke-static {v4}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    .line 80
    .line 81
    .line 82
    move-result v3

    .line 83
    if-nez v3, :cond_2

    .line 84
    .line 85
    invoke-interface {v4, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    move v10, v3

    .line 114
    move-object v3, v1

    .line 115
    move v1, v2

    .line 116
    goto :goto_1

    .line 117
    :cond_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    sget-object v3, Landroidx/compose/ui/unit/Constraints;->Companion:Landroidx/compose/ui/unit/Constraints$Companion;

    .line 126
    .line 127
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 132
    .line 133
    .line 134
    move-result v6

    .line 135
    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/unit/Constraints$Companion;->fixed-JhjzzOo(II)J

    .line 136
    .line 137
    .line 138
    move-result-wide v5

    .line 139
    invoke-interface {v4, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    move v10, v2

    .line 144
    :goto_1
    new-instance v11, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;

    .line 145
    .line 146
    iget-object v8, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    .line 147
    .line 148
    move-object v2, v11

    .line 149
    move-object/from16 v5, p1

    .line 150
    .line 151
    move v6, v1

    .line 152
    move v7, v10

    .line 153
    invoke-direct/range {v2 .. v8}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/MeasureScope;IILandroidx/compose/ui/Alignment;)V

    .line 154
    .line 155
    .line 156
    const/4 v7, 0x4

    .line 157
    const/4 v8, 0x0

    .line 158
    const/4 v5, 0x0

    .line 159
    move-object/from16 v2, p1

    .line 160
    .line 161
    move v3, v1

    .line 162
    move v4, v10

    .line 163
    move-object v6, v11

    .line 164
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    return-object v1

    .line 169
    :cond_3
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    new-array v4, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 174
    .line 175
    new-instance v7, Lkotlin/jvm/internal/Ref$IntRef;

    .line 176
    .line 177
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 178
    .line 179
    .line 180
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 181
    .line 182
    .line 183
    move-result v8

    .line 184
    iput v8, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 185
    .line 186
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    .line 187
    .line 188
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 189
    .line 190
    .line 191
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 192
    .line 193
    .line 194
    move-result v10

    .line 195
    iput v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 196
    .line 197
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 198
    .line 199
    .line 200
    move-result v10

    .line 201
    move v11, v6

    .line 202
    move v12, v11

    .line 203
    :goto_2
    if-ge v11, v10, :cond_5

    .line 204
    .line 205
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v13

    .line 209
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 210
    .line 211
    invoke-static {v13}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    .line 212
    .line 213
    .line 214
    move-result v14

    .line 215
    if-nez v14, :cond_4

    .line 216
    .line 217
    invoke-interface {v13, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 218
    .line 219
    .line 220
    move-result-object v13

    .line 221
    aput-object v13, v4, v11

    .line 222
    .line 223
    iget v14, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 224
    .line 225
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 226
    .line 227
    .line 228
    move-result v15

    .line 229
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    .line 230
    .line 231
    .line 232
    move-result v14

    .line 233
    iput v14, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 234
    .line 235
    iget v14, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 236
    .line 237
    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 238
    .line 239
    .line 240
    move-result v13

    .line 241
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    .line 242
    .line 243
    .line 244
    move-result v13

    .line 245
    iput v13, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_4
    move v12, v5

    .line 249
    :goto_3
    add-int/lit8 v11, v11, 0x1

    .line 250
    .line 251
    goto :goto_2

    .line 252
    :cond_5
    if-eqz v12, :cond_9

    .line 253
    .line 254
    iget v1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 255
    .line 256
    const v2, 0x7fffffff

    .line 257
    .line 258
    .line 259
    if-eq v1, v2, :cond_6

    .line 260
    .line 261
    move v5, v1

    .line 262
    goto :goto_4

    .line 263
    :cond_6
    move v5, v6

    .line 264
    :goto_4
    iget v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 265
    .line 266
    if-eq v10, v2, :cond_7

    .line 267
    .line 268
    move v2, v10

    .line 269
    goto :goto_5

    .line 270
    :cond_7
    move v2, v6

    .line 271
    :goto_5
    invoke-static {v5, v1, v2, v10}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 272
    .line 273
    .line 274
    move-result-wide v1

    .line 275
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 276
    .line 277
    .line 278
    move-result v5

    .line 279
    :goto_6
    if-ge v6, v5, :cond_9

    .line 280
    .line 281
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 282
    .line 283
    .line 284
    move-result-object v10

    .line 285
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 286
    .line 287
    invoke-static {v10}, Landroidx/compose/foundation/layout/BoxKt;->access$getMatchesParentSize(Landroidx/compose/ui/layout/Measurable;)Z

    .line 288
    .line 289
    .line 290
    move-result v11

    .line 291
    if-eqz v11, :cond_8

    .line 292
    .line 293
    invoke-interface {v10, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 294
    .line 295
    .line 296
    move-result-object v10

    .line 297
    aput-object v10, v4, v6

    .line 298
    .line 299
    :cond_8
    add-int/lit8 v6, v6, 0x1

    .line 300
    .line 301
    goto :goto_6

    .line 302
    :cond_9
    iget v10, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 303
    .line 304
    iget v11, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 305
    .line 306
    new-instance v12, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$5;

    .line 307
    .line 308
    iget-object v13, v0, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1;->$alignment:Landroidx/compose/ui/Alignment;

    .line 309
    .line 310
    move-object v1, v12

    .line 311
    move-object v2, v4

    .line 312
    move-object/from16 v3, p2

    .line 313
    .line 314
    move-object/from16 v4, p1

    .line 315
    .line 316
    move-object v5, v7

    .line 317
    move-object v6, v8

    .line 318
    move-object v7, v13

    .line 319
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/layout/BoxKt$boxMeasurePolicy$1$measure$5;-><init>([Landroidx/compose/ui/layout/Placeable;Ljava/util/List;Landroidx/compose/ui/layout/MeasureScope;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$IntRef;Landroidx/compose/ui/Alignment;)V

    .line 320
    .line 321
    .line 322
    const/4 v7, 0x4

    .line 323
    const/4 v8, 0x0

    .line 324
    const/4 v5, 0x0

    .line 325
    move-object/from16 v2, p1

    .line 326
    .line 327
    move v3, v10

    .line 328
    move v4, v11

    .line 329
    move-object v6, v12

    .line 330
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    return-object v1
.end method
