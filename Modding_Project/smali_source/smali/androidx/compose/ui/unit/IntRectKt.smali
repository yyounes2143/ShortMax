.class public final Landroidx/compose/ui/unit/IntRectKt;
.super Ljava/lang/Object;
.source "IntRect.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final IntRect-E1MhUcY(JJ)Landroidx/compose/ui/unit/IntRect;
    .locals 2
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-direct {v0, v1, p0, p1, p2}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 20
    .line 21
    .line 22
    return-object v0
.end method

.method public static final IntRect-VbeCjmY(JJ)Landroidx/compose/ui/unit/IntRect;
    .locals 5
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    add-int/2addr v3, v4

    .line 20
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    add-int/2addr p0, p1

    .line 29
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public static final IntRect-ar5cAso(JI)Landroidx/compose/ui/unit/IntRect;
    .locals 4
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 2
    .line 3
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sub-int/2addr v1, p2

    .line 8
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    sub-int/2addr v2, p2

    .line 13
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getX-impl(J)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, p2

    .line 18
    invoke-static {p0, p1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    add-int/2addr p0, p2

    .line 23
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method

.method public static final lerp(Landroidx/compose/ui/unit/IntRect;Landroidx/compose/ui/unit/IntRect;F)Landroidx/compose/ui/unit/IntRect;
    .locals 5
    .param p0    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/IntRect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "start"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "stop"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/ui/unit/IntRect;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getLeft()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v1, v2, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getTop()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    invoke-static {v2, v3, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getRight()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-static {v3, v4, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntRect;->getBottom()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    invoke-static {p0, p1, p2}, Landroidx/compose/ui/util/MathHelpersKt;->lerp(IIF)I

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/ui/unit/IntRect;-><init>(IIII)V

    .line 62
    .line 63
    .line 64
    return-object v0
.end method
