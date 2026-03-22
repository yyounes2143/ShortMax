.class final Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;
.super Ljava/lang/Object;
.source "SystemGestureExclusion.kt"

# interfaces
.implements Landroidx/compose/ui/layout/OnGloballyPositionedModifier;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final exclusion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rect:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "view"

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
    iput-object p1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 10
    .line 11
    iput-object p2, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->exclusion:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method private final calcBounds(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;
    .locals 18

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    invoke-direct/range {p0 .. p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getTopLeft-F1C5BW0()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-interface {v1, v0, v2, v3}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getTopRight-F1C5BW0()J

    .line 16
    .line 17
    .line 18
    move-result-wide v4

    .line 19
    invoke-interface {v1, v0, v4, v5}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 20
    .line 21
    .line 22
    move-result-wide v4

    .line 23
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getBottomLeft-F1C5BW0()J

    .line 24
    .line 25
    .line 26
    move-result-wide v6

    .line 27
    invoke-interface {v1, v0, v6, v7}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/geometry/Rect;->getBottomRight-F1C5BW0()J

    .line 32
    .line 33
    .line 34
    move-result-wide v8

    .line 35
    invoke-interface {v1, v0, v8, v9}, Landroidx/compose/ui/layout/LayoutCoordinates;->localPositionOf-R5De75A(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 40
    .line 41
    .line 42
    move-result v8

    .line 43
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 44
    .line 45
    .line 46
    move-result v9

    .line 47
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 48
    .line 49
    .line 50
    move-result v10

    .line 51
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 52
    .line 53
    .line 54
    move-result v11

    .line 55
    const/4 v12, 0x3

    .line 56
    new-array v13, v12, [F

    .line 57
    .line 58
    const/4 v14, 0x0

    .line 59
    aput v9, v13, v14

    .line 60
    .line 61
    const/4 v9, 0x1

    .line 62
    aput v10, v13, v9

    .line 63
    .line 64
    const/4 v10, 0x2

    .line 65
    aput v11, v13, v10

    .line 66
    .line 67
    invoke-static {v8, v13}, Lps/a;->g(F[F)F

    .line 68
    .line 69
    .line 70
    move-result v8

    .line 71
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 72
    .line 73
    .line 74
    move-result v11

    .line 75
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 76
    .line 77
    .line 78
    move-result v13

    .line 79
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 84
    .line 85
    .line 86
    move-result v16

    .line 87
    new-array v10, v12, [F

    .line 88
    .line 89
    aput v13, v10, v14

    .line 90
    .line 91
    aput v15, v10, v9

    .line 92
    .line 93
    const/4 v13, 0x2

    .line 94
    aput v16, v10, v13

    .line 95
    .line 96
    invoke-static {v11, v10}, Lps/a;->g(F[F)F

    .line 97
    .line 98
    .line 99
    move-result v10

    .line 100
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 101
    .line 102
    .line 103
    move-result v11

    .line 104
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 105
    .line 106
    .line 107
    move-result v15

    .line 108
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 109
    .line 110
    .line 111
    move-result v16

    .line 112
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 113
    .line 114
    .line 115
    move-result v17

    .line 116
    new-array v13, v12, [F

    .line 117
    .line 118
    aput v15, v13, v14

    .line 119
    .line 120
    aput v16, v13, v9

    .line 121
    .line 122
    const/4 v15, 0x2

    .line 123
    aput v17, v13, v15

    .line 124
    .line 125
    invoke-static {v11, v13}, Lps/a;->e(F[F)F

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-static {v4, v5}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 134
    .line 135
    .line 136
    move-result v3

    .line 137
    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    new-array v1, v12, [F

    .line 146
    .line 147
    aput v3, v1, v14

    .line 148
    .line 149
    aput v4, v1, v9

    .line 150
    .line 151
    aput v0, v1, v15

    .line 152
    .line 153
    invoke-static {v2, v1}, Lps/a;->e(F[F)F

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    new-instance v1, Landroid/graphics/Rect;

    .line 158
    .line 159
    invoke-static {v8}, Lbt/a;->c(F)I

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    invoke-static {v10}, Lbt/a;->c(F)I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-static {v11}, Lbt/a;->c(F)I

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    .line 177
    .line 178
    return-object v1
.end method

.method private final findRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 2

    .line 1
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :goto_0
    move-object v1, v0

    .line 6
    move-object v0, p1

    .line 7
    move-object p1, v1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-object v0
.end method


# virtual methods
.method public final getExclusion()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/layout/LayoutCoordinates;",
            "Landroidx/compose/ui/geometry/Rect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->exclusion:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRect()Landroid/graphics/Rect;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->rect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public onGloballyPositioned(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "coordinates"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->exclusion:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->boundsInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/geometry/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Landroidx/compose/ui/geometry/Rect;

    .line 24
    .line 25
    invoke-direct {p0, p1, v0}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->calcBounds(Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->replaceRect(Landroid/graphics/Rect;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final removeRect()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->replaceRect(Landroid/graphics/Rect;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final replaceRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroidx/compose/runtime/collection/MutableVector;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v1, v1, [Landroid/graphics/Rect;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v0, v1, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/foundation/a;->a(Landroid/view/View;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "view.systemGestureExclusionRects"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->getSize()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-virtual {v0, v2, v1}, Landroidx/compose/runtime/collection/MutableVector;->addAll(ILjava/util/List;)Z

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->rect:Landroid/graphics/Rect;

    .line 30
    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroidx/compose/runtime/collection/MutableVector;->remove(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    :cond_0
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->view:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->asMutableList()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroidx/compose/foundation/b;->a(Landroid/view/View;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->rect:Landroid/graphics/Rect;

    .line 57
    .line 58
    return-void
.end method

.method public final setRect(Landroid/graphics/Rect;)V
    .locals 0
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/ExcludeFromSystemGestureModifier;->rect:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-void
.end method
