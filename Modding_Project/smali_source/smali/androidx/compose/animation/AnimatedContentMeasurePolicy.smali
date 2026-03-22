.class final Landroidx/compose/animation/AnimatedContentMeasurePolicy;
.super Ljava/lang/Object;
.source "AnimatedContent.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final rootScope:Landroidx/compose/animation/AnimatedContentScope;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/AnimatedContentScope<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedContentScope;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/AnimatedContentScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "rootScope"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getRootScope()Landroidx/compose/animation/AnimatedContentScope;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/animation/AnimatedContentScope<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 2
    .line 3
    return-object v0
.end method

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
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicHeight$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicHeight$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/sequences/j;->F(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/sequences/j;->H(Lkotlin/sequences/Sequence;)Ljava/lang/Comparable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
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
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicWidth$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$maxIntrinsicWidth$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/sequences/j;->F(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/sequences/j;->H(Lkotlin/sequences/Sequence;)Ljava/lang/Comparable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method

.method public measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 15
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
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    move-wide/from16 v2, p3

    .line 5
    .line 6
    const-string v4, "$this$measure"

    .line 7
    .line 8
    move-object/from16 v5, p1

    .line 9
    .line 10
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v4, "measurables"

    .line 14
    .line 15
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    new-array v6, v4, [Landroidx/compose/ui/layout/Placeable;

    .line 23
    .line 24
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v8, 0x0

    .line 29
    move v9, v8

    .line 30
    :goto_0
    const/4 v10, 0x0

    .line 31
    const/4 v11, 0x1

    .line 32
    if-ge v9, v7, :cond_2

    .line 33
    .line 34
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v12

    .line 38
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 39
    .line 40
    invoke-interface {v12}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->getParentData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v13

    .line 44
    instance-of v14, v13, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 45
    .line 46
    if-eqz v14, :cond_0

    .line 47
    .line 48
    move-object v10, v13

    .line 49
    check-cast v10, Landroidx/compose/animation/AnimatedContentScope$ChildData;

    .line 50
    .line 51
    :cond_0
    if-eqz v10, :cond_1

    .line 52
    .line 53
    invoke-virtual {v10}, Landroidx/compose/animation/AnimatedContentScope$ChildData;->isTarget()Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-ne v10, v11, :cond_1

    .line 58
    .line 59
    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 60
    .line 61
    .line 62
    move-result-object v10

    .line 63
    aput-object v10, v6, v9

    .line 64
    .line 65
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    move v9, v8

    .line 73
    :goto_1
    if-ge v9, v7, :cond_4

    .line 74
    .line 75
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v12

    .line 79
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    .line 80
    .line 81
    aget-object v13, v6, v9

    .line 82
    .line 83
    if-nez v13, :cond_3

    .line 84
    .line 85
    invoke-interface {v12, v2, v3}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    aput-object v12, v6, v9

    .line 90
    .line 91
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    if-nez v4, :cond_5

    .line 95
    .line 96
    move-object v1, v10

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    aget-object v1, v6, v8

    .line 99
    .line 100
    invoke-static {v6}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v2

    .line 104
    if-nez v2, :cond_6

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    if-eqz v1, :cond_7

    .line 108
    .line 109
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    goto :goto_2

    .line 114
    :cond_7
    move v3, v8

    .line 115
    :goto_2
    if-gt v11, v2, :cond_a

    .line 116
    .line 117
    move v7, v11

    .line 118
    :goto_3
    aget-object v9, v6, v7

    .line 119
    .line 120
    if-eqz v9, :cond_8

    .line 121
    .line 122
    invoke-virtual {v9}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v12

    .line 126
    goto :goto_4

    .line 127
    :cond_8
    move v12, v8

    .line 128
    :goto_4
    if-ge v3, v12, :cond_9

    .line 129
    .line 130
    move-object v1, v9

    .line 131
    move v3, v12

    .line 132
    :cond_9
    if-eq v7, v2, :cond_a

    .line 133
    .line 134
    add-int/lit8 v7, v7, 0x1

    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_a
    :goto_5
    if-eqz v1, :cond_b

    .line 138
    .line 139
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    goto :goto_6

    .line 144
    :cond_b
    move v1, v8

    .line 145
    :goto_6
    if-nez v4, :cond_c

    .line 146
    .line 147
    goto :goto_a

    .line 148
    :cond_c
    aget-object v10, v6, v8

    .line 149
    .line 150
    invoke-static {v6}, Lkotlin/collections/n;->r0([Ljava/lang/Object;)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_d

    .line 155
    .line 156
    goto :goto_a

    .line 157
    :cond_d
    if-eqz v10, :cond_e

    .line 158
    .line 159
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 160
    .line 161
    .line 162
    move-result v3

    .line 163
    goto :goto_7

    .line 164
    :cond_e
    move v3, v8

    .line 165
    :goto_7
    if-gt v11, v2, :cond_11

    .line 166
    .line 167
    :goto_8
    aget-object v4, v6, v11

    .line 168
    .line 169
    if-eqz v4, :cond_f

    .line 170
    .line 171
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 172
    .line 173
    .line 174
    move-result v7

    .line 175
    goto :goto_9

    .line 176
    :cond_f
    move v7, v8

    .line 177
    :goto_9
    if-ge v3, v7, :cond_10

    .line 178
    .line 179
    move-object v10, v4

    .line 180
    move v3, v7

    .line 181
    :cond_10
    if-eq v11, v2, :cond_11

    .line 182
    .line 183
    add-int/lit8 v11, v11, 0x1

    .line 184
    .line 185
    goto :goto_8

    .line 186
    :cond_11
    :goto_a
    if-eqz v10, :cond_12

    .line 187
    .line 188
    invoke-virtual {v10}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    move v7, v2

    .line 193
    goto :goto_b

    .line 194
    :cond_12
    move v7, v8

    .line 195
    :goto_b
    iget-object v2, v0, Landroidx/compose/animation/AnimatedContentMeasurePolicy;->rootScope:Landroidx/compose/animation/AnimatedContentScope;

    .line 196
    .line 197
    invoke-static {v1, v7}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 198
    .line 199
    .line 200
    move-result-wide v3

    .line 201
    invoke-virtual {v2, v3, v4}, Landroidx/compose/animation/AnimatedContentScope;->setMeasuredSize-ozmzZPI$animation_release(J)V

    .line 202
    .line 203
    .line 204
    new-instance v9, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;

    .line 205
    .line 206
    invoke-direct {v9, v6, p0, v1, v7}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$measure$3;-><init>([Landroidx/compose/ui/layout/Placeable;Landroidx/compose/animation/AnimatedContentMeasurePolicy;II)V

    .line 207
    .line 208
    .line 209
    const/4 v10, 0x4

    .line 210
    const/4 v11, 0x0

    .line 211
    const/4 v8, 0x0

    .line 212
    move-object/from16 v5, p1

    .line 213
    .line 214
    move v6, v1

    .line 215
    invoke-static/range {v5 .. v11}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    return-object v1
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
    const-string p1, "measurables"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicHeight$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicHeight$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/sequences/j;->F(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/sequences/j;->H(Lkotlin/sequences/Sequence;)Ljava/lang/Comparable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
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
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->e0(Ljava/lang/Iterable;)Lkotlin/sequences/Sequence;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance p2, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicWidth$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedContentMeasurePolicy$minIntrinsicWidth$1;-><init>(I)V

    .line 20
    .line 21
    .line 22
    invoke-static {p1, p2}, Lkotlin/sequences/j;->F(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lkotlin/sequences/j;->H(Lkotlin/sequences/Sequence;)Ljava/lang/Comparable;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Ljava/lang/Integer;

    .line 31
    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    return p1
.end method
