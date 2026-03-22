.class final Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;
.super Ljava/lang/Object;
.source "AlertDialog.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/AlertDialogKt;->AlertDialogBaselineLayout(Landroidx/compose/foundation/layout/ColumnScope;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;->INSTANCE:Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 11
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
    const-string v0, "$this$Layout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    move-object v3, v1

    .line 29
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 30
    .line 31
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    const-string v4, "title"

    .line 36
    .line 37
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move-object v1, v2

    .line 45
    :goto_0
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 46
    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/16 v9, 0xb

    .line 50
    .line 51
    const/4 v10, 0x0

    .line 52
    const/4 v5, 0x0

    .line 53
    const/4 v6, 0x0

    .line 54
    const/4 v7, 0x0

    .line 55
    const/4 v8, 0x0

    .line 56
    move-wide v3, p3

    .line 57
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    invoke-interface {v1, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    move-object v0, v2

    .line 67
    :goto_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    if-eqz v1, :cond_4

    .line 76
    .line 77
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    move-object v3, v1

    .line 82
    check-cast v3, Landroidx/compose/ui/layout/Measurable;

    .line 83
    .line 84
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    const-string v4, "text"

    .line 89
    .line 90
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v3

    .line 94
    if-eqz v3, :cond_3

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    move-object v1, v2

    .line 98
    :goto_2
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    const/16 v9, 0xb

    .line 103
    .line 104
    const/4 v10, 0x0

    .line 105
    const/4 v5, 0x0

    .line 106
    const/4 v6, 0x0

    .line 107
    const/4 v7, 0x0

    .line 108
    const/4 v8, 0x0

    .line 109
    move-wide v3, p3

    .line 110
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 111
    .line 112
    .line 113
    move-result-wide p2

    .line 114
    invoke-interface {v1, p2, p3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    move-object p2, v2

    .line 120
    :goto_3
    const/4 p3, 0x0

    .line 121
    if-eqz v0, :cond_6

    .line 122
    .line 123
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    move p4, p3

    .line 129
    :goto_4
    if-eqz p2, :cond_7

    .line 130
    .line 131
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    goto :goto_5

    .line 136
    :cond_7
    move v1, p3

    .line 137
    :goto_5
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    const/high16 p4, -0x80000000

    .line 142
    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v0, v1}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    if-ne v1, p4, :cond_8

    .line 154
    .line 155
    move-object v1, v2

    .line 156
    goto :goto_6

    .line 157
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    :goto_6
    if-eqz v1, :cond_9

    .line 162
    .line 163
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    goto :goto_7

    .line 168
    :cond_9
    move v1, p3

    .line 169
    :goto_7
    if-eqz v0, :cond_b

    .line 170
    .line 171
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-interface {v0, v3}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-ne v3, p4, :cond_a

    .line 180
    .line 181
    move-object v3, v2

    .line 182
    goto :goto_8

    .line 183
    :cond_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v3

    .line 187
    :goto_8
    if-eqz v3, :cond_b

    .line 188
    .line 189
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    goto :goto_9

    .line 194
    :cond_b
    move v3, p3

    .line 195
    :goto_9
    invoke-static {}, Landroidx/compose/material/AlertDialogKt;->access$getTitleBaselineDistanceFromTop$p()J

    .line 196
    .line 197
    .line 198
    move-result-wide v5

    .line 199
    invoke-interface {p1, v5, v6}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    sub-int/2addr v5, v1

    .line 204
    if-eqz p2, :cond_d

    .line 205
    .line 206
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-interface {p2, v1}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 211
    .line 212
    .line 213
    move-result v1

    .line 214
    if-ne v1, p4, :cond_c

    .line 215
    .line 216
    goto :goto_a

    .line 217
    :cond_c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    :goto_a
    if-eqz v2, :cond_d

    .line 222
    .line 223
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 224
    .line 225
    .line 226
    move-result p4

    .line 227
    goto :goto_b

    .line 228
    :cond_d
    move p4, p3

    .line 229
    :goto_b
    if-nez v0, :cond_e

    .line 230
    .line 231
    invoke-static {}, Landroidx/compose/material/AlertDialogKt;->access$getTextBaselineDistanceFromTop$p()J

    .line 232
    .line 233
    .line 234
    move-result-wide v1

    .line 235
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    .line 236
    .line 237
    .line 238
    move-result v1

    .line 239
    goto :goto_c

    .line 240
    :cond_e
    invoke-static {}, Landroidx/compose/material/AlertDialogKt;->access$getTextBaselineDistanceFromTitle$p()J

    .line 241
    .line 242
    .line 243
    move-result-wide v1

    .line 244
    invoke-interface {p1, v1, v2}, Landroidx/compose/ui/unit/Density;->roundToPx--R2X_6o(J)I

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    :goto_c
    if-eqz v0, :cond_f

    .line 249
    .line 250
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    add-int/2addr v2, v5

    .line 255
    goto :goto_d

    .line 256
    :cond_f
    move v2, p3

    .line 257
    :goto_d
    if-nez v0, :cond_10

    .line 258
    .line 259
    sub-int v6, v1, p4

    .line 260
    .line 261
    goto :goto_f

    .line 262
    :cond_10
    if-nez v3, :cond_11

    .line 263
    .line 264
    sub-int v6, v2, p4

    .line 265
    .line 266
    :goto_e
    add-int/2addr v6, v1

    .line 267
    goto :goto_f

    .line 268
    :cond_11
    add-int v6, v5, v3

    .line 269
    .line 270
    sub-int/2addr v6, p4

    .line 271
    goto :goto_e

    .line 272
    :goto_f
    if-eqz p2, :cond_14

    .line 273
    .line 274
    if-nez v3, :cond_12

    .line 275
    .line 276
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 277
    .line 278
    .line 279
    move-result p3

    .line 280
    add-int/2addr p3, v1

    .line 281
    sub-int/2addr p3, p4

    .line 282
    goto :goto_10

    .line 283
    :cond_12
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 284
    .line 285
    .line 286
    move-result v7

    .line 287
    add-int/2addr v7, v1

    .line 288
    sub-int/2addr v7, p4

    .line 289
    if-eqz v0, :cond_13

    .line 290
    .line 291
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 292
    .line 293
    .line 294
    move-result p3

    .line 295
    :cond_13
    sub-int/2addr p3, v3

    .line 296
    sub-int/2addr v7, p3

    .line 297
    move p3, v7

    .line 298
    :cond_14
    :goto_10
    add-int/2addr p3, v2

    .line 299
    new-instance v7, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;

    .line 300
    .line 301
    invoke-direct {v7, v0, v5, p2, v6}, Landroidx/compose/material/AlertDialogKt$AlertDialogBaselineLayout$2$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;ILandroidx/compose/ui/layout/Placeable;I)V

    .line 302
    .line 303
    .line 304
    const/4 v8, 0x4

    .line 305
    const/4 v9, 0x0

    .line 306
    const/4 v6, 0x0

    .line 307
    move-object v3, p1

    .line 308
    move v5, p3

    .line 309
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 310
    .line 311
    .line 312
    move-result-object p1

    .line 313
    return-object p1
.end method
