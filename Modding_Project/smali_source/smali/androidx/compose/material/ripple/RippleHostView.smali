.class public final Landroidx/compose/material/ripple/RippleHostView;
.super Landroid/view/View;
.source "RippleHostView.android.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/material/ripple/RippleHostView$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/material/ripple/RippleHostView$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MinimumRippleStateChangeTime:J = 0x5L

.field private static final PressedState:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final ResetRippleDelayDuration:J = 0x32L

.field private static final RestingState:[I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private bounded:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lastRippleStateChangeTimeMillis:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private onInvalidateRipple:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private resetRippleRunnable:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ripple:Landroidx/compose/material/ripple/UnprojectedRipple;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/material/ripple/RippleHostView$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/material/ripple/RippleHostView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->Companion:Landroidx/compose/material/ripple/RippleHostView$Companion;

    .line 8
    .line 9
    const v0, 0x10100a7

    .line 10
    .line 11
    .line 12
    const v1, 0x101009e

    .line 13
    .line 14
    .line 15
    filled-new-array {v0, v1}, [I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->PressedState:[I

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    new-array v0, v0, [I

    .line 23
    .line 24
    sput-object v0, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 25
    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState$lambda-2(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final createRipple(Z)V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Landroidx/compose/material/ripple/UnprojectedRipple;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 10
    .line 11
    return-void
.end method

.method private final setRippleState(Z)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 13
    .line 14
    .line 15
    :cond_0
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->lastRippleStateChangeTimeMillis:Ljava/lang/Long;

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const-wide/16 v2, 0x0

    .line 25
    .line 26
    :goto_0
    sub-long v2, v0, v2

    .line 27
    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    const-wide/16 v4, 0x5

    .line 31
    .line 32
    cmp-long v2, v2, v4

    .line 33
    .line 34
    if-gez v2, :cond_2

    .line 35
    .line 36
    new-instance p1, Landroidx/compose/material/ripple/a;

    .line 37
    .line 38
    invoke-direct {p1, p0}, Landroidx/compose/material/ripple/a;-><init>(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 42
    .line 43
    const-wide/16 v2, 0x32

    .line 44
    .line 45
    invoke-virtual {p0, p1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_2
    if-eqz p1, :cond_3

    .line 50
    .line 51
    sget-object p1, Landroidx/compose/material/ripple/RippleHostView;->PressedState:[I

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    sget-object p1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 55
    .line 56
    :goto_1
    iget-object v2, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 57
    .line 58
    if-nez v2, :cond_4

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iput-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->lastRippleStateChangeTimeMillis:Ljava/lang/Long;

    .line 69
    .line 70
    return-void
.end method

.method private static final setRippleState$lambda-2(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 2

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 14
    .line 15
    .line 16
    :goto_0
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V
    .locals 11
    .param p1    # Landroidx/compose/foundation/interaction/PressInteraction$Press;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            "ZJIJF",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v7, p0

    .line 2
    move v8, p2

    .line 3
    move-object/from16 v0, p9

    .line 4
    .line 5
    const-string v1, "interaction"

    .line 6
    .line 7
    move-object v9, p1

    .line 8
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "onInvalidateRipple"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, v7, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v2, v7, Landroidx/compose/material/ripple/RippleHostView;->bounded:Ljava/lang/Boolean;

    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-nez v1, :cond_1

    .line 31
    .line 32
    :cond_0
    invoke-direct {p0, p2}, Landroidx/compose/material/ripple/RippleHostView;->createRipple(Z)V

    .line 33
    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v7, Landroidx/compose/material/ripple/RippleHostView;->bounded:Ljava/lang/Boolean;

    .line 40
    .line 41
    :cond_1
    iget-object v10, v7, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 42
    .line 43
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    iput-object v0, v7, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    .line 47
    .line 48
    move-object v0, p0

    .line 49
    move-wide v1, p3

    .line 50
    move/from16 v3, p5

    .line 51
    .line 52
    move-wide/from16 v4, p6

    .line 53
    .line 54
    move/from16 v6, p8

    .line 55
    .line 56
    invoke-virtual/range {v0 .. v6}, Landroidx/compose/material/ripple/RippleHostView;->updateRippleProperties-biQXAtU(JIJF)V

    .line 57
    .line 58
    .line 59
    if-eqz v8, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->getPressPosition-F1C5BW0()J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->getPressPosition-F1C5BW0()J

    .line 70
    .line 71
    .line 72
    move-result-wide v1

    .line 73
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    int-to-float v0, v0

    .line 90
    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    int-to-float v1, v1

    .line 99
    invoke-virtual {v10, v0, v1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 100
    .line 101
    .line 102
    :goto_0
    const/4 v0, 0x1

    .line 103
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    .line 104
    .line 105
    .line 106
    return-void
.end method

.method public final disposeRipple()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    .line 3
    .line 4
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->resetRippleRunnable:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    sget-object v1, Landroidx/compose/material/ripple/RippleHostView;->RestingState:[I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 28
    .line 29
    .line 30
    :goto_0
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Landroid/view/View;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "who"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Landroidx/compose/material/ripple/RippleHostView;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public refreshDrawableState()V
    .locals 0

    .line 1
    return-void
.end method

.method public final removeRipple()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/RippleHostView;->setRippleState(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final updateRippleProperties-biQXAtU(JIJF)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/RippleHostView;->ripple:Landroidx/compose/material/ripple/UnprojectedRipple;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p3}, Landroidx/compose/material/ripple/UnprojectedRipple;->trySetRadius(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4, p5, p6}, Landroidx/compose/material/ripple/UnprojectedRipple;->setColor-DxMtmZc(JF)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/SizeKt;->toRect-uvyYCjk(J)Landroidx/compose/ui/geometry/Rect;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Landroidx/compose/ui/graphics/RectHelper_androidKt;->toAndroidRect(Landroidx/compose/ui/geometry/Rect;)Landroid/graphics/Rect;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 21
    .line 22
    invoke-virtual {p0, p2}, Landroid/view/View;->setLeft(I)V

    .line 23
    .line 24
    .line 25
    iget p2, p1, Landroid/graphics/Rect;->top:I

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroid/view/View;->setTop(I)V

    .line 28
    .line 29
    .line 30
    iget p2, p1, Landroid/graphics/Rect;->right:I

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Landroid/view/View;->setRight(I)V

    .line 33
    .line 34
    .line 35
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 36
    .line 37
    invoke-virtual {p0, p2}, Landroid/view/View;->setBottom(I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
