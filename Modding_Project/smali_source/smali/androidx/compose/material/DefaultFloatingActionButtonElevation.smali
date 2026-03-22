.class final Landroidx/compose/material/DefaultFloatingActionButtonElevation;
.super Ljava/lang/Object;
.source "FloatingActionButton.kt"

# interfaces
.implements Landroidx/compose/material/FloatingActionButtonElevation;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final defaultElevation:F

.field private final focusedElevation:F

.field private final hoveredElevation:F

.field private final pressedElevation:F


# direct methods
.method private constructor <init>(FFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    .line 4
    iput p2, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    .line 5
    iput p3, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    .line 6
    iput p4, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/material/DefaultFloatingActionButtonElevation;-><init>(FFFF)V

    return-void
.end method

.method public static final synthetic access$getFocusedElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getHoveredElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPressedElevation$p(Landroidx/compose/material/DefaultFloatingActionButtonElevation;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public elevation(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 9
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/interaction/InteractionSource;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/unit/Dp;",
            ">;"
        }
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
    const v0, -0x1c84f447

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    const v0, -0x1d58f75c

    .line 13
    .line 14
    .line 15
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 23
    .line 24
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-ne v1, v3, :cond_0

    .line 29
    .line 30
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p2, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 38
    .line 39
    .line 40
    check-cast v1, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 41
    .line 42
    new-instance v3, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$1;

    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    invoke-direct {v3, p1, v1, v4}, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lrs/c;)V

    .line 46
    .line 47
    .line 48
    and-int/lit8 p3, p3, 0xe

    .line 49
    .line 50
    invoke-static {p1, v3, p2, p3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 51
    .line 52
    .line 53
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    move-object v7, p1

    .line 58
    check-cast v7, Landroidx/compose/foundation/interaction/Interaction;

    .line 59
    .line 60
    instance-of p1, v7, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->pressedElevation:F

    .line 65
    .line 66
    :goto_0
    move v6, p1

    .line 67
    goto :goto_1

    .line 68
    :cond_1
    instance-of p1, v7, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 69
    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->hoveredElevation:F

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    instance-of p1, v7, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 76
    .line 77
    if-eqz p1, :cond_3

    .line 78
    .line 79
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->focusedElevation:F

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    iget p1, p0, Landroidx/compose/material/DefaultFloatingActionButtonElevation;->defaultElevation:F

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :goto_1
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 86
    .line 87
    .line 88
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p3

    .line 96
    if-ne p1, p3, :cond_4

    .line 97
    .line 98
    new-instance p1, Landroidx/compose/animation/core/Animatable;

    .line 99
    .line 100
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    sget-object p3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 105
    .line 106
    invoke-static {p3}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    const/4 v4, 0x4

    .line 111
    const/4 v5, 0x0

    .line 112
    const/4 v3, 0x0

    .line 113
    move-object v0, p1

    .line 114
    invoke-direct/range {v0 .. v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 115
    .line 116
    .line 117
    invoke-interface {p2, p1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    .line 119
    .line 120
    :cond_4
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 121
    .line 122
    .line 123
    check-cast p1, Landroidx/compose/animation/core/Animatable;

    .line 124
    .line 125
    invoke-static {v6}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 126
    .line 127
    .line 128
    move-result-object p3

    .line 129
    new-instance v0, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$2;

    .line 130
    .line 131
    const/4 v8, 0x0

    .line 132
    move-object v3, v0

    .line 133
    move-object v4, p1

    .line 134
    move-object v5, p0

    .line 135
    invoke-direct/range {v3 .. v8}, Landroidx/compose/material/DefaultFloatingActionButtonElevation$elevation$2;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material/DefaultFloatingActionButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lrs/c;)V

    .line 136
    .line 137
    .line 138
    const/4 v1, 0x0

    .line 139
    invoke-static {p3, v0, p2, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 147
    .line 148
    .line 149
    return-object p1
.end method
