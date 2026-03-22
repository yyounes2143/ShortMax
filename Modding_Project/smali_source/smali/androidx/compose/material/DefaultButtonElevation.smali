.class final Landroidx/compose/material/DefaultButtonElevation;
.super Ljava/lang/Object;
.source "Button.kt"

# interfaces
.implements Landroidx/compose/material/ButtonElevation;


# annotations
.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final defaultElevation:F

.field private final disabledElevation:F

.field private final focusedElevation:F

.field private final hoveredElevation:F

.field private final pressedElevation:F


# direct methods
.method private constructor <init>(FFFFF)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/material/DefaultButtonElevation;->defaultElevation:F

    .line 4
    iput p2, p0, Landroidx/compose/material/DefaultButtonElevation;->pressedElevation:F

    .line 5
    iput p3, p0, Landroidx/compose/material/DefaultButtonElevation;->disabledElevation:F

    .line 6
    iput p4, p0, Landroidx/compose/material/DefaultButtonElevation;->hoveredElevation:F

    .line 7
    iput p5, p0, Landroidx/compose/material/DefaultButtonElevation;->focusedElevation:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/material/DefaultButtonElevation;-><init>(FFFFF)V

    return-void
.end method

.method public static final synthetic access$getFocusedElevation$p(Landroidx/compose/material/DefaultButtonElevation;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/DefaultButtonElevation;->focusedElevation:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getHoveredElevation$p(Landroidx/compose/material/DefaultButtonElevation;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/DefaultButtonElevation;->hoveredElevation:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getPressedElevation$p(Landroidx/compose/material/DefaultButtonElevation;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/material/DefaultButtonElevation;->pressedElevation:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public elevation(ZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;
    .locals 15
    .param p2    # Landroidx/compose/foundation/interaction/InteractionSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
    move-object v6, p0

    .line 2
    move-object/from16 v0, p2

    .line 3
    .line 4
    move-object/from16 v7, p3

    .line 5
    .line 6
    const-string v1, "interactionSource"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v1, -0x5eb281ab

    .line 12
    .line 13
    .line 14
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 15
    .line 16
    .line 17
    const v1, -0x1d58f75c

    .line 18
    .line 19
    .line 20
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 21
    .line 22
    .line 23
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 28
    .line 29
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-ne v2, v4, :cond_0

    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateListOf()Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v7, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 43
    .line 44
    .line 45
    check-cast v2, Landroidx/compose/runtime/snapshots/SnapshotStateList;

    .line 46
    .line 47
    new-instance v4, Landroidx/compose/material/DefaultButtonElevation$elevation$1;

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    invoke-direct {v4, v0, v2, v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$1;-><init>(Landroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/snapshots/SnapshotStateList;Lrs/c;)V

    .line 51
    .line 52
    .line 53
    shr-int/lit8 v8, p4, 0x3

    .line 54
    .line 55
    and-int/lit8 v8, v8, 0xe

    .line 56
    .line 57
    invoke-static {v0, v4, v7, v8}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->D0(Ljava/util/List;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    move-object v4, v0

    .line 65
    check-cast v4, Landroidx/compose/foundation/interaction/Interaction;

    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->disabledElevation:F

    .line 70
    .line 71
    :goto_0
    move v8, v0

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    instance-of v0, v4, Landroidx/compose/foundation/interaction/PressInteraction$Press;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->pressedElevation:F

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    instance-of v0, v4, Landroidx/compose/foundation/interaction/HoverInteraction$Enter;

    .line 81
    .line 82
    if-eqz v0, :cond_3

    .line 83
    .line 84
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->hoveredElevation:F

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    instance-of v0, v4, Landroidx/compose/foundation/interaction/FocusInteraction$Focus;

    .line 88
    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->focusedElevation:F

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    iget v0, v6, Landroidx/compose/material/DefaultButtonElevation;->defaultElevation:F

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :goto_1
    invoke-interface {v7, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 98
    .line 99
    .line 100
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-ne v0, v1, :cond_5

    .line 109
    .line 110
    new-instance v0, Landroidx/compose/animation/core/Animatable;

    .line 111
    .line 112
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 113
    .line 114
    .line 115
    move-result-object v10

    .line 116
    sget-object v1, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    .line 117
    .line 118
    invoke-static {v1}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Landroidx/compose/ui/unit/Dp$Companion;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 119
    .line 120
    .line 121
    move-result-object v11

    .line 122
    const/4 v13, 0x4

    .line 123
    const/4 v14, 0x0

    .line 124
    const/4 v12, 0x0

    .line 125
    move-object v9, v0

    .line 126
    invoke-direct/range {v9 .. v14}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 127
    .line 128
    .line 129
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    :cond_5
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 133
    .line 134
    .line 135
    move-object v9, v0

    .line 136
    check-cast v9, Landroidx/compose/animation/core/Animatable;

    .line 137
    .line 138
    const/4 v10, 0x0

    .line 139
    if-nez p1, :cond_6

    .line 140
    .line 141
    const v0, -0x5f4bddb9

    .line 142
    .line 143
    .line 144
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 145
    .line 146
    .line 147
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    new-instance v1, Landroidx/compose/material/DefaultButtonElevation$elevation$2;

    .line 152
    .line 153
    invoke-direct {v1, v9, v8, v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$2;-><init>(Landroidx/compose/animation/core/Animatable;FLrs/c;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0, v1, v7, v10}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 157
    .line 158
    .line 159
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_6
    const v0, -0x5f4bdd0e

    .line 164
    .line 165
    .line 166
    invoke-interface {v7, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 167
    .line 168
    .line 169
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 170
    .line 171
    .line 172
    move-result-object v11

    .line 173
    new-instance v12, Landroidx/compose/material/DefaultButtonElevation$elevation$3;

    .line 174
    .line 175
    const/4 v5, 0x0

    .line 176
    move-object v0, v12

    .line 177
    move-object v1, v9

    .line 178
    move-object v2, p0

    .line 179
    move v3, v8

    .line 180
    invoke-direct/range {v0 .. v5}, Landroidx/compose/material/DefaultButtonElevation$elevation$3;-><init>(Landroidx/compose/animation/core/Animatable;Landroidx/compose/material/DefaultButtonElevation;FLandroidx/compose/foundation/interaction/Interaction;Lrs/c;)V

    .line 181
    .line 182
    .line 183
    invoke-static {v11, v12, v7, v10}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 184
    .line 185
    .line 186
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 187
    .line 188
    .line 189
    :goto_2
    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->asState()Landroidx/compose/runtime/State;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 194
    .line 195
    .line 196
    return-object v0
.end method
