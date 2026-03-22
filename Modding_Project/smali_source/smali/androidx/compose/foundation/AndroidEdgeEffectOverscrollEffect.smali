.class public final Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;
.super Ljava/lang/Object;
.source "AndroidOverscroll.kt"

# interfaces
.implements Landroidx/compose/foundation/OverscrollEffect;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final allEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/EdgeEffect;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bottomEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bottomEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private containerSize:J

.field private final effectModifier:Landroidx/compose/ui/Modifier;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private invalidationEnabled:Z

.field private isEnabled:Z

.field private final isEnabledState:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final leftEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final leftEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final onNewSize:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/unit/IntSize;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final redrawSignal:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rightEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rightEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private scrollCycleInProgress:Z

.field private final topEffect:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final topEffectNegation:Landroid/widget/EdgeEffect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/foundation/OverscrollConfiguration;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/foundation/OverscrollConfiguration;
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
    const-string v0, "overscrollConfig"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 15
    .line 16
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 30
    .line 31
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iput-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 36
    .line 37
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    iput-object v4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 42
    .line 43
    filled-new-array {v3, v1, v4, v2}, [Landroid/widget/EdgeEffect;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iput-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 58
    .line 59
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iput-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 70
    .line 71
    invoke-virtual {p2, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->create(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/EdgeEffect;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const/4 p2, 0x0

    .line 82
    :goto_0
    if-ge p2, p1, :cond_0

    .line 83
    .line 84
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/widget/EdgeEffect;

    .line 89
    .line 90
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 91
    .line 92
    invoke-virtual {v3}, Landroidx/compose/foundation/OverscrollConfiguration;->getGlowColor-0d7_KjU()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/ColorKt;->toArgb-8_81llA(J)I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-virtual {v2, v3}, Landroid/widget/EdgeEffect;->setColor(I)V

    .line 101
    .line 102
    .line 103
    add-int/lit8 p2, p2, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->neverEqualPolicy()Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 109
    .line 110
    .line 111
    move-result-object p2

    .line 112
    invoke-static {p1, p2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;)Landroidx/compose/runtime/MutableState;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 117
    .line 118
    const/4 p1, 0x1

    .line 119
    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 120
    .line 121
    sget-object p1, Landroidx/compose/ui/geometry/Size;->Companion:Landroidx/compose/ui/geometry/Size$Companion;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size$Companion;->getZero-NH-jbRc()J

    .line 124
    .line 125
    .line 126
    move-result-wide p1

    .line 127
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 128
    .line 129
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 130
    .line 131
    const/4 p2, 0x2

    .line 132
    invoke-static {p1, v0, p2, v0}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 137
    .line 138
    new-instance p1, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;

    .line 139
    .line 140
    invoke-direct {p1, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$onNewSize$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    .line 141
    .line 142
    .line 143
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->onNewSize:Lkotlin/jvm/functions/Function1;

    .line 144
    .line 145
    sget-object p2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 146
    .line 147
    invoke-static {}, Landroidx/compose/foundation/AndroidOverscrollKt;->access$getStretchOverscrollNonClippingLayer$p()Landroidx/compose/ui/Modifier;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {p2, v0}, Landroidx/compose/ui/Modifier$Companion;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 152
    .line 153
    .line 154
    move-result-object p2

    .line 155
    invoke-static {p2, p1}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    new-instance p2, Landroidx/compose/foundation/DrawOverscrollModifier;

    .line 160
    .line 161
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->isDebugInspectorInfoEnabled()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_1

    .line 166
    .line 167
    new-instance v0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;

    .line 168
    .line 169
    invoke-direct {v0, p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect$special$$inlined$debugInspectorInfo$1;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V

    .line 170
    .line 171
    .line 172
    goto :goto_1

    .line 173
    :cond_1
    invoke-static {}, Landroidx/compose/ui/platform/InspectableValueKt;->getNoInspectorInfo()Lkotlin/jvm/functions/Function1;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    :goto_1
    invoke-direct {p2, p0, v0}, Landroidx/compose/foundation/DrawOverscrollModifier;-><init>(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;Lkotlin/jvm/functions/Function1;)V

    .line 178
    .line 179
    .line 180
    invoke-interface {p1, p2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    iput-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    .line 185
    .line 186
    return-void
.end method

.method public static final synthetic access$animateToRelease(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getBottomEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getBottomEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getContainerSize$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getLeftEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getLeftEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRightEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getRightEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTopEffect$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getTopEffectNegation$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)Landroid/widget/EdgeEffect;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$invalidateOverscroll(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setContainerSize$p(Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 2
    .line 3
    return-void
.end method

.method private final animateToRelease()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    move v4, v3

    .line 10
    :goto_0
    if-ge v3, v1, :cond_2

    .line 11
    .line 12
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v5

    .line 16
    check-cast v5, Landroid/widget/EdgeEffect;

    .line 17
    .line 18
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    if-nez v5, :cond_1

    .line 26
    .line 27
    if-eqz v4, :cond_0

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move v4, v2

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    :goto_1
    const/4 v4, 0x1

    .line 33
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    if-eqz v4, :cond_3

    .line 37
    .line 38
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 39
    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method private final drawBottom(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x43340000    # 180.0f

    .line 6
    .line 7
    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateBottomPadding-D9Ej5fM()F

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 25
    .line 26
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    neg-float v1, v1

    .line 31
    iget-wide v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 32
    .line 33
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    neg-float v2, v2

    .line 38
    add-float/2addr v2, p1

    .line 39
    invoke-virtual {p3, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 47
    .line 48
    .line 49
    return p1
.end method

.method private final drawLeft(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/high16 v1, 0x43870000    # 270.0f

    .line 6
    .line 7
    invoke-virtual {p3, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 8
    .line 9
    .line 10
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 11
    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    neg-float v1, v1

    .line 17
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateLeftPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 43
    .line 44
    .line 45
    return p1
.end method

.method private final drawRight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-wide v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v2, v3}, Landroidx/compose/foundation/layout/PaddingValues;->calculateRightPadding-u2uoSUM(Landroidx/compose/ui/unit/LayoutDirection;)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/high16 v3, 0x42b40000    # 90.0f

    .line 30
    .line 31
    invoke-virtual {p3, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 32
    .line 33
    .line 34
    int-to-float v1, v1

    .line 35
    neg-float v1, v1

    .line 36
    invoke-interface {p1, v2}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    add-float/2addr v1, p1

    .line 41
    const/4 p1, 0x0

    .line 42
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 50
    .line 51
    .line 52
    return p1
.end method

.method private final drawTop(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Landroid/graphics/Canvas;->save()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->overscrollConfig:Landroidx/compose/foundation/OverscrollConfiguration;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/foundation/OverscrollConfiguration;->getDrawPadding()Landroidx/compose/foundation/layout/PaddingValues;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Landroidx/compose/foundation/layout/PaddingValues;->calculateTopPadding-D9Ej5fM()F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-interface {p1, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p3}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-virtual {p3, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 28
    .line 29
    .line 30
    return p1
.end method

.method public static synthetic getInvalidationEnabled$foundation_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method

.method private final invalidateOverscroll()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 6
    .line 7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-interface {v0, v1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final pullBottom-0a9Yr6o(JJ)F
    .locals 2

    .line 1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 24
    .line 25
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    neg-float p1, p1

    .line 28
    const/4 v0, 0x1

    .line 29
    int-to-float v0, v0

    .line 30
    sub-float/2addr v0, p3

    .line 31
    invoke-virtual {p2, p4, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    neg-float p1, p1

    .line 36
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 37
    .line 38
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    mul-float/2addr p1, p2

    .line 43
    return p1
.end method

.method private final pullLeft-0a9Yr6o(JJ)F
    .locals 2

    .line 1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 24
    .line 25
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    int-to-float v0, v0

    .line 29
    sub-float/2addr v0, p3

    .line 30
    invoke-virtual {p2, p4, p1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 35
    .line 36
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    mul-float/2addr p1, p2

    .line 41
    return p1
.end method

.method private final pullRight-0a9Yr6o(JJ)F
    .locals 2

    .line 1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 24
    .line 25
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    neg-float p1, p1

    .line 28
    invoke-virtual {p2, p4, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    neg-float p1, p1

    .line 33
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 34
    .line 35
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    mul-float/2addr p1, p2

    .line 40
    return p1
.end method

.method private final pullTop-0a9Yr6o(JJ)F
    .locals 2

    .line 1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    div-float/2addr p3, p4

    .line 12
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 17
    .line 18
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    div-float/2addr p1, p2

    .line 23
    sget-object p2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 24
    .line 25
    iget-object p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {p2, p4, p1, p3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iget-wide p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 32
    .line 33
    invoke-static {p2, p3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    mul-float/2addr p1, p2

    .line 38
    return p1
.end method

.method private final releaseOppositeOverscroll-k-4lQ0M(J)Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    cmpg-float v0, v0, v1

    .line 16
    .line 17
    if-gez v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 25
    .line 26
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v2

    .line 32
    :goto_0
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 33
    .line 34
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/4 v4, 0x1

    .line 39
    if-nez v3, :cond_3

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    cmpl-float v3, v3, v1

    .line 46
    .line 47
    if-lez v3, :cond_3

    .line 48
    .line 49
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 50
    .line 51
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 52
    .line 53
    .line 54
    if-nez v0, :cond_2

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v0, v2

    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    move v0, v4

    .line 68
    :cond_3
    :goto_2
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 69
    .line 70
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-nez v3, :cond_6

    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    cmpg-float v3, v3, v1

    .line 81
    .line 82
    if-gez v3, :cond_6

    .line 83
    .line 84
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 85
    .line 86
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 87
    .line 88
    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_4

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_4
    move v0, v2

    .line 101
    goto :goto_4

    .line 102
    :cond_5
    :goto_3
    move v0, v4

    .line 103
    :cond_6
    :goto_4
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 104
    .line 105
    invoke-virtual {v3}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 106
    .line 107
    .line 108
    move-result v3

    .line 109
    if-nez v3, :cond_9

    .line 110
    .line 111
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    cmpl-float p1, p1, v1

    .line 116
    .line 117
    if-lez p1, :cond_9

    .line 118
    .line 119
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 120
    .line 121
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 122
    .line 123
    .line 124
    if-nez v0, :cond_7

    .line 125
    .line 126
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_8

    .line 133
    .line 134
    :cond_7
    move v2, v4

    .line 135
    :cond_8
    move v0, v2

    .line 136
    :cond_9
    return v0
.end method

.method private final stopOverscrollAnimation()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 8
    .line 9
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 10
    .line 11
    invoke-virtual {v2, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/4 v4, 0x0

    .line 16
    cmpg-float v3, v3, v4

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 24
    .line 25
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 26
    .line 27
    .line 28
    move-result-wide v6

    .line 29
    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-0a9Yr6o(JJ)F

    .line 30
    .line 31
    .line 32
    move v3, v5

    .line 33
    :goto_0
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 34
    .line 35
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    cmpg-float v6, v6, v4

    .line 40
    .line 41
    if-nez v6, :cond_1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 45
    .line 46
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 47
    .line 48
    .line 49
    move-result-wide v6

    .line 50
    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-0a9Yr6o(JJ)F

    .line 51
    .line 52
    .line 53
    move v3, v5

    .line 54
    :goto_1
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 55
    .line 56
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 57
    .line 58
    .line 59
    move-result v6

    .line 60
    cmpg-float v6, v6, v4

    .line 61
    .line 62
    if-nez v6, :cond_2

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    sget-object v3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 66
    .line 67
    invoke-virtual {v3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 68
    .line 69
    .line 70
    move-result-wide v6

    .line 71
    invoke-direct {p0, v6, v7, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-0a9Yr6o(JJ)F

    .line 72
    .line 73
    .line 74
    move v3, v5

    .line 75
    :goto_2
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 76
    .line 77
    invoke-virtual {v2, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    cmpg-float v2, v2, v4

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    move v5, v3

    .line 86
    goto :goto_3

    .line 87
    :cond_3
    sget-object v2, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 88
    .line 89
    invoke-virtual {v2}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 90
    .line 91
    .line 92
    move-result-wide v2

    .line 93
    invoke-direct {p0, v2, v3, v0, v1}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-0a9Yr6o(JJ)F

    .line 94
    .line 95
    .line 96
    :goto_3
    return v5
.end method


# virtual methods
.method public consumePostFling-sF-c-tU(JLrs/c;)Ljava/lang/Object;
    .locals 3
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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
    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 3
    .line 4
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 5
    .line 6
    .line 7
    move-result p3

    .line 8
    const/4 v0, 0x0

    .line 9
    cmpl-float p3, p3, v0

    .line 10
    .line 11
    if-lez p3, :cond_0

    .line 12
    .line 13
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 14
    .line 15
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 16
    .line 17
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    cmpg-float p3, p3, v0

    .line 34
    .line 35
    if-gez p3, :cond_1

    .line 36
    .line 37
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 38
    .line 39
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 40
    .line 41
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    neg-int v2, v2

    .line 50
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    cmpl-float p3, p3, v0

    .line 58
    .line 59
    if-lez p3, :cond_2

    .line 60
    .line 61
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 62
    .line 63
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 64
    .line 65
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 78
    .line 79
    .line 80
    move-result p3

    .line 81
    cmpg-float p3, p3, v0

    .line 82
    .line 83
    if-gez p3, :cond_3

    .line 84
    .line 85
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 88
    .line 89
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-static {v1}, Lbt/a;->c(F)I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    neg-int v1, v1

    .line 98
    invoke-virtual {p3, v0, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 99
    .line 100
    .line 101
    :cond_3
    :goto_1
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 102
    .line 103
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    .line 104
    .line 105
    .line 106
    move-result-wide v0

    .line 107
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->equals-impl0(JJ)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-nez p1, :cond_4

    .line 112
    .line 113
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 114
    .line 115
    .line 116
    :cond_4
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    .line 117
    .line 118
    .line 119
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1
.end method

.method public consumePostScroll-l7mfB5k(JJLandroidx/compose/ui/geometry/Offset;I)V
    .locals 2
    .param p5    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->Companion:Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource$Companion;->getDrag-WNlRxjI()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p6, v0}, Landroidx/compose/ui/input/nestedscroll/NestedScrollSource;->equals-impl0(II)Z

    .line 8
    .line 9
    .line 10
    move-result p6

    .line 11
    if-eqz p6, :cond_5

    .line 12
    .line 13
    if-eqz p5, :cond_0

    .line 14
    .line 15
    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 16
    .line 17
    .line 18
    move-result-wide p5

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-wide p5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 21
    .line 22
    invoke-static {p5, p6}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    .line 23
    .line 24
    .line 25
    move-result-wide p5

    .line 26
    :goto_0
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x0

    .line 31
    cmpl-float v0, v0, v1

    .line 32
    .line 33
    if-lez v0, :cond_1

    .line 34
    .line 35
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-0a9Yr6o(JJ)F

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    cmpg-float v0, v0, v1

    .line 44
    .line 45
    if-gez v0, :cond_2

    .line 46
    .line 47
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-0a9Yr6o(JJ)F

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    cmpl-float v0, v0, v1

    .line 55
    .line 56
    if-lez v0, :cond_3

    .line 57
    .line 58
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-0a9Yr6o(JJ)F

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    cmpg-float v0, v0, v1

    .line 67
    .line 68
    if-gez v0, :cond_4

    .line 69
    .line 70
    invoke-direct {p0, p3, p4, p5, p6}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-0a9Yr6o(JJ)F

    .line 71
    .line 72
    .line 73
    :cond_4
    :goto_2
    sget-object p5, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 74
    .line 75
    invoke-virtual {p5}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 76
    .line 77
    .line 78
    move-result-wide p5

    .line 79
    invoke-static {p3, p4, p5, p6}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 80
    .line 81
    .line 82
    move-result p3

    .line 83
    xor-int/lit8 p3, p3, 0x1

    .line 84
    .line 85
    goto :goto_3

    .line 86
    :cond_5
    const/4 p3, 0x0

    .line 87
    :goto_3
    invoke-direct {p0, p1, p2}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->releaseOppositeOverscroll-k-4lQ0M(J)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-nez p1, :cond_6

    .line 92
    .line 93
    if-eqz p3, :cond_7

    .line 94
    .line 95
    :cond_6
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 96
    .line 97
    .line 98
    :cond_7
    return-void
.end method

.method public consumePreFling-QWom1Mo(JLrs/c;)Ljava/lang/Object;
    .locals 3
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p3

    .line 5
    const/4 v0, 0x0

    .line 6
    cmpl-float p3, p3, v0

    .line 7
    .line 8
    if-lez p3, :cond_1

    .line 9
    .line 10
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 13
    .line 14
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    cmpg-float v1, v1, v0

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 24
    .line 25
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 34
    .line 35
    .line 36
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 42
    .line 43
    .line 44
    move-result p3

    .line 45
    cmpg-float p3, p3, v0

    .line 46
    .line 47
    if-gez p3, :cond_3

    .line 48
    .line 49
    sget-object p3, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 52
    .line 53
    invoke-virtual {p3, v1}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    cmpg-float v1, v1, v0

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    neg-int v2, v2

    .line 73
    invoke-virtual {p3, v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    goto :goto_2

    .line 81
    :cond_3
    :goto_1
    move p3, v0

    .line 82
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    cmpl-float v1, v1, v0

    .line 87
    .line 88
    if-lez v1, :cond_5

    .line 89
    .line 90
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 91
    .line 92
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    cmpg-float v2, v2, v0

    .line 99
    .line 100
    if-nez v2, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 104
    .line 105
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 114
    .line 115
    .line 116
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    goto :goto_4

    .line 121
    :cond_5
    :goto_3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    cmpg-float v1, v1, v0

    .line 126
    .line 127
    if-gez v1, :cond_7

    .line 128
    .line 129
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 130
    .line 131
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    cmpg-float v2, v2, v0

    .line 138
    .line 139
    if-nez v2, :cond_6

    .line 140
    .line 141
    goto :goto_4

    .line 142
    :cond_6
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 143
    .line 144
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 145
    .line 146
    .line 147
    move-result v2

    .line 148
    invoke-static {v2}, Lbt/a;->c(F)I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    neg-int v2, v2

    .line 153
    invoke-virtual {v1, v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->onAbsorbCompat(Landroid/widget/EdgeEffect;I)V

    .line 154
    .line 155
    .line 156
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    :cond_7
    :goto_4
    invoke-static {p3, v0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    .line 161
    .line 162
    .line 163
    move-result-wide p1

    .line 164
    sget-object p3, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 165
    .line 166
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    .line 167
    .line 168
    .line 169
    move-result-wide v0

    .line 170
    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/Velocity;->equals-impl0(JJ)Z

    .line 171
    .line 172
    .line 173
    move-result p3

    .line 174
    if-nez p3, :cond_8

    .line 175
    .line 176
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 177
    .line 178
    .line 179
    :cond_8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    return-object p1
.end method

.method public consumePreScroll-A0NYTsA(JLandroidx/compose/ui/geometry/Offset;I)J
    .locals 4
    .param p3    # Landroidx/compose/ui/geometry/Offset;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-boolean p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->stopOverscrollAnimation()Z

    .line 6
    .line 7
    .line 8
    const/4 p4, 0x1

    .line 9
    iput-boolean p4, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 10
    .line 11
    :cond_0
    if-eqz p3, :cond_1

    .line 12
    .line 13
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset;->unbox-impl()J

    .line 14
    .line 15
    .line 16
    move-result-wide p3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-wide p3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->containerSize:J

    .line 19
    .line 20
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    .line 21
    .line 22
    .line 23
    move-result-wide p3

    .line 24
    :goto_0
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    cmpg-float v0, v0, v1

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    :goto_1
    move v2, v1

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 36
    .line 37
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    cmpg-float v2, v2, v1

    .line 44
    .line 45
    if-nez v2, :cond_4

    .line 46
    .line 47
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    cmpg-float v2, v2, v1

    .line 54
    .line 55
    if-nez v2, :cond_3

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullBottom-0a9Yr6o(JJ)F

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    cmpg-float v0, v0, v1

    .line 69
    .line 70
    if-nez v0, :cond_5

    .line 71
    .line 72
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 75
    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_4
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullTop-0a9Yr6o(JJ)F

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 83
    .line 84
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    cmpg-float v0, v0, v1

    .line 89
    .line 90
    if-nez v0, :cond_5

    .line 91
    .line 92
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 95
    .line 96
    .line 97
    :cond_5
    :goto_2
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    cmpg-float v0, v0, v1

    .line 102
    .line 103
    if-nez v0, :cond_6

    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_6
    sget-object v0, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 107
    .line 108
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    cmpg-float v3, v3, v1

    .line 115
    .line 116
    if-nez v3, :cond_9

    .line 117
    .line 118
    iget-object v3, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    cmpg-float v3, v3, v1

    .line 125
    .line 126
    if-nez v3, :cond_7

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_7
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullRight-0a9Yr6o(JJ)F

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 134
    .line 135
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 136
    .line 137
    .line 138
    move-result p2

    .line 139
    cmpg-float p2, p2, v1

    .line 140
    .line 141
    if-nez p2, :cond_8

    .line 142
    .line 143
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 144
    .line 145
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 146
    .line 147
    .line 148
    :cond_8
    :goto_3
    move v1, p1

    .line 149
    goto :goto_4

    .line 150
    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->pullLeft-0a9Yr6o(JJ)F

    .line 151
    .line 152
    .line 153
    move-result p1

    .line 154
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 155
    .line 156
    invoke-virtual {v0, p2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    cmpg-float p2, p2, v1

    .line 161
    .line 162
    if-nez p2, :cond_8

    .line 163
    .line 164
    iget-object p2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 165
    .line 166
    invoke-virtual {p2}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :goto_4
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    .line 171
    .line 172
    .line 173
    move-result-wide p1

    .line 174
    sget-object p3, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 175
    .line 176
    invoke-virtual {p3}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 177
    .line 178
    .line 179
    move-result-wide p3

    .line 180
    invoke-static {p1, p2, p3, p4}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    .line 181
    .line 182
    .line 183
    move-result p3

    .line 184
    if-nez p3, :cond_a

    .line 185
    .line 186
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 187
    .line 188
    .line 189
    :cond_a
    return-wide p1
.end method

.method public final drawOverscroll(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 8
    .param p1    # Landroidx/compose/ui/graphics/drawscope/DrawScope;
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
    invoke-interface {p1}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getDrawContext()Landroidx/compose/ui/graphics/drawscope/DrawContext;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Landroidx/compose/ui/graphics/drawscope/DrawContext;->getCanvas()Landroidx/compose/ui/graphics/Canvas;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->redrawSignal:Landroidx/compose/runtime/MutableState;

    .line 15
    .line 16
    invoke-interface {v1}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Landroidx/compose/ui/graphics/AndroidCanvas_androidKt;->getNativeCanvas(Landroidx/compose/ui/graphics/Canvas;)Landroid/graphics/Canvas;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sget-object v1, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 24
    .line 25
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    const/4 v3, 0x0

    .line 32
    cmpg-float v2, v2, v3

    .line 33
    .line 34
    if-nez v2, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 38
    .line 39
    invoke-direct {p0, p1, v2, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawRight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 43
    .line 44
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    const/4 v4, 0x0

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 57
    .line 58
    invoke-direct {p0, p1, v2, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawLeft(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 59
    .line 60
    .line 61
    move-result v2

    .line 62
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffectNegation:Landroid/widget/EdgeEffect;

    .line 63
    .line 64
    iget-object v6, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->leftEffect:Landroid/widget/EdgeEffect;

    .line 65
    .line 66
    invoke-virtual {v1, v6}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    invoke-virtual {v1, v5, v6, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v2, v4

    .line 75
    :goto_1
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    cmpg-float v5, v5, v3

    .line 82
    .line 83
    if-nez v5, :cond_2

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 87
    .line 88
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawBottom(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 89
    .line 90
    .line 91
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 92
    .line 93
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 94
    .line 95
    .line 96
    :goto_2
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 97
    .line 98
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v6, 0x1

    .line 103
    if-nez v5, :cond_5

    .line 104
    .line 105
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 106
    .line 107
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawTop(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    if-nez v5, :cond_4

    .line 112
    .line 113
    if-eqz v2, :cond_3

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_3
    move v2, v4

    .line 117
    goto :goto_4

    .line 118
    :cond_4
    :goto_3
    move v2, v6

    .line 119
    :goto_4
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffectNegation:Landroid/widget/EdgeEffect;

    .line 120
    .line 121
    iget-object v7, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->topEffect:Landroid/widget/EdgeEffect;

    .line 122
    .line 123
    invoke-virtual {v1, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    invoke-virtual {v1, v5, v7, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 128
    .line 129
    .line 130
    :cond_5
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 131
    .line 132
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    cmpg-float v5, v5, v3

    .line 137
    .line 138
    if-nez v5, :cond_6

    .line 139
    .line 140
    goto :goto_5

    .line 141
    :cond_6
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 142
    .line 143
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawLeft(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 144
    .line 145
    .line 146
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 149
    .line 150
    .line 151
    :goto_5
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 152
    .line 153
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 154
    .line 155
    .line 156
    move-result v5

    .line 157
    if-nez v5, :cond_9

    .line 158
    .line 159
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 160
    .line 161
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawRight(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 162
    .line 163
    .line 164
    move-result v5

    .line 165
    if-nez v5, :cond_8

    .line 166
    .line 167
    if-eqz v2, :cond_7

    .line 168
    .line 169
    goto :goto_6

    .line 170
    :cond_7
    move v2, v4

    .line 171
    goto :goto_7

    .line 172
    :cond_8
    :goto_6
    move v2, v6

    .line 173
    :goto_7
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffectNegation:Landroid/widget/EdgeEffect;

    .line 174
    .line 175
    iget-object v7, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->rightEffect:Landroid/widget/EdgeEffect;

    .line 176
    .line 177
    invoke-virtual {v1, v7}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 178
    .line 179
    .line 180
    move-result v7

    .line 181
    invoke-virtual {v1, v5, v7, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 182
    .line 183
    .line 184
    :cond_9
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 185
    .line 186
    invoke-virtual {v1, v5}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 187
    .line 188
    .line 189
    move-result v5

    .line 190
    cmpg-float v5, v5, v3

    .line 191
    .line 192
    if-nez v5, :cond_a

    .line 193
    .line 194
    goto :goto_8

    .line 195
    :cond_a
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 196
    .line 197
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawTop(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 198
    .line 199
    .line 200
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 201
    .line 202
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->finish()V

    .line 203
    .line 204
    .line 205
    :goto_8
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 206
    .line 207
    invoke-virtual {v5}, Landroid/widget/EdgeEffect;->isFinished()Z

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    if-nez v5, :cond_d

    .line 212
    .line 213
    iget-object v5, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 214
    .line 215
    invoke-direct {p0, p1, v5, v0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->drawBottom(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroid/widget/EdgeEffect;Landroid/graphics/Canvas;)Z

    .line 216
    .line 217
    .line 218
    move-result p1

    .line 219
    if-nez p1, :cond_b

    .line 220
    .line 221
    if-eqz v2, :cond_c

    .line 222
    .line 223
    :cond_b
    move v4, v6

    .line 224
    :cond_c
    iget-object p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffectNegation:Landroid/widget/EdgeEffect;

    .line 225
    .line 226
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->bottomEffect:Landroid/widget/EdgeEffect;

    .line 227
    .line 228
    invoke-virtual {v1, v0}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 229
    .line 230
    .line 231
    move-result v0

    .line 232
    invoke-virtual {v1, p1, v0, v3}, Landroidx/compose/foundation/EdgeEffectCompat;->onPullDistanceCompat(Landroid/widget/EdgeEffect;FF)F

    .line 233
    .line 234
    .line 235
    move v2, v4

    .line 236
    :cond_d
    if-eqz v2, :cond_e

    .line 237
    .line 238
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidateOverscroll()V

    .line 239
    .line 240
    .line 241
    :cond_e
    return-void
.end method

.method public getEffectModifier()Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->effectModifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInvalidationEnabled$foundation_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

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

.method public isInProgress()Z
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->allEffects:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    move v3, v2

    .line 9
    :goto_0
    if-ge v3, v1, :cond_2

    .line 10
    .line 11
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    check-cast v4, Landroid/widget/EdgeEffect;

    .line 16
    .line 17
    sget-object v5, Landroidx/compose/foundation/EdgeEffectCompat;->INSTANCE:Landroidx/compose/foundation/EdgeEffectCompat;

    .line 18
    .line 19
    invoke-virtual {v5, v4}, Landroidx/compose/foundation/EdgeEffectCompat;->getDistanceCompat(Landroid/widget/EdgeEffect;)F

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    const/4 v5, 0x0

    .line 24
    cmpg-float v4, v4, v5

    .line 25
    .line 26
    const/4 v5, 0x1

    .line 27
    if-nez v4, :cond_0

    .line 28
    .line 29
    move v4, v5

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move v4, v2

    .line 32
    :goto_1
    if-nez v4, :cond_1

    .line 33
    .line 34
    move v2, v5

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    :goto_2
    return v2
.end method

.method public setEnabled(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabled:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eq v0, p1, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    iget-object v2, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabledState:Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-interface {v2, v3}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->isEnabled:Z

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    iput-boolean v1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->scrollCycleInProgress:Z

    .line 23
    .line 24
    invoke-direct {p0}, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->animateToRelease()V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method public final setInvalidationEnabled$foundation_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/foundation/AndroidEdgeEffectOverscrollEffect;->invalidationEnabled:Z

    .line 2
    .line 3
    return-void
.end method
