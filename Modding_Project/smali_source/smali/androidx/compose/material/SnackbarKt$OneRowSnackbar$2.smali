.class final Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt;->OneRowSnackbar(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $actionTag:Ljava/lang/String;

.field final synthetic $textTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$actionTag:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$textTag:Ljava/lang/String;

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
    .locals 16
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
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const-string v3, "$this$Layout"

    .line 8
    .line 9
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v3, "measurables"

    .line 13
    .line 14
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v2, Ljava/lang/Iterable;

    .line 18
    .line 19
    iget-object v3, v0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$actionTag:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    const-string v6, "Collection contains no element matching the predicate."

    .line 30
    .line 31
    if-eqz v5, :cond_8

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 38
    .line 39
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v7

    .line 47
    if-eqz v7, :cond_0

    .line 48
    .line 49
    move-wide/from16 v14, p3

    .line 50
    .line 51
    invoke-interface {v5, v14, v15}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    sub-int/2addr v4, v5

    .line 64
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getTextEndExtraSpacing$p()F

    .line 65
    .line 66
    .line 67
    move-result v5

    .line 68
    invoke-interface {v1, v5}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    sub-int/2addr v4, v5

    .line 73
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    invoke-static {v4, v5}, Lkotlin/ranges/e;->e(II)I

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    iget-object v4, v0, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2;->$textTag:Ljava/lang/String;

    .line 82
    .line 83
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-eqz v5, :cond_7

    .line 92
    .line 93
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 98
    .line 99
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v7

    .line 103
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v7

    .line 107
    if-eqz v7, :cond_6

    .line 108
    .line 109
    const/16 v2, 0x9

    .line 110
    .line 111
    const/4 v4, 0x0

    .line 112
    const/4 v10, 0x0

    .line 113
    const/4 v12, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    move-wide/from16 v8, p3

    .line 116
    .line 117
    move v14, v2

    .line 118
    move-object v15, v4

    .line 119
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 120
    .line 121
    .line 122
    move-result-wide v6

    .line 123
    invoke-interface {v5, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 124
    .line 125
    .line 126
    move-result-object v8

    .line 127
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-interface {v8, v2}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    const-string v4, "No baselines for text"

    .line 136
    .line 137
    const/high16 v5, -0x80000000

    .line 138
    .line 139
    if-eq v2, v5, :cond_5

    .line 140
    .line 141
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    invoke-interface {v8, v6}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 146
    .line 147
    .line 148
    move-result v6

    .line 149
    if-eq v6, v5, :cond_4

    .line 150
    .line 151
    const/4 v4, 0x0

    .line 152
    if-ne v2, v6, :cond_1

    .line 153
    .line 154
    const/4 v6, 0x1

    .line 155
    goto :goto_1

    .line 156
    :cond_1
    move v6, v4

    .line 157
    :goto_1
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 158
    .line 159
    .line 160
    move-result v7

    .line 161
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 162
    .line 163
    .line 164
    move-result v9

    .line 165
    sub-int v11, v7, v9

    .line 166
    .line 167
    if-eqz v6, :cond_3

    .line 168
    .line 169
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getSnackbarMinHeightOneLine$p()F

    .line 170
    .line 171
    .line 172
    move-result v6

    .line 173
    invoke-interface {v1, v6}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 174
    .line 175
    .line 176
    move-result v6

    .line 177
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    .line 182
    .line 183
    .line 184
    move-result v6

    .line 185
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    sub-int v7, v6, v7

    .line 190
    .line 191
    div-int/lit8 v7, v7, 0x2

    .line 192
    .line 193
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 194
    .line 195
    .line 196
    move-result-object v9

    .line 197
    invoke-interface {v3, v9}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 198
    .line 199
    .line 200
    move-result v9

    .line 201
    if-eq v9, v5, :cond_2

    .line 202
    .line 203
    add-int/2addr v2, v7

    .line 204
    sub-int v4, v2, v9

    .line 205
    .line 206
    :cond_2
    move v12, v4

    .line 207
    move v9, v7

    .line 208
    goto :goto_2

    .line 209
    :cond_3
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getHeightToFirstLine$p()F

    .line 210
    .line 211
    .line 212
    move-result v4

    .line 213
    invoke-interface {v1, v4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    sub-int/2addr v4, v2

    .line 218
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getSnackbarMinHeightTwoLines$p()F

    .line 219
    .line 220
    .line 221
    move-result v2

    .line 222
    invoke-interface {v1, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 223
    .line 224
    .line 225
    move-result v2

    .line 226
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 227
    .line 228
    .line 229
    move-result v5

    .line 230
    add-int/2addr v5, v4

    .line 231
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 232
    .line 233
    .line 234
    move-result v2

    .line 235
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    sub-int v5, v2, v5

    .line 240
    .line 241
    div-int/lit8 v5, v5, 0x2

    .line 242
    .line 243
    move v6, v2

    .line 244
    move v9, v4

    .line 245
    move v12, v5

    .line 246
    :goto_2
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    new-instance v5, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;

    .line 251
    .line 252
    move-object v7, v5

    .line 253
    move-object v10, v3

    .line 254
    invoke-direct/range {v7 .. v12}, Landroidx/compose/material/SnackbarKt$OneRowSnackbar$2$measure$4;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;II)V

    .line 255
    .line 256
    .line 257
    const/4 v7, 0x4

    .line 258
    const/4 v8, 0x0

    .line 259
    const/4 v4, 0x0

    .line 260
    move-object/from16 v1, p1

    .line 261
    .line 262
    move v3, v6

    .line 263
    move v6, v7

    .line 264
    move-object v7, v8

    .line 265
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    return-object v1

    .line 270
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 271
    .line 272
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw v1

    .line 276
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 277
    .line 278
    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v1

    .line 282
    :cond_6
    move-wide/from16 v14, p3

    .line 283
    .line 284
    goto/16 :goto_0

    .line 285
    .line 286
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 287
    .line 288
    invoke-direct {v1, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    throw v1

    .line 292
    :cond_8
    new-instance v1, Ljava/util/NoSuchElementException;

    .line 293
    .line 294
    invoke-direct {v1, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw v1
.end method
