.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "HitPathTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasExited:Z

.field private isIn:Z

.field private pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final pointerIds:Landroidx/compose/runtime/collection/MutableVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final relevantChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private wasIn:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/input/pointer/PointerInputFilter;)V
    .locals 2
    .param p1    # Landroidx/compose/ui/input/pointer/PointerInputFilter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "pointerInputFilter"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 10
    .line 11
    new-instance p1, Landroidx/compose/runtime/collection/MutableVector;

    .line 12
    .line 13
    const/16 v0, 0x10

    .line 14
    .line 15
    new-array v0, v0, [Landroidx/compose/ui/input/pointer/PointerId;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-direct {p1, v0, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 32
    .line 33
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 34
    .line 35
    return-void
.end method

.method private final clearCache()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 8
    .line 9
    return-void
.end method

.method private final dispatchIfNeeded(Lkotlin/jvm/functions/Function0;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    return p1
.end method

.method private final hasPositionChanged(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eq v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/4 v2, 0x0

    .line 32
    move v3, v2

    .line 33
    :goto_0
    if-ge v3, v1, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    check-cast v4, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 44
    .line 45
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v5

    .line 53
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 54
    .line 55
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    invoke-static {v6, v7, v4, v5}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    if-nez v4, :cond_1

    .line 68
    .line 69
    return v0

    .line 70
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    return v2

    .line 74
    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public buildCache(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 30
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
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
    move-object/from16 v3, p3

    .line 8
    .line 9
    const-string v4, "changes"

    .line 10
    .line 11
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v4, "parentCoordinates"

    .line 15
    .line 16
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v4, "internalPointerEvent"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 29
    .line 30
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    const/4 v6, 0x1

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    return v6

    .line 38
    :cond_0
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 39
    .line 40
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->getLayoutCoordinates$ui_release()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 45
    .line 46
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    const/4 v8, 0x0

    .line 59
    if-eqz v7, :cond_3

    .line 60
    .line 61
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    check-cast v7, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerId;

    .line 72
    .line 73
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerId;->unbox-impl()J

    .line 74
    .line 75
    .line 76
    move-result-wide v9

    .line 77
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    move-object v11, v7

    .line 82
    check-cast v11, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 83
    .line 84
    iget-object v7, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 85
    .line 86
    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 87
    .line 88
    .line 89
    move-result-object v12

    .line 90
    invoke-virtual {v7, v12}, Landroidx/compose/runtime/collection/MutableVector;->contains(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_1

    .line 95
    .line 96
    new-instance v7, Ljava/util/ArrayList;

    .line 97
    .line 98
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getHistorical()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v12

    .line 105
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 106
    .line 107
    .line 108
    move-result v13

    .line 109
    :goto_1
    if-ge v8, v13, :cond_2

    .line 110
    .line 111
    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v14

    .line 115
    check-cast v14, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 116
    .line 117
    new-instance v15, Landroidx/compose/ui/input/pointer/HistoricalChange;

    .line 118
    .line 119
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getUptimeMillis()J

    .line 120
    .line 121
    .line 122
    move-result-wide v16

    .line 123
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 124
    .line 125
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    move-object/from16 v21, v12

    .line 129
    .line 130
    move/from16 v22, v13

    .line 131
    .line 132
    invoke-virtual {v14}, Landroidx/compose/ui/input/pointer/HistoricalChange;->getPosition-F1C5BW0()J

    .line 133
    .line 134
    .line 135
    move-result-wide v12

    .line 136
    invoke-interface {v6, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 137
    .line 138
    .line 139
    move-result-wide v18

    .line 140
    const/16 v20, 0x0

    .line 141
    .line 142
    move-object v6, v15

    .line 143
    invoke-direct/range {v15 .. v20}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    add-int/lit8 v8, v8, 0x1

    .line 150
    .line 151
    move-object/from16 v12, v21

    .line 152
    .line 153
    move/from16 v13, v22

    .line 154
    .line 155
    const/4 v6, 0x1

    .line 156
    goto :goto_1

    .line 157
    :cond_2
    iget-object v6, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 158
    .line 159
    invoke-static {v9, v10}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 164
    .line 165
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPosition-F1C5BW0()J

    .line 169
    .line 170
    .line 171
    move-result-wide v12

    .line 172
    invoke-interface {v9, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 173
    .line 174
    .line 175
    move-result-wide v21

    .line 176
    iget-object v9, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 177
    .line 178
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v11}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPosition-F1C5BW0()J

    .line 182
    .line 183
    .line 184
    move-result-wide v12

    .line 185
    invoke-interface {v9, v2, v12, v13}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 186
    .line 187
    .line 188
    move-result-wide v16

    .line 189
    const/16 v28, 0x2db

    .line 190
    .line 191
    const/16 v29, 0x0

    .line 192
    .line 193
    const-wide/16 v12, 0x0

    .line 194
    .line 195
    const-wide/16 v14, 0x0

    .line 196
    .line 197
    const/16 v18, 0x0

    .line 198
    .line 199
    const-wide/16 v19, 0x0

    .line 200
    .line 201
    const/16 v23, 0x0

    .line 202
    .line 203
    const/16 v24, 0x0

    .line 204
    .line 205
    const-wide/16 v26, 0x0

    .line 206
    .line 207
    move-object/from16 v25, v7

    .line 208
    .line 209
    invoke-static/range {v11 .. v29}, Landroidx/compose/ui/input/pointer/PointerInputChange;->copy-OHpmEuE$default(Landroidx/compose/ui/input/pointer/PointerInputChange;JJJZJJZILjava/util/List;JILjava/lang/Object;)Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 210
    .line 211
    .line 212
    move-result-object v7

    .line 213
    invoke-interface {v6, v8, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    const/4 v6, 0x1

    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_3
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    if-eqz v2, :cond_4

    .line 226
    .line 227
    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 228
    .line 229
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 230
    .line 231
    .line 232
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    .line 237
    .line 238
    .line 239
    const/4 v2, 0x1

    .line 240
    return v2

    .line 241
    :cond_4
    const/4 v2, 0x1

    .line 242
    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 243
    .line 244
    invoke-virtual {v5}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 245
    .line 246
    .line 247
    move-result v5

    .line 248
    sub-int/2addr v5, v2

    .line 249
    :goto_2
    const/4 v2, -0x1

    .line 250
    if-ge v2, v5, :cond_6

    .line 251
    .line 252
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 253
    .line 254
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    aget-object v2, v2, v5

    .line 259
    .line 260
    check-cast v2, Landroidx/compose/ui/input/pointer/PointerId;

    .line 261
    .line 262
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerId;->unbox-impl()J

    .line 263
    .line 264
    .line 265
    move-result-wide v6

    .line 266
    invoke-static {v6, v7}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 267
    .line 268
    .line 269
    move-result-object v2

    .line 270
    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v2

    .line 274
    if-nez v2, :cond_5

    .line 275
    .line 276
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 277
    .line 278
    invoke-virtual {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;->removeAt(I)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    :cond_5
    add-int/lit8 v5, v5, -0x1

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_6
    new-instance v1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 285
    .line 286
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 287
    .line 288
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 289
    .line 290
    .line 291
    move-result-object v2

    .line 292
    check-cast v2, Ljava/lang/Iterable;

    .line 293
    .line 294
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-direct {v1, v2, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 306
    .line 307
    .line 308
    move-result v5

    .line 309
    move v6, v8

    .line 310
    :goto_3
    if-ge v6, v5, :cond_8

    .line 311
    .line 312
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    move-object v9, v7

    .line 317
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 318
    .line 319
    invoke-virtual {v9}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 320
    .line 321
    .line 322
    move-result-wide v9

    .line 323
    invoke-virtual {v3, v9, v10}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->issuesEnterExitEvent-0FcD4WY(J)Z

    .line 324
    .line 325
    .line 326
    move-result v9

    .line 327
    if-eqz v9, :cond_7

    .line 328
    .line 329
    goto :goto_4

    .line 330
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 331
    .line 332
    goto :goto_3

    .line 333
    :cond_8
    const/4 v7, 0x0

    .line 334
    :goto_4
    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 335
    .line 336
    if-eqz v7, :cond_10

    .line 337
    .line 338
    if-nez p4, :cond_a

    .line 339
    .line 340
    iput-boolean v8, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 341
    .line 342
    :cond_9
    const/4 v3, 0x1

    .line 343
    goto :goto_5

    .line 344
    :cond_a
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 345
    .line 346
    if-nez v2, :cond_9

    .line 347
    .line 348
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 349
    .line 350
    .line 351
    move-result v2

    .line 352
    if-nez v2, :cond_b

    .line 353
    .line 354
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPreviousPressed()Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_9

    .line 359
    .line 360
    :cond_b
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 361
    .line 362
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 363
    .line 364
    .line 365
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 366
    .line 367
    .line 368
    move-result-wide v2

    .line 369
    invoke-static {v7, v2, v3}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    .line 370
    .line 371
    .line 372
    move-result v2

    .line 373
    const/4 v3, 0x1

    .line 374
    xor-int/2addr v2, v3

    .line 375
    iput-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 376
    .line 377
    :goto_5
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 378
    .line 379
    iget-boolean v5, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 380
    .line 381
    if-eq v2, v5, :cond_e

    .line 382
    .line 383
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 384
    .line 385
    .line 386
    move-result v2

    .line 387
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 388
    .line 389
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    .line 390
    .line 391
    .line 392
    move-result v6

    .line 393
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 394
    .line 395
    .line 396
    move-result v2

    .line 397
    if-nez v2, :cond_c

    .line 398
    .line 399
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    .line 404
    .line 405
    .line 406
    move-result v6

    .line 407
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 408
    .line 409
    .line 410
    move-result v2

    .line 411
    if-nez v2, :cond_c

    .line 412
    .line 413
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 414
    .line 415
    .line 416
    move-result v2

    .line 417
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    .line 418
    .line 419
    .line 420
    move-result v6

    .line 421
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 422
    .line 423
    .line 424
    move-result v2

    .line 425
    if-eqz v2, :cond_e

    .line 426
    .line 427
    :cond_c
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 428
    .line 429
    if-eqz v2, :cond_d

    .line 430
    .line 431
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    goto :goto_6

    .line 436
    :cond_d
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    .line 437
    .line 438
    .line 439
    move-result v2

    .line 440
    :goto_6
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    .line 441
    .line 442
    .line 443
    goto :goto_7

    .line 444
    :cond_e
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 449
    .line 450
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getEnter-7fucELk()I

    .line 451
    .line 452
    .line 453
    move-result v6

    .line 454
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 455
    .line 456
    .line 457
    move-result v2

    .line 458
    if-eqz v2, :cond_f

    .line 459
    .line 460
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 461
    .line 462
    if-eqz v2, :cond_f

    .line 463
    .line 464
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 465
    .line 466
    if-nez v2, :cond_f

    .line 467
    .line 468
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    .line 469
    .line 470
    .line 471
    move-result v2

    .line 472
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    .line 473
    .line 474
    .line 475
    goto :goto_7

    .line 476
    :cond_f
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    .line 481
    .line 482
    .line 483
    move-result v6

    .line 484
    invoke-static {v2, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    if-eqz v2, :cond_11

    .line 489
    .line 490
    iget-boolean v2, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 491
    .line 492
    if-eqz v2, :cond_11

    .line 493
    .line 494
    invoke-virtual {v7}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 495
    .line 496
    .line 497
    move-result v2

    .line 498
    if-eqz v2, :cond_11

    .line 499
    .line 500
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    invoke-virtual {v1, v2}, Landroidx/compose/ui/input/pointer/PointerEvent;->setType-EhbLWgg$ui_release(I)V

    .line 505
    .line 506
    .line 507
    goto :goto_7

    .line 508
    :cond_10
    const/4 v3, 0x1

    .line 509
    :cond_11
    :goto_7
    if-nez v4, :cond_13

    .line 510
    .line 511
    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 512
    .line 513
    .line 514
    move-result v2

    .line 515
    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 516
    .line 517
    invoke-virtual {v4}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getMove-7fucELk()I

    .line 518
    .line 519
    .line 520
    move-result v4

    .line 521
    invoke-static {v2, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    if-eqz v2, :cond_13

    .line 526
    .line 527
    iget-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 528
    .line 529
    invoke-direct {v0, v2, v1}, Landroidx/compose/ui/input/pointer/Node;->hasPositionChanged(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEvent;)Z

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    if-eqz v2, :cond_12

    .line 534
    .line 535
    goto :goto_8

    .line 536
    :cond_12
    move v6, v8

    .line 537
    goto :goto_9

    .line 538
    :cond_13
    :goto_8
    move v6, v3

    .line 539
    :goto_9
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 540
    .line 541
    return v6
.end method

.method public cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "internalPointerEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    move v4, v3

    .line 28
    :goto_0
    if-ge v4, v2, :cond_3

    .line 29
    .line 30
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 35
    .line 36
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getPressed()Z

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 43
    .line 44
    .line 45
    move-result-wide v6

    .line 46
    invoke-virtual {p1, v6, v7}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->issuesEnterExitEvent-0FcD4WY(J)Z

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    if-eqz v6, :cond_1

    .line 51
    .line 52
    iget-boolean v6, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 53
    .line 54
    if-nez v6, :cond_2

    .line 55
    .line 56
    :cond_1
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 57
    .line 58
    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/PointerInputChange;->getId-J3iCeTQ()J

    .line 59
    .line 60
    .line 61
    move-result-wide v7

    .line 62
    invoke-static {v7, v8}, Landroidx/compose/ui/input/pointer/PointerId;->box-impl(J)Landroidx/compose/ui/input/pointer/PointerId;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v6, v5}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 73
    .line 74
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEvent;->getType-7fucELk()I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    .line 79
    .line 80
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerEventType$Companion;->getExit-7fucELk()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    .line 89
    .line 90
    return-void
.end method

.method public dispatchCancel()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-lez v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v2, 0x0

    .line 16
    :cond_0
    aget-object v3, v0, v2

    .line 17
    .line 18
    check-cast v3, Landroidx/compose/ui/input/pointer/Node;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    .line 21
    .line 22
    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    if-lt v2, v1, :cond_0

    .line 26
    .line 27
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->onCancel()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 6
    .param p1    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "internalPointerEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 31
    .line 32
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-interface {v2}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 40
    .line 41
    sget-object v5, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 42
    .line 43
    invoke-virtual {v4, v0, v5, v2, v3}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const/4 v2, 0x1

    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-lez v3, :cond_3

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    :cond_2
    aget-object v4, v0, v1

    .line 70
    .line 71
    check-cast v4, Landroidx/compose/ui/input/pointer/Node;

    .line 72
    .line 73
    invoke-virtual {v4, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    .line 74
    .line 75
    .line 76
    add-int/2addr v1, v2

    .line 77
    if-lt v1, v3, :cond_2

    .line 78
    .line 79
    :cond_3
    move v1, v2

    .line 80
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/Node;->clearCache()V

    .line 84
    .line 85
    .line 86
    return v1
.end method

.method public dispatchMainEventPass(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 8
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/input/pointer/InternalPointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/input/pointer/InternalPointerEvent;",
            "Z)Z"
        }
    .end annotation

    .line 1
    const-string v0, "changes"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "parentCoordinates"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "internalPointerEvent"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/4 p2, 0x0

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 36
    .line 37
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 46
    .line 47
    .line 48
    move-result-wide v0

    .line 49
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 50
    .line 51
    sget-object v3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 52
    .line 53
    invoke-virtual {v2, p1, v3, v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 57
    .line 58
    invoke-virtual {v2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    const/4 v3, 0x1

    .line 63
    if-eqz v2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-lez v4, :cond_3

    .line 74
    .line 75
    invoke-virtual {v2}, Landroidx/compose/runtime/collection/MutableVector;->getContent()[Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    :cond_2
    aget-object v5, v2, p2

    .line 80
    .line 81
    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    .line 82
    .line 83
    iget-object v6, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Ljava/util/Map;

    .line 84
    .line 85
    iget-object v7, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 86
    .line 87
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v6, v7, p3, p4}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Ljava/util/Map;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    .line 91
    .line 92
    .line 93
    add-int/2addr p2, v3

    .line 94
    if-lt p2, v4, :cond_2

    .line 95
    .line 96
    :cond_3
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 97
    .line 98
    invoke-virtual {p2}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached$ui_release()Z

    .line 99
    .line 100
    .line 101
    move-result p2

    .line 102
    if-eqz p2, :cond_4

    .line 103
    .line 104
    iget-object p2, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 105
    .line 106
    sget-object p3, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 107
    .line 108
    invoke-virtual {p2, p1, p3, v0, v1}, Landroidx/compose/ui/input/pointer/PointerInputFilter;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    .line 109
    .line 110
    .line 111
    :cond_4
    move p2, v3

    .line 112
    :goto_0
    return p2
.end method

.method public final getPointerIds()Landroidx/compose/runtime/collection/MutableVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/collection/MutableVector<",
            "Landroidx/compose/ui/input/pointer/PointerId;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPointerInputFilter()Landroidx/compose/ui/input/pointer/PointerInputFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final markIsIn()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    .line 3
    .line 4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Node(pointerInputFilter="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerInputFilter:Landroidx/compose/ui/input/pointer/PointerInputFilter;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", children="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/NodeParent;->getChildren()Landroidx/compose/runtime/collection/MutableVector;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", pointerIds="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/runtime/collection/MutableVector;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const/16 v1, 0x29

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method
