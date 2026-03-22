.class final Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;
.super Ljava/lang/Object;
.source "OutlinedTextField.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final animationProgress:F

.field private final onLabelMeasured:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final paddingValues:Landroidx/compose/foundation/layout/PaddingValues;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final singleLine:Z


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;ZFLandroidx/compose/foundation/layout/PaddingValues;)V
    .locals 1
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/geometry/Size;",
            "Lkotlin/Unit;",
            ">;ZF",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "onLabelMeasured"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "paddingValues"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    iput-boolean p2, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 17
    .line 18
    iput p3, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 19
    .line 20
    iput-object p4, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic access$getAnimationProgress$p(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->animationProgress:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPaddingValues$p(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)Landroidx/compose/foundation/layout/PaddingValues;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSingleLine$p(Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->singleLine:Z

    .line 2
    .line 3
    return p0
.end method

.method private final intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I
    .locals 10
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
    move-result v3

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-interface {p4, v1, v4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-interface {p4, v5, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-interface {p4, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    .line 209
    .line 210
    move-result v6

    .line 211
    if-eqz v6, :cond_b

    .line 212
    .line 213
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-interface {p4, v2, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object p2

    .line 245
    check-cast p2, Ljava/lang/Number;

    .line 246
    .line 247
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    .line 248
    .line 249
    .line 250
    move-result p2

    .line 251
    goto :goto_6

    .line 252
    :cond_c
    move p2, v0

    .line 253
    :goto_6
    invoke-static {}, Landroidx/compose/material/TextFieldImplKt;->getZeroConstraints()J

    .line 254
    .line 255
    .line 256
    move-result-wide v6

    .line 257
    invoke-interface {p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 258
    .line 259
    .line 260
    move-result v8

    .line 261
    iget-object v9, p0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 262
    .line 263
    move v2, v5

    .line 264
    move v5, p2

    .line 265
    invoke-static/range {v1 .. v9}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateHeight-zUg2_y0(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    return p1

    .line 270
    :cond_d
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 271
    .line 272
    const-string p2, "Collection contains no element matching the predicate."

    .line 273
    .line 274
    invoke-direct {p1, p2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
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
    invoke-static/range {v1 .. v7}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

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
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicHeight$1;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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
    sget-object p1, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$maxIntrinsicWidth$1;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 29
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
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    const-string v1, "$this$measure"

    .line 8
    .line 9
    invoke-static {v12, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    iget-object v1, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 18
    .line 19
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {v12, v1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/16 v8, 0xa

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    const/4 v6, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    move-wide/from16 v2, p3

    .line 35
    .line 36
    invoke-static/range {v2 .. v9}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v5

    .line 50
    if-eqz v5, :cond_1

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    move-object v7, v5

    .line 57
    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    .line 58
    .line 59
    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const-string v8, "Leading"

    .line 64
    .line 65
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    if-eqz v7, :cond_0

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 v5, 0x0

    .line 73
    :goto_0
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 74
    .line 75
    if-eqz v5, :cond_2

    .line 76
    .line 77
    invoke-interface {v5, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    goto :goto_1

    .line 82
    :cond_2
    const/4 v4, 0x0

    .line 83
    :goto_1
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    if-eqz v8, :cond_4

    .line 96
    .line 97
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    move-object v9, v8

    .line 102
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 103
    .line 104
    invoke-static {v9}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const-string v10, "Trailing"

    .line 109
    .line 110
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v9

    .line 114
    if-eqz v9, :cond_3

    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_4
    const/4 v8, 0x0

    .line 118
    :goto_2
    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    .line 119
    .line 120
    if-eqz v8, :cond_5

    .line 121
    .line 122
    neg-int v15, v5

    .line 123
    const/16 v17, 0x2

    .line 124
    .line 125
    const/16 v18, 0x0

    .line 126
    .line 127
    const/16 v16, 0x0

    .line 128
    .line 129
    move-wide v13, v2

    .line 130
    invoke-static/range {v13 .. v18}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U$default(JIIILjava/lang/Object;)J

    .line 131
    .line 132
    .line 133
    move-result-wide v9

    .line 134
    invoke-interface {v8, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    goto :goto_3

    .line 139
    :cond_5
    const/4 v7, 0x0

    .line 140
    :goto_3
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    add-int/2addr v5, v8

    .line 145
    neg-int v5, v5

    .line 146
    iget-object v8, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 147
    .line 148
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    invoke-interface {v8, v9}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    invoke-interface {v12, v8}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    sub-int v8, v5, v8

    .line 161
    .line 162
    iget-object v9, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 163
    .line 164
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 165
    .line 166
    .line 167
    move-result-object v10

    .line 168
    invoke-interface {v9, v10}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    invoke-interface {v12, v9}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 173
    .line 174
    .line 175
    move-result v9

    .line 176
    sub-int/2addr v8, v9

    .line 177
    neg-int v1, v1

    .line 178
    invoke-static {v2, v3, v8, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    .line 179
    .line 180
    .line 181
    move-result-wide v2

    .line 182
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object v8

    .line 186
    :cond_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v9

    .line 190
    if-eqz v9, :cond_7

    .line 191
    .line 192
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v9

    .line 196
    move-object v10, v9

    .line 197
    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    .line 198
    .line 199
    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v10

    .line 203
    const-string v13, "Label"

    .line 204
    .line 205
    invoke-static {v10, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v10

    .line 209
    if-eqz v10, :cond_6

    .line 210
    .line 211
    goto :goto_4

    .line 212
    :cond_7
    const/4 v9, 0x0

    .line 213
    :goto_4
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    .line 214
    .line 215
    if-eqz v9, :cond_8

    .line 216
    .line 217
    invoke-interface {v9, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    move-object v8, v2

    .line 222
    goto :goto_5

    .line 223
    :cond_8
    const/4 v8, 0x0

    .line 224
    :goto_5
    if-eqz v8, :cond_9

    .line 225
    .line 226
    iget-object v2, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->onLabelMeasured:Lkotlin/jvm/functions/Function1;

    .line 227
    .line 228
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    int-to-float v3, v3

    .line 233
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    int-to-float v9, v9

    .line 238
    invoke-static {v3, v9}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 239
    .line 240
    .line 241
    move-result-wide v9

    .line 242
    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    .line 243
    .line 244
    .line 245
    move-result-object v3

    .line 246
    invoke-interface {v2, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    :cond_9
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    div-int/lit8 v2, v2, 0x2

    .line 254
    .line 255
    iget-object v3, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 256
    .line 257
    invoke-interface {v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 258
    .line 259
    .line 260
    move-result v3

    .line 261
    invoke-interface {v12, v3}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 262
    .line 263
    .line 264
    move-result v3

    .line 265
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    sub-int/2addr v1, v2

    .line 270
    move-wide/from16 v2, p3

    .line 271
    .line 272
    invoke-static {v2, v3, v5, v1}, Landroidx/compose/ui/unit/ConstraintsKt;->offset-NN6Ew-U(JII)J

    .line 273
    .line 274
    .line 275
    move-result-wide v13

    .line 276
    const/16 v19, 0xb

    .line 277
    .line 278
    const/16 v20, 0x0

    .line 279
    .line 280
    const/4 v15, 0x0

    .line 281
    const/16 v16, 0x0

    .line 282
    .line 283
    const/16 v17, 0x0

    .line 284
    .line 285
    const/16 v18, 0x0

    .line 286
    .line 287
    invoke-static/range {v13 .. v20}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 288
    .line 289
    .line 290
    move-result-wide v9

    .line 291
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 296
    .line 297
    .line 298
    move-result v5

    .line 299
    const-string v15, "Collection contains no element matching the predicate."

    .line 300
    .line 301
    if-eqz v5, :cond_12

    .line 302
    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    .line 308
    .line 309
    invoke-static {v5}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v13

    .line 313
    const-string v14, "TextField"

    .line 314
    .line 315
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v13

    .line 319
    if-eqz v13, :cond_a

    .line 320
    .line 321
    invoke-interface {v5, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 322
    .line 323
    .line 324
    move-result-object v5

    .line 325
    const/16 v27, 0xe

    .line 326
    .line 327
    const/16 v28, 0x0

    .line 328
    .line 329
    const/16 v23, 0x0

    .line 330
    .line 331
    const/16 v24, 0x0

    .line 332
    .line 333
    const/16 v25, 0x0

    .line 334
    .line 335
    const/16 v26, 0x0

    .line 336
    .line 337
    move-wide/from16 v21, v9

    .line 338
    .line 339
    invoke-static/range {v21 .. v28}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 340
    .line 341
    .line 342
    move-result-wide v9

    .line 343
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 344
    .line 345
    .line 346
    move-result-object v1

    .line 347
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 348
    .line 349
    .line 350
    move-result v13

    .line 351
    if-eqz v13, :cond_c

    .line 352
    .line 353
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    move-result-object v13

    .line 357
    move-object v14, v13

    .line 358
    check-cast v14, Landroidx/compose/ui/layout/Measurable;

    .line 359
    .line 360
    invoke-static {v14}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    move-result-object v14

    .line 364
    const-string v6, "Hint"

    .line 365
    .line 366
    invoke-static {v14, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 367
    .line 368
    .line 369
    move-result v6

    .line 370
    if-eqz v6, :cond_b

    .line 371
    .line 372
    goto :goto_6

    .line 373
    :cond_c
    const/4 v13, 0x0

    .line 374
    :goto_6
    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    .line 375
    .line 376
    if-eqz v13, :cond_d

    .line 377
    .line 378
    invoke-interface {v13, v9, v10}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    move-object v9, v1

    .line 383
    goto :goto_7

    .line 384
    :cond_d
    const/4 v9, 0x0

    .line 385
    :goto_7
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 386
    .line 387
    .line 388
    move-result v13

    .line 389
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 390
    .line 391
    .line 392
    move-result v14

    .line 393
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 398
    .line 399
    .line 400
    move-result v16

    .line 401
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->widthOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 402
    .line 403
    .line 404
    move-result v17

    .line 405
    move-object v6, v15

    .line 406
    move v15, v1

    .line 407
    move-wide/from16 v18, p3

    .line 408
    .line 409
    invoke-static/range {v13 .. v19}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateWidth-VsPV1Ek(IIIIIJ)I

    .line 410
    .line 411
    .line 412
    move-result v10

    .line 413
    invoke-static {v4}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 414
    .line 415
    .line 416
    move-result v13

    .line 417
    invoke-static {v7}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 418
    .line 419
    .line 420
    move-result v14

    .line 421
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 422
    .line 423
    .line 424
    move-result v15

    .line 425
    invoke-static {v8}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 426
    .line 427
    .line 428
    move-result v16

    .line 429
    invoke-static {v9}, Landroidx/compose/material/TextFieldImplKt;->heightOrZero(Landroidx/compose/ui/layout/Placeable;)I

    .line 430
    .line 431
    .line 432
    move-result v17

    .line 433
    invoke-interface/range {p1 .. p1}, Landroidx/compose/ui/unit/Density;->getDensity()F

    .line 434
    .line 435
    .line 436
    move-result v20

    .line 437
    iget-object v1, v11, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->paddingValues:Landroidx/compose/foundation/layout/PaddingValues;

    .line 438
    .line 439
    move-object/from16 v21, v1

    .line 440
    .line 441
    invoke-static/range {v13 .. v21}, Landroidx/compose/material/OutlinedTextFieldKt;->access$calculateHeight-zUg2_y0(IIIIIJFLandroidx/compose/foundation/layout/PaddingValues;)I

    .line 442
    .line 443
    .line 444
    move-result v13

    .line 445
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 446
    .line 447
    .line 448
    move-result-object v0

    .line 449
    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 450
    .line 451
    .line 452
    move-result v1

    .line 453
    if-eqz v1, :cond_11

    .line 454
    .line 455
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 460
    .line 461
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    const-string v3, "border"

    .line 466
    .line 467
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 468
    .line 469
    .line 470
    move-result v2

    .line 471
    if-eqz v2, :cond_e

    .line 472
    .line 473
    const/4 v0, 0x0

    .line 474
    const v2, 0x7fffffff

    .line 475
    .line 476
    .line 477
    if-eq v10, v2, :cond_f

    .line 478
    .line 479
    move v3, v10

    .line 480
    goto :goto_8

    .line 481
    :cond_f
    move v3, v0

    .line 482
    :goto_8
    if-eq v13, v2, :cond_10

    .line 483
    .line 484
    move v0, v13

    .line 485
    :cond_10
    invoke-static {v3, v10, v0, v13}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    .line 486
    .line 487
    .line 488
    move-result-wide v2

    .line 489
    invoke-interface {v1, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 490
    .line 491
    .line 492
    move-result-object v14

    .line 493
    new-instance v15, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$measure$2;

    .line 494
    .line 495
    move-object v0, v15

    .line 496
    move v1, v13

    .line 497
    move v2, v10

    .line 498
    move-object v3, v4

    .line 499
    move-object v4, v7

    .line 500
    move-object v6, v8

    .line 501
    move-object v7, v9

    .line 502
    move-object v8, v14

    .line 503
    move-object/from16 v9, p0

    .line 504
    .line 505
    move v14, v10

    .line 506
    move-object/from16 v10, p1

    .line 507
    .line 508
    invoke-direct/range {v0 .. v10}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$measure$2;-><init>(IILandroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;Landroidx/compose/ui/layout/MeasureScope;)V

    .line 509
    .line 510
    .line 511
    const/4 v5, 0x4

    .line 512
    const/4 v6, 0x0

    .line 513
    const/4 v3, 0x0

    .line 514
    move-object/from16 v0, p1

    .line 515
    .line 516
    move v1, v14

    .line 517
    move v2, v13

    .line 518
    move-object v4, v15

    .line 519
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    return-object v0

    .line 524
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 525
    .line 526
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    throw v0

    .line 530
    :cond_12
    move-object v6, v15

    .line 531
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 532
    .line 533
    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    .line 534
    .line 535
    .line 536
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
    sget-object v0, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicHeight$1;

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicHeight(Landroidx/compose/ui/layout/IntrinsicMeasureScope;Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

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
    sget-object p1, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    .line 12
    .line 13
    invoke-direct {p0, p2, p3, p1}, Landroidx/compose/material/OutlinedTextFieldMeasurePolicy;->intrinsicWidth(Ljava/util/List;ILkotlin/jvm/functions/Function2;)I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    return p1
.end method
