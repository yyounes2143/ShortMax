.class final Landroidx/compose/material/TextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "TextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final animationProgress:F

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleLine:Z


# direct methods
.method public constructor <init>(ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 1
    .param p3    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "paddingValues"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-boolean p1, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    .line 10
    .line 11
    iput p2, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    .line 12
    .line 13
    iput-object p3, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 14
    .line 15
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material/TextFieldMeasurePolicy;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->animationProgress:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material/TextFieldMeasurePolicy;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->singleLine:Z

    .line 2
    .line 3
    return p0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_e

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "TextField"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p4, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    const/4 v3, 0x0

    .line 55
    if-eqz v2, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    move-object v4, v2

    .line 62
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 63
    .line 64
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "Label"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v2, v3

    .line 78
    :goto_0
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz v2, :cond_3

    .line 82
    .line 83
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {p4, v2, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    check-cast v2, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    move v4, v2

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v4, v0

    .line 100
    :goto_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    move-object v6, v5

    .line 115
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 116
    .line 117
    invoke-static {v6}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string v7, "Trailing"

    .line 122
    .line 123
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v5, v3

    .line 131
    :goto_2
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 132
    .line 133
    if-eqz v5, :cond_6

    .line 134
    .line 135
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {p4, v5, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    check-cast v2, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move v5, v2

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v5, v0

    .line 152
    :goto_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    move-object v7, v6

    .line 167
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 168
    .line 169
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    const-string v8, "Leading"

    .line 174
    .line 175
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_7

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    move-object v6, v3

    .line 183
    :goto_4
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 184
    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-interface {p4, v6, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v2

    .line 195
    check-cast v2, Ljava/lang/Number;

    .line 196
    .line 197
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    move v6, v2

    .line 202
    goto :goto_5

    .line 203
    :cond_9
    move v6, v0

    .line 204
    :goto_5
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-eqz v2, :cond_b

    .line 213
    .line 214
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    move-object v7, v2

    .line 219
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 220
    .line 221
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v7

    .line 225
    const-string v8, "Hint"

    .line 226
    .line 227
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v7

    .line 231
    if-eqz v7, :cond_a

    .line 232
    .line 233
    move-object v3, v2

    .line 234
    :cond_b
    check-cast v3, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 235
    .line 236
    if-eqz v3, :cond_c

    .line 237
    .line 238
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    invoke-interface {p4, v3, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object p2

    .line 246
    check-cast p2, Ljava/lang/Number;

    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 249
    .line 250
    .line 251
    move-result p2

    .line 252
    goto :goto_6

    .line 253
    :cond_c
    move p2, v0

    .line 254
    :goto_6
    if-lez v4, :cond_d

    .line 255
    .line 256
    const/4 p3, 0x1

    .line 257
    move v2, p3

    .line 258
    goto :goto_7

    .line 259
    :cond_d
    move v2, v0

    .line 260
    :goto_7
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    .line 261
    .line 262
    .line 263
    move-result-wide v7

    .line 264
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 265
    .line 266
    .line 267
    move-result v9

    .line 268
    iget-object v10, p0, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 269
    .line 270
    move v3, v4

    .line 271
    move v4, v6

    .line 272
    move v6, p2

    .line 273
    invoke-static/range {v1 .. v10}, Landroidx/compose/material/TextFieldKt;->access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    return p1

    .line 278
    :cond_e
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 279
    .line 280
    const-string p2, "Collection contains no element matching the predicate."

    .line 281
    .line 282
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    throw p1
.end method

.method private final intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Iterable;

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_d

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    move-object v2, v1

    .line 18
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 19
    .line 20
    invoke-static {v2}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "TextField"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-interface {p3, v1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    const/4 v2, 0x0

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    move-object v4, v1

    .line 62
    check-cast v4, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 63
    .line 64
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    const-string v5, "Label"

    .line 69
    .line 70
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-eqz v4, :cond_1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    move-object v1, v2

    .line 78
    :goto_0
    check-cast v1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {p3, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/Number;

    .line 92
    .line 93
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    move v4, v1

    .line 98
    goto :goto_1

    .line 99
    :cond_3
    move v4, v0

    .line 100
    :goto_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    move-object v6, v5

    .line 115
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 116
    .line 117
    invoke-static {v6}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    const-string v7, "Trailing"

    .line 122
    .line 123
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    if-eqz v6, :cond_4

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    move-object v5, v2

    .line 131
    :goto_2
    check-cast v5, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 132
    .line 133
    if-eqz v5, :cond_6

    .line 134
    .line 135
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p3, v5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    check-cast v1, Ljava/lang/Number;

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    move v5, v1

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v5, v0

    .line 152
    :goto_3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    .line 158
    .line 159
    move-result v6

    .line 160
    if-eqz v6, :cond_8

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v6

    .line 166
    move-object v7, v6

    .line 167
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 168
    .line 169
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    const-string v8, "Leading"

    .line 174
    .line 175
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v7

    .line 179
    if-eqz v7, :cond_7

    .line 180
    .line 181
    goto :goto_4

    .line 182
    :cond_8
    move-object v6, v2

    .line 183
    :goto_4
    check-cast v6, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 184
    .line 185
    if-eqz v6, :cond_9

    .line 186
    .line 187
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-interface {p3, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    check-cast v1, Ljava/lang/Number;

    .line 196
    .line 197
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    goto :goto_5

    .line 202
    :cond_9
    move v1, v0

    .line 203
    :goto_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :cond_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_b

    .line 212
    .line 213
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    move-object v7, v6

    .line 218
    check-cast v7, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 219
    .line 220
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->getLayoutId(Landroidx/compose/ui/layout/IntrinsicMeasurable;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    const-string v8, "Hint"

    .line 225
    .line 226
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result v7

    .line 230
    if-eqz v7, :cond_a

    .line 231
    .line 232
    move-object v2, v6

    .line 233
    :cond_b
    check-cast v2, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    .line 234
    .line 235
    if-eqz v2, :cond_c

    .line 236
    .line 237
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-interface {p3, v2, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    check-cast p1, Ljava/lang/Number;

    .line 246
    .line 247
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    goto :goto_6

    .line 252
    :cond_c
    move p1, v0

    .line 253
    :goto_6
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    .line 254
    .line 255
    .line 256
    move-result-wide v6

    .line 257
    move v2, v5

    .line 258
    move v5, p1

    .line 259
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/TextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    .line 260
    .line 261
    .line 262
    move-result p1

    .line 263
    return p1

    .line 264
    :cond_d
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 265
    .line 266
    const-string p2, "Collection contains no element matching the predicate."

    .line 267
    .line 268
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 269
    .line 270
    .line 271
    throw p1
.end method


# virtual methods
.method public maxIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

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
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicHeight$1;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public maxIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$maxIntrinsicWidth$1;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 28
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
    move-object/from16 v14, p0

    .line 2
    .line 3
    move-object/from16 v15, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v1, "$this$measure"

    .line 8
    .line 9
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "measurables"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 18
    .line 19
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {v15, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    iget-object v1, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 28
    .line 29
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-interface {v15, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {}, Landroidx/compose/material/TextFieldKt;->getTextFieldTopPadding()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-interface {v15, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 42
    .line 43
    .line 44
    move-result v12

    .line 45
    const/16 v9, 0xa

    .line 46
    .line 47
    const/4 v10, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    const/4 v7, 0x0

    .line 51
    const/4 v8, 0x0

    .line 52
    move-wide/from16 v3, p3

    .line 53
    .line 54
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    check-cast v0, Ljava/lang/Iterable;

    .line 59
    .line 60
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-eqz v6, :cond_1

    .line 69
    .line 70
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    move-object v8, v6

    .line 75
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 76
    .line 77
    invoke-static {v8}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    const-string v9, "Leading"

    .line 82
    .line 83
    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    if-eqz v8, :cond_0

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/4 v6, 0x0

    .line 91
    :goto_0
    check-cast v6, Landroidx/compose/ui/layout/Measurable;

    .line 92
    .line 93
    if-eqz v6, :cond_2

    .line 94
    .line 95
    invoke-interface {v6, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    move-object v8, v5

    .line 100
    goto :goto_1

    .line 101
    :cond_2
    const/4 v8, 0x0

    .line 102
    :goto_1
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 103
    .line 104
    .line 105
    move-result v5

    .line 106
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_4

    .line 115
    .line 116
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v9

    .line 120
    move-object v10, v9

    .line 121
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 122
    .line 123
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    const-string v11, "Trailing"

    .line 128
    .line 129
    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    if-eqz v10, :cond_3

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    const/4 v9, 0x0

    .line 137
    :goto_2
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 138
    .line 139
    if-eqz v9, :cond_5

    .line 140
    .line 141
    neg-int v6, v5

    .line 142
    const/16 v20, 0x2

    .line 143
    .line 144
    const/16 v21, 0x0

    .line 145
    .line 146
    const/16 v19, 0x0

    .line 147
    .line 148
    move-wide/from16 v16, v3

    .line 149
    .line 150
    move/from16 v18, v6

    .line 151
    .line 152
    invoke-static/range {v16 .. v21}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    .line 153
    .line 154
    .line 155
    move-result-wide v10

    .line 156
    invoke-interface {v9, v10, v11}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    move-object v9, v6

    .line 161
    goto :goto_3

    .line 162
    :cond_5
    const/4 v9, 0x0

    .line 163
    :goto_3
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    add-int/2addr v5, v6

    .line 168
    neg-int v6, v1

    .line 169
    neg-int v5, v5

    .line 170
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    .line 171
    .line 172
    .line 173
    move-result-wide v3

    .line 174
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 175
    .line 176
    .line 177
    move-result-object v10

    .line 178
    :cond_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_7

    .line 183
    .line 184
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object v11

    .line 188
    move-object v13, v11

    .line 189
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 190
    .line 191
    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    const-string v7, "Label"

    .line 196
    .line 197
    invoke-static {v13, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v7

    .line 201
    if-eqz v7, :cond_6

    .line 202
    .line 203
    goto :goto_4

    .line 204
    :cond_7
    const/4 v11, 0x0

    .line 205
    :goto_4
    check-cast v11, Landroidx/compose/ui/layout/Measurable;

    .line 206
    .line 207
    if-eqz v11, :cond_8

    .line 208
    .line 209
    invoke-interface {v11, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 210
    .line 211
    .line 212
    move-result-object v3

    .line 213
    goto :goto_5

    .line 214
    :cond_8
    const/4 v3, 0x0

    .line 215
    :goto_5
    const/4 v4, 0x0

    .line 216
    if-eqz v3, :cond_a

    .line 217
    .line 218
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 219
    .line 220
    .line 221
    move-result-object v7

    .line 222
    invoke-interface {v3, v7}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 223
    .line 224
    .line 225
    move-result v7

    .line 226
    const/high16 v10, -0x80000000

    .line 227
    .line 228
    if-eq v7, v10, :cond_9

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :cond_9
    invoke-virtual {v3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 232
    .line 233
    .line 234
    move-result v7

    .line 235
    goto :goto_6

    .line 236
    :cond_a
    move v7, v4

    .line 237
    :goto_6
    invoke-static {v7, v2}, Ljava/lang/Math;->max(II)I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    if-eqz v3, :cond_b

    .line 242
    .line 243
    sub-int/2addr v6, v12

    .line 244
    sub-int/2addr v6, v11

    .line 245
    goto :goto_7

    .line 246
    :cond_b
    neg-int v6, v2

    .line 247
    sub-int/2addr v6, v1

    .line 248
    :goto_7
    const/16 v22, 0xb

    .line 249
    .line 250
    const/16 v23, 0x0

    .line 251
    .line 252
    const/16 v18, 0x0

    .line 253
    .line 254
    const/16 v19, 0x0

    .line 255
    .line 256
    const/16 v20, 0x0

    .line 257
    .line 258
    const/16 v21, 0x0

    .line 259
    .line 260
    move-wide/from16 v16, p3

    .line 261
    .line 262
    move/from16 v26, v12

    .line 263
    .line 264
    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 265
    .line 266
    .line 267
    move-result-wide v12

    .line 268
    invoke-static {v12, v13, v5, v6}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    .line 269
    .line 270
    .line 271
    move-result-wide v5

    .line 272
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 277
    .line 278
    .line 279
    move-result v10

    .line 280
    if-eqz v10, :cond_11

    .line 281
    .line 282
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v10

    .line 286
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 287
    .line 288
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v12

    .line 292
    const-string v13, "TextField"

    .line 293
    .line 294
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    move-result v12

    .line 298
    if-eqz v12, :cond_c

    .line 299
    .line 300
    invoke-interface {v10, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 301
    .line 302
    .line 303
    move-result-object v10

    .line 304
    const/16 v22, 0xe

    .line 305
    .line 306
    const/16 v23, 0x0

    .line 307
    .line 308
    const/16 v18, 0x0

    .line 309
    .line 310
    const/16 v19, 0x0

    .line 311
    .line 312
    const/16 v20, 0x0

    .line 313
    .line 314
    const/16 v21, 0x0

    .line 315
    .line 316
    move-wide/from16 v16, v5

    .line 317
    .line 318
    invoke-static/range {v16 .. v23}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 319
    .line 320
    .line 321
    move-result-wide v5

    .line 322
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 323
    .line 324
    .line 325
    move-result-object v0

    .line 326
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 327
    .line 328
    .line 329
    move-result v1

    .line 330
    if-eqz v1, :cond_e

    .line 331
    .line 332
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    move-object v12, v1

    .line 337
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 338
    .line 339
    invoke-static {v12}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v12

    .line 343
    const-string v13, "Hint"

    .line 344
    .line 345
    invoke-static {v12, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 346
    .line 347
    .line 348
    move-result v12

    .line 349
    if-eqz v12, :cond_d

    .line 350
    .line 351
    goto :goto_8

    .line 352
    :cond_e
    const/4 v1, 0x0

    .line 353
    :goto_8
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 354
    .line 355
    if-eqz v1, :cond_f

    .line 356
    .line 357
    invoke-interface {v1, v5, v6}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    move-object v12, v0

    .line 362
    goto :goto_9

    .line 363
    :cond_f
    const/4 v12, 0x0

    .line 364
    :goto_9
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 365
    .line 366
    .line 367
    move-result v16

    .line 368
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 369
    .line 370
    .line 371
    move-result v17

    .line 372
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 373
    .line 374
    .line 375
    move-result v18

    .line 376
    invoke-static {v3}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 377
    .line 378
    .line 379
    move-result v19

    .line 380
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 381
    .line 382
    .line 383
    move-result v20

    .line 384
    move-wide/from16 v21, p3

    .line 385
    .line 386
    invoke-static/range {v16 .. v22}, Landroidx/compose/material/TextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    .line 387
    .line 388
    .line 389
    move-result v27

    .line 390
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 391
    .line 392
    .line 393
    move-result v16

    .line 394
    if-eqz v3, :cond_10

    .line 395
    .line 396
    const/4 v4, 0x1

    .line 397
    :cond_10
    move/from16 v17, v4

    .line 398
    .line 399
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 400
    .line 401
    .line 402
    move-result v19

    .line 403
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 404
    .line 405
    .line 406
    move-result v20

    .line 407
    invoke-static {v12}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 408
    .line 409
    .line 410
    move-result v21

    .line 411
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 412
    .line 413
    .line 414
    move-result v24

    .line 415
    iget-object v0, v14, Landroidx/compose/material/TextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 416
    .line 417
    move/from16 v18, v11

    .line 418
    .line 419
    move-wide/from16 v22, p3

    .line 420
    .line 421
    move-object/from16 v25, v0

    .line 422
    .line 423
    invoke-static/range {v16 .. v25}, Landroidx/compose/material/TextFieldKt;->access$calculateHeight-O3s9Psw(IZIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 424
    .line 425
    .line 426
    move-result v16

    .line 427
    new-instance v17, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;

    .line 428
    .line 429
    move-object/from16 v0, v17

    .line 430
    .line 431
    move-object v1, v3

    .line 432
    move v3, v7

    .line 433
    move/from16 v4, v27

    .line 434
    .line 435
    move/from16 v5, v16

    .line 436
    .line 437
    move-object v6, v10

    .line 438
    move-object v7, v12

    .line 439
    move-object/from16 v10, p0

    .line 440
    .line 441
    move/from16 v12, v26

    .line 442
    .line 443
    move-object/from16 v13, p1

    .line 444
    .line 445
    invoke-direct/range {v0 .. v13}, Landroidx/compose/material/TextFieldMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;IIIILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/TextFieldMeasurePolicy;IILandroidx/compose/ui/layout/MeasureScope;)V

    .line 446
    .line 447
    .line 448
    const/4 v5, 0x4

    .line 449
    const/4 v6, 0x0

    .line 450
    const/4 v3, 0x0

    .line 451
    move-object/from16 v0, p1

    .line 452
    .line 453
    move/from16 v1, v27

    .line 454
    .line 455
    move/from16 v2, v16

    .line 456
    .line 457
    move-object/from16 v4, v17

    .line 458
    .line 459
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    return-object v0

    .line 464
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 465
    .line 466
    const-string v1, "Collection contains no element matching the predicate."

    .line 467
    .line 468
    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    throw v0
.end method

.method public minIntrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

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
    sget-object v0, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicHeight$1;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public minIntrinsicWidth(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;I)I
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
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
            "Landroidx/compose/ui/layout/IntrinsicMeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/IntrinsicMeasurable;",
            ">;I)I"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/TextFieldMeasurePolicy$minIntrinsicWidth$1;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/TextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
