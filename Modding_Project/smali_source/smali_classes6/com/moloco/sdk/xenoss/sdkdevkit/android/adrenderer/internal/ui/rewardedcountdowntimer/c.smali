.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$e;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardedCountDownTimer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 8 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 9 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 10 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 11 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,185:1\n155#2:186\n155#2:187\n155#2:240\n76#3:188\n76#3:253\n473#4,4:189\n477#4,2:197\n481#4:203\n25#5:193\n460#5,13:265\n473#5,3:291\n1057#6,3:194\n1060#6,3:200\n1057#6,6:204\n1057#6,6:210\n1057#6,6:216\n1057#6,6:222\n1057#6,6:228\n1057#6,6:234\n1057#6,6:241\n1057#6,6:279\n1057#6,6:285\n473#7:199\n68#8,5:247\n73#8:278\n77#8:295\n75#9:252\n76#9,11:254\n89#9:294\n76#10:296\n102#10,2:297\n76#10:299\n102#10,2:300\n62#11,5:302\n*S KotlinDebug\n*F\n+ 1 RewardedCountDownTimer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerKt\n*L\n59#1:186\n60#1:187\n138#1:240\n62#1:188\n134#1:253\n63#1:189,4\n63#1:197,2\n63#1:203\n63#1:193\n134#1:265,13\n134#1:291,3\n63#1:194,3\n63#1:200,3\n67#1:204,6\n71#1:210,6\n76#1:216,6\n79#1:222,6\n100#1:228,6\n106#1:234,6\n140#1:241,6\n147#1:279,6\n176#1:285,6\n63#1:199\n134#1:247,5\n134#1:278\n134#1:295\n134#1:252\n134#1:254,11\n134#1:294\n67#1:296\n67#1:297,2\n71#1:299\n71#1:300,2\n128#1:302,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/lifecycle/LifecycleOwner;Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    .line 1
    const-string v0, "$this$DisposableEffect"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/x;

    .line 7
    .line 8
    invoke-direct {p4, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/x;-><init>(Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1, p4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$d;

    .line 19
    .line 20
    invoke-direct {p1, p0, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$d;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public static final b()Landroidx/compose/runtime/MutableState;
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-static {v0, v1, v2, v1}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static final c(JFLandroidx/compose/animation/core/Animatable;JLandroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 26

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v15, p6

    .line 4
    .line 5
    const-string v1, "$this$Canvas"

    .line 6
    .line 7
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-interface/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 27
    .line 28
    .line 29
    move-result-wide v9

    .line 30
    new-instance v12, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 31
    .line 32
    invoke-interface {v15, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    sget-object v17, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 37
    .line 38
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    const/16 v7, 0x1a

    .line 43
    .line 44
    const/4 v8, 0x0

    .line 45
    const/4 v3, 0x0

    .line 46
    const/4 v5, 0x0

    .line 47
    const/4 v6, 0x0

    .line 48
    move-object v1, v12

    .line 49
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    const/16 v16, 0x350

    .line 53
    .line 54
    const/16 v18, 0x0

    .line 55
    .line 56
    const/high16 v4, 0x43b40000    # 360.0f

    .line 57
    .line 58
    const/high16 v5, 0x43b40000    # 360.0f

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    const-wide/16 v7, 0x0

    .line 62
    .line 63
    const/4 v11, 0x0

    .line 64
    const/4 v13, 0x0

    .line 65
    const/4 v14, 0x0

    .line 66
    move-object/from16 v1, p6

    .line 67
    .line 68
    move-wide/from16 v2, p0

    .line 69
    .line 70
    move/from16 v15, v16

    .line 71
    .line 72
    move-object/from16 v16, v18

    .line 73
    .line 74
    invoke-static/range {v1 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Ljava/lang/Number;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    const/4 v2, 0x0

    .line 88
    cmpl-float v1, v1, v2

    .line 89
    .line 90
    if-lez v1, :cond_0

    .line 91
    .line 92
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    check-cast v1, Ljava/lang/Number;

    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    invoke-static {v1, v2}, Lkotlin/ranges/e;->d(FF)F

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 107
    .line 108
    mul-float v4, v1, v2

    .line 109
    .line 110
    invoke-interface/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 111
    .line 112
    .line 113
    move-result-wide v1

    .line 114
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    .line 115
    .line 116
    .line 117
    move-result v1

    .line 118
    invoke-interface/range {p6 .. p6}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    .line 119
    .line 120
    .line 121
    move-result-wide v2

    .line 122
    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 127
    .line 128
    .line 129
    move-result-wide v8

    .line 130
    new-instance v11, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 131
    .line 132
    move-object/from16 v1, p6

    .line 133
    .line 134
    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 135
    .line 136
    .line 137
    move-result v19

    .line 138
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    .line 139
    .line 140
    .line 141
    move-result v21

    .line 142
    const/16 v24, 0x1a

    .line 143
    .line 144
    const/16 v25, 0x0

    .line 145
    .line 146
    const/16 v20, 0x0

    .line 147
    .line 148
    const/16 v22, 0x0

    .line 149
    .line 150
    const/16 v23, 0x0

    .line 151
    .line 152
    move-object/from16 v18, v11

    .line 153
    .line 154
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 155
    .line 156
    .line 157
    const/16 v14, 0x350

    .line 158
    .line 159
    const/4 v15, 0x0

    .line 160
    const/high16 v3, 0x43870000    # 270.0f

    .line 161
    .line 162
    const/4 v5, 0x0

    .line 163
    const-wide/16 v6, 0x0

    .line 164
    .line 165
    const/4 v10, 0x0

    .line 166
    const/4 v12, 0x0

    .line 167
    const/4 v13, 0x0

    .line 168
    move-object/from16 v0, p6

    .line 169
    .line 170
    move-wide/from16 v1, p4

    .line 171
    .line 172
    invoke-static/range {v0 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    return-object v0
.end method

.method public static final d(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 15

    .line 1
    or-int/lit8 v13, p12, 0x1

    .line 2
    .line 3
    move-wide v0, p0

    .line 4
    move-wide/from16 v2, p2

    .line 5
    .line 6
    move-object/from16 v4, p4

    .line 7
    .line 8
    move/from16 v5, p5

    .line 9
    .line 10
    move/from16 v6, p6

    .line 11
    .line 12
    move-object/from16 v7, p7

    .line 13
    .line 14
    move-object/from16 v8, p8

    .line 15
    .line 16
    move-object/from16 v9, p9

    .line 17
    .line 18
    move/from16 v10, p10

    .line 19
    .line 20
    move/from16 v11, p11

    .line 21
    .line 22
    move-object/from16 v12, p14

    .line 23
    .line 24
    move/from16 v14, p13

    .line 25
    .line 26
    invoke-static/range {v0 .. v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->f(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IILandroidx/compose/runtime/Composer;II)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object v0
.end method

.method public static final e(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$semantics"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final f(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IILandroidx/compose/runtime/Composer;II)V
    .locals 40
    .param p4    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/ui/Modifier;",
            "FF",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lgt/g0;",
            "II",
            "Landroidx/compose/runtime/Composer;",
            "II)V"
        }
    .end annotation

    move-wide/from16 v7, p0

    move-wide/from16 v13, p2

    move-object/from16 v11, p7

    move/from16 v12, p10

    move/from16 v9, p11

    move/from16 v15, p13

    move/from16 v10, p14

    const/16 v1, 0x10

    const/4 v3, 0x4

    const/4 v6, 0x6

    const-string v5, "onTimerFinish"

    invoke-static {v11, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v5, 0x300bc731

    move-object/from16 v0, p12

    .line 1
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    const/4 v5, 0x1

    and-int/lit8 v18, v10, 0x1

    const/4 v5, 0x2

    if-eqz v18, :cond_0

    or-int/lit8 v18, v15, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v18, v15, 0x6

    if-nez v18, :cond_2

    invoke-interface {v0, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v18

    if-eqz v18, :cond_1

    move/from16 v18, v3

    goto :goto_0

    :cond_1
    move/from16 v18, v5

    :goto_0
    or-int v18, v15, v18

    goto :goto_1

    :cond_2
    move/from16 v18, v15

    :goto_1
    and-int/lit8 v19, v10, 0x2

    if-eqz v19, :cond_4

    or-int/lit8 v18, v18, 0x30

    :cond_3
    :goto_2
    move/from16 v6, v18

    goto :goto_4

    :cond_4
    and-int/lit8 v19, v15, 0x30

    if-nez v19, :cond_3

    invoke-interface {v0, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v19

    if-eqz v19, :cond_5

    const/16 v19, 0x20

    goto :goto_3

    :cond_5
    move/from16 v19, v1

    :goto_3
    or-int v18, v18, v19

    goto :goto_2

    :goto_4
    and-int/2addr v3, v10

    if-eqz v3, :cond_7

    or-int/lit16 v6, v6, 0x180

    :cond_6
    move-object/from16 v5, p4

    goto :goto_6

    :cond_7
    and-int/lit16 v5, v15, 0x180

    if-nez v5, :cond_6

    move-object/from16 v5, p4

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    const/16 v18, 0x100

    goto :goto_5

    :cond_8
    const/16 v18, 0x80

    :goto_5
    or-int v6, v6, v18

    :goto_6
    and-int/lit8 v18, v10, 0x8

    if-eqz v18, :cond_a

    or-int/lit16 v6, v6, 0xc00

    :cond_9
    move/from16 v4, p5

    goto :goto_8

    :cond_a
    and-int/lit16 v4, v15, 0xc00

    if-nez v4, :cond_9

    move/from16 v4, p5

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v20

    if-eqz v20, :cond_b

    const/16 v20, 0x800

    goto :goto_7

    :cond_b
    const/16 v20, 0x400

    :goto_7
    or-int v6, v6, v20

    :goto_8
    and-int/2addr v1, v10

    if-eqz v1, :cond_d

    or-int/lit16 v6, v6, 0x6000

    :cond_c
    move/from16 v2, p6

    :goto_9
    const/16 v20, 0x20

    goto :goto_b

    :cond_d
    and-int/lit16 v2, v15, 0x6000

    if-nez v2, :cond_c

    move/from16 v2, p6

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v21

    if-eqz v21, :cond_e

    const/16 v21, 0x4000

    goto :goto_a

    :cond_e
    const/16 v21, 0x2000

    :goto_a
    or-int v6, v6, v21

    goto :goto_9

    :goto_b
    and-int/lit8 v20, v10, 0x20

    const/high16 v21, 0x30000

    if-eqz v20, :cond_f

    or-int v6, v6, v21

    goto :goto_d

    :cond_f
    and-int v20, v15, v21

    if-nez v20, :cond_11

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_10

    const/high16 v20, 0x20000

    goto :goto_c

    :cond_10
    const/high16 v20, 0x10000

    :goto_c
    or-int v6, v6, v20

    :cond_11
    :goto_d
    const/high16 v20, 0x180000

    and-int v20, v15, v20

    if-nez v20, :cond_13

    and-int/lit8 v20, v10, 0x40

    move-object/from16 v2, p8

    if-nez v20, :cond_12

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_12

    const/high16 v20, 0x100000

    goto :goto_e

    :cond_12
    const/high16 v20, 0x80000

    :goto_e
    or-int v6, v6, v20

    goto :goto_f

    :cond_13
    move-object/from16 v2, p8

    :goto_f
    const/high16 v20, 0xc00000

    and-int v20, v15, v20

    if-nez v20, :cond_15

    const/16 v2, 0x80

    and-int/lit16 v4, v10, 0x80

    move-object/from16 v2, p9

    if-nez v4, :cond_14

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    const/high16 v4, 0x800000

    goto :goto_10

    :cond_14
    const/high16 v4, 0x400000

    :goto_10
    or-int/2addr v6, v4

    :goto_11
    const/16 v4, 0x100

    goto :goto_12

    :cond_15
    move-object/from16 v2, p9

    goto :goto_11

    :goto_12
    and-int/2addr v4, v10

    const/high16 v16, 0x6000000

    if-eqz v4, :cond_16

    or-int v6, v6, v16

    goto :goto_14

    :cond_16
    and-int v4, v15, v16

    if-nez v4, :cond_18

    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_17

    const/high16 v4, 0x4000000

    goto :goto_13

    :cond_17
    const/high16 v4, 0x2000000

    :goto_13
    or-int/2addr v6, v4

    :cond_18
    :goto_14
    and-int/lit16 v4, v10, 0x200

    const/high16 v16, 0x30000000

    if-eqz v4, :cond_19

    or-int v6, v6, v16

    goto :goto_16

    :cond_19
    and-int v4, v15, v16

    if-nez v4, :cond_1b

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/high16 v4, 0x20000000

    goto :goto_15

    :cond_1a
    const/high16 v4, 0x10000000

    :goto_15
    or-int/2addr v6, v4

    :cond_1b
    :goto_16
    const v4, 0x12492493

    and-int/2addr v4, v6

    const v2, 0x12492492

    if-ne v4, v2, :cond_1d

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_17

    .line 2
    :cond_1c
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object v4, v0

    goto/16 :goto_26

    .line 3
    :cond_1d
    :goto_17
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const/16 v16, 0x1

    and-int/lit8 v2, v15, 0x1

    const v4, -0x1c00001

    const v20, -0x380001

    if-eqz v2, :cond_21

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_18

    .line 4
    :cond_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v1, v10, 0x40

    if-eqz v1, :cond_1f

    and-int v6, v6, v20

    :cond_1f
    const/16 v1, 0x80

    and-int/2addr v1, v10

    if-eqz v1, :cond_20

    and-int/2addr v6, v4

    :cond_20
    move/from16 v4, p6

    move-object/from16 v3, p8

    move-object/from16 v2, p9

    move v1, v6

    move-object v6, v5

    move/from16 v5, p5

    goto/16 :goto_1e

    :cond_21
    :goto_18
    if-eqz v3, :cond_22

    .line 5
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_19

    :cond_22
    move-object v2, v5

    :goto_19
    if-eqz v18, :cond_23

    const/4 v3, 0x7

    int-to-float v3, v3

    .line 6
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    goto :goto_1a

    :cond_23
    move/from16 v3, p5

    :goto_1a
    if-eqz v1, :cond_24

    const/16 v1, 0x1e

    int-to-float v1, v1

    .line 7
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v1

    goto :goto_1b

    :cond_24
    move/from16 v1, p6

    :goto_1b
    and-int/lit8 v5, v10, 0x40

    if-eqz v5, :cond_25

    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    .line 9
    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/lifecycle/LifecycleOwner;

    and-int v6, v6, v20

    :goto_1c
    const/16 v4, 0x80

    goto :goto_1d

    :cond_25
    move-object/from16 v5, p8

    goto :goto_1c

    :goto_1d
    and-int/2addr v4, v10

    if-eqz v4, :cond_27

    const v4, 0x2e20b340

    .line 10
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v4, -0x1d58f75c

    .line 11
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 13
    sget-object v18, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 p4, v1

    invoke-virtual/range {v18 .. v18}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v4, v1, :cond_26

    .line 14
    sget-object v1, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    invoke-static {v1, v0}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    move-result-object v1

    .line 16
    new-instance v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v4, v1}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 17
    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 18
    :cond_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 19
    check-cast v4, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 20
    invoke-virtual {v4}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v4, -0x1c00001

    and-int/2addr v6, v4

    move/from16 v4, p4

    move-object/from16 v38, v2

    move-object v2, v1

    move v1, v6

    move-object/from16 v6, v38

    move-object/from16 v39, v5

    move v5, v3

    move-object/from16 v3, v39

    goto :goto_1e

    :cond_27
    move/from16 p4, v1

    move/from16 v4, p4

    move v1, v6

    move-object v6, v2

    move-object/from16 v2, p9

    move-object/from16 v38, v5

    move v5, v3

    move-object/from16 v3, v38

    .line 21
    :goto_1e
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    move-object/from16 p4, v2

    if-eqz v18, :cond_28

    const/4 v2, -0x1

    move/from16 p5, v4

    .line 22
    const-string v4, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimer (RewardedCountDownTimer.kt:65)"

    move/from16 p6, v5

    const v5, 0x300bc731

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    goto :goto_1f

    :cond_28
    move/from16 p5, v4

    move/from16 p6, v5

    :goto_1f
    const v2, 0x487a1ce8    # 256115.62f

    .line 23
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 24
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    .line 25
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v2, :cond_29

    .line 26
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v4, v2, :cond_2a

    .line 27
    :cond_29
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v4, 0x2

    invoke-static {v2, v5, v4, v5}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 28
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v4, v2

    .line 29
    :cond_2a
    check-cast v4, Landroidx/compose/runtime/MutableState;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    const v2, 0x487a2a4d

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 30
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 31
    sget-object v26, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    move/from16 v27, v1

    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_2b

    .line 32
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/r;

    invoke-direct {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/r;-><init>()V

    .line 33
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 34
    :cond_2b
    move-object/from16 v20, v2

    check-cast v20, Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v22, 0xc00

    const/16 v23, 0x6

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v17, v5

    move-object/from16 v21, v0

    invoke-static/range {v17 .. v23}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/runtime/MutableState;

    .line 35
    invoke-static {v9, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/h;->a(II)F

    move-result v2

    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->k(Landroidx/compose/runtime/MutableState;)F

    move-result v5

    invoke-static {v2, v5}, Lkotlin/ranges/e;->i(FF)F

    move-result v2

    const v5, 0x487a4054

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 36
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v17, v3

    .line 37
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    const/4 v10, 0x0

    if-ne v5, v3, :cond_2c

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 38
    invoke-static {v2, v10, v3, v5}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v3

    .line 39
    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    goto :goto_20

    :cond_2c
    move-object/from16 p8, v5

    const/4 v5, 0x0

    move-object/from16 v3, p8

    .line 40
    :goto_20
    check-cast v3, Landroidx/compose/animation/core/Animatable;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 41
    invoke-virtual {v3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Number;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->floatValue()F

    move-result v5

    invoke-static {v1, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->g(Landroidx/compose/runtime/MutableState;F)V

    .line 42
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->j(Landroidx/compose/runtime/MutableState;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static/range {p11 .. p11}, Lms/n;->a(I)Lms/n;

    move-result-object v1

    const v10, 0x487a550f

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v0, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v18

    or-int v10, v10, v18

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v18

    or-int v10, v10, v18

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    or-int v10, v10, v18

    move-object/from16 v18, v1

    .line 43
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v10, :cond_2e

    .line 44
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v1, v10, :cond_2d

    goto :goto_21

    :cond_2d
    move-object/from16 v34, p4

    move/from16 v12, p5

    move/from16 v14, p6

    move-object v15, v0

    move-object/from16 v36, v3

    move-object/from16 p4, v4

    move-object v13, v5

    move-object/from16 v35, v17

    move-object/from16 v33, v18

    move/from16 v18, v27

    goto :goto_22

    .line 45
    :cond_2e
    :goto_21
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$a;

    const/16 v19, 0x0

    move-object v1, v0

    move-object v0, v10

    move-object v15, v1

    move-object/from16 v33, v18

    move/from16 v18, v27

    move-object v1, v3

    move-object/from16 v34, p4

    move-object/from16 v36, v3

    move-object/from16 v35, v17

    move/from16 v3, p11

    move/from16 v12, p5

    move-object/from16 p4, v4

    move/from16 v14, p6

    move-object v13, v5

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$a;-><init>(Landroidx/compose/animation/core/Animatable;FILandroidx/compose/runtime/MutableState;Lrs/c;)V

    .line 46
    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v10

    .line 47
    :goto_22
    check-cast v1, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v0, v18, 0x18

    and-int/lit8 v0, v0, 0x70

    move-object/from16 v2, v33

    invoke-static {v13, v2, v1, v15, v0}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 48
    invoke-static/range {p11 .. p11}, Lms/n;->a(I)Lms/n;

    move-result-object v0

    const v1, 0x487ab842

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v1

    invoke-interface {v15, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 49
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v1, :cond_2f

    .line 50
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v2, v1, :cond_30

    .line 51
    :cond_2f
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$b;

    const/4 v1, 0x0

    invoke-direct {v2, v9, v11, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$b;-><init>(ILkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 52
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 53
    :cond_30
    check-cast v2, Lkotlin/jvm/functions/Function2;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v1, v18, 0x1b

    and-int/lit8 v1, v1, 0xe

    invoke-static {v0, v2, v15, v1}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v0, 0x487aca9f

    .line 54
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v4, p4

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v13, v34

    invoke-interface {v15, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move-object/from16 v5, v36

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    move-object/from16 v10, v35

    invoke-interface {v15, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 55
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_31

    .line 56
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_32

    .line 57
    :cond_31
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/s;

    invoke-direct {v1, v10, v13, v5, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/s;-><init>(Landroidx/lifecycle/LifecycleOwner;Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;)V

    .line 58
    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 59
    :cond_32
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v0, v18, 0x12

    and-int/lit8 v0, v0, 0xe

    invoke-static {v10, v1, v15, v0}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 60
    sget-object v0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v0

    .line 61
    invoke-static {v6, v12}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const/16 v2, 0x14

    int-to-float v2, v2

    .line 62
    invoke-static {v2}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v2

    .line 63
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/ClipKt;->clip(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    .line 64
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v27

    const/16 v33, 0xe

    const/16 v34, 0x0

    const v29, 0x3f666666    # 0.9f

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    invoke-static/range {v27 .. v34}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v2

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x487b4c88    # 257330.12f

    .line 65
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string/jumbo v2, "timer_container"

    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    .line 66
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_33

    .line 67
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v4, v3, :cond_34

    .line 68
    :cond_33
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/t;

    invoke-direct {v4, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/t;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 70
    :cond_34
    check-cast v4, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v9, 0x0

    invoke-static {v1, v9, v4, v2, v3}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    const v2, 0x2bb5b5d7

    .line 71
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v4, 0x6

    .line 72
    invoke-static {v0, v9, v15, v4}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v0

    const v2, -0x4ee9b9da

    .line 73
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 74
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 75
    invoke-interface {v15, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    .line 76
    check-cast v2, Landroidx/compose/ui/unit/Density;

    .line 77
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v3

    .line 78
    invoke-interface {v15, v3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    .line 79
    check-cast v3, Landroidx/compose/ui/unit/LayoutDirection;

    .line 80
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v4

    .line 81
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v4

    .line 82
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 83
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v9

    .line 84
    invoke-static {v1}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v1

    .line 85
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v19

    if-nez v19, :cond_35

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 86
    :cond_35
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 87
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v19

    if-eqz v19, :cond_36

    .line 88
    invoke-interface {v15, v9}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_23

    .line 89
    :cond_36
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 90
    :goto_23
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 91
    invoke-static {v15}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v9

    move-object/from16 v19, v6

    .line 92
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v6

    invoke-static {v9, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 93
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v2, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 95
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v9, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 96
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 97
    invoke-static {v15}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v15, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 98
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x7f65a980

    .line 99
    invoke-interface {v15, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 100
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 101
    sget-object v9, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v9, v2, v0, v1}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v1, 0x47dcb362

    invoke-interface {v15, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v15, v7, v8}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    invoke-interface {v15, v14}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-interface {v15, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    move-wide/from16 v3, p2

    move v2, v0

    invoke-interface {v15, v3, v4}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v0

    or-int/2addr v0, v1

    .line 102
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v0, :cond_38

    .line 103
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_37

    goto :goto_24

    :cond_37
    move-object v7, v6

    move-object/from16 v35, v10

    move-object/from16 v33, v19

    const/4 v10, 0x6

    goto :goto_25

    .line 104
    :cond_38
    :goto_24
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/u;

    move-object v0, v1

    move-object v8, v1

    move v7, v2

    move-wide/from16 v1, p0

    move v3, v14

    const/16 v16, 0x6

    move-object v4, v5

    move-object v7, v6

    move-object/from16 v35, v10

    move/from16 v10, v16

    move-object/from16 v33, v19

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/u;-><init>(JFLandroidx/compose/animation/core/Animatable;J)V

    .line 105
    invoke-interface {v15, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v1, v8

    .line 106
    :goto_25
    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v7, v1, v15, v10}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 107
    invoke-static/range {p11 .. p11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/q;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    sget-object v1, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    sget v2, Landroidx/compose/material/MaterialTheme;->$stable:I

    invoke-virtual {v1, v15, v2}, Landroidx/compose/material/MaterialTheme;->getTypography(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Typography;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/material/Typography;->getButton()Landroidx/compose/ui/text/TextStyle;

    move-result-object v28

    .line 109
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->c()J

    move-result-wide v1

    .line 110
    sget-object v3, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getCenter-e0LSkKk()I

    move-result v3

    const v4, 0x47dd3d68

    .line 111
    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v4, "countdown_timer_text"

    invoke-interface {v15, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 112
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_39

    .line 113
    invoke-virtual/range {v26 .. v26}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_3a

    .line 114
    :cond_39
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/v;

    invoke-direct {v6, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/v;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-interface {v15, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 116
    :cond_3a
    check-cast v6, Lkotlin/jvm/functions/Function1;

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v9, v7, v6, v4, v5}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    move-object/from16 v5, v35

    .line 117
    invoke-static {v3}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v21

    shl-int/lit8 v3, v18, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/lit16 v3, v3, 0xc00

    move/from16 v30, v3

    const/16 v31, 0xc00

    const/16 v32, 0x5df0

    const/4 v3, 0x0

    move-object v4, v15

    move-object v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x1

    const/16 v27, 0x0

    move-object v9, v0

    move v0, v12

    move-wide/from16 v11, p2

    move-object v3, v13

    move v6, v14

    move-wide v13, v1

    move-object/from16 v29, v4

    .line 118
    invoke-static/range {v9 .. v32}, Landroidx/compose/material/TextKt;->Text-fLXpl1I(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 119
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 120
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 121
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 122
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 123
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 124
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3b
    move v7, v0

    move-object v10, v3

    move-object v9, v5

    move-object/from16 v5, v33

    .line 125
    :goto_26
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_3c

    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/w;

    move-object v0, v14

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v8, p7

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p13

    move-object/from16 v37, v14

    move/from16 v14, p14

    invoke-direct/range {v0 .. v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/w;-><init>(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IIII)V

    move-object/from16 v0, v37

    invoke-interface {v15, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_3c
    return-void
.end method

.method public static final g(Landroidx/compose/runtime/MutableState;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Float;",
            ">;F)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

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

.method public static final h(Landroidx/compose/runtime/MutableState;Z)V
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

.method public static final i(Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 6

    .line 1
    const-string v0, "<unused var>"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "event"

    .line 7
    .line 8
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$e;->a:[I

    .line 12
    .line 13
    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    aget p3, p3, p4

    .line 18
    .line 19
    const/4 p4, 0x1

    .line 20
    if-eq p3, p4, :cond_1

    .line 21
    .line 22
    const/4 p0, 0x2

    .line 23
    if-eq p3, p0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    check-cast p0, Ljava/lang/Number;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 p1, 0x0

    .line 37
    cmpl-float p0, p0, p1

    .line 38
    .line 39
    if-lez p0, :cond_2

    .line 40
    .line 41
    invoke-static {p2, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->h(Landroidx/compose/runtime/MutableState;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p3, 0x0

    .line 46
    invoke-static {p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->h(Landroidx/compose/runtime/MutableState;Z)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$c;

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-direct {v3, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c$c;-><init>(Landroidx/compose/animation/core/Animatable;Lrs/c;)V

    .line 53
    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    const/4 v5, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    const/4 v2, 0x0

    .line 59
    move-object v0, p0

    .line 60
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 61
    .line 62
    .line 63
    :cond_2
    :goto_0
    return-void
.end method

.method public static final j(Landroidx/compose/runtime/MutableState;)Z
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

.method public static final k(Landroidx/compose/runtime/MutableState;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
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

.method public static final l(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "$this$semantics"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setContentDescription(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->setTestTag(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method public static final synthetic m(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/c;->j(Landroidx/compose/runtime/MutableState;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
