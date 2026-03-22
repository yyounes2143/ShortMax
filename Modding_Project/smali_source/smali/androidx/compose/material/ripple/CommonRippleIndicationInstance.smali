.class public final Landroidx/compose/material/ripple/CommonRippleIndicationInstance;
.super Landroidx/compose/material/ripple/RippleIndicationInstance;
.source "CommonRipple.kt"

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

.field private final ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/snapshots/SnapshotStateMap<",
            "Landroidx/compose/foundation/interaction/PressInteraction$Press;",
            "Landroidx/compose/material/ripple/RippleAnimation;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p4}, Landroidx/compose/material/ripple/RippleIndicationInstance;-><init>(ZLandroidx/compose/runtime/State;)V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->bounded:Z

    .line 4
    iput p2, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->radius:F

    .line 5
    iput-object p3, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 6
    iput-object p4, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 7
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateMapOf()Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;-><init>(ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    return-void
.end method

.method public static final synthetic access$getRipples$p(Landroidx/compose/material/ripple/CommonRippleIndicationInstance;)Landroidx/compose/runtime/snapshots/SnapshotStateMap;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 2
    .line 3
    return-object p0
.end method

.method private final drawRipples-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroidx/compose/material/ripple/RippleAnimation;

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->rippleAlpha:Landroidx/compose/runtime/State;

    .line 30
    .line 31
    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroidx/compose/material/ripple/RippleAlpha;

    .line 36
    .line 37
    invoke-virtual {v2}, Landroidx/compose/material/ripple/RippleAlpha;->getPressedAlpha()F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/4 v2, 0x0

    .line 42
    cmpg-float v2, v5, v2

    .line 43
    .line 44
    if-nez v2, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/16 v9, 0xe

    .line 48
    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v6, 0x0

    .line 51
    const/4 v7, 0x0

    .line 52
    const/4 v8, 0x0

    .line 53
    move-wide v3, p2

    .line 54
    invoke-static/range {v3 .. v10}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v2

    .line 58
    invoke-virtual {v1, p1, v2, v3}, Landroidx/compose/material/ripple/RippleAnimation;->draw-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    return-void
.end method


# virtual methods
.method public addRipple(Landroidx/compose/foundation/interaction/PressInteraction$Press;Lgt/g0;)V
    .locals 9
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
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/util/Map$Entry;

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroidx/compose/material/ripple/RippleAnimation;

    .line 38
    .line 39
    invoke-virtual {v1}, Landroidx/compose/material/ripple/RippleAnimation;->finish()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-boolean v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->bounded:Z

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Landroidx/compose/foundation/interaction/PressInteraction$Press;->getPressPosition-F1C5BW0()J

    .line 49
    .line 50
    .line 51
    move-result-wide v2

    .line 52
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object v0, v1

    .line 58
    :goto_1
    new-instance v2, Landroidx/compose/material/ripple/RippleAnimation;

    .line 59
    .line 60
    iget v3, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->radius:F

    .line 61
    .line 62
    iget-boolean v4, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->bounded:Z

    .line 63
    .line 64
    invoke-direct {v2, v0, v3, v4, v1}, Landroidx/compose/material/ripple/RippleAnimation;-><init>(Landroidx/compose/ui/geometry/Offset;FZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 68
    .line 69
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    new-instance v6, Landroidx/compose/material/ripple/CommonRippleIndicationInstance$addRipple$2;

    .line 73
    .line 74
    invoke-direct {v6, v2, p0, p1, v1}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance$addRipple$2;-><init>(Landroidx/compose/material/ripple/RippleAnimation;Landroidx/compose/material/ripple/CommonRippleIndicationInstance;Landroidx/compose/foundation/interaction/PressInteraction$Press;Lrs/c;)V

    .line 75
    .line 76
    .line 77
    const/4 v7, 0x3

    .line 78
    const/4 v8, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    const/4 v5, 0x0

    .line 81
    move-object v3, p2

    .line 82
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method public drawIndication(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V
    .locals 3
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
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->color:Landroidx/compose/runtime/State;

    .line 7
    .line 8
    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Landroidx/compose/ui/graphics/Color;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;->drawContent()V

    .line 19
    .line 20
    .line 21
    iget v2, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->radius:F

    .line 22
    .line 23
    invoke-virtual {p0, p1, v2, v0, v1}, Landroidx/compose/material/ripple/RippleIndicationInstance;->drawStateLayer-H2RKhps(Landroidx/compose/ui/graphics/drawscope/DrawScope;FJ)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0, p1, v0, v1}, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->drawRipples-4WTKRHQ(Landroidx/compose/ui/graphics/drawscope/DrawScope;J)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onAbandoned()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onForgotten()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->clear()V

    .line 4
    .line 5
    .line 6
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
    iget-object v0, p0, Landroidx/compose/material/ripple/CommonRippleIndicationInstance;->ripples:Landroidx/compose/runtime/snapshots/SnapshotStateMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/snapshots/SnapshotStateMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Landroidx/compose/material/ripple/RippleAnimation;

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroidx/compose/material/ripple/RippleAnimation;->finish()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
