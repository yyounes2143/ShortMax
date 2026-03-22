.class public abstract Landroidx/compose/material/ripple/Ripple;
.super Ljava/lang/Object;
.source "Ripple.kt"

# interfaces
.implements Landroidx/compose/foundation/Indication;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

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


# direct methods
.method private constructor <init>(ZFLandroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Landroidx/compose/material/ripple/Ripple;->bounded:Z

    .line 4
    iput p2, p0, Landroidx/compose/material/ripple/Ripple;->radius:F

    .line 5
    iput-object p3, p0, Landroidx/compose/material/ripple/Ripple;->color:Landroidx/compose/runtime/State;

    return-void
.end method

.method public synthetic constructor <init>(ZFLandroidx/compose/runtime/State;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material/ripple/Ripple;-><init>(ZFLandroidx/compose/runtime/State;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/material/ripple/Ripple;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    iget-boolean v1, p0, Landroidx/compose/material/ripple/Ripple;->bounded:Z

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/material/ripple/Ripple;

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/compose/material/ripple/Ripple;->bounded:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget v1, p0, Landroidx/compose/material/ripple/Ripple;->radius:F

    .line 21
    .line 22
    iget v3, p1, Landroidx/compose/material/ripple/Ripple;->radius:F

    .line 23
    .line 24
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->color:Landroidx/compose/runtime/State;

    .line 32
    .line 33
    iget-object p1, p1, Landroidx/compose/material/ripple/Ripple;->color:Landroidx/compose/runtime/State;

    .line 34
    .line 35
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/material/ripple/Ripple;->bounded:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/material/ripple/Ripple;->radius:F

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->color:Landroidx/compose/runtime/State;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    return v0
.end method

.method public final rememberUpdatedInstance(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/IndicationInstance;
    .locals 11
    .param p1    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "interactionSource"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x3aef0613

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Landroidx/compose/material/ripple/RippleThemeKt;->getLocalRippleTheme()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroidx/compose/material/ripple/RippleTheme;

    .line 21
    .line 22
    const v1, -0x5adb992e

    .line 23
    .line 24
    .line 25
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->color:Landroidx/compose/runtime/State;

    .line 29
    .line 30
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 37
    .line 38
    .line 39
    move-result-wide v1

    .line 40
    sget-object v3, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 41
    .line 42
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    .line 43
    .line 44
    .line 45
    move-result-wide v3

    .line 46
    cmp-long v1, v1, v3

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/compose/material/ripple/Ripple;->color:Landroidx/compose/runtime/State;

    .line 52
    .line 53
    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/compose/ui/graphics/Color;

    .line 58
    .line 59
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 60
    .line 61
    .line 62
    move-result-wide v3

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    invoke-interface {v0, p2, v2}, Landroidx/compose/material/ripple/RippleTheme;->defaultColor-WaAFU9c(Landroidx/compose/runtime/Composer;I)J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    :goto_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 69
    .line 70
    .line 71
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1, p2, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-interface {v0, p2, v2}, Landroidx/compose/material/ripple/RippleTheme;->rippleAlpha(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/ripple/RippleAlpha;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-static {v0, p2, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    iget-boolean v5, p0, Landroidx/compose/material/ripple/Ripple;->bounded:Z

    .line 88
    .line 89
    iget v6, p0, Landroidx/compose/material/ripple/Ripple;->radius:F

    .line 90
    .line 91
    and-int/lit8 v0, p3, 0xe

    .line 92
    .line 93
    shl-int/lit8 v1, p3, 0xc

    .line 94
    .line 95
    const/high16 v2, 0x70000

    .line 96
    .line 97
    and-int/2addr v1, v2

    .line 98
    or-int v10, v0, v1

    .line 99
    .line 100
    move-object v3, p0

    .line 101
    move-object v4, p1

    .line 102
    move-object v9, p2

    .line 103
    invoke-virtual/range {v3 .. v10}, Landroidx/compose/material/ripple/Ripple;->rememberUpdatedRippleInstance-942rkJo(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/ripple/RippleIndicationInstance;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    new-instance v1, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;

    .line 108
    .line 109
    const/4 v2, 0x0

    .line 110
    invoke-direct {v1, p1, v0, v2}, Landroidx/compose/material/ripple/Ripple$rememberUpdatedInstance$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/material/ripple/RippleIndicationInstance;Lrs/c;)V

    .line 111
    .line 112
    .line 113
    shl-int/lit8 p3, p3, 0x3

    .line 114
    .line 115
    and-int/lit8 p3, p3, 0x70

    .line 116
    .line 117
    or-int/lit8 p3, p3, 0x8

    .line 118
    .line 119
    invoke-static {v0, p1, v1, p2, p3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 120
    .line 121
    .line 122
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    .line 124
    .line 125
    return-object v0
.end method

.method public abstract rememberUpdatedRippleInstance-942rkJo(Landroidx/compose/foundation/interaction/InteractionSource;ZFLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/ripple/RippleIndicationInstance;
    .param p1    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroidx/compose/runtime/State;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "ZF",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/Color;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/material/ripple/RippleAlpha;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/material/ripple/RippleIndicationInstance;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
