.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$e;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRewardedCountDownTimerCustom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RewardedCountDownTimerCustom.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerCustomKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 3 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 4 Effects.kt\nandroidx/compose/runtime/EffectsKt\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Effects.kt\nandroidx/compose/runtime/EffectsKt$rememberCoroutineScope$1\n+ 8 Row.kt\nandroidx/compose/foundation/layout/RowKt\n+ 9 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 10 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 11 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 12 Effects.kt\nandroidx/compose/runtime/DisposableEffectScope\n*L\n1#1,199:1\n155#2:200\n155#2:201\n155#2:260\n155#2:296\n76#3:202\n76#3:264\n76#3:315\n473#4,4:203\n477#4,2:211\n481#4:217\n25#5:207\n460#5,13:276\n460#5,13:327\n473#5,3:347\n473#5,3:352\n1057#6,3:208\n1060#6,3:214\n1057#6,6:218\n1057#6,6:224\n1057#6,6:230\n1057#6,6:236\n1057#6,6:242\n1057#6,6:248\n1057#6,6:254\n1057#6,6:290\n1057#6,6:297\n1057#6,6:303\n1057#6,6:341\n473#7:213\n79#8,2:261\n81#8:289\n85#8:356\n75#9:263\n76#9,11:265\n75#9:314\n76#9,11:316\n89#9:350\n89#9:355\n68#10,5:309\n73#10:340\n77#10:351\n76#11:357\n102#11,2:358\n76#11:360\n102#11,2:361\n76#11:363\n102#11,2:364\n62#12,5:366\n*S KotlinDebug\n*F\n+ 1 RewardedCountDownTimerCustom.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/RewardedCountDownTimerCustomKt\n*L\n64#1:200\n65#1:201\n141#1:260\n164#1:296\n68#1:202\n139#1:264\n160#1:315\n69#1:203,4\n69#1:211,2\n69#1:217\n69#1:207\n139#1:276,13\n160#1:327,13\n160#1:347,3\n139#1:352,3\n69#1:208,3\n69#1:214,3\n74#1:218,6\n76#1:224,6\n80#1:230,6\n85#1:236,6\n88#1:242,6\n106#1:248,6\n112#1:254,6\n151#1:290,6\n165#1:297,6\n169#1:303,6\n176#1:341,6\n69#1:213\n139#1:261,2\n139#1:289\n139#1:356\n139#1:263\n139#1:265,11\n160#1:314\n160#1:316,11\n160#1:350\n139#1:355\n160#1:309,5\n160#1:340\n160#1:351\n74#1:357\n74#1:358,2\n76#1:360\n76#1:361,2\n80#1:363\n80#1:364,2\n134#1:366,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/MutableState;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntSize;",
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
    check-cast p0, Landroidx/compose/ui/unit/IntSize;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public static final b(Landroidx/lifecycle/LifecycleOwner;Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/DisposableEffectScope;)Landroidx/compose/runtime/DisposableEffectResult;
    .locals 1

    .line 1
    const-string v0, "$this$DisposableEffect"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/p;

    .line 7
    .line 8
    invoke-direct {p4, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/p;-><init>(Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;)V

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
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$d;

    .line 19
    .line 20
    invoke-direct {p1, p0, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$d;-><init>(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/LifecycleEventObserver;)V

    .line 21
    .line 22
    .line 23
    return-object p1
.end method

.method public static final c()Landroidx/compose/runtime/MutableState;
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

.method public static final d(JFLandroidx/compose/animation/core/Animatable;JLandroidx/compose/runtime/MutableState;Landroidx/compose/ui/graphics/drawscope/DrawScope;)Lkotlin/Unit;
    .locals 26

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move-object/from16 v15, p7

    .line 4
    .line 5
    const-string v1, "$this$Canvas"

    .line 6
    .line 7
    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static/range {p6 .. p6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->a(Landroidx/compose/runtime/MutableState;)J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    int-to-float v1, v1

    .line 19
    invoke-static/range {p6 .. p6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->a(Landroidx/compose/runtime/MutableState;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    int-to-float v2, v2

    .line 28
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 29
    .line 30
    .line 31
    move-result-wide v9

    .line 32
    new-instance v12, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 33
    .line 34
    invoke-interface {v15, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sget-object v17, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    .line 39
    .line 40
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    const/16 v7, 0x1a

    .line 45
    .line 46
    const/4 v8, 0x0

    .line 47
    const/4 v3, 0x0

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v6, 0x0

    .line 50
    move-object v1, v12

    .line 51
    invoke-direct/range {v1 .. v8}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    const/16 v16, 0x350

    .line 55
    .line 56
    const/16 v18, 0x0

    .line 57
    .line 58
    const/high16 v4, 0x43b40000    # 360.0f

    .line 59
    .line 60
    const/high16 v5, 0x43b40000    # 360.0f

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    const-wide/16 v7, 0x0

    .line 64
    .line 65
    const/4 v11, 0x0

    .line 66
    const/4 v13, 0x0

    .line 67
    const/4 v14, 0x0

    .line 68
    move-object/from16 v1, p7

    .line 69
    .line 70
    move-wide/from16 v2, p0

    .line 71
    .line 72
    move/from16 v15, v16

    .line 73
    .line 74
    move-object/from16 v16, v18

    .line 75
    .line 76
    invoke-static/range {v1 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/Number;

    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v2, 0x0

    .line 90
    cmpl-float v1, v1, v2

    .line 91
    .line 92
    if-lez v1, :cond_0

    .line 93
    .line 94
    invoke-virtual/range {p3 .. p3}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    check-cast v1, Ljava/lang/Number;

    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    invoke-static {v1, v2}, Lkotlin/ranges/e;->d(FF)F

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 109
    .line 110
    mul-float v4, v1, v2

    .line 111
    .line 112
    invoke-static/range {p6 .. p6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->a(Landroidx/compose/runtime/MutableState;)J

    .line 113
    .line 114
    .line 115
    move-result-wide v1

    .line 116
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 117
    .line 118
    .line 119
    move-result v1

    .line 120
    int-to-float v1, v1

    .line 121
    invoke-static/range {p6 .. p6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->a(Landroidx/compose/runtime/MutableState;)J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    invoke-static {v2, v3}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    int-to-float v2, v2

    .line 130
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    .line 131
    .line 132
    .line 133
    move-result-wide v8

    .line 134
    new-instance v11, Landroidx/compose/ui/graphics/drawscope/Stroke;

    .line 135
    .line 136
    move-object/from16 v1, p7

    .line 137
    .line 138
    invoke-interface {v1, v0}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    .line 139
    .line 140
    .line 141
    move-result v19

    .line 142
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/StrokeCap$Companion;->getRound-KaPHkGw()I

    .line 143
    .line 144
    .line 145
    move-result v21

    .line 146
    const/16 v24, 0x1a

    .line 147
    .line 148
    const/16 v25, 0x0

    .line 149
    .line 150
    const/16 v20, 0x0

    .line 151
    .line 152
    const/16 v22, 0x0

    .line 153
    .line 154
    const/16 v23, 0x0

    .line 155
    .line 156
    move-object/from16 v18, v11

    .line 157
    .line 158
    invoke-direct/range {v18 .. v25}, Landroidx/compose/ui/graphics/drawscope/Stroke;-><init>(FFIILandroidx/compose/ui/graphics/PathEffect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 159
    .line 160
    .line 161
    const/16 v14, 0x350

    .line 162
    .line 163
    const/4 v15, 0x0

    .line 164
    const/high16 v3, 0x43870000    # 270.0f

    .line 165
    .line 166
    const/4 v5, 0x0

    .line 167
    const-wide/16 v6, 0x0

    .line 168
    .line 169
    const/4 v10, 0x0

    .line 170
    const/4 v12, 0x0

    .line 171
    const/4 v13, 0x0

    .line 172
    move-object/from16 v0, p7

    .line 173
    .line 174
    move-wide/from16 v1, p4

    .line 175
    .line 176
    invoke-static/range {v0 .. v15}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawArc-yD3GUKo$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JFFZJJFLandroidx/compose/ui/graphics/drawscope/DrawStyle;Landroidx/compose/ui/graphics/ColorFilter;IILjava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    return-object v0
.end method

.method public static final e(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IIIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17

    .line 1
    move-wide/from16 v0, p0

    .line 2
    .line 3
    move-wide/from16 v2, p2

    .line 4
    .line 5
    move-object/from16 v4, p4

    .line 6
    .line 7
    move/from16 v5, p5

    .line 8
    .line 9
    move/from16 v6, p6

    .line 10
    .line 11
    move-object/from16 v7, p7

    .line 12
    .line 13
    move-object/from16 v8, p8

    .line 14
    .line 15
    move-object/from16 v9, p9

    .line 16
    .line 17
    move-object/from16 v10, p10

    .line 18
    .line 19
    move/from16 v11, p11

    .line 20
    .line 21
    move/from16 v12, p12

    .line 22
    .line 23
    move/from16 v15, p14

    .line 24
    .line 25
    move/from16 v16, p15

    .line 26
    .line 27
    move-object/from16 v13, p16

    .line 28
    .line 29
    or-int/lit8 v14, p13, 0x1

    .line 30
    .line 31
    invoke-static/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->h(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IILandroidx/compose/runtime/Composer;III)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final f(Landroidx/compose/runtime/MutableState;Landroidx/compose/ui/unit/IntSize;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/unit/IntSize;->unbox-impl()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p0, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->j(Landroidx/compose/runtime/MutableState;J)V

    .line 6
    .line 7
    .line 8
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 9
    .line 10
    return-object p0
.end method

.method public static final g(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
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

.method public static final h(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IILandroidx/compose/runtime/Composer;III)V
    .locals 43
    .param p4    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
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
            "Ljava/lang/String;",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Lgt/g0;",
            "II",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-wide/from16 v8, p0

    move-wide/from16 v5, p2

    move-object/from16 v7, p7

    move-object/from16 v4, p8

    move/from16 v3, p11

    move/from16 v1, p12

    move/from16 v2, p14

    move/from16 v0, p16

    const/16 v13, 0x8

    const/16 v16, 0x10

    const/16 v17, 0x20

    const/16 v14, 0x80

    const/4 v12, 0x6

    const-string v10, "onTimerFinish"

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "customTimerString"

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v10, -0x6ac2010c

    move-object/from16 v11, p13

    .line 1
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v11

    const/4 v10, 0x1

    and-int/lit8 v21, v0, 0x1

    const/16 v22, 0x4

    const/4 v10, 0x2

    if-eqz v21, :cond_0

    or-int/lit8 v21, v2, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v21, v2, 0x6

    if-nez v21, :cond_2

    invoke-interface {v11, v8, v9}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v21

    if-eqz v21, :cond_1

    move/from16 v21, v22

    goto :goto_0

    :cond_1
    move/from16 v21, v10

    :goto_0
    or-int v21, v2, v21

    goto :goto_1

    :cond_2
    move/from16 v21, v2

    :goto_1
    and-int/lit8 v23, v0, 0x2

    if-eqz v23, :cond_4

    or-int/lit8 v21, v21, 0x30

    :cond_3
    :goto_2
    move/from16 v10, v21

    goto :goto_4

    :cond_4
    and-int/lit8 v23, v2, 0x30

    if-nez v23, :cond_3

    invoke-interface {v11, v5, v6}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v23

    if-eqz v23, :cond_5

    move/from16 v23, v17

    goto :goto_3

    :cond_5
    move/from16 v23, v16

    :goto_3
    or-int v21, v21, v23

    goto :goto_2

    :goto_4
    and-int/lit8 v21, v0, 0x4

    if-eqz v21, :cond_7

    or-int/lit16 v10, v10, 0x180

    :cond_6
    move-object/from16 v12, p4

    goto :goto_6

    :cond_7
    and-int/lit16 v12, v2, 0x180

    if-nez v12, :cond_6

    move-object/from16 v12, p4

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    const/16 v23, 0x100

    goto :goto_5

    :cond_8
    move/from16 v23, v14

    :goto_5
    or-int v10, v10, v23

    :goto_6
    and-int/lit8 v23, v0, 0x8

    if-eqz v23, :cond_a

    or-int/lit16 v10, v10, 0xc00

    :cond_9
    move/from16 v13, p5

    goto :goto_8

    :cond_a
    and-int/lit16 v13, v2, 0xc00

    if-nez v13, :cond_9

    move/from16 v13, p5

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v24

    if-eqz v24, :cond_b

    const/16 v24, 0x800

    goto :goto_7

    :cond_b
    const/16 v24, 0x400

    :goto_7
    or-int v10, v10, v24

    :goto_8
    and-int/lit8 v16, v0, 0x10

    if-eqz v16, :cond_d

    or-int/lit16 v10, v10, 0x6000

    :cond_c
    move/from16 v15, p6

    goto :goto_a

    :cond_d
    and-int/lit16 v15, v2, 0x6000

    if-nez v15, :cond_c

    move/from16 v15, p6

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v25

    if-eqz v25, :cond_e

    const/16 v25, 0x4000

    goto :goto_9

    :cond_e
    const/16 v25, 0x2000

    :goto_9
    or-int v10, v10, v25

    :goto_a
    and-int/lit8 v17, v0, 0x20

    const/high16 v25, 0x30000

    if-eqz v17, :cond_f

    or-int v10, v10, v25

    goto :goto_c

    :cond_f
    and-int v17, v2, v25

    if-nez v17, :cond_11

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    const/high16 v17, 0x20000

    goto :goto_b

    :cond_10
    const/high16 v17, 0x10000

    :goto_b
    or-int v10, v10, v17

    :cond_11
    :goto_c
    and-int/lit8 v17, v0, 0x40

    const/high16 v25, 0x180000

    if-eqz v17, :cond_12

    or-int v10, v10, v25

    goto :goto_e

    :cond_12
    and-int v17, v2, v25

    if-nez v17, :cond_14

    invoke-interface {v11, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_13

    const/high16 v17, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v17, 0x80000

    :goto_d
    or-int v10, v10, v17

    :cond_14
    :goto_e
    const/high16 v17, 0xc00000

    and-int v17, v2, v17

    if-nez v17, :cond_17

    and-int/lit16 v12, v0, 0x80

    if-nez v12, :cond_15

    move-object/from16 v12, p9

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    const/high16 v17, 0x800000

    goto :goto_f

    :cond_15
    move-object/from16 v12, p9

    :cond_16
    const/high16 v17, 0x400000

    :goto_f
    or-int v10, v10, v17

    goto :goto_10

    :cond_17
    move-object/from16 v12, p9

    :goto_10
    const/high16 v17, 0x6000000

    and-int v17, v2, v17

    if-nez v17, :cond_1a

    const/16 v14, 0x100

    and-int/lit16 v12, v0, 0x100

    if-nez v12, :cond_18

    move-object/from16 v12, p10

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    const/high16 v14, 0x4000000

    goto :goto_11

    :cond_18
    move-object/from16 v12, p10

    :cond_19
    const/high16 v14, 0x2000000

    :goto_11
    or-int/2addr v10, v14

    goto :goto_12

    :cond_1a
    move-object/from16 v12, p10

    :goto_12
    and-int/lit16 v14, v0, 0x200

    const/high16 v25, 0x30000000

    if-eqz v14, :cond_1c

    or-int v10, v10, v25

    :cond_1b
    :goto_13
    const/16 v14, 0x400

    goto :goto_15

    :cond_1c
    and-int v14, v2, v25

    if-nez v14, :cond_1b

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v14

    if-eqz v14, :cond_1d

    const/high16 v14, 0x20000000

    goto :goto_14

    :cond_1d
    const/high16 v14, 0x10000000

    :goto_14
    or-int/2addr v10, v14

    goto :goto_13

    :goto_15
    and-int/2addr v14, v0

    if-eqz v14, :cond_1e

    const/4 v14, 0x6

    or-int/lit8 v19, p15, 0x6

    :goto_16
    move/from16 v14, v19

    goto :goto_18

    :cond_1e
    const/4 v14, 0x6

    and-int/lit8 v19, p15, 0x6

    if-nez v19, :cond_20

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v19

    if-eqz v19, :cond_1f

    goto :goto_17

    :cond_1f
    const/16 v22, 0x2

    :goto_17
    or-int v19, p15, v22

    goto :goto_16

    :cond_20
    move/from16 v14, p15

    :goto_18
    const v19, 0x12492493

    and-int v12, v10, v19

    const v13, 0x12492492

    if-ne v12, v13, :cond_22

    and-int/lit8 v12, v14, 0x3

    const/4 v13, 0x2

    if-ne v12, v13, :cond_22

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v12

    if-nez v12, :cond_21

    goto :goto_19

    .line 2
    :cond_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v10, p9

    move-object/from16 v35, p10

    move v7, v15

    move-wide/from16 v41, v8

    move-object v8, v11

    move-wide/from16 v11, v41

    goto/16 :goto_25

    .line 3
    :cond_22
    :goto_19
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const/4 v12, 0x1

    and-int/lit8 v13, v2, 0x1

    const v12, -0x1c00001

    if-eqz v13, :cond_26

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v13

    if-eqz v13, :cond_23

    goto :goto_1a

    .line 4
    :cond_23
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    const/16 v13, 0x80

    and-int/2addr v13, v0

    if-eqz v13, :cond_24

    and-int/2addr v10, v12

    :cond_24
    const/16 v12, 0x100

    and-int/2addr v12, v0

    if-eqz v12, :cond_25

    const v12, -0xe000001

    and-int/2addr v10, v12

    :cond_25
    move-object/from16 v37, p4

    move/from16 v2, p5

    move-object/from16 v12, p10

    move v0, v15

    move-object/from16 v15, p9

    goto/16 :goto_1f

    :cond_26
    :goto_1a
    if-eqz v21, :cond_27

    .line 5
    sget-object v13, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_27
    move-object/from16 v13, p4

    :goto_1b
    if-eqz v23, :cond_28

    const/4 v12, 0x5

    int-to-float v12, v12

    .line 6
    invoke-static {v12}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v12

    goto :goto_1c

    :cond_28
    move/from16 v12, p5

    :goto_1c
    if-eqz v16, :cond_29

    const/16 v15, 0x1e

    int-to-float v15, v15

    .line 7
    invoke-static {v15}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v15

    :cond_29
    const/16 v2, 0x80

    and-int/2addr v2, v0

    if-eqz v2, :cond_2a

    .line 8
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalLifecycleOwner()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v2

    .line 9
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LifecycleOwner;

    const v16, -0x1c00001

    and-int v10, v10, v16

    move-object/from16 p4, v2

    :goto_1d
    const/16 v2, 0x100

    goto :goto_1e

    :cond_2a
    move-object/from16 p4, p9

    goto :goto_1d

    :goto_1e
    and-int/2addr v2, v0

    if-eqz v2, :cond_2c

    const v2, 0x2e20b340

    .line 10
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v2, -0x1d58f75c

    .line 11
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 12
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 13
    sget-object v16, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v0

    if-ne v2, v0, :cond_2b

    .line 14
    sget-object v0, Lkotlin/coroutines/EmptyCoroutineContext;->a:Lkotlin/coroutines/EmptyCoroutineContext;

    .line 15
    invoke-static {v0, v11}, Landroidx/compose/runtime/EffectsKt;->createCompositionCoroutineScope(Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;)Lgt/g0;

    move-result-object v0

    .line 16
    new-instance v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    invoke-direct {v2, v0}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;-><init>(Lgt/g0;)V

    .line 17
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 18
    :cond_2b
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 19
    check-cast v2, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;

    .line 20
    invoke-virtual {v2}, Landroidx/compose/runtime/CompositionScopedCoroutineScopeCanceller;->getCoroutineScope()Lgt/g0;

    move-result-object v0

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v2, -0xe000001

    and-int/2addr v10, v2

    move v2, v12

    move-object/from16 v37, v13

    move-object v12, v0

    move v0, v15

    move-object/from16 v15, p4

    goto :goto_1f

    :cond_2c
    move v2, v12

    move-object/from16 v37, v13

    move v0, v15

    move-object/from16 v15, p4

    move-object/from16 v12, p10

    .line 21
    :goto_1f
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v13

    if-eqz v13, :cond_2d

    .line 22
    const-string v13, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.rewardedcountdowntimer.RewardedCountDownTimerCustom (RewardedCountDownTimerCustom.kt:71)"

    const v5, -0x6ac2010c

    invoke-static {v5, v10, v14, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2d
    const v5, -0x4035f25b

    .line 23
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 24
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    .line 25
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    move/from16 p4, v2

    const/4 v2, 0x0

    if-ne v5, v13, :cond_2e

    .line 26
    sget-object v5, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    invoke-virtual {v5}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

    move-result-object v5

    const/4 v13, 0x2

    invoke-static {v5, v2, v13, v2}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v5

    .line 27
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 28
    :cond_2e
    check-cast v5, Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v13, -0x4035e9a7

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 29
    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 30
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    if-nez v13, :cond_2f

    .line 31
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v2, v13, :cond_30

    .line 32
    :cond_2f
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v8, 0x0

    const/4 v13, 0x2

    invoke-static {v2, v8, v13, v8}, Landroidx/compose/runtime/SnapshotStateKt;->mutableStateOf$default(Ljava/lang/Object;Landroidx/compose/runtime/SnapshotMutationPolicy;ILjava/lang/Object;)Landroidx/compose/runtime/MutableState;

    move-result-object v2

    .line 33
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 34
    :cond_30
    check-cast v2, Landroidx/compose/runtime/MutableState;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v8, 0x0

    new-array v9, v8, [Ljava/lang/Object;

    const v13, -0x4035dc42

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 35
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .line 36
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v13, v8, :cond_31

    .line 37
    new-instance v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/i;

    invoke-direct {v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/i;-><init>()V

    .line 38
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 39
    :cond_31
    move-object/from16 v23, v13

    check-cast v23, Lkotlin/jvm/functions/Function0;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/16 v25, 0xc00

    const/16 v26, 0x6

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v20, v9

    move-object/from16 v24, v11

    invoke-static/range {v20 .. v26}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->rememberSaveable([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/runtime/MutableState;

    .line 40
    invoke-static {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/h;->a(II)F

    move-result v9

    invoke-static {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->o(Landroidx/compose/runtime/MutableState;)F

    move-result v13

    invoke-static {v9, v13}, Lkotlin/ranges/e;->i(FF)F

    move-result v9

    const v13, -0x4035c63b

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 41
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    .line 42
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 p10, v5

    if-ne v13, v3, :cond_32

    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v13, 0x0

    .line 43
    invoke-static {v9, v5, v3, v13}, Landroidx/compose/animation/core/AnimatableKt;->Animatable$default(FFILjava/lang/Object;)Landroidx/compose/animation/core/Animatable;

    move-result-object v9

    .line 44
    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v13, v9

    goto :goto_20

    :cond_32
    move-object/from16 p9, v13

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 45
    :goto_20
    move-object v9, v13

    check-cast v9, Landroidx/compose/animation/core/Animatable;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 46
    invoke-virtual {v9}, Landroidx/compose/animation/core/Animatable;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    invoke-virtual {v13}, Ljava/lang/Number;->floatValue()F

    move-result v13

    invoke-static {v8, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->i(Landroidx/compose/runtime/MutableState;F)V

    .line 47
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->n(Landroidx/compose/runtime/MutableState;)Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static/range {p12 .. p12}, Lms/n;->a(I)Lms/n;

    move-result-object v13

    const v3, -0x4035b1e1

    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    or-int v3, v3, v16

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v16

    or-int v3, v3, v16

    .line 48
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_33

    .line 49
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_34

    .line 50
    :cond_33
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$a;

    const/4 v3, 0x0

    invoke-direct {v5, v9, v1, v2, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$a;-><init>(Landroidx/compose/animation/core/Animatable;ILandroidx/compose/runtime/MutableState;Lrs/c;)V

    .line 51
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 52
    :cond_34
    check-cast v5, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shl-int/lit8 v3, v14, 0x3

    and-int/lit8 v3, v3, 0x70

    invoke-static {v8, v13, v5, v11, v3}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    .line 53
    invoke-static/range {p12 .. p12}, Lms/n;->a(I)Lms/n;

    move-result-object v3

    const v5, -0x40355a6d

    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v1}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    invoke-interface {v11, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v5, v8

    .line 54
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v5, :cond_35

    .line 55
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v8, v5, :cond_36

    .line 56
    :cond_35
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$b;

    const/4 v5, 0x0

    invoke-direct {v8, v1, v7, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$b;-><init>(ILkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 57
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 58
    :cond_36
    check-cast v8, Lkotlin/jvm/functions/Function2;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    and-int/lit8 v5, v14, 0xe

    invoke-static {v3, v8, v11, v5}, Landroidx/compose/runtime/EffectsKt;->LaunchedEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    const v3, -0x40354810

    .line 59
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {v11, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v11, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    invoke-interface {v11, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v3, v5

    .line 60
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v5

    if-nez v3, :cond_37

    .line 61
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v5, v3, :cond_38

    .line 62
    :cond_37
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/j;

    invoke-direct {v5, v15, v12, v9, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/j;-><init>(Landroidx/lifecycle/LifecycleOwner;Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;)V

    .line 63
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    :cond_38
    check-cast v5, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shr-int/lit8 v2, v10, 0x15

    and-int/lit8 v2, v2, 0xe

    invoke-static {v15, v5, v11, v2}, Landroidx/compose/runtime/EffectsKt;->DisposableEffect(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 65
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenterVertically()Landroidx/compose/ui/Alignment$Vertical;

    move-result-object v3

    .line 66
    sget-object v5, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/16 v8, 0x8

    int-to-float v8, v8

    .line 67
    invoke-static {v8}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v8

    .line 68
    invoke-virtual {v5, v8}, Landroidx/compose/foundation/layout/Arrangement;->spacedBy-0680j_4(F)Landroidx/compose/foundation/layout/Arrangement$HorizontalOrVertical;

    move-result-object v5

    const v8, 0x2952b718

    .line 69
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/16 v8, 0x36

    .line 70
    invoke-static {v5, v3, v11, v8}, Landroidx/compose/foundation/layout/RowKt;->rowMeasurePolicy(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/ui/Alignment$Vertical;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v3

    const v5, -0x4ee9b9da

    .line 71
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 72
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v8

    .line 73
    invoke-interface {v11, v8}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v8

    .line 74
    check-cast v8, Landroidx/compose/ui/unit/Density;

    .line 75
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 76
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 77
    check-cast v13, Landroidx/compose/ui/unit/LayoutDirection;

    .line 78
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v14

    .line 79
    invoke-interface {v11, v14}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v14

    .line 80
    check-cast v14, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 81
    sget-object v34, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v5

    .line 82
    invoke-static/range {v37 .. v37}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v7

    .line 83
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v16

    if-nez v16, :cond_39

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 84
    :cond_39
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 85
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v16

    if-eqz v16, :cond_3a

    .line 86
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_21

    .line 87
    :cond_3a
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 88
    :goto_21
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 89
    invoke-static {v11}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v5

    move-object/from16 v38, v12

    .line 90
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v12

    invoke-static {v5, v3, v12}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 91
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v5, v8, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 92
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v5, v13, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 93
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    invoke-static {v5, v14, v3}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 94
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 95
    invoke-static {v11}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v3

    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v3, v11, v8}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v3, 0x7ab4aae9

    .line 96
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v5, -0x286e2e7f

    .line 97
    invoke-interface {v11, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 98
    sget-object v5, Landroidx/compose/foundation/layout/RowScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/RowScopeInstance;

    .line 99
    invoke-static {v4, v1}, Lcom/moloco/sdk/internal/utils/d;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 100
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->c()J

    move-result-wide v7

    .line 101
    sget-object v12, Landroidx/compose/ui/text/style/TextAlign;->Companion:Landroidx/compose/ui/text/style/TextAlign$Companion;

    invoke-virtual {v12}, Landroidx/compose/ui/text/style/TextAlign$Companion;->getStart-e0LSkKk()I

    move-result v12

    .line 102
    sget-object v14, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const v13, -0x1aac7347

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v13, "custom_countdown_timer_text"

    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v16

    .line 103
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v16, :cond_3b

    .line 104
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_3c

    .line 105
    :cond_3b
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/k;

    invoke-direct {v3, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/k;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 107
    :cond_3c
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v13, 0x0

    invoke-static {v14, v4, v3, v1, v13}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    move-object v4, v11

    move-object v11, v3

    .line 108
    invoke-static {v12}, Landroidx/compose/ui/text/style/TextAlign;->box-impl(I)Landroidx/compose/ui/text/style/TextAlign;

    move-result-object v22

    shl-int/lit8 v3, v10, 0x3

    and-int/lit16 v3, v3, 0x380

    or-int/lit16 v3, v3, 0xc00

    move/from16 v31, v3

    const/16 v32, 0xc00

    const v33, 0xddf0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x2

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/4 v3, 0x2

    move-object v10, v5

    move-object/from16 v35, v38

    const/4 v5, 0x6

    move-wide/from16 v12, p2

    move-object v5, v14

    move-object/from16 v36, v15

    move-wide v14, v7

    move-object/from16 v30, v4

    .line 109
    invoke-static/range {v10 .. v33}, Landroidx/compose/material/TextKt;->Text-fLXpl1I(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 110
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    move-result-object v2

    .line 111
    invoke-static {v5, v0}, Landroidx/compose/foundation/layout/SizeKt;->size-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v7

    int-to-float v3, v3

    .line 112
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 113
    invoke-static {v7, v3}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v7, -0x1aac3fd4

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v7, p10

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v8

    .line 114
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v10

    if-nez v8, :cond_3d

    .line 115
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v8

    if-ne v10, v8, :cond_3e

    .line 116
    :cond_3d
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/l;

    invoke-direct {v10, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/l;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 117
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 118
    :cond_3e
    check-cast v10, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v3, v10}, Landroidx/compose/ui/layout/OnRemeasuredModifierKt;->onSizeChanged(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    .line 119
    sget-object v8, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v8}, Landroidx/compose/ui/graphics/Color$Companion;->getWhite-0d7_KjU()J

    move-result-wide v10

    const/16 v16, 0xe

    const/16 v17, 0x0

    const v12, 0x3f666666    # 0.9f

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static/range {v10 .. v17}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    move-result-wide v10

    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    move-result-object v8

    invoke-static {v3, v10, v11, v8}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v8, -0x1aac2b94

    .line 120
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const-string v8, "custom_timer_container"

    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v10

    .line 121
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v10, :cond_3f

    .line 122
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v10

    if-ne v11, v10, :cond_40

    .line 123
    :cond_3f
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/m;

    invoke-direct {v11, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/m;-><init>(Ljava/lang/String;)V

    .line 124
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 125
    :cond_40
    check-cast v11, Lkotlin/jvm/functions/Function1;

    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-static {v3, v10, v11, v1, v8}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v3

    const v8, 0x2bb5b5d7

    .line 126
    invoke-interface {v4, v8}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const/4 v8, 0x6

    .line 127
    invoke-static {v2, v10, v4, v8}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v2

    const v10, -0x4ee9b9da

    .line 128
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 129
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v10

    .line 130
    invoke-interface {v4, v10}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v10

    .line 131
    check-cast v10, Landroidx/compose/ui/unit/Density;

    .line 132
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v11

    .line 133
    invoke-interface {v4, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v11

    .line 134
    check-cast v11, Landroidx/compose/ui/unit/LayoutDirection;

    .line 135
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 136
    invoke-interface {v4, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 137
    check-cast v12, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 138
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v13

    .line 139
    invoke-static {v3}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v3

    .line 140
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v14

    if-nez v14, :cond_41

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 141
    :cond_41
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 142
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v14

    if-eqz v14, :cond_42

    .line 143
    invoke-interface {v4, v13}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_22

    .line 144
    :cond_42
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 145
    :goto_22
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 146
    invoke-static {v4}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v13

    .line 147
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v14

    invoke-static {v13, v2, v14}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 148
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v13, v10, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 149
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v13, v11, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 150
    invoke-virtual/range {v34 .. v34}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    invoke-static {v13, v12, v2}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 151
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 152
    invoke-static {v4}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v2

    invoke-static {v2}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v2

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v3, v2, v4, v10}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v2, 0x7ab4aae9

    .line 153
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v2, -0x7f65a980

    .line 154
    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 155
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 156
    invoke-static {v5, v3, v1, v2}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v10

    const v1, -0x463ad8da

    invoke-interface {v4, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-wide/from16 v11, p0

    invoke-interface {v4, v11, v12}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v1

    invoke-interface {v4, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    move/from16 v2, p4

    invoke-interface {v4, v2}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v3

    or-int/2addr v1, v3

    invoke-interface {v4, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    move-wide/from16 v13, p2

    invoke-interface {v4, v13, v14}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v3

    or-int/2addr v1, v3

    .line 157
    invoke-interface {v4}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v1, :cond_44

    .line 158
    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v1

    if-ne v3, v1, :cond_43

    goto :goto_23

    :cond_43
    move/from16 v16, v0

    move/from16 v17, v2

    move v9, v8

    move-object v8, v4

    goto :goto_24

    .line 159
    :cond_44
    :goto_23
    new-instance v15, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/n;

    move/from16 v16, v0

    move-object v0, v15

    move/from16 v17, v2

    move-wide/from16 v1, p0

    move/from16 v3, v17

    move-object v5, v4

    move-object v4, v9

    move v9, v8

    move-object v8, v5

    move-wide/from16 v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/n;-><init>(JFLandroidx/compose/animation/core/Animatable;JLandroidx/compose/runtime/MutableState;)V

    .line 160
    invoke-interface {v8, v15}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    move-object v3, v15

    .line 161
    :goto_24
    check-cast v3, Lkotlin/jvm/functions/Function1;

    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-static {v10, v3, v8, v9}, Landroidx/compose/foundation/CanvasKt;->Canvas(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    .line 162
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 163
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 164
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 165
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 166
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 167
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 168
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 169
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 170
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 171
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 172
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_45

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_45
    move/from16 v7, v16

    move/from16 v6, v17

    move-object/from16 v10, v36

    move-object/from16 v5, v37

    .line 173
    :goto_25
    invoke-interface {v8}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_46

    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/o;

    move-object v0, v14

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v11, v35

    move/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v39, v14

    move/from16 v14, p14

    move-object/from16 v40, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/o;-><init>(JJLandroidx/compose/ui/Modifier;FFLkotlin/jvm/functions/Function0;Ljava/lang/String;Landroidx/lifecycle/LifecycleOwner;Lgt/g0;IIIII)V

    move-object/from16 v1, v39

    move-object/from16 v0, v40

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_46
    return-void
.end method

.method public static final i(Landroidx/compose/runtime/MutableState;F)V
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

.method public static final j(Landroidx/compose/runtime/MutableState;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/MutableState<",
            "Landroidx/compose/ui/unit/IntSize;",
            ">;J)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/IntSize;->box-impl(J)Landroidx/compose/ui/unit/IntSize;

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

.method public static final k(Landroidx/compose/runtime/MutableState;Z)V
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

.method public static final l(Lgt/g0;Landroidx/compose/animation/core/Animatable;Landroidx/compose/runtime/MutableState;Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
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
    sget-object p3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$e;->a:[I

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
    invoke-static {p2, p4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->k(Landroidx/compose/runtime/MutableState;Z)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 p3, 0x0

    .line 46
    invoke-static {p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->k(Landroidx/compose/runtime/MutableState;Z)V

    .line 47
    .line 48
    .line 49
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$c;

    .line 50
    .line 51
    const/4 p2, 0x0

    .line 52
    invoke-direct {v3, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b$c;-><init>(Landroidx/compose/animation/core/Animatable;Lrs/c;)V

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

.method public static final m(Ljava/lang/String;Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)Lkotlin/Unit;
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

.method public static final n(Landroidx/compose/runtime/MutableState;)Z
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

.method public static final o(Landroidx/compose/runtime/MutableState;)F
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

.method public static final synthetic p(Landroidx/compose/runtime/MutableState;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/rewardedcountdowntimer/b;->n(Landroidx/compose/runtime/MutableState;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
