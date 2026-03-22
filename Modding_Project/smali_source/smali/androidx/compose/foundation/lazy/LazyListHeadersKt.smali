.class public final Landroidx/compose/foundation/lazy/LazyListHeadersKt;
.super Ljava/lang/Object;
.source "LazyListHeaders.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final findOrComposeLazyListHeader(Ljava/util/List;Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;Ljava/util/List;III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;
    .locals 15
    .param p0    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;
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
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;",
            ">;",
            "Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;III)",
            "Landroidx/compose/foundation/lazy/LazyListPositionedItem;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    .line 4
    move-object/from16 v2, p2

    .line 5
    .line 6
    move/from16 v3, p3

    .line 7
    .line 8
    const-string v4, "composedVisibleItems"

    .line 9
    .line 10
    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v4, "itemProvider"

    .line 14
    .line 15
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v4, "headerIndexes"

    .line 19
    .line 20
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    check-cast v4, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 28
    .line 29
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    const/4 v6, -0x1

    .line 38
    const/4 v7, 0x0

    .line 39
    move v9, v6

    .line 40
    move v10, v9

    .line 41
    move v8, v7

    .line 42
    :goto_0
    if-ge v8, v5, :cond_1

    .line 43
    .line 44
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v11

    .line 48
    check-cast v11, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    if-gt v11, v4, :cond_1

    .line 55
    .line 56
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    check-cast v9, Ljava/lang/Number;

    .line 61
    .line 62
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v9

    .line 66
    add-int/lit8 v8, v8, 0x1

    .line 67
    .line 68
    if-ltz v8, :cond_0

    .line 69
    .line 70
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 71
    .line 72
    .line 73
    move-result v10

    .line 74
    if-gt v8, v10, :cond_0

    .line 75
    .line 76
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    goto :goto_1

    .line 81
    :cond_0
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    :goto_1
    check-cast v10, Ljava/lang/Number;

    .line 86
    .line 87
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v10

    .line 91
    goto :goto_0

    .line 92
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    const/high16 v4, -0x80000000

    .line 97
    .line 98
    move v8, v4

    .line 99
    move v11, v8

    .line 100
    move v12, v6

    .line 101
    move v5, v7

    .line 102
    :goto_2
    if-ge v5, v2, :cond_4

    .line 103
    .line 104
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    check-cast v13, Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 109
    .line 110
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 111
    .line 112
    .line 113
    move-result v14

    .line 114
    if-ne v14, v9, :cond_2

    .line 115
    .line 116
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    move v12, v5

    .line 121
    goto :goto_3

    .line 122
    :cond_2
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getIndex()I

    .line 123
    .line 124
    .line 125
    move-result v14

    .line 126
    if-ne v14, v10, :cond_3

    .line 127
    .line 128
    invoke-virtual {v13}, Landroidx/compose/foundation/lazy/LazyListPositionedItem;->getOffset()I

    .line 129
    .line 130
    .line 131
    move-result v11

    .line 132
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    if-ne v9, v6, :cond_5

    .line 136
    .line 137
    const/4 v0, 0x0

    .line 138
    return-object v0

    .line 139
    :cond_5
    invoke-static {v9}, Landroidx/compose/foundation/lazy/DataIndex;->constructor-impl(I)I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/lazy/LazyMeasuredItemProvider;->getAndMeasure-ZjPyQlc(I)Landroidx/compose/foundation/lazy/LazyMeasuredItem;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    if-eq v8, v4, :cond_6

    .line 148
    .line 149
    neg-int v2, v3

    .line 150
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    goto :goto_4

    .line 155
    :cond_6
    neg-int v2, v3

    .line 156
    :goto_4
    if-eq v11, v4, :cond_7

    .line 157
    .line 158
    invoke-virtual {v1}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->getSize()I

    .line 159
    .line 160
    .line 161
    move-result v3

    .line 162
    sub-int/2addr v11, v3

    .line 163
    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    :cond_7
    move/from16 v3, p4

    .line 168
    .line 169
    move/from16 v4, p5

    .line 170
    .line 171
    invoke-virtual {v1, v2, v3, v4}, Landroidx/compose/foundation/lazy/LazyMeasuredItem;->position(III)Landroidx/compose/foundation/lazy/LazyListPositionedItem;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    if-eq v12, v6, :cond_8

    .line 176
    .line 177
    invoke-interface {p0, v12, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    goto :goto_5

    .line 181
    :cond_8
    invoke-interface {p0, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 182
    .line 183
    .line 184
    :goto_5
    return-object v1
.end method
