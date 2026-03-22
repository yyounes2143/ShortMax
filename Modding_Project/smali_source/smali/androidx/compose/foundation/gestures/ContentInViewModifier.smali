.class final Landroidx/compose/foundation/gestures/ContentInViewModifier;
.super Ljava/lang/Object;
.source "Scrollable.kt"

# interfaces
.implements Landroidx/compose/foundation/relocation/BringIntoViewResponder;
.implements Landroidx/compose/ui/layout/OnRemeasuredModifier;
.implements Landroidx/compose/ui/layout/OnPlacedModifier;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final modifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private oldSize:Landroidx/compose/ui/unit/IntSize;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final orientation:Landroidx/compose/foundation/gestures/Orientation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final reverseDirection:Z

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/g0;Landroidx/compose/foundation/gestures/Orientation;Landroidx/compose/foundation/gestures/ScrollableState;Z)V
    .locals 1
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/gestures/Orientation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/gestures/ScrollableState;
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
    const-string v0, "orientation"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "scrollableState"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scope:Lgt/g0;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 24
    .line 25
    iput-boolean p4, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->reverseDirection:Z

    .line 26
    .line 27
    new-instance p1, Landroidx/compose/foundation/gestures/ContentInViewModifier$modifier$1;

    .line 28
    .line 29
    invoke-direct {p1, p0}, Landroidx/compose/foundation/gestures/ContentInViewModifier$modifier$1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewModifier;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p0, p1}, Landroidx/compose/foundation/FocusedBoundsKt;->onFocusedBoundsChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p1, p0}, Landroidx/compose/foundation/relocation/BringIntoViewResponderKt;->bringIntoViewResponder(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/relocation/BringIntoViewResponder;)Landroidx/compose/ui/Modifier;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->modifier:Landroidx/compose/ui/Modifier;

    .line 41
    .line 42
    return-void
.end method

.method public static final synthetic access$performBringIntoView(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->performBringIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$setFocusedChild$p(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    return-void
.end method

.method private final computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;
    .locals 3

    .line 1
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p2

    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    aget v0, v1, v0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-eq v0, v1, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x2

    .line 20
    if-ne v0, v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getRight()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->relocationDistance(FFF)F

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-virtual {p1, p2, v2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 44
    .line 45
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 46
    .line 47
    .line 48
    throw p1

    .line 49
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getBottom()F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-direct {p0, v0, v1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->relocationDistance(FFF)F

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    invoke-virtual {p1, v2, p2}, Landroidx/compose/ui/geometry/Rect;->translate(FF)Landroidx/compose/ui/geometry/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    :goto_0
    return-object p1
.end method

.method private final onSizeChanged-O0kMr_c(Landroidx/compose/ui/layout/LayoutCoordinates;J)V
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/Orientation;->Horizontal:Landroidx/compose/foundation/gestures/Orientation;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 23
    .line 24
    .line 25
    move-result-wide v0

    .line 26
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ge v0, v1, :cond_1

    .line 35
    .line 36
    :goto_0
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->focusedChild:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    invoke-interface {p1, v0, v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    sget-object v1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 54
    .line 55
    .line 56
    move-result-wide p2

    .line 57
    invoke-static {v1, v2, p2, p3}, Landroidx/compose/ui/geometry/RectKt;->Rect-tz77jQw(JJ)Landroidx/compose/ui/geometry/Rect;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 62
    .line 63
    .line 64
    move-result-wide v1

    .line 65
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {p2, v0}, Landroidx/compose/ui/geometry/Rect;->overlaps(Landroidx/compose/ui/geometry/Rect;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result p3

    .line 77
    if-eqz p2, :cond_1

    .line 78
    .line 79
    if-nez p3, :cond_1

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scope:Lgt/g0;

    .line 82
    .line 83
    new-instance v4, Landroidx/compose/foundation/gestures/ContentInViewModifier$onSizeChanged$1;

    .line 84
    .line 85
    const/4 p2, 0x0

    .line 86
    invoke-direct {v4, p0, v0, p1, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier$onSizeChanged$1;-><init>(Landroidx/compose/foundation/gestures/ContentInViewModifier;Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lrs/c;)V

    .line 87
    .line 88
    .line 89
    const/4 v5, 0x3

    .line 90
    const/4 v6, 0x0

    .line 91
    const/4 v2, 0x0

    .line 92
    const/4 v3, 0x0

    .line 93
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 94
    .line 95
    .line 96
    :cond_1
    return-void
.end method

.method private final performBringIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->orientation:Landroidx/compose/foundation/gestures/Orientation;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/foundation/gestures/ContentInViewModifier$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getLeft()F

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    :goto_0
    sub-float/2addr p1, p2

    .line 26
    goto :goto_1

    .line 27
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 28
    .line 29
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Rect;->getTop()F

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    goto :goto_0

    .line 42
    :goto_1
    iget-boolean p2, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->reverseDirection:Z

    .line 43
    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    neg-float p1, p1

    .line 47
    :cond_2
    move v1, p1

    .line 48
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->scrollableState:Landroidx/compose/foundation/gestures/ScrollableState;

    .line 49
    .line 50
    const/4 v4, 0x2

    .line 51
    const/4 v5, 0x0

    .line 52
    const/4 v2, 0x0

    .line 53
    move-object v3, p3

    .line 54
    invoke-static/range {v0 .. v5}, Landroidx/compose/foundation/gestures/ScrollExtensionsKt;->animateScrollBy$default(Landroidx/compose/foundation/gestures/ScrollableState;FLandroidx/compose/animation/core/AnimationSpec;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-ne p1, p2, :cond_3

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object p1
.end method

.method private final relocationDistance(FFF)F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpl-float v1, p1, v0

    .line 3
    .line 4
    if-ltz v1, :cond_0

    .line 5
    .line 6
    cmpg-float v1, p2, p3

    .line 7
    .line 8
    if-gtz v1, :cond_0

    .line 9
    .line 10
    :goto_0
    move p1, v0

    .line 11
    goto :goto_1

    .line 12
    :cond_0
    cmpg-float v1, p1, v0

    .line 13
    .line 14
    if-gez v1, :cond_1

    .line 15
    .line 16
    cmpl-float v1, p2, p3

    .line 17
    .line 18
    if-lez v1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sub-float/2addr p2, p3

    .line 26
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    cmpg-float p3, v0, p3

    .line 31
    .line 32
    if-gez p3, :cond_2

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_2
    move p1, p2

    .line 36
    :goto_1
    return p1
.end method


# virtual methods
.method public bringChildIntoView(Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/geometry/Rect;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, p1, v0, p2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->performBringIntoView(Landroidx/compose/ui/geometry/Rect;Landroidx/compose/ui/geometry/Rect;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public calculateRectForParent(Landroidx/compose/ui/geometry/Rect;)Landroidx/compose/ui/geometry/Rect;
    .locals 2
    .param p1    # Landroidx/compose/ui/geometry/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "localRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->computeDestination-O0kMr_c(Landroidx/compose/ui/geometry/Rect;J)Landroidx/compose/ui/geometry/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 20
    .line 21
    const-string v0, "Expected BringIntoViewRequester to not be used before parents are placed."

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->modifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
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
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 7
    .line 8
    return-void
.end method

.method public onRemeasured-ozmzZPI(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->coordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    invoke-static {v2, v3, p1, p2}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    if-ne v2, v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-direct {p0, v0, v1, v2}, Landroidx/compose/foundation/gestures/ContentInViewModifier;->onSizeChanged-O0kMr_c(Landroidx/compose/ui/layout/LayoutCoordinates;J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    iput-object p1, p0, Landroidx/compose/foundation/gestures/ContentInViewModifier;->oldSize:Landroidx/compose/ui/unit/IntSize;

    .line 38
    .line 39
    return-void
.end method
