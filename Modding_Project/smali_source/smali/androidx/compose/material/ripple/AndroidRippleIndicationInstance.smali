.class public final Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;
.super Landroidx/compose/material/ripple/RippleIndicationInstance;
.source "Ripple.android.kt"

# interfaces
.implements Landroidx/compose/runtime/RememberObserver;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bounded:Z

.field private final color:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final invalidateTick$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onInvalidateRipple:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final radius:F

.field private final rippleAlpha:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rippleContainer:Landroidx/compose/material/ripple/RippleContainer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rippleHostView$delegate:Landroidx/compose/runtime/MutableState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private rippleRadius:I

.field private rippleSize:J


# direct methods
.method private constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material/ripple/RippleContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;",
            "Landroidx/compose/material/ripple/RippleContainer;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p4}, Landroidx/compose/material/ripple/RippleIndicationInstance;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    .line 4
    iput p2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    .line 5
    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 6
    iput-object p4, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 7
    iput-object p5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    const/4 p1, 0x0

    const/4 p2, 0x2

    .line 8
    invoke-static {p1, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

    .line 9
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p3, p1, p2, p1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 10
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    move-result-wide p1

    iput-wide p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    const/4 p1, -0x1

    .line 11
    iput p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 12
    new-instance p1, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;

    invoke-direct {p1, p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance$onInvalidateRipple$1;-><init>(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    iput-object p1, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material/ripple/RippleContainer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/material/ripple/RippleContainer;)V

    return-void
.end method

.method public static final synthetic access$getInvalidateTick(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getInvalidateTick()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$setInvalidateTick(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->setInvalidateTick(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final dispose()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroidx/compose/material/ripple/RippleContainer;->disposeRippleIfNeeded(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final getInvalidateTick()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final getRippleHostView()Landroidx/compose/material/ripple/RippleHostView;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/compose/material/ripple/RippleHostView;

    .line 8
    .line 9
    return-object v0
.end method

.method private final setInvalidateTick(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->invalidateTick$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleHostView$delegate:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public addRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;Lgt/g0;)V
    .locals 10
    .param p1    # Landroidx/compose/foundation/interaction/PressInteraction$Press;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "interaction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleContainer:Landroidx/compose/material/ripple/RippleContainer;

    .line 12
    .line 13
    invoke-virtual {p2, p0}, Landroidx/compose/material/ripple/RippleContainer;->getRippleHostView(Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;)Landroidx/compose/material/ripple/RippleHostView;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iget-boolean v2, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    .line 18
    .line 19
    iget-wide v3, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    .line 20
    .line 21
    iget v5, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 22
    .line 23
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 24
    .line 25
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 30
    .line 31
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 32
    .line 33
    .line 34
    move-result-wide v6

    .line 35
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 36
    .line 37
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    iget-object v9, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->onInvalidateRipple:Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    move-object v0, p2

    .line 50
    move-object v1, p1

    .line 51
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/material/ripple/RippleHostView;->addRipple-KOepWvA(Landroidx/compose/foundation/interaction/PressInteraction$Press;ZJIJFLkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0, p2}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 9
    .param p1    # Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleSize:J

    .line 11
    .line 12
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    .line 13
    .line 14
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-boolean v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->bounded:Z

    .line 21
    .line 22
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 23
    .line 24
    .line 25
    move-result-wide v1

    .line 26
    invoke-static {p1, v0, v1, v2}, Landroidx/compose/material/ripple/RippleAnimationKt;->getRippleEndRadius-cSwnlzA(Landroidx/compose/ui/unit/Density;ZJ)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    .line 36
    .line 37
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    :goto_0
    iput v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 42
    .line 43
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 44
    .line 45
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 52
    .line 53
    .line 54
    move-result-wide v5

    .line 55
    iget-object v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 56
    .line 57
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Landroidx/compose/material/ripple/RippleAlpha;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 68
    .line 69
    .line 70
    iget v0, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->radius:F

    .line 71
    .line 72
    invoke-virtual {p0, p1, v0, v5, v6}, Landroidx/compose/material/ripple/RippleIndicationInstance;->drawStateLayer-H2RKhps(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V

    .line 73
    .line 74
    .line 75
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getInvalidateTick()Z

    .line 84
    .line 85
    .line 86
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getRippleHostView()Landroidx/compose/material/ripple/RippleHostView;

    .line 87
    .line 88
    .line 89
    move-result-object v8

    .line 90
    if-eqz v8, :cond_1

    .line 91
    .line 92
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 93
    .line 94
    .line 95
    move-result-wide v2

    .line 96
    iget v4, p0, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->rippleRadius:I

    .line 97
    .line 98
    move-object v1, v8

    .line 99
    invoke-virtual/range {v1 .. v7}, Landroidx/compose/material/ripple/RippleHostView;->updateRippleProperties-biQXAtU(JIJF)V

    .line 100
    .line 101
    .line 102
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {v8, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 107
    .line 108
    .line 109
    :cond_1
    return-void
.end method

.method public onAbandoned()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onForgotten()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->dispose()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 1
    return-void
.end method

.method public removeRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/interaction/PressInteraction$Press;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "interaction"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->getRippleHostView()Landroidx/compose/material/ripple/RippleHostView;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleHostView;->removeRipple()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final resetHostView()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/material/ripple/AndroidRippleIndicationInstance;->setRippleHostView(Landroidx/compose/material/ripple/RippleHostView;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
