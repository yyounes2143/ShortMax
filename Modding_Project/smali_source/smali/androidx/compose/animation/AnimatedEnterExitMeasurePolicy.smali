.class final Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;
.super Ljava/lang/Object;
.source "AnimatedVisibility.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/animation/AnimatedVisibilityScopeImpl;)V
    .locals 1
    .param p1    # Landroidx/compose/animation/AnimatedVisibilityScopeImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scope"

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
    iput-object p1, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getScope()Landroidx/compose/animation/AnimatedVisibilityScopeImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

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
    new-instance p2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$maxIntrinsicHeight$1;-><init>(I)V

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
    new-instance p2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$maxIntrinsicWidth$1;-><init>(I)V

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
    .locals 9
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
    const-string v0, "$this$measure"

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
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    const/16 v1, 0xa

    .line 16
    .line 17
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 22
    .line 23
    .line 24
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroidx/compose/ui/layout/Measurable;

    .line 39
    .line 40
    invoke-interface {v1, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    const/4 p3, 0x0

    .line 53
    const/4 p4, 0x1

    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    move-object p2, p3

    .line 58
    goto :goto_2

    .line 59
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    move-object v2, p2

    .line 64
    check-cast v2, Landroidx/compose/ui/layout/Placeable;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-gt p4, v3, :cond_3

    .line 75
    .line 76
    move v4, p4

    .line 77
    :goto_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    move-object v6, v5

    .line 82
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 83
    .line 84
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-ge v2, v6, :cond_2

    .line 89
    .line 90
    move-object p2, v5

    .line 91
    move v2, v6

    .line 92
    :cond_2
    if-eq v4, v3, :cond_3

    .line 93
    .line 94
    add-int/lit8 v4, v4, 0x1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_3
    :goto_2
    check-cast p2, Landroidx/compose/ui/layout/Placeable;

    .line 98
    .line 99
    if-eqz p2, :cond_4

    .line 100
    .line 101
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 102
    .line 103
    .line 104
    move-result p2

    .line 105
    move v3, p2

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    move v3, v1

    .line 108
    :goto_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_5

    .line 113
    .line 114
    goto :goto_5

    .line 115
    :cond_5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    move-object p3, p2

    .line 120
    check-cast p3, Landroidx/compose/ui/layout/Placeable;

    .line 121
    .line 122
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-gt p4, v2, :cond_7

    .line 131
    .line 132
    :goto_4
    invoke-interface {v0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v4

    .line 136
    move-object v5, v4

    .line 137
    check-cast v5, Landroidx/compose/ui/layout/Placeable;

    .line 138
    .line 139
    invoke-virtual {v5}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 140
    .line 141
    .line 142
    move-result v5

    .line 143
    if-ge p3, v5, :cond_6

    .line 144
    .line 145
    move-object p2, v4

    .line 146
    move p3, v5

    .line 147
    :cond_6
    if-eq p4, v2, :cond_7

    .line 148
    .line 149
    add-int/lit8 p4, p4, 0x1

    .line 150
    .line 151
    goto :goto_4

    .line 152
    :cond_7
    move-object p3, p2

    .line 153
    :goto_5
    check-cast p3, Landroidx/compose/ui/layout/Placeable;

    .line 154
    .line 155
    if-eqz p3, :cond_8

    .line 156
    .line 157
    invoke-virtual {p3}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    :cond_8
    move v4, v1

    .line 162
    iget-object p2, p0, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy;->scope:Landroidx/compose/animation/AnimatedVisibilityScopeImpl;

    .line 163
    .line 164
    invoke-virtual {p2}, Landroidx/compose/animation/AnimatedVisibilityScopeImpl;->getTargetSize$animation_release()Landroidx/compose/runtime/MutableState;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 169
    .line 170
    .line 171
    move-result-wide p3

    .line 172
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 173
    .line 174
    .line 175
    move-result-object p3

    .line 176
    invoke-interface {p2, p3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    new-instance v6, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$measure$1;

    .line 180
    .line 181
    invoke-direct {v6, v0}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$measure$1;-><init>(Ljava/util/List;)V

    .line 182
    .line 183
    .line 184
    const/4 v7, 0x4

    .line 185
    const/4 v8, 0x0

    .line 186
    const/4 v5, 0x0

    .line 187
    move-object v2, p1

    .line 188
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    return-object p1
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
    new-instance p2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$minIntrinsicHeight$1;-><init>(I)V

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
    new-instance p2, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1;

    .line 18
    .line 19
    invoke-direct {p2, p3}, Landroidx/compose/animation/AnimatedEnterExitMeasurePolicy$minIntrinsicWidth$1;-><init>(I)V

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
