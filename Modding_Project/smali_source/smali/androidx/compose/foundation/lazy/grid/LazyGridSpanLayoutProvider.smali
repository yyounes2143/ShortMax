.class public final Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;
.super Ljava/lang/Object;
.source "LazyGridSpanLayoutProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;,
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;,
        Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final buckets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final cachedBucket:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cachedBucketIndex:I

.field private final itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lastLineIndex:I

.field private lastLineStartItemIndex:I

.field private lastLineStartKnownSpan:I

.field private previousDefaultSpans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private slotsPerLine:I


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;)V
    .locals 4
    .param p1    # Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "itemsSnapshot"

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
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 10
    .line 11
    new-instance p1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 17
    .line 18
    const/4 v1, 0x2

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-direct {v0, v3, v3, v1, v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 28
    .line 29
    const/4 p1, -0x1

    .line 30
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 31
    .line 32
    new-instance p1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iput-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 44
    .line 45
    return-void
.end method

.method private final getBucketSize()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-double v0, v0

    .line 6
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 7
    .line 8
    mul-double/2addr v0, v2

    .line 9
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 10
    .line 11
    int-to-double v2, v2

    .line 12
    div-double/2addr v0, v2

    .line 13
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    double-to-int v0, v0

    .line 18
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    return v0
.end method

.method private final getDefaultSpans(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroidx/compose/foundation/lazy/grid/GridItemSpan;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 15
    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, p1, :cond_1

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-static {v2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    invoke-static {v2, v3}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->box-impl(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->previousDefaultSpans:Ljava/util/List;

    .line 36
    .line 37
    move-object p1, v0

    .line 38
    :goto_1
    return-object p1
.end method

.method private final invalidateCache()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    invoke-direct {v1, v4, v4, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    .line 20
    .line 21
    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    .line 22
    .line 23
    const/4 v0, -0x1

    .line 24
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 25
    .line 26
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final spanOf(II)I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->INSTANCE:Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;

    .line 4
    .line 5
    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->setMaxCurrentLineSpan(I)V

    .line 6
    .line 7
    .line 8
    iget p2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 9
    .line 10
    invoke-virtual {v1, p2}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LazyGridItemSpanScopeImpl;->setMaxLineSpan(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->getSpan-_-orMbw(Landroidx/compose/foundation/lazy/grid/LazyGridItemSpanScope;I)J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->getCurrentLineSpan-impl(J)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p2, 0x1

    .line 22
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 23
    .line 24
    invoke-static {p1, p2, v0}, Lkotlin/ranges/e;->n(III)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method


# virtual methods
.method public final getLineConfiguration(I)Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;
    .locals 10
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->getHasCustomSpans()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 11
    .line 12
    mul-int/2addr p1, v0

    .line 13
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 14
    .line 15
    iget v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    sub-int/2addr v3, p1

    .line 22
    invoke-static {v2, v3}, Lkotlin/ranges/e;->j(II)I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v2, v1}, Lkotlin/ranges/e;->e(II)I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-direct {p0, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getDefaultSpans(I)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {v0, p1, v1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;-><init>(ILjava/util/List;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    div-int v0, p1, v0

    .line 43
    .line 44
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x1

    .line 51
    sub-int/2addr v2, v3

    .line 52
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    mul-int/2addr v2, v0

    .line 61
    iget-object v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 68
    .line 69
    invoke-virtual {v4}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemIndex()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 80
    .line 81
    invoke-virtual {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemKnownSpan()I

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    .line 86
    .line 87
    if-gt v2, v6, :cond_1

    .line 88
    .line 89
    if-gt v6, p1, :cond_1

    .line 90
    .line 91
    iget v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    .line 92
    .line 93
    iget v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    .line 94
    .line 95
    move v2, v6

    .line 96
    goto :goto_0

    .line 97
    :cond_1
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 98
    .line 99
    if-ne v0, v6, :cond_2

    .line 100
    .line 101
    sub-int v6, p1, v2

    .line 102
    .line 103
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 104
    .line 105
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    if-ge v6, v7, :cond_2

    .line 110
    .line 111
    iget-object v2, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 112
    .line 113
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    check-cast v2, Ljava/lang/Number;

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    move v2, p1

    .line 124
    move v5, v1

    .line 125
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 126
    .line 127
    .line 128
    move-result v6

    .line 129
    rem-int v6, v2, v6

    .line 130
    .line 131
    if-nez v6, :cond_3

    .line 132
    .line 133
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    sub-int v7, p1, v2

    .line 138
    .line 139
    const/4 v8, 0x2

    .line 140
    if-gt v8, v7, :cond_3

    .line 141
    .line 142
    if-ge v7, v6, :cond_3

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_3
    move v3, v1

    .line 146
    :goto_1
    if-eqz v3, :cond_4

    .line 147
    .line 148
    iput v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucketIndex:I

    .line 149
    .line 150
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 151
    .line 152
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 153
    .line 154
    .line 155
    :cond_4
    const-string v0, "Check failed."

    .line 156
    .line 157
    if-gt v2, p1, :cond_e

    .line 158
    .line 159
    :cond_5
    :goto_2
    if-ge v2, p1, :cond_b

    .line 160
    .line 161
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    if-ge v4, v6, :cond_b

    .line 166
    .line 167
    if-eqz v3, :cond_6

    .line 168
    .line 169
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->cachedBucket:Ljava/util/List;

    .line 170
    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    .line 173
    .line 174
    move-result-object v7

    .line 175
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_6
    move v6, v1

    .line 179
    :goto_3
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 180
    .line 181
    if-ge v6, v7, :cond_9

    .line 182
    .line 183
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 184
    .line 185
    .line 186
    move-result v7

    .line 187
    if-ge v4, v7, :cond_9

    .line 188
    .line 189
    if-nez v5, :cond_7

    .line 190
    .line 191
    iget v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 192
    .line 193
    sub-int/2addr v7, v6

    .line 194
    invoke-direct {p0, v4, v7}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    .line 195
    .line 196
    .line 197
    move-result v7

    .line 198
    move v9, v7

    .line 199
    move v7, v5

    .line 200
    move v5, v9

    .line 201
    goto :goto_4

    .line 202
    :cond_7
    move v7, v1

    .line 203
    :goto_4
    add-int/2addr v6, v5

    .line 204
    iget v8, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 205
    .line 206
    if-le v6, v8, :cond_8

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_8
    add-int/lit8 v4, v4, 0x1

    .line 210
    .line 211
    move v5, v7

    .line 212
    goto :goto_3

    .line 213
    :cond_9
    :goto_5
    add-int/lit8 v2, v2, 0x1

    .line 214
    .line 215
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    rem-int v6, v2, v6

    .line 220
    .line 221
    if-nez v6, :cond_5

    .line 222
    .line 223
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 224
    .line 225
    .line 226
    move-result v6

    .line 227
    if-ge v4, v6, :cond_5

    .line 228
    .line 229
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 230
    .line 231
    .line 232
    move-result v6

    .line 233
    div-int v6, v2, v6

    .line 234
    .line 235
    iget-object v7, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 236
    .line 237
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 238
    .line 239
    .line 240
    move-result v7

    .line 241
    if-ne v7, v6, :cond_a

    .line 242
    .line 243
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 244
    .line 245
    new-instance v7, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 246
    .line 247
    invoke-direct {v7, v4, v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(II)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 251
    .line 252
    .line 253
    goto :goto_2

    .line 254
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 255
    .line 256
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    throw p1

    .line 260
    :cond_b
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineIndex:I

    .line 261
    .line 262
    iput v4, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartItemIndex:I

    .line 263
    .line 264
    iput v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->lastLineStartKnownSpan:I

    .line 265
    .line 266
    new-instance p1, Ljava/util/ArrayList;

    .line 267
    .line 268
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 269
    .line 270
    .line 271
    move v0, v1

    .line 272
    move v2, v4

    .line 273
    :goto_6
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 274
    .line 275
    if-ge v0, v3, :cond_d

    .line 276
    .line 277
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 278
    .line 279
    .line 280
    move-result v3

    .line 281
    if-ge v2, v3, :cond_d

    .line 282
    .line 283
    if-nez v5, :cond_c

    .line 284
    .line 285
    iget v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 286
    .line 287
    sub-int/2addr v3, v0

    .line 288
    invoke-direct {p0, v2, v3}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    .line 289
    .line 290
    .line 291
    move-result v3

    .line 292
    move v9, v5

    .line 293
    move v5, v3

    .line 294
    move v3, v9

    .line 295
    goto :goto_7

    .line 296
    :cond_c
    move v3, v1

    .line 297
    :goto_7
    add-int/2addr v0, v5

    .line 298
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 299
    .line 300
    if-gt v0, v6, :cond_d

    .line 301
    .line 302
    add-int/lit8 v2, v2, 0x1

    .line 303
    .line 304
    invoke-static {v5}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanKt;->GridItemSpan(I)J

    .line 305
    .line 306
    .line 307
    move-result-wide v5

    .line 308
    invoke-static {v5, v6}, Landroidx/compose/foundation/lazy/grid/GridItemSpan;->box-impl(J)Landroidx/compose/foundation/lazy/grid/GridItemSpan;

    .line 309
    .line 310
    .line 311
    move-result-object v5

    .line 312
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    move v5, v3

    .line 316
    goto :goto_6

    .line 317
    :cond_d
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;

    .line 318
    .line 319
    invoke-direct {v0, v4, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$LineConfiguration;-><init>(ILjava/util/List;)V

    .line 320
    .line 321
    .line 322
    return-object v0

    .line 323
    :cond_e
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 324
    .line 325
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p1
.end method

.method public final getLineIndexOfItem--_Ze7BM(I)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-gtz v0, :cond_0

    .line 7
    .line 8
    invoke-static {v1}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getTotalSize()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const-string v2, "Failed requirement."

    .line 18
    .line 19
    if-ge p1, v0, :cond_a

    .line 20
    .line 21
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->getHasCustomSpans()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 30
    .line 31
    div-int/2addr p1, v0

    .line 32
    invoke-static {p1}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    return p1

    .line 37
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 38
    .line 39
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;

    .line 40
    .line 41
    invoke-direct {v6, p1}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$getLineIndexOfItem$lowerBoundBucket$1;-><init>(I)V

    .line 42
    .line 43
    .line 44
    const/4 v7, 0x3

    .line 45
    const/4 v8, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x0

    .line 48
    invoke-static/range {v3 .. v8}, Lkotlin/collections/CollectionsKt;->l(Ljava/util/List;IILkotlin/jvm/functions/Function1;ILjava/lang/Object;)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v3, 0x2

    .line 53
    if-ltz v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    neg-int v0, v0

    .line 57
    sub-int/2addr v0, v3

    .line 58
    :goto_0
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    mul-int/2addr v4, v0

    .line 63
    iget-object v5, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 70
    .line 71
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;->getFirstItemIndex()I

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-gt v0, p1, :cond_9

    .line 76
    .line 77
    move v2, v1

    .line 78
    :goto_1
    if-ge v0, p1, :cond_7

    .line 79
    .line 80
    add-int/lit8 v5, v0, 0x1

    .line 81
    .line 82
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 83
    .line 84
    sub-int/2addr v6, v2

    .line 85
    invoke-direct {p0, v0, v6}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    add-int/2addr v2, v0

    .line 90
    iget v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 91
    .line 92
    if-ge v2, v6, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    if-ne v2, v6, :cond_4

    .line 96
    .line 97
    add-int/lit8 v4, v4, 0x1

    .line 98
    .line 99
    move v2, v1

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 102
    .line 103
    move v2, v0

    .line 104
    :goto_2
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    rem-int v0, v4, v0

    .line 109
    .line 110
    if-nez v0, :cond_6

    .line 111
    .line 112
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->getBucketSize()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    div-int v0, v4, v0

    .line 117
    .line 118
    iget-object v6, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 119
    .line 120
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 121
    .line 122
    .line 123
    move-result v6

    .line 124
    if-lt v0, v6, :cond_6

    .line 125
    .line 126
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->buckets:Ljava/util/ArrayList;

    .line 127
    .line 128
    new-instance v6, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;

    .line 129
    .line 130
    if-lez v2, :cond_5

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move v7, v1

    .line 135
    :goto_3
    sub-int v7, v5, v7

    .line 136
    .line 137
    const/4 v8, 0x0

    .line 138
    invoke-direct {v6, v7, v1, v3, v8}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider$Bucket;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_6
    move v0, v5

    .line 145
    goto :goto_1

    .line 146
    :cond_7
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 147
    .line 148
    sub-int/2addr v0, v2

    .line 149
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->spanOf(II)I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    add-int/2addr v2, p1

    .line 154
    iget p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 155
    .line 156
    if-le v2, p1, :cond_8

    .line 157
    .line 158
    add-int/lit8 v4, v4, 0x1

    .line 159
    .line 160
    :cond_8
    invoke-static {v4}, Landroidx/compose/foundation/lazy/grid/LineIndex;->constructor-impl(I)I

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    return p1

    .line 165
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 166
    .line 167
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p1

    .line 171
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 172
    .line 173
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p1
.end method

.method public final getSlotsPerLine()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTotalSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->itemsSnapshot:Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/foundation/lazy/grid/LazyGridItemsSnapshot;->getItemsCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setSlotsPerLine(I)V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->slotsPerLine:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/compose/foundation/lazy/grid/LazyGridSpanLayoutProvider;->invalidateCache()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
