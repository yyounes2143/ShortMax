.class public final Landroidx/compose/animation/EnterExitTransitionKt;
.super Ljava/lang/Object;
.source "EnterExitTransition.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/animation/EnterExitTransitionKt$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultAlpha:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/SpringSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/animation/core/TwoWayConverter<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            "Landroidx/compose/animation/core/AnimationVector2D;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$1;

    .line 2
    .line 3
    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$TransformOriginVectorConverter$2;

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/compose/animation/core/VectorConvertersKt;->TwoWayConverter(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 10
    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x2

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2, v1, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlpha:Landroidx/compose/runtime/MutableState;

    .line 24
    .line 25
    const/4 v0, 0x5

    .line 26
    const/4 v1, 0x0

    .line 27
    const/high16 v3, 0x43c80000    # 400.0f

    .line 28
    .line 29
    invoke-static {v1, v3, v2, v0, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 34
    .line 35
    sget-object v0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 36
    .line 37
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v4

    .line 41
    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v4, 0x1

    .line 46
    invoke-static {v1, v3, v0, v4, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 51
    .line 52
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 53
    .line 54
    invoke-static {v0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 55
    .line 56
    .line 57
    move-result-wide v5

    .line 58
    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v3, v0, v4, v2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sput-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 67
    .line 68
    return-void
.end method

.method public static final synthetic access$createModifier$lambda-11(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-11(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$createModifier$lambda-13(Landroidx/compose/runtime/State;)J
    .locals 2

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-13(Landroidx/compose/runtime/State;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method public static final synthetic access$createModifier$lambda-8(Landroidx/compose/runtime/State;)F
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-8(Landroidx/compose/runtime/State;)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$getDefaultAlphaAndScaleSpring$p()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlphaAndScaleSpring:Landroidx/compose/animation/core/SpringSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDefaultOffsetAnimationSpec$p()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultOffsetAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getDefaultSizeAnimationSpec$p()Landroidx/compose/animation/core/SpringSpec;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultSizeAnimationSpec:Landroidx/compose/animation/core/SpringSpec;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final createModifier(Landroidx/compose/animation/core/Transition;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
    .locals 24
    .param p0    # Landroidx/compose/animation/core/Transition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/animation/EnterTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/animation/ExitTransition;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/animation/EnterTransition;",
            "Landroidx/compose/animation/ExitTransition;",
            "Ljava/lang/String;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v10, p2

    .line 6
    .line 7
    move-object/from16 v11, p3

    .line 8
    .line 9
    move-object/from16 v12, p4

    .line 10
    .line 11
    const-string v0, "<this>"

    .line 12
    .line 13
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "enter"

    .line 17
    .line 18
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "exit"

    .line 22
    .line 23
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "label"

    .line 27
    .line 28
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const v0, 0x367a8aa2

    .line 32
    .line 33
    .line 34
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 38
    .line 39
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Landroidx/compose/animation/TransitionData;->getSlide()Landroidx/compose/animation/Slide;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v2, 0x0

    .line 48
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 49
    .line 50
    .line 51
    move-result-object v13

    .line 52
    invoke-static {v1, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getSlide()Landroidx/compose/animation/Slide;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-static {v3, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v0, v8, v1, v3, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInOut(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1}, Landroidx/compose/animation/TransitionData;->getChangeSize()Landroidx/compose/animation/ChangeSize;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-static {v1, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getChangeSize()Landroidx/compose/animation/ChangeSize;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {v3, v12, v2}, Landroidx/compose/runtime/SnapshotStateKt;->rememberUpdatedState(Ljava/lang/Object;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v0, v8, v1, v3, v11}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkExpand(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    and-int/lit8 v15, p5, 0xe

    .line 101
    .line 102
    const v0, 0x44faf204

    .line 103
    .line 104
    .line 105
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 106
    .line 107
    .line 108
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    const/4 v7, 0x2

    .line 117
    const/4 v6, 0x0

    .line 118
    if-nez v1, :cond_0

    .line 119
    .line 120
    sget-object v1, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    if-ne v3, v1, :cond_1

    .line 127
    .line 128
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 129
    .line 130
    invoke-static {v1, v6, v7, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 135
    .line 136
    .line 137
    :cond_1
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 138
    .line 139
    .line 140
    move-object v5, v3

    .line 141
    check-cast v5, Landroidx/compose/runtime/MutableState;

    .line 142
    .line 143
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 144
    .line 145
    .line 146
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-nez v0, :cond_2

    .line 155
    .line 156
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 157
    .line 158
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    if-ne v1, v0, :cond_3

    .line 163
    .line 164
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 165
    .line 166
    invoke-static {v0, v6, v7, v6}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 174
    .line 175
    .line 176
    move-object v4, v1

    .line 177
    check-cast v4, Landroidx/compose/runtime/MutableState;

    .line 178
    .line 179
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    const/4 v3, 0x1

    .line 188
    if-ne v0, v1, :cond_4

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->isSeeking()Z

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-nez v0, :cond_4

    .line 195
    .line 196
    invoke-static {v5, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-2(Landroidx/compose/runtime/MutableState;Z)V

    .line 197
    .line 198
    .line 199
    invoke-static {v4, v2}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-5(Landroidx/compose/runtime/MutableState;Z)V

    .line 200
    .line 201
    .line 202
    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    if-nez v0, :cond_5

    .line 212
    .line 213
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    if-eqz v0, :cond_6

    .line 222
    .line 223
    :cond_5
    invoke-static {v5, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-2(Landroidx/compose/runtime/MutableState;Z)V

    .line 224
    .line 225
    .line 226
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    if-nez v0, :cond_7

    .line 235
    .line 236
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 237
    .line 238
    .line 239
    move-result-object v0

    .line 240
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    if-eqz v0, :cond_8

    .line 245
    .line 246
    :cond_7
    invoke-static {v4, v3}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-5(Landroidx/compose/runtime/MutableState;Z)V

    .line 247
    .line 248
    .line 249
    :cond_8
    :goto_0
    const v0, 0x62c77be4

    .line 250
    .line 251
    .line 252
    invoke-interface {v12, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 253
    .line 254
    .line 255
    invoke-static {v5}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-1(Landroidx/compose/runtime/MutableState;)Z

    .line 256
    .line 257
    .line 258
    move-result v0

    .line 259
    const/high16 v16, 0x30000

    .line 260
    .line 261
    const v2, -0x4fcbfb15

    .line 262
    .line 263
    .line 264
    const v1, -0x1d58f75c

    .line 265
    .line 266
    .line 267
    const v7, -0x880d1ef

    .line 268
    .line 269
    .line 270
    const/4 v3, 0x3

    .line 271
    const/high16 v18, 0x3f800000    # 1.0f

    .line 272
    .line 273
    if-eqz v0, :cond_11

    .line 274
    .line 275
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;

    .line 276
    .line 277
    invoke-direct {v0, v9, v10}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$alpha$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 278
    .line 279
    .line 280
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 281
    .line 282
    .line 283
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    sget-object v20, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 288
    .line 289
    invoke-virtual/range {v20 .. v20}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    move-result-object v6

    .line 293
    if-ne v1, v6, :cond_9

    .line 294
    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    const-string v6, " alpha"

    .line 304
    .line 305
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    :cond_9
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 316
    .line 317
    .line 318
    move-object v6, v1

    .line 319
    check-cast v6, Ljava/lang/String;

    .line 320
    .line 321
    or-int/lit16 v1, v15, 0x180

    .line 322
    .line 323
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 324
    .line 325
    .line 326
    sget-object v20, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 327
    .line 328
    invoke-static/range {v20 .. v20}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 329
    .line 330
    .line 331
    move-result-object v20

    .line 332
    and-int/lit8 v1, v1, 0xe

    .line 333
    .line 334
    or-int/lit16 v1, v1, 0xc00

    .line 335
    .line 336
    invoke-interface {v12, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 337
    .line 338
    .line 339
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object v21

    .line 343
    check-cast v21, Landroidx/compose/animation/EnterExitState;

    .line 344
    .line 345
    const v2, 0x2d0ae6ce

    .line 346
    .line 347
    .line 348
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 349
    .line 350
    .line 351
    sget-object v22, Landroidx/compose/animation/EnterExitTransitionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 352
    .line 353
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Enum;->ordinal()I

    .line 354
    .line 355
    .line 356
    move-result v21

    .line 357
    aget v7, v22, v21

    .line 358
    .line 359
    const/4 v2, 0x1

    .line 360
    if-eq v7, v2, :cond_a

    .line 361
    .line 362
    const/4 v2, 0x2

    .line 363
    if-eq v7, v2, :cond_c

    .line 364
    .line 365
    if-ne v7, v3, :cond_b

    .line 366
    .line 367
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    .line 372
    .line 373
    .line 374
    move-result-object v2

    .line 375
    if-eqz v2, :cond_a

    .line 376
    .line 377
    invoke-virtual {v2}, Landroidx/compose/animation/Fade;->getAlpha()F

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    goto :goto_1

    .line 382
    :cond_a
    move/from16 v2, v18

    .line 383
    .line 384
    goto :goto_1

    .line 385
    :cond_b
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 386
    .line 387
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 388
    .line 389
    .line 390
    throw v0

    .line 391
    :cond_c
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    if-eqz v2, :cond_a

    .line 400
    .line 401
    invoke-virtual {v2}, Landroidx/compose/animation/Fade;->getAlpha()F

    .line 402
    .line 403
    .line 404
    move-result v2

    .line 405
    :goto_1
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 406
    .line 407
    .line 408
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v7

    .line 416
    check-cast v7, Landroidx/compose/animation/EnterExitState;

    .line 417
    .line 418
    const v3, 0x2d0ae6ce

    .line 419
    .line 420
    .line 421
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 422
    .line 423
    .line 424
    invoke-virtual {v7}, Ljava/lang/Enum;->ordinal()I

    .line 425
    .line 426
    .line 427
    move-result v3

    .line 428
    aget v3, v22, v3

    .line 429
    .line 430
    const/4 v7, 0x1

    .line 431
    if-eq v3, v7, :cond_10

    .line 432
    .line 433
    const/4 v7, 0x2

    .line 434
    if-eq v3, v7, :cond_f

    .line 435
    .line 436
    const/4 v7, 0x3

    .line 437
    if-ne v3, v7, :cond_e

    .line 438
    .line 439
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 440
    .line 441
    .line 442
    move-result-object v3

    .line 443
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    .line 444
    .line 445
    .line 446
    move-result-object v3

    .line 447
    if-eqz v3, :cond_d

    .line 448
    .line 449
    invoke-virtual {v3}, Landroidx/compose/animation/Fade;->getAlpha()F

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    goto :goto_3

    .line 454
    :cond_d
    :goto_2
    move/from16 v3, v18

    .line 455
    .line 456
    goto :goto_3

    .line 457
    :cond_e
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 458
    .line 459
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 460
    .line 461
    .line 462
    throw v0

    .line 463
    :cond_f
    const/4 v7, 0x3

    .line 464
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 465
    .line 466
    .line 467
    move-result-object v3

    .line 468
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getFade()Landroidx/compose/animation/Fade;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    if-eqz v3, :cond_d

    .line 473
    .line 474
    invoke-virtual {v3}, Landroidx/compose/animation/Fade;->getAlpha()F

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    goto :goto_3

    .line 479
    :cond_10
    const/4 v7, 0x3

    .line 480
    goto :goto_2

    .line 481
    :goto_3
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 482
    .line 483
    .line 484
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 485
    .line 486
    .line 487
    move-result-object v3

    .line 488
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 489
    .line 490
    .line 491
    move-result-object v7

    .line 492
    invoke-interface {v0, v7, v12, v13}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    .line 494
    .line 495
    move-result-object v0

    .line 496
    move-object v7, v0

    .line 497
    check-cast v7, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 498
    .line 499
    and-int/lit8 v0, v1, 0xe

    .line 500
    .line 501
    or-int v21, v0, v16

    .line 502
    .line 503
    move-object/from16 v0, p0

    .line 504
    .line 505
    const v8, -0x1d58f75c

    .line 506
    .line 507
    .line 508
    move-object v1, v2

    .line 509
    move-object v2, v3

    .line 510
    move-object v3, v7

    .line 511
    move-object/from16 v17, v4

    .line 512
    .line 513
    move-object/from16 v4, v20

    .line 514
    .line 515
    move-object/from16 v19, v5

    .line 516
    .line 517
    move-object v5, v6

    .line 518
    const/16 v20, 0x0

    .line 519
    .line 520
    move-object/from16 v6, p4

    .line 521
    .line 522
    move/from16 v7, v21

    .line 523
    .line 524
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 529
    .line 530
    .line 531
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 532
    .line 533
    .line 534
    :goto_4
    move-object v7, v0

    .line 535
    goto :goto_5

    .line 536
    :cond_11
    move v8, v1

    .line 537
    move-object/from16 v17, v4

    .line 538
    .line 539
    move-object/from16 v19, v5

    .line 540
    .line 541
    move-object/from16 v20, v6

    .line 542
    .line 543
    sget-object v0, Landroidx/compose/animation/EnterExitTransitionKt;->DefaultAlpha:Landroidx/compose/runtime/MutableState;

    .line 544
    .line 545
    goto :goto_4

    .line 546
    :goto_5
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 547
    .line 548
    .line 549
    invoke-static/range {v17 .. v17}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-4(Landroidx/compose/runtime/MutableState;)Z

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    if-eqz v0, :cond_2c

    .line 554
    .line 555
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$scale$2;

    .line 556
    .line 557
    invoke-direct {v0, v9, v10}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$scale$2;-><init>(Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;)V

    .line 558
    .line 559
    .line 560
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 561
    .line 562
    .line 563
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    move-result-object v1

    .line 567
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 568
    .line 569
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    if-ne v1, v2, :cond_12

    .line 574
    .line 575
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    .line 577
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .line 582
    .line 583
    const-string v2, " scale"

    .line 584
    .line 585
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    .line 587
    .line 588
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 589
    .line 590
    .line 591
    move-result-object v1

    .line 592
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 593
    .line 594
    .line 595
    :cond_12
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 596
    .line 597
    .line 598
    move-object v5, v1

    .line 599
    check-cast v5, Ljava/lang/String;

    .line 600
    .line 601
    or-int/lit16 v1, v15, 0x180

    .line 602
    .line 603
    const v2, -0x4fcbfb15

    .line 604
    .line 605
    .line 606
    invoke-interface {v12, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 607
    .line 608
    .line 609
    sget-object v2, Lkotlin/jvm/internal/FloatCompanionObject;->INSTANCE:Lkotlin/jvm/internal/FloatCompanionObject;

    .line 610
    .line 611
    invoke-static {v2}, Landroidx/compose/animation/core/VectorConvertersKt;->getVectorConverter(Lkotlin/jvm/internal/FloatCompanionObject;)Landroidx/compose/animation/core/TwoWayConverter;

    .line 612
    .line 613
    .line 614
    move-result-object v4

    .line 615
    and-int/lit8 v1, v1, 0xe

    .line 616
    .line 617
    or-int/lit16 v1, v1, 0xc00

    .line 618
    .line 619
    const v8, -0x880d1ef

    .line 620
    .line 621
    .line 622
    invoke-interface {v12, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 623
    .line 624
    .line 625
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 626
    .line 627
    .line 628
    move-result-object v2

    .line 629
    check-cast v2, Landroidx/compose/animation/EnterExitState;

    .line 630
    .line 631
    const v3, -0x23883891

    .line 632
    .line 633
    .line 634
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 635
    .line 636
    .line 637
    sget-object v11, Landroidx/compose/animation/EnterExitTransitionKt$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 638
    .line 639
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    aget v2, v11, v2

    .line 644
    .line 645
    const/4 v6, 0x1

    .line 646
    if-eq v2, v6, :cond_16

    .line 647
    .line 648
    const/4 v8, 0x2

    .line 649
    if-eq v2, v8, :cond_15

    .line 650
    .line 651
    const/4 v8, 0x3

    .line 652
    if-ne v2, v8, :cond_14

    .line 653
    .line 654
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 659
    .line 660
    .line 661
    move-result-object v2

    .line 662
    if-eqz v2, :cond_13

    .line 663
    .line 664
    invoke-virtual {v2}, Landroidx/compose/animation/Scale;->getScale()F

    .line 665
    .line 666
    .line 667
    move-result v2

    .line 668
    goto :goto_7

    .line 669
    :cond_13
    :goto_6
    move/from16 v2, v18

    .line 670
    .line 671
    goto :goto_7

    .line 672
    :cond_14
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 673
    .line 674
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 675
    .line 676
    .line 677
    throw v0

    .line 678
    :cond_15
    const/4 v8, 0x3

    .line 679
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 680
    .line 681
    .line 682
    move-result-object v2

    .line 683
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 684
    .line 685
    .line 686
    move-result-object v2

    .line 687
    if-eqz v2, :cond_13

    .line 688
    .line 689
    invoke-virtual {v2}, Landroidx/compose/animation/Scale;->getScale()F

    .line 690
    .line 691
    .line 692
    move-result v2

    .line 693
    goto :goto_7

    .line 694
    :cond_16
    const/4 v8, 0x3

    .line 695
    goto :goto_6

    .line 696
    :goto_7
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 697
    .line 698
    .line 699
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 700
    .line 701
    .line 702
    move-result-object v2

    .line 703
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 704
    .line 705
    .line 706
    move-result-object v17

    .line 707
    check-cast v17, Landroidx/compose/animation/EnterExitState;

    .line 708
    .line 709
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 710
    .line 711
    .line 712
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->ordinal()I

    .line 713
    .line 714
    .line 715
    move-result v3

    .line 716
    aget v3, v11, v3

    .line 717
    .line 718
    if-eq v3, v6, :cond_19

    .line 719
    .line 720
    const/4 v6, 0x2

    .line 721
    if-eq v3, v6, :cond_18

    .line 722
    .line 723
    if-ne v3, v8, :cond_17

    .line 724
    .line 725
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 730
    .line 731
    .line 732
    move-result-object v3

    .line 733
    if-eqz v3, :cond_19

    .line 734
    .line 735
    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->getScale()F

    .line 736
    .line 737
    .line 738
    move-result v18

    .line 739
    goto :goto_8

    .line 740
    :cond_17
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 741
    .line 742
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 743
    .line 744
    .line 745
    throw v0

    .line 746
    :cond_18
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 747
    .line 748
    .line 749
    move-result-object v3

    .line 750
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 751
    .line 752
    .line 753
    move-result-object v3

    .line 754
    if-eqz v3, :cond_19

    .line 755
    .line 756
    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->getScale()F

    .line 757
    .line 758
    .line 759
    move-result v18

    .line 760
    :cond_19
    :goto_8
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 761
    .line 762
    .line 763
    invoke-static/range {v18 .. v18}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 764
    .line 765
    .line 766
    move-result-object v3

    .line 767
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 768
    .line 769
    .line 770
    move-result-object v6

    .line 771
    invoke-interface {v0, v6, v12, v13}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    move-object v6, v0

    .line 776
    check-cast v6, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 777
    .line 778
    and-int/lit8 v0, v1, 0xe

    .line 779
    .line 780
    or-int v16, v0, v16

    .line 781
    .line 782
    move-object/from16 v0, p0

    .line 783
    .line 784
    move-object v1, v2

    .line 785
    move-object v2, v3

    .line 786
    move-object v3, v6

    .line 787
    const/4 v8, 0x1

    .line 788
    move-object/from16 v6, p4

    .line 789
    .line 790
    move-object/from16 v23, v7

    .line 791
    .line 792
    move/from16 v7, v16

    .line 793
    .line 794
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 795
    .line 796
    .line 797
    move-result-object v7

    .line 798
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 799
    .line 800
    .line 801
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 802
    .line 803
    .line 804
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 805
    .line 806
    .line 807
    move-result-object v0

    .line 808
    sget-object v1, Landroidx/compose/animation/EnterExitState;->PreEnter:Landroidx/compose/animation/EnterExitState;

    .line 809
    .line 810
    if-ne v0, v1, :cond_1c

    .line 811
    .line 812
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 813
    .line 814
    .line 815
    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    if-eqz v0, :cond_1a

    .line 821
    .line 822
    :goto_9
    invoke-virtual {v0}, Landroidx/compose/animation/Scale;->getTransformOrigin-SzJe1aQ()J

    .line 823
    .line 824
    .line 825
    move-result-wide v0

    .line 826
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 827
    .line 828
    .line 829
    move-result-object v6

    .line 830
    goto :goto_b

    .line 831
    :cond_1a
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 832
    .line 833
    .line 834
    move-result-object v0

    .line 835
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 836
    .line 837
    .line 838
    move-result-object v0

    .line 839
    if-eqz v0, :cond_1b

    .line 840
    .line 841
    goto :goto_9

    .line 842
    :cond_1b
    move-object/from16 v6, v20

    .line 843
    .line 844
    goto :goto_b

    .line 845
    :cond_1c
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 846
    .line 847
    .line 848
    move-result-object v0

    .line 849
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    if-eqz v0, :cond_1d

    .line 854
    .line 855
    :goto_a
    invoke-virtual {v0}, Landroidx/compose/animation/Scale;->getTransformOrigin-SzJe1aQ()J

    .line 856
    .line 857
    .line 858
    move-result-wide v0

    .line 859
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 860
    .line 861
    .line 862
    move-result-object v6

    .line 863
    goto :goto_b

    .line 864
    :cond_1d
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 865
    .line 866
    .line 867
    move-result-object v0

    .line 868
    invoke-virtual {v0}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 869
    .line 870
    .line 871
    move-result-object v0

    .line 872
    if-eqz v0, :cond_1b

    .line 873
    .line 874
    goto :goto_a

    .line 875
    :goto_b
    sget-object v4, Landroidx/compose/animation/EnterExitTransitionKt;->TransformOriginVectorConverter:Landroidx/compose/animation/core/TwoWayConverter;

    .line 876
    .line 877
    or-int/lit16 v0, v15, 0xc40

    .line 878
    .line 879
    const v1, -0x880d1ef

    .line 880
    .line 881
    .line 882
    invoke-interface {v12, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 883
    .line 884
    .line 885
    sget-object v1, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$$inlined$animateValue$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$createModifier$$inlined$animateValue$1;

    .line 886
    .line 887
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getCurrentState()Ljava/lang/Object;

    .line 888
    .line 889
    .line 890
    move-result-object v2

    .line 891
    check-cast v2, Landroidx/compose/animation/EnterExitState;

    .line 892
    .line 893
    const v3, -0x112d0e25

    .line 894
    .line 895
    .line 896
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 900
    .line 901
    .line 902
    move-result v2

    .line 903
    aget v2, v11, v2

    .line 904
    .line 905
    if-eq v2, v8, :cond_23

    .line 906
    .line 907
    const/4 v5, 0x2

    .line 908
    if-eq v2, v5, :cond_21

    .line 909
    .line 910
    const/4 v5, 0x3

    .line 911
    if-ne v2, v5, :cond_20

    .line 912
    .line 913
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 914
    .line 915
    .line 916
    move-result-object v2

    .line 917
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 918
    .line 919
    .line 920
    move-result-object v2

    .line 921
    if-eqz v2, :cond_1e

    .line 922
    .line 923
    :goto_c
    invoke-virtual {v2}, Landroidx/compose/animation/Scale;->getTransformOrigin-SzJe1aQ()J

    .line 924
    .line 925
    .line 926
    move-result-wide v15

    .line 927
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 928
    .line 929
    .line 930
    move-result-object v2

    .line 931
    goto :goto_e

    .line 932
    :cond_1e
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 937
    .line 938
    .line 939
    move-result-object v2

    .line 940
    if-eqz v2, :cond_1f

    .line 941
    .line 942
    goto :goto_c

    .line 943
    :cond_1f
    move-object/from16 v2, v20

    .line 944
    .line 945
    goto :goto_e

    .line 946
    :cond_20
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 947
    .line 948
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 949
    .line 950
    .line 951
    throw v0

    .line 952
    :cond_21
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 957
    .line 958
    .line 959
    move-result-object v2

    .line 960
    if-eqz v2, :cond_22

    .line 961
    .line 962
    :goto_d
    invoke-virtual {v2}, Landroidx/compose/animation/Scale;->getTransformOrigin-SzJe1aQ()J

    .line 963
    .line 964
    .line 965
    move-result-wide v15

    .line 966
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 967
    .line 968
    .line 969
    move-result-object v2

    .line 970
    goto :goto_e

    .line 971
    :cond_22
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 972
    .line 973
    .line 974
    move-result-object v2

    .line 975
    invoke-virtual {v2}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 976
    .line 977
    .line 978
    move-result-object v2

    .line 979
    if-eqz v2, :cond_1f

    .line 980
    .line 981
    goto :goto_d

    .line 982
    :cond_23
    move-object v2, v6

    .line 983
    :goto_e
    if-eqz v2, :cond_24

    .line 984
    .line 985
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/TransformOrigin;->unbox-impl()J

    .line 986
    .line 987
    .line 988
    move-result-wide v15

    .line 989
    goto :goto_f

    .line 990
    :cond_24
    sget-object v2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 991
    .line 992
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 993
    .line 994
    .line 995
    move-result-wide v15

    .line 996
    :goto_f
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 997
    .line 998
    .line 999
    invoke-static/range {v15 .. v16}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 1000
    .line 1001
    .line 1002
    move-result-object v2

    .line 1003
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getTargetState()Ljava/lang/Object;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v5

    .line 1007
    check-cast v5, Landroidx/compose/animation/EnterExitState;

    .line 1008
    .line 1009
    invoke-interface {v12, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    .line 1013
    .line 1014
    .line 1015
    move-result v3

    .line 1016
    aget v3, v11, v3

    .line 1017
    .line 1018
    if-eq v3, v8, :cond_2a

    .line 1019
    .line 1020
    const/4 v5, 0x2

    .line 1021
    if-eq v3, v5, :cond_28

    .line 1022
    .line 1023
    const/4 v5, 0x3

    .line 1024
    if-ne v3, v5, :cond_27

    .line 1025
    .line 1026
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 1027
    .line 1028
    .line 1029
    move-result-object v3

    .line 1030
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    if-eqz v3, :cond_25

    .line 1035
    .line 1036
    :goto_10
    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->getTransformOrigin-SzJe1aQ()J

    .line 1037
    .line 1038
    .line 1039
    move-result-wide v5

    .line 1040
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v6

    .line 1044
    goto :goto_12

    .line 1045
    :cond_25
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 1046
    .line 1047
    .line 1048
    move-result-object v3

    .line 1049
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 1050
    .line 1051
    .line 1052
    move-result-object v3

    .line 1053
    if-eqz v3, :cond_26

    .line 1054
    .line 1055
    goto :goto_10

    .line 1056
    :cond_26
    move-object/from16 v6, v20

    .line 1057
    .line 1058
    goto :goto_12

    .line 1059
    :cond_27
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 1060
    .line 1061
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 1062
    .line 1063
    .line 1064
    throw v0

    .line 1065
    :cond_28
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/animation/EnterTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v3

    .line 1069
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 1070
    .line 1071
    .line 1072
    move-result-object v3

    .line 1073
    if-eqz v3, :cond_29

    .line 1074
    .line 1075
    :goto_11
    invoke-virtual {v3}, Landroidx/compose/animation/Scale;->getTransformOrigin-SzJe1aQ()J

    .line 1076
    .line 1077
    .line 1078
    move-result-wide v5

    .line 1079
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 1080
    .line 1081
    .line 1082
    move-result-object v6

    .line 1083
    goto :goto_12

    .line 1084
    :cond_29
    invoke-virtual/range {p2 .. p2}, Landroidx/compose/animation/ExitTransition;->getData$animation_release()Landroidx/compose/animation/TransitionData;

    .line 1085
    .line 1086
    .line 1087
    move-result-object v3

    .line 1088
    invoke-virtual {v3}, Landroidx/compose/animation/TransitionData;->getScale()Landroidx/compose/animation/Scale;

    .line 1089
    .line 1090
    .line 1091
    move-result-object v3

    .line 1092
    if-eqz v3, :cond_26

    .line 1093
    .line 1094
    goto :goto_11

    .line 1095
    :cond_2a
    :goto_12
    if-eqz v6, :cond_2b

    .line 1096
    .line 1097
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/TransformOrigin;->unbox-impl()J

    .line 1098
    .line 1099
    .line 1100
    move-result-wide v5

    .line 1101
    goto :goto_13

    .line 1102
    :cond_2b
    sget-object v3, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 1103
    .line 1104
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 1105
    .line 1106
    .line 1107
    move-result-wide v5

    .line 1108
    :goto_13
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1109
    .line 1110
    .line 1111
    invoke-static {v5, v6}, Landroidx/compose/ui/graphics/TransformOrigin;->box-impl(J)Landroidx/compose/ui/graphics/TransformOrigin;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v3

    .line 1115
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/animation/core/Transition;->getSegment()Landroidx/compose/animation/core/Transition$Segment;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v5

    .line 1119
    invoke-interface {v1, v5, v12, v13}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v1

    .line 1123
    move-object v5, v1

    .line 1124
    check-cast v5, Landroidx/compose/animation/core/FiniteAnimationSpec;

    .line 1125
    .line 1126
    and-int/lit8 v0, v0, 0xe

    .line 1127
    .line 1128
    const v1, 0x38000

    .line 1129
    .line 1130
    .line 1131
    or-int v8, v0, v1

    .line 1132
    .line 1133
    const-string v6, "TransformOriginInterruptionHandling"

    .line 1134
    .line 1135
    move-object/from16 v0, p0

    .line 1136
    .line 1137
    move-object v1, v2

    .line 1138
    move-object v2, v3

    .line 1139
    move-object v3, v5

    .line 1140
    move-object v5, v6

    .line 1141
    move-object/from16 v6, p4

    .line 1142
    .line 1143
    move-object v9, v7

    .line 1144
    move v7, v8

    .line 1145
    invoke-static/range {v0 .. v7}, Landroidx/compose/animation/core/TransitionKt;->createTransitionAnimation(Landroidx/compose/animation/core/Transition;Ljava/lang/Object;Ljava/lang/Object;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/animation/core/TwoWayConverter;Ljava/lang/String;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 1146
    .line 1147
    .line 1148
    move-result-object v0

    .line 1149
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1150
    .line 1151
    .line 1152
    new-instance v1, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;

    .line 1153
    .line 1154
    move-object/from16 v2, v23

    .line 1155
    .line 1156
    invoke-direct {v1, v2, v9, v0}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$1;-><init>(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V

    .line 1157
    .line 1158
    .line 1159
    invoke-static {v14, v1}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v14

    .line 1163
    goto :goto_14

    .line 1164
    :cond_2c
    move-object v2, v7

    .line 1165
    invoke-static/range {v19 .. v19}, Landroidx/compose/animation/EnterExitTransitionKt;->createModifier$lambda-1(Landroidx/compose/runtime/MutableState;)Z

    .line 1166
    .line 1167
    .line 1168
    move-result v0

    .line 1169
    if-eqz v0, :cond_2d

    .line 1170
    .line 1171
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2;

    .line 1172
    .line 1173
    invoke-direct {v0, v2}, Landroidx/compose/animation/EnterExitTransitionKt$createModifier$2;-><init>(Landroidx/compose/runtime/State;)V

    .line 1174
    .line 1175
    .line 1176
    invoke-static {v14, v0}, Landroidx/compose/ui/graphics/GraphicsLayerModifierKt;->graphicsLayer(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    .line 1177
    .line 1178
    .line 1179
    move-result-object v14

    .line 1180
    :cond_2d
    :goto_14
    invoke-interface/range {p4 .. p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 1181
    .line 1182
    .line 1183
    return-object v14
.end method

.method private static final createModifier$lambda-1(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final createModifier$lambda-11(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final createModifier$lambda-13(Landroidx/compose/runtime/State;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/ui/graphics/TransformOrigin;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Landroidx/compose/ui/graphics/TransformOrigin;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/TransformOrigin;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method private static final createModifier$lambda-2(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final createModifier$lambda-4(Landroidx/compose/runtime/MutableState;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final createModifier$lambda-5(Landroidx/compose/runtime/MutableState;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static final createModifier$lambda-8(Landroidx/compose/runtime/State;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final expandHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "expandFrom"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initialWidth"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->toAlignment(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$2;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic expandHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    move p2, v0

    .line 39
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandHorizontally$1;

    .line 44
    .line 45
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->expandHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final expandIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "expandFrom"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initialSize"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 17
    .line 18
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 19
    .line 20
    new-instance v4, Landroidx/compose/animation/ChangeSize;

    .line 21
    .line 22
    invoke-direct {v4, p1, p3, p0, p2}, Landroidx/compose/animation/ChangeSize;-><init>(Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    .line 23
    .line 24
    .line 25
    const/16 v6, 0xb

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v1, v8

    .line 32
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static synthetic expandIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getBottomEnd()Landroidx/compose/ui/Alignment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    move p2, v0

    .line 39
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$expandIn$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandIn$1;

    .line 44
    .line 45
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final expandVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "expandFrom"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "initialHeight"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->toAlignment(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Alignment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$2;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->expandIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic expandVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    move p2, v0

    .line 39
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$expandVertically$1;

    .line 44
    .line 45
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->expandVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final fadeIn(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/EnterTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 7
    .line 8
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 9
    .line 10
    new-instance v2, Landroidx/compose/animation/Fade;

    .line 11
    .line 12
    invoke-direct {v2, p1, p0}, Landroidx/compose/animation/Fade;-><init>(FLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 13
    .line 14
    .line 15
    const/16 v6, 0xe

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, v8

    .line 22
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static synthetic fadeIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 2

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/high16 p0, 0x43c80000    # 400.0f

    .line 7
    .line 8
    const/4 p3, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p0, v1, p3, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeIn(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/EnterTransition;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final fadeOut(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/ExitTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;F)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 7
    .line 8
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 9
    .line 10
    new-instance v2, Landroidx/compose/animation/Fade;

    .line 11
    .line 12
    invoke-direct {v2, p1, p0}, Landroidx/compose/animation/Fade;-><init>(FLandroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 13
    .line 14
    .line 15
    const/16 v6, 0xe

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    const/4 v3, 0x0

    .line 19
    const/4 v4, 0x0

    .line 20
    const/4 v5, 0x0

    .line 21
    move-object v1, v8

    .line 22
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public static synthetic fadeOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 2

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    const/high16 p0, 0x43c80000    # 400.0f

    .line 7
    .line 8
    const/4 p3, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p0, v1, p3, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 15
    .line 16
    if-eqz p2, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->fadeOut(Landroidx/compose/animation/core/FiniteAnimationSpec;F)Landroidx/compose/animation/ExitTransition;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static final scaleIn-L8ZKh-E(Landroidx/compose/animation/core/FiniteAnimationSpec;FJ)Landroidx/compose/animation/EnterTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;FJ)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 7
    .line 8
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 9
    .line 10
    new-instance v7, Landroidx/compose/animation/Scale;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, v7

    .line 14
    move v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move-object v5, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x7

    .line 21
    const/4 p0, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v1, v8

    .line 26
    move-object v5, v7

    .line 27
    move-object v7, p0

    .line 28
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static synthetic scaleIn-L8ZKh-E$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FJILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 2

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    const/high16 p0, 0x43c80000    # 400.0f

    .line 7
    .line 8
    const/4 p5, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p0, v1, p5, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 15
    .line 16
    if-eqz p5, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 20
    .line 21
    if-eqz p4, :cond_2

    .line 22
    .line 23
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleIn-L8ZKh-E(Landroidx/compose/animation/core/FiniteAnimationSpec;FJ)Landroidx/compose/animation/EnterTransition;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method public static final scaleOut-L8ZKh-E(Landroidx/compose/animation/core/FiniteAnimationSpec;FJ)Landroidx/compose/animation/ExitTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/animation/ExperimentalAnimationApi;
    .end annotation

    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Ljava/lang/Float;",
            ">;FJ)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 7
    .line 8
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 9
    .line 10
    new-instance v7, Landroidx/compose/animation/Scale;

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    move-object v1, v7

    .line 14
    move v2, p1

    .line 15
    move-wide v3, p2

    .line 16
    move-object v5, p0

    .line 17
    invoke-direct/range {v1 .. v6}, Landroidx/compose/animation/Scale;-><init>(FJLandroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x7

    .line 21
    const/4 p0, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    move-object v1, v8

    .line 26
    move-object v5, v7

    .line 27
    move-object v7, p0

    .line 28
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public static synthetic scaleOut-L8ZKh-E$default(Landroidx/compose/animation/core/FiniteAnimationSpec;FJILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 2

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    const/high16 p0, 0x43c80000    # 400.0f

    .line 7
    .line 8
    const/4 p5, 0x5

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-static {v0, p0, v1, p5, v1}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 15
    .line 16
    if-eqz p5, :cond_1

    .line 17
    .line 18
    move p1, v0

    .line 19
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 20
    .line 21
    if-eqz p4, :cond_2

    .line 22
    .line 23
    sget-object p2, Landroidx/compose/ui/graphics/TransformOrigin;->Companion:Landroidx/compose/ui/graphics/TransformOrigin$Companion;

    .line 24
    .line 25
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/TransformOrigin$Companion;->getCenter-SzJe1aQ()J

    .line 26
    .line 27
    .line 28
    move-result-wide p2

    .line 29
    :cond_2
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->scaleOut-L8ZKh-E(Landroidx/compose/animation/core/FiniteAnimationSpec;FJ)Landroidx/compose/animation/ExitTransition;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method

.method private static final shrinkExpand(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/ChangeSize;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkExpand$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final shrinkHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Horizontal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Horizontal;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shrinkTowards"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "targetWidth"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->toAlignment(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$2;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic shrinkHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    move p2, v0

    .line 39
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkHorizontally$1;

    .line 44
    .line 45
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Horizontal;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final shrinkOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shrinkTowards"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "targetSize"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 17
    .line 18
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 19
    .line 20
    new-instance v4, Landroidx/compose/animation/ChangeSize;

    .line 21
    .line 22
    invoke-direct {v4, p1, p3, p0, p2}, Landroidx/compose/animation/ChangeSize;-><init>(Landroidx/compose/ui/Alignment;Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;Z)V

    .line 23
    .line 24
    .line 25
    const/16 v6, 0xb

    .line 26
    .line 27
    const/4 v7, 0x0

    .line 28
    const/4 v2, 0x0

    .line 29
    const/4 v3, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    move-object v1, v8

    .line 32
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 33
    .line 34
    .line 35
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 36
    .line 37
    .line 38
    return-object v0
.end method

.method public static synthetic shrinkOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getBottomEnd()Landroidx/compose/ui/Alignment;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    move p2, v0

    .line 39
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$shrinkOut$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkOut$1;

    .line 44
    .line 45
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final shrinkVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Alignment$Vertical;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;",
            "Landroidx/compose/ui/Alignment$Vertical;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shrinkTowards"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "targetHeight"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1}, Landroidx/compose/animation/EnterExitTransitionKt;->toAlignment(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Alignment;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$2;

    .line 21
    .line 22
    invoke-direct {v0, p3}, Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1, p2, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic shrinkVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eqz p5, :cond_0

    .line 5
    .line 6
    sget-object p0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 7
    .line 8
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntSize$Companion;)J

    .line 9
    .line 10
    .line 11
    move-result-wide v1

    .line 12
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const/4 p5, 0x0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/high16 v2, 0x43c80000    # 400.0f

    .line 19
    .line 20
    invoke-static {v1, v2, p0, v0, p5}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 25
    .line 26
    if-eqz p5, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 29
    .line 30
    invoke-virtual {p1}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :cond_1
    and-int/lit8 p5, p4, 0x4

    .line 35
    .line 36
    if-eqz p5, :cond_2

    .line 37
    .line 38
    move p2, v0

    .line 39
    :cond_2
    and-int/lit8 p4, p4, 0x8

    .line 40
    .line 41
    if-eqz p4, :cond_3

    .line 42
    .line 43
    sget-object p3, Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$shrinkVertically$1;

    .line 44
    .line 45
    :cond_3
    invoke-static {p0, p1, p2, p3}, Landroidx/compose/animation/EnterExitTransitionKt;->shrinkVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/Alignment$Vertical;ZLkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static final slideIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initialOffset"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/EnterTransitionImpl;

    .line 12
    .line 13
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 14
    .line 15
    new-instance v3, Landroidx/compose/animation/Slide;

    .line 16
    .line 17
    invoke-direct {v3, p1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 18
    .line 19
    .line 20
    const/16 v6, 0xd

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, v8

    .line 27
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v8}, Landroidx/compose/animation/EnterTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static synthetic slideIn$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 2

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x43c80000    # 400.0f

    .line 18
    .line 19
    invoke-static {v0, v1, p0, p3, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final slideInHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initialOffsetX"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic slideInHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x43c80000    # 400.0f

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, p0, v2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$slideInHorizontally$1;

    .line 29
    .line 30
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static final slideInOut(Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/animation/core/Transition<",
            "Landroidx/compose/animation/EnterExitState;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Landroidx/compose/runtime/State<",
            "Landroidx/compose/animation/Slide;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroidx/compose/ui/Modifier;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Landroidx/compose/animation/EnterExitTransitionKt$slideInOut$1;-><init>(Landroidx/compose/animation/core/Transition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p0, p2, v0, p1, p2}, Landroidx/compose/ui/ComposedModifierKt;->composed$default(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Lat/n;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static final slideInVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/EnterTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "initialOffsetY"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideIn(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic slideInVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/EnterTransition;
    .locals 3

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x43c80000    # 400.0f

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, p0, v2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$slideInVertically$1;

    .line 29
    .line 30
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideInVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/EnterTransition;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final slideOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;
    .locals 9
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/unit/IntSize;",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetOffset"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    .line 12
    .line 13
    new-instance v8, Landroidx/compose/animation/TransitionData;

    .line 14
    .line 15
    new-instance v3, Landroidx/compose/animation/Slide;

    .line 16
    .line 17
    invoke-direct {v3, p1, p0}, Landroidx/compose/animation/Slide;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/animation/core/FiniteAnimationSpec;)V

    .line 18
    .line 19
    .line 20
    const/16 v6, 0xd

    .line 21
    .line 22
    const/4 v7, 0x0

    .line 23
    const/4 v2, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v1, v8

    .line 27
    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {v0, v8}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    .line 31
    .line 32
    .line 33
    return-object v0
.end method

.method public static synthetic slideOut$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 2

    .line 1
    const/4 p3, 0x1

    .line 2
    and-int/2addr p2, p3

    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p2, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x43c80000    # 400.0f

    .line 18
    .line 19
    invoke-static {v0, v1, p0, p3, p2}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static final slideOutHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetOffsetX"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$2;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic slideOutHorizontally$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x43c80000    # 400.0f

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, p0, v2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$slideOutHorizontally$1;

    .line 29
    .line 30
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutHorizontally(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method public static final slideOutVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;
    .locals 1
    .param p0    # Landroidx/compose/animation/core/FiniteAnimationSpec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/animation/core/FiniteAnimationSpec<",
            "Landroidx/compose/ui/unit/IntOffset;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroidx/compose/animation/ExitTransition;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "animationSpec"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetOffsetY"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$2;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0, v0}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOut(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0
.end method

.method public static synthetic slideOutVertically$default(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/animation/ExitTransition;
    .locals 3

    .line 1
    and-int/lit8 p3, p2, 0x1

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/compose/animation/core/VisibilityThresholdsKt;->getVisibilityThreshold(Landroidx/compose/ui/unit/IntOffset$Companion;)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->box-impl(J)Landroidx/compose/ui/unit/IntOffset;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p3, 0x0

    .line 16
    const/4 v0, 0x0

    .line 17
    const/high16 v1, 0x43c80000    # 400.0f

    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v1, p0, v2, p3}, Landroidx/compose/animation/core/AnimationSpecKt;->spring$default(FFLjava/lang/Object;ILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    :cond_0
    and-int/lit8 p2, p2, 0x2

    .line 25
    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    sget-object p1, Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$1;->INSTANCE:Landroidx/compose/animation/EnterExitTransitionKt$slideOutVertically$1;

    .line 29
    .line 30
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/animation/EnterExitTransitionKt;->slideOutVertically(Landroidx/compose/animation/core/FiniteAnimationSpec;Lkotlin/jvm/functions/Function1;)Landroidx/compose/animation/ExitTransition;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method

.method private static final toAlignment(Landroidx/compose/ui/Alignment$Horizontal;)Landroidx/compose/ui/Alignment;
    .locals 2

    .line 1
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getStart()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterStart()Landroidx/compose/ui/Alignment;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getEnd()Landroidx/compose/ui/Alignment$Horizontal;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenterEnd()Landroidx/compose/ui/Alignment;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static final toAlignment(Landroidx/compose/ui/Alignment$Vertical;)Landroidx/compose/ui/Alignment;
    .locals 2

    .line 4
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTop()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getTopCenter()Landroidx/compose/ui/Alignment;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottom()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    move-result-object p0

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object p0

    :goto_0
    return-object p0
.end method
