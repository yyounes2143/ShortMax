.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 Dp.kt\nandroidx/compose/ui/unit/DpKt\n+ 8 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,386:1\n67#2,6:387\n73#2:419\n77#2:443\n75#3:393\n76#3,11:395\n89#3:442\n76#4:394\n460#5,13:406\n473#5,3:439\n1057#6,6:420\n1057#6,6:426\n1057#6,6:433\n155#7:432\n155#7:444\n76#8:445\n76#8:446\n*S KotlinDebug\n*F\n+ 1 VastRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/VastRendererKt\n*L\n81#1:387,6\n81#1:419\n81#1:443\n81#1:393\n81#1:395,11\n81#1:442\n81#1:394\n81#1:406,13\n81#1:439,3\n129#1:420,6\n130#1:426,6\n138#1:433,6\n137#1:432\n368#1:444\n86#1:445\n125#1:446\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;)Landroidx/compose/ui/platform/ComposeView;
    .locals 15

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object/from16 v2, p11

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "adViewModel"

    .line 9
    .line 10
    move-object/from16 v7, p12

    .line 11
    .line 12
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    .line 16
    .line 17
    const/4 v5, 0x6

    .line 18
    const/4 v6, 0x0

    .line 19
    const/4 v3, 0x0

    .line 20
    const/4 v4, 0x0

    .line 21
    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 23
    .line 24
    .line 25
    sget v1, Lcom/moloco/sdk/p;->a:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 28
    .line 29
    .line 30
    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$o;

    .line 31
    .line 32
    move-object v1, v14

    .line 33
    move-object/from16 v2, p12

    .line 34
    .line 35
    move-wide v3, p0

    .line 36
    move-object/from16 v5, p2

    .line 37
    .line 38
    move-object/from16 v6, p3

    .line 39
    .line 40
    move-object/from16 v7, p4

    .line 41
    .line 42
    move-object/from16 v8, p5

    .line 43
    .line 44
    move-object/from16 v9, p6

    .line 45
    .line 46
    move-object/from16 v10, p7

    .line 47
    .line 48
    move-object/from16 v11, p8

    .line 49
    .line 50
    move-object/from16 v12, p9

    .line 51
    .line 52
    move-object/from16 v13, p10

    .line 53
    .line 54
    invoke-direct/range {v1 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$o;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x3439b579

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-static {v1, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 66
    .line 67
    .line 68
    return-object v0
.end method

.method public static final b(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/runtime/Composer;II)Lat/p;
    .locals 2
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "J",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lat/p<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const v0, 0x2aad5f00

    .line 2
    .line 3
    .line 4
    invoke-interface {p4, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 5
    .line 6
    .line 7
    and-int/lit8 v1, p6, 0x1

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    sget-object p0, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/compose/ui/Alignment$Companion;->getBottomCenter()Landroidx/compose/ui/Alignment;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_0
    and-int/lit8 v1, p6, 0x2

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    int-to-float p1, p1

    .line 23
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    invoke-static {p1}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    :cond_1
    and-int/lit8 p6, p6, 0x4

    .line 32
    .line 33
    if-eqz p6, :cond_2

    .line 34
    .line 35
    sget-object p2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 36
    .line 37
    sget p3, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 38
    .line 39
    invoke-virtual {p2, p4, p3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    invoke-virtual {p2}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 44
    .line 45
    .line 46
    move-result-wide p2

    .line 47
    :cond_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 48
    .line 49
    .line 50
    move-result p6

    .line 51
    if-eqz p6, :cond_3

    .line 52
    .line 53
    const/4 p6, -0x1

    .line 54
    const-string v1, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultProgressBar (VastRenderer.kt:369)"

    .line 55
    .line 56
    invoke-static {v0, p5, p6, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_3
    new-instance p5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;

    .line 60
    .line 61
    invoke-direct {p5, p0, p1, p2, p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$g;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;J)V

    .line 62
    .line 63
    .line 64
    const p0, 0x753f526e

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    invoke-static {p4, p0, p1, p5}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 79
    .line 80
    .line 81
    :cond_4
    invoke-interface {p4}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 82
    .line 83
    .line 84
    return-object p0
.end method

.method public static final c(JJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lat/r;
    .locals 20
    .param p4    # Landroidx/compose/ui/graphics/Shape;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/ui/graphics/painter/Painter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p13    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Landroidx/compose/ui/graphics/Shape;",
            "J",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "J",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Landroidx/compose/ui/graphics/painter/Painter;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lat/r<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p14

    .line 2
    .line 3
    move/from16 v1, p16

    .line 4
    .line 5
    const v2, 0x1aae99fd

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 9
    .line 10
    .line 11
    and-int/lit8 v3, v1, 0x1

    .line 12
    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    move-wide v13, v3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-wide/from16 v13, p0

    .line 22
    .line 23
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 24
    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    move-wide v15, v13

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move-wide/from16 v15, p2

    .line 30
    .line 31
    :goto_1
    and-int/lit8 v3, v1, 0x4

    .line 32
    .line 33
    if-eqz v3, :cond_2

    .line 34
    .line 35
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->e()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    move-object/from16 v17, v3

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_2
    move-object/from16 v17, p4

    .line 43
    .line 44
    :goto_2
    and-int/lit8 v3, v1, 0x8

    .line 45
    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->d()J

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    move-wide/from16 v18, v3

    .line 53
    .line 54
    goto :goto_3

    .line 55
    :cond_3
    move-wide/from16 v18, p5

    .line 56
    .line 57
    :goto_3
    and-int/lit8 v3, v1, 0x10

    .line 58
    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 62
    .line 63
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    move-object v6, v3

    .line 68
    goto :goto_4

    .line 69
    :cond_4
    move-object/from16 v6, p7

    .line 70
    .line 71
    :goto_4
    and-int/lit8 v3, v1, 0x20

    .line 72
    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->a()F

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v3}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    move-object v7, v3

    .line 84
    goto :goto_5

    .line 85
    :cond_5
    move-object/from16 v7, p8

    .line 86
    .line 87
    :goto_5
    and-int/lit8 v3, v1, 0x40

    .line 88
    .line 89
    if-eqz v3, :cond_6

    .line 90
    .line 91
    sget-object v3, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 92
    .line 93
    sget v4, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 94
    .line 95
    invoke-virtual {v3, v0, v4}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 100
    .line 101
    .line 102
    move-result-wide v3

    .line 103
    move-wide v11, v3

    .line 104
    goto :goto_6

    .line 105
    :cond_6
    move-wide/from16 v11, p9

    .line 106
    .line 107
    :goto_6
    and-int/lit16 v3, v1, 0x80

    .line 108
    .line 109
    const/4 v4, 0x0

    .line 110
    if-eqz v3, :cond_7

    .line 111
    .line 112
    sget v3, Lcom/moloco/sdk/o;->c:I

    .line 113
    .line 114
    invoke-static {v3, v0, v4}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    move-object v8, v3

    .line 119
    goto :goto_7

    .line 120
    :cond_7
    move-object/from16 v8, p11

    .line 121
    .line 122
    :goto_7
    and-int/lit16 v3, v1, 0x100

    .line 123
    .line 124
    if-eqz v3, :cond_8

    .line 125
    .line 126
    sget v3, Lcom/moloco/sdk/o;->d:I

    .line 127
    .line 128
    invoke-static {v3, v0, v4}, Landroidx/compose/ui/res/PainterResources_androidKt;->painterResource(ILandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/graphics/painter/Painter;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    move-object v9, v3

    .line 133
    goto :goto_8

    .line 134
    :cond_8
    move-object/from16 v9, p12

    .line 135
    .line 136
    :goto_8
    and-int/lit16 v1, v1, 0x200

    .line 137
    .line 138
    if-eqz v1, :cond_9

    .line 139
    .line 140
    const/4 v1, 0x0

    .line 141
    move-object v10, v1

    .line 142
    goto :goto_9

    .line 143
    :cond_9
    move-object/from16 v10, p13

    .line 144
    .line 145
    :goto_9
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    if-eqz v1, :cond_a

    .line 150
    .line 151
    const/4 v1, -0x1

    .line 152
    const-string v3, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultMuteButton (VastRenderer.kt:226)"

    .line 153
    .line 154
    move/from16 v4, p15

    .line 155
    .line 156
    invoke-static {v2, v4, v1, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_a
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$f;

    .line 160
    .line 161
    move-object v5, v1

    .line 162
    invoke-direct/range {v5 .. v19}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$f;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;JJJLandroidx/compose/ui/graphics/Shape;J)V

    .line 163
    .line 164
    .line 165
    const v2, -0x208b0666

    .line 166
    .line 167
    .line 168
    const/4 v3, 0x1

    .line 169
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_b

    .line 178
    .line 179
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 180
    .line 181
    .line 182
    :cond_b
    invoke-interface/range {p14 .. p14}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 183
    .line 184
    .line 185
    return-object v1
.end method

.method public static final d(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lat/r;
    .locals 12
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Alignment;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "II)",
            "Lat/r<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    const v1, -0x373820aa

    .line 4
    .line 5
    .line 6
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 7
    .line 8
    .line 9
    and-int/lit8 v2, p9, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    sget-object v2, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 14
    .line 15
    invoke-virtual {v2}, Landroidx/compose/ui/Alignment$Companion;->getBottomEnd()Landroidx/compose/ui/Alignment;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v4, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v4, p0

    .line 22
    :goto_0
    and-int/lit8 v2, p9, 0x2

    .line 23
    .line 24
    if-eqz v2, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->a()F

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    invoke-static {v2}, Landroidx/compose/foundation/layout/PaddingKt;->PaddingValues-0680j_4(F)Landroidx/compose/foundation/layout/PaddingValues;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    move-object v5, v2

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move-object v5, p1

    .line 37
    :goto_1
    and-int/lit8 v2, p9, 0x4

    .line 38
    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    sget-object v2, Landroidx/compose/material/MaterialTheme;->INSTANCE:Landroidx/compose/material/MaterialTheme;

    .line 42
    .line 43
    sget v3, Landroidx/compose/material/MaterialTheme;->$stable:I

    .line 44
    .line 45
    invoke-virtual {v2, v0, v3}, Landroidx/compose/material/MaterialTheme;->getColors(Landroidx/compose/runtime/Composer;I)Landroidx/compose/material/Colors;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroidx/compose/material/Colors;->getPrimary-0d7_KjU()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    move-wide v8, v2

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-wide v8, p2

    .line 56
    :goto_2
    and-int/lit8 v2, p9, 0x8

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    sget v2, Lcom/moloco/sdk/q;->a:I

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static {v2, v0, v3}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    move-object v7, v2

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    move-object/from16 v7, p4

    .line 70
    .line 71
    :goto_3
    and-int/lit8 v2, p9, 0x10

    .line 72
    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz v2, :cond_4

    .line 75
    .line 76
    move-object v6, v3

    .line 77
    goto :goto_4

    .line 78
    :cond_4
    move-object/from16 v6, p5

    .line 79
    .line 80
    :goto_4
    and-int/lit8 v2, p9, 0x20

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    move-object v10, v3

    .line 85
    goto :goto_5

    .line 86
    :cond_5
    move-object/from16 v10, p6

    .line 87
    .line 88
    :goto_5
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_6

    .line 93
    .line 94
    const/4 v2, -0x1

    .line 95
    const-string v3, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.defaultCTAButton (VastRenderer.kt:294)"

    .line 96
    .line 97
    move/from16 v11, p8

    .line 98
    .line 99
    invoke-static {v1, v11, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_6
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e;

    .line 103
    .line 104
    move-object v3, v1

    .line 105
    invoke-direct/range {v3 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$e;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;JLkotlin/jvm/functions/Function0;)V

    .line 106
    .line 107
    .line 108
    const v2, 0x19cb75c4

    .line 109
    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_7

    .line 121
    .line 122
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 123
    .line 124
    .line 125
    :cond_7
    invoke-interface/range {p7 .. p7}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 126
    .line 127
    .line 128
    return-object v1
.end method

.method public static final e(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final f(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroidx/compose/ui/Modifier;JLat/r;Lat/a;Lat/a;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lat/p;Lat/q;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;IIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v4, p4

    .line 8
    .line 9
    move-object/from16 v5, p5

    .line 10
    .line 11
    move-object/from16 v6, p6

    .line 12
    .line 13
    move-object/from16 v7, p7

    .line 14
    .line 15
    move-object/from16 v8, p8

    .line 16
    .line 17
    move-object/from16 v9, p9

    .line 18
    .line 19
    move-object/from16 v10, p10

    .line 20
    .line 21
    move-object/from16 v11, p11

    .line 22
    .line 23
    move-object/from16 v12, p12

    .line 24
    .line 25
    move/from16 v15, p14

    .line 26
    .line 27
    move/from16 v16, p15

    .line 28
    .line 29
    move-object/from16 v13, p16

    .line 30
    .line 31
    or-int/lit8 v14, p13, 0x1

    .line 32
    .line 33
    invoke-static/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroidx/compose/ui/Modifier;JLat/r;Lat/a;Lat/a;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lat/p;Lat/q;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroidx/compose/runtime/Composer;III)V

    .line 34
    .line 35
    .line 36
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object v0
.end method

.method public static final g(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)Lkotlin/jvm/functions/Function2;
    .locals 13
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[_]][androidx.compose.ui.UiComposable:[_]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]][androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/r<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/r<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/p<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/q<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Lat/r<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;>;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            ")",
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "muteButton"

    .line 2
    .line 3
    move-object v4, p2

    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "adCloseCountdownButton"

    .line 8
    .line 9
    move-object/from16 v5, p3

    .line 10
    .line 11
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v0, "adSkipCountdownButton"

    .line 15
    .line 16
    move-object/from16 v6, p4

    .line 17
    .line 18
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "ctaButton"

    .line 22
    .line 23
    move-object/from16 v7, p5

    .line 24
    .line 25
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v0, "progressBar"

    .line 29
    .line 30
    move-object/from16 v9, p7

    .line 31
    .line 32
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string/jumbo v0, "vastIcon"

    .line 36
    .line 37
    .line 38
    move-object/from16 v10, p8

    .line 39
    .line 40
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "playbackControl"

    .line 44
    .line 45
    move-object/from16 v11, p9

    .line 46
    .line 47
    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    const-string/jumbo v0, "viewVisibilityTracker"

    .line 51
    .line 52
    .line 53
    move-object/from16 v12, p10

    .line 54
    .line 55
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h0;

    .line 59
    .line 60
    move-object v1, v0

    .line 61
    move-wide v2, p0

    .line 62
    move-object/from16 v8, p6

    .line 63
    .line 64
    invoke-direct/range {v1 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h0;-><init>(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)V

    .line 65
    .line 66
    .line 67
    return-object v0
.end method

.method public static synthetic h(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;ILjava/lang/Object;)Lkotlin/jvm/functions/Function2;
    .locals 11

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-wide v1, p0

    .line 15
    :goto_0
    and-int/lit8 v3, v0, 0x2

    .line 16
    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$h;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$h;

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move-object v3, p2

    .line 23
    :goto_1
    and-int/lit8 v4, v0, 0x4

    .line 24
    .line 25
    if-eqz v4, :cond_2

    .line 26
    .line 27
    sget-object v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$i;

    .line 28
    .line 29
    goto :goto_2

    .line 30
    :cond_2
    move-object v4, p3

    .line 31
    :goto_2
    and-int/lit8 v5, v0, 0x8

    .line 32
    .line 33
    if-eqz v5, :cond_3

    .line 34
    .line 35
    sget-object v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$j;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$j;

    .line 36
    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move-object v5, p4

    .line 39
    :goto_3
    and-int/lit8 v6, v0, 0x10

    .line 40
    .line 41
    if-eqz v6, :cond_4

    .line 42
    .line 43
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$k;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$k;

    .line 44
    .line 45
    goto :goto_4

    .line 46
    :cond_4
    move-object/from16 v6, p5

    .line 47
    .line 48
    :goto_4
    and-int/lit8 v7, v0, 0x20

    .line 49
    .line 50
    if-eqz v7, :cond_5

    .line 51
    .line 52
    const/4 v7, 0x0

    .line 53
    goto :goto_5

    .line 54
    :cond_5
    move-object/from16 v7, p6

    .line 55
    .line 56
    :goto_5
    and-int/lit8 v8, v0, 0x40

    .line 57
    .line 58
    if-eqz v8, :cond_6

    .line 59
    .line 60
    sget-object v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$l;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$l;

    .line 61
    .line 62
    goto :goto_6

    .line 63
    :cond_6
    move-object/from16 v8, p7

    .line 64
    .line 65
    :goto_6
    and-int/lit16 v9, v0, 0x80

    .line 66
    .line 67
    if-eqz v9, :cond_7

    .line 68
    .line 69
    sget-object v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$m;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$m;

    .line 70
    .line 71
    goto :goto_7

    .line 72
    :cond_7
    move-object/from16 v9, p8

    .line 73
    .line 74
    :goto_7
    and-int/lit16 v10, v0, 0x100

    .line 75
    .line 76
    if-eqz v10, :cond_8

    .line 77
    .line 78
    sget-object v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$n;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$n;

    .line 79
    .line 80
    goto :goto_8

    .line 81
    :cond_8
    move-object/from16 v10, p9

    .line 82
    .line 83
    :goto_8
    and-int/lit16 v0, v0, 0x200

    .line 84
    .line 85
    if-eqz v0, :cond_9

    .line 86
    .line 87
    sget-object v0, Lcom/moloco/sdk/service_locator/b$h;->a:Lcom/moloco/sdk/service_locator/b$h;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$h;->j()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    goto :goto_9

    .line 94
    :cond_9
    move-object/from16 v0, p10

    .line 95
    .line 96
    :goto_9
    move-wide p0, v1

    .line 97
    move-object p2, v3

    .line 98
    move-object p3, v4

    .line 99
    move-object p4, v5

    .line 100
    move-object/from16 p5, v6

    .line 101
    .line 102
    move-object/from16 p6, v7

    .line 103
    .line 104
    move-object/from16 p7, v8

    .line 105
    .line 106
    move-object/from16 p8, v9

    .line 107
    .line 108
    move-object/from16 p9, v10

    .line 109
    .line 110
    move-object/from16 p10, v0

    .line 111
    .line 112
    invoke-static/range {p0 .. p10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->g(JLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;)Lkotlin/jvm/functions/Function2;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0
.end method

.method public static final i(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroidx/compose/ui/Modifier;JLat/r;Lat/a;Lat/a;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lat/p;Lat/q;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroidx/compose/runtime/Composer;III)V
    .locals 40
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/Modifier;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lat/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lat/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lat/p;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lat/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lat/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p13    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable][_][_][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable][androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;",
            "Landroidx/compose/ui/Modifier;",
            "J",
            "Lat/r<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/a<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Ljava/lang/Boolean;",
            "-",
            "Lms/n;",
            "-",
            "Lms/n;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/r<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lkt/i<",
            "+",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;",
            "Lat/p<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/q<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/j;",
            "-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lat/r<",
            "-",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/i;",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v13, p12

    move/from16 v14, p14

    move/from16 v15, p16

    const/16 v7, 0x80

    const/16 v8, 0x100

    const/16 v9, 0x20

    const/16 v10, 0x10

    const/4 v11, 0x6

    const-string v12, "adViewModel"

    invoke-static {v1, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v12, "viewVisibilityTracker"

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v12, 0x3ef50a54

    move-object/from16 v0, p13

    .line 1
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v0

    const/4 v12, 0x1

    and-int/lit8 v17, v15, 0x1

    const/16 v18, 0x2

    const/16 v19, 0x4

    if-eqz v17, :cond_0

    or-int/lit8 v17, v14, 0x6

    goto :goto_1

    :cond_0
    and-int/lit8 v17, v14, 0x6

    if-nez v17, :cond_2

    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v19

    goto :goto_0

    :cond_1
    move/from16 v17, v18

    :goto_0
    or-int v17, v14, v17

    goto :goto_1

    :cond_2
    move/from16 v17, v14

    :goto_1
    and-int/lit8 v20, v15, 0x2

    if-eqz v20, :cond_4

    or-int/lit8 v17, v17, 0x30

    move-object/from16 v2, p1

    :cond_3
    :goto_2
    move/from16 v3, v17

    goto :goto_4

    :cond_4
    and-int/lit8 v21, v14, 0x30

    move-object/from16 v2, p1

    if-nez v21, :cond_3

    invoke-interface {v0, v2}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_5

    move/from16 v21, v9

    goto :goto_3

    :cond_5
    move/from16 v21, v10

    :goto_3
    or-int v17, v17, v21

    goto :goto_2

    :goto_4
    and-int/lit8 v17, v15, 0x4

    if-eqz v17, :cond_6

    or-int/lit16 v3, v3, 0x180

    move-wide/from16 v12, p2

    goto :goto_6

    :cond_6
    and-int/lit16 v4, v14, 0x180

    move-wide/from16 v12, p2

    if-nez v4, :cond_8

    invoke-interface {v0, v12, v13}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v8

    goto :goto_5

    :cond_7
    move v4, v7

    :goto_5
    or-int/2addr v3, v4

    :cond_8
    :goto_6
    and-int/lit16 v4, v14, 0xc00

    if-nez v4, :cond_b

    and-int/lit8 v4, v15, 0x8

    if-nez v4, :cond_9

    move-object/from16 v4, p4

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x800

    goto :goto_7

    :cond_9
    move-object/from16 v4, p4

    :cond_a
    const/16 v21, 0x400

    :goto_7
    or-int v3, v3, v21

    goto :goto_8

    :cond_b
    move-object/from16 v4, p4

    :goto_8
    and-int/lit16 v6, v14, 0x6000

    if-nez v6, :cond_e

    and-int/lit8 v6, v15, 0x10

    if-nez v6, :cond_c

    move-object/from16 v6, p5

    invoke-interface {v0, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_d

    const/16 v22, 0x4000

    goto :goto_9

    :cond_c
    move-object/from16 v6, p5

    :cond_d
    const/16 v22, 0x2000

    :goto_9
    or-int v3, v3, v22

    goto :goto_a

    :cond_e
    move-object/from16 v6, p5

    :goto_a
    const/high16 v22, 0x30000

    and-int v22, v14, v22

    if-nez v22, :cond_10

    and-int/lit8 v22, v15, 0x20

    move-object/from16 v9, p6

    if-nez v22, :cond_f

    invoke-interface {v0, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_f

    const/high16 v22, 0x20000

    goto :goto_b

    :cond_f
    const/high16 v22, 0x10000

    :goto_b
    or-int v3, v3, v22

    goto :goto_c

    :cond_10
    move-object/from16 v9, p6

    :goto_c
    const/high16 v22, 0x180000

    and-int v22, v14, v22

    if-nez v22, :cond_12

    and-int/lit8 v22, v15, 0x40

    move-object/from16 v10, p7

    if-nez v22, :cond_11

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    const/high16 v22, 0x100000

    goto :goto_d

    :cond_11
    const/high16 v22, 0x80000

    :goto_d
    or-int v3, v3, v22

    goto :goto_e

    :cond_12
    move-object/from16 v10, p7

    :goto_e
    and-int/2addr v7, v15

    const/high16 v22, 0xc00000

    if-eqz v7, :cond_13

    or-int v3, v3, v22

    move-object/from16 v11, p8

    goto :goto_10

    :cond_13
    and-int v22, v14, v22

    move-object/from16 v11, p8

    if-nez v22, :cond_15

    invoke-interface {v0, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_14

    const/high16 v22, 0x800000

    goto :goto_f

    :cond_14
    const/high16 v22, 0x400000

    :goto_f
    or-int v3, v3, v22

    :cond_15
    :goto_10
    const/high16 v22, 0x6000000

    and-int v22, v14, v22

    if-nez v22, :cond_18

    and-int/lit16 v5, v15, 0x100

    if-nez v5, :cond_16

    move-object/from16 v5, p9

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_17

    const/high16 v23, 0x4000000

    goto :goto_11

    :cond_16
    move-object/from16 v5, p9

    :cond_17
    const/high16 v23, 0x2000000

    :goto_11
    or-int v3, v3, v23

    goto :goto_12

    :cond_18
    move-object/from16 v5, p9

    :goto_12
    const/high16 v23, 0x30000000

    and-int v23, v14, v23

    if-nez v23, :cond_1b

    and-int/lit16 v8, v15, 0x200

    if-nez v8, :cond_19

    move-object/from16 v8, p10

    invoke-interface {v0, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_1a

    const/high16 v23, 0x20000000

    goto :goto_13

    :cond_19
    move-object/from16 v8, p10

    :cond_1a
    const/high16 v23, 0x10000000

    :goto_13
    or-int v3, v3, v23

    :goto_14
    const/16 v2, 0x400

    goto :goto_15

    :cond_1b
    move-object/from16 v8, p10

    goto :goto_14

    :goto_15
    and-int/2addr v2, v15

    const/16 v22, 0x6

    if-eqz v2, :cond_1c

    or-int/lit8 v18, p15, 0x6

    :goto_16
    const/16 v4, 0x800

    goto :goto_17

    :cond_1c
    and-int/lit8 v23, p15, 0x6

    move-object/from16 v4, p11

    if-nez v23, :cond_1e

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1d

    move/from16 v18, v19

    :cond_1d
    or-int v18, p15, v18

    goto :goto_16

    :cond_1e
    move/from16 v18, p15

    goto :goto_16

    :goto_17
    and-int/2addr v4, v15

    if-eqz v4, :cond_20

    or-int/lit8 v18, v18, 0x30

    move-object/from16 v13, p12

    :cond_1f
    :goto_18
    move/from16 v4, v18

    goto :goto_1a

    :cond_20
    and-int/lit8 v4, p15, 0x30

    move-object/from16 v13, p12

    if-nez v4, :cond_1f

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    const/16 v4, 0x20

    goto :goto_19

    :cond_21
    const/16 v4, 0x10

    :goto_19
    or-int v18, v18, v4

    goto :goto_18

    :goto_1a
    const v12, 0x12492493

    and-int/2addr v12, v3

    const v5, 0x12492492

    if-ne v12, v5, :cond_23

    and-int/lit8 v5, v4, 0x13

    const/16 v12, 0x12

    if-ne v5, v12, :cond_23

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_22

    goto :goto_1b

    .line 2
    :cond_22
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move-object/from16 v13, p11

    move-object v12, v8

    move-object v7, v9

    move-object v8, v10

    move-object v9, v11

    move-object/from16 v11, p9

    move-object v10, v1

    goto/16 :goto_27

    .line 3
    :cond_23
    :goto_1b
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const/4 v5, 0x1

    and-int/lit8 v12, v14, 0x1

    const v34, -0xe001

    const/4 v5, 0x0

    if-eqz v12, :cond_2b

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v12

    if-eqz v12, :cond_24

    goto :goto_1d

    .line 4
    :cond_24
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    and-int/lit8 v2, v15, 0x8

    if-eqz v2, :cond_25

    and-int/lit16 v3, v3, -0x1c01

    :cond_25
    const/16 v2, 0x10

    and-int/2addr v2, v15

    if-eqz v2, :cond_26

    and-int v3, v3, v34

    :cond_26
    const/16 v2, 0x20

    and-int/2addr v2, v15

    if-eqz v2, :cond_27

    const v2, -0x70001

    and-int/2addr v3, v2

    :cond_27
    and-int/lit8 v2, v15, 0x40

    if-eqz v2, :cond_28

    const v2, -0x380001

    and-int/2addr v3, v2

    :cond_28
    const/16 v2, 0x100

    and-int/2addr v2, v15

    if-eqz v2, :cond_29

    const v2, -0xe000001

    and-int/2addr v3, v2

    :cond_29
    and-int/lit16 v2, v15, 0x200

    if-eqz v2, :cond_2a

    const v2, -0x70000001

    and-int/2addr v3, v2

    :cond_2a
    move-object/from16 v12, p1

    move-wide/from16 v35, p2

    move-object/from16 v2, p4

    move-object/from16 v7, p9

    :goto_1c
    move v5, v3

    move-object/from16 v3, p11

    goto/16 :goto_24

    :cond_2b
    :goto_1d
    if-eqz v20, :cond_2c

    .line 5
    sget-object v12, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1e

    :cond_2c
    move-object/from16 v12, p1

    :goto_1e
    if-eqz v17, :cond_2d

    .line 6
    sget-object v17, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v17

    move-wide/from16 v35, v17

    goto :goto_1f

    :cond_2d
    move-wide/from16 v35, p2

    :goto_1f
    and-int/lit8 v17, v15, 0x8

    if-eqz v17, :cond_2e

    const/16 v32, 0x0

    const/16 v33, 0x3ff

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const-wide/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v31, v0

    .line 7
    invoke-static/range {v17 .. v33}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->c(JJLandroidx/compose/ui/graphics/Shape;JLandroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/ui/graphics/painter/Painter;Landroidx/compose/ui/graphics/painter/Painter;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lat/r;

    move-result-object v17

    and-int/lit16 v3, v3, -0x1c01

    move/from16 v31, v3

    move-object/from16 v3, v17

    const/16 v17, 0x10

    goto :goto_20

    :cond_2e
    move/from16 v31, v3

    const/16 v17, 0x10

    move-object/from16 v3, p4

    :goto_20
    and-int/lit8 v17, v15, 0x10

    if-eqz v17, :cond_2f

    const/16 v29, 0x0

    const/16 v30, 0xff

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v0

    .line 8
    invoke-static/range {v17 .. v30}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c0;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;

    move-result-object v6

    and-int v31, v31, v34

    :cond_2f
    const/16 v17, 0x20

    and-int/lit8 v17, v15, 0x20

    if-eqz v17, :cond_30

    const/16 v29, 0x0

    const/16 v30, 0xff

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v28, v0

    .line 9
    invoke-static/range {v17 .. v30}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/p;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;

    move-result-object v9

    const v17, -0x70001

    and-int v31, v31, v17

    :cond_30
    and-int/lit8 v17, v15, 0x40

    if-eqz v17, :cond_31

    const/16 v25, 0x0

    const/16 v26, 0x3f

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v24, v0

    .line 10
    invoke-static/range {v17 .. v26}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->d(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLjava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Lat/r;

    move-result-object v10

    const v17, -0x380001

    and-int v31, v31, v17

    :cond_31
    if-eqz v7, :cond_32

    move-object v11, v5

    :cond_32
    const/16 v7, 0x100

    and-int/2addr v7, v15

    if-eqz v7, :cond_33

    const/4 v7, 0x0

    const/16 v17, 0x7

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 p1, v18

    move-object/from16 p2, v19

    move-wide/from16 p3, v20

    move-object/from16 p5, v0

    move/from16 p6, v7

    move/from16 p7, v17

    .line 11
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->b(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JLandroidx/compose/runtime/Composer;II)Lat/p;

    move-result-object v7

    const v17, -0xe000001

    and-int v31, v31, v17

    :goto_21
    move-object/from16 p1, v3

    goto :goto_22

    :cond_33
    move-object/from16 v7, p9

    goto :goto_21

    :goto_22
    and-int/lit16 v3, v15, 0x200

    move-object/from16 p2, v6

    if-eqz v3, :cond_34

    const/4 v3, 0x0

    const/4 v6, 0x3

    .line 12
    invoke-static {v5, v5, v0, v3, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/h;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/runtime/Composer;II)Lat/q;

    move-result-object v8

    const v3, -0x70000001

    and-int v3, v31, v3

    goto :goto_23

    :cond_34
    move/from16 v3, v31

    :goto_23
    if-eqz v2, :cond_35

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v39, v5

    move v5, v3

    move-object/from16 v3, v39

    goto :goto_24

    :cond_35
    move-object/from16 v2, p1

    move-object/from16 v6, p2

    goto/16 :goto_1c

    .line 13
    :goto_24
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v18

    if-eqz v18, :cond_36

    .line 14
    const-string v13, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.render.compose.VastRenderer (VastRenderer.kt:79)"

    const v14, 0x3ef50a54

    invoke-static {v14, v5, v4, v13}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_36
    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x0

    .line 15
    invoke-static {v12, v4, v13, v14}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v13, 0x2

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 p1, v4

    move-wide/from16 p2, v35

    move-object/from16 p4, v18

    move/from16 p5, v13

    move-object/from16 p6, v14

    .line 16
    invoke-static/range {p1 .. p6}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const v13, 0x2bb5b5d7

    .line 17
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 18
    sget-object v13, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual {v13}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v14

    move-object/from16 v18, v12

    const/4 v12, 0x0

    .line 19
    invoke-static {v14, v12, v0, v12}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v14

    const v12, -0x4ee9b9da

    .line 20
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 21
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v12

    .line 22
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v12

    .line 23
    check-cast v12, Landroidx/compose/ui/unit/Density;

    .line 24
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v15

    .line 25
    invoke-interface {v0, v15}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v15

    .line 26
    check-cast v15, Landroidx/compose/ui/unit/LayoutDirection;

    move-object/from16 p9, v13

    .line 27
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v13

    .line 28
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v13

    .line 29
    check-cast v13, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 30
    sget-object v19, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    .line 31
    invoke-static {v4}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v4

    .line 32
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v20

    if-nez v20, :cond_37

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 33
    :cond_37
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 34
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v20

    if-eqz v20, :cond_38

    .line 35
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_25

    .line 36
    :cond_38
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 37
    :goto_25
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 38
    invoke-static {v0}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    move-object/from16 p10, v10

    .line 39
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v1, v14, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 40
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v1, v12, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 41
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v1, v15, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 42
    invoke-virtual/range {v19 .. v19}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    invoke-static {v1, v13, v10}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 43
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 44
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v1

    invoke-static {v1}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v1

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v4, v1, v0, v12}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0x7ab4aae9

    .line 45
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v1, -0x7f65a980

    .line 46
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 47
    sget-object v1, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 48
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;->k()Lkt/i;

    move-result-object v4

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-static {v4, v13, v0, v10, v12}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 49
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->e(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    move-result-object v10

    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$a;

    move-object/from16 p1, v12

    move-object/from16 p2, v11

    move-object/from16 p3, v2

    move-object/from16 p4, v7

    move-object/from16 p5, v8

    move-object/from16 p6, v3

    move-object/from16 p7, p12

    move-object/from16 p8, p0

    invoke-direct/range {p1 .. p8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lat/r;Lat/p;Lat/q;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;)V

    const v13, -0x6d837336

    const/4 v14, 0x1

    invoke-static {v0, v13, v14, v12}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v12

    const/16 v13, 0xc00

    const/4 v14, 0x6

    const/4 v15, 0x0

    const/16 v19, 0x0

    move-object/from16 p1, v10

    move-object/from16 p2, v15

    move-object/from16 p3, v19

    move-object/from16 p4, v12

    move-object/from16 p5, v0

    move/from16 p6, v13

    move/from16 p7, v14

    invoke-static/range {p1 .. p7}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 50
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->e(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    move-result-object v4

    const/4 v10, 0x3

    shl-int/lit8 v10, v5, 0x3

    and-int/lit8 v10, v10, 0x70

    const/4 v12, 0x6

    or-int/2addr v10, v12

    shr-int/lit8 v13, v5, 0x6

    and-int/lit16 v12, v13, 0x1c00

    or-int/2addr v10, v12

    const v12, 0xe000

    and-int/2addr v5, v12

    or-int/2addr v5, v10

    move-object/from16 p1, v1

    move-object/from16 p2, p0

    move-object/from16 p3, v4

    move-object/from16 p4, v9

    move-object/from16 p5, v6

    move-object/from16 p6, v0

    move/from16 p7, v5

    .line 51
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->e(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;Lat/a;Lat/a;Landroidx/compose/runtime/Composer;I)V

    const v4, -0x560d7b57

    invoke-interface {v0, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-nez p10, :cond_39

    move-object/from16 v10, p0

    goto/16 :goto_26

    .line 52
    :cond_39
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;->r()Lkt/i;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {v4, v12, v0, v10, v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    move-result-object v4

    .line 53
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n;->j(Landroidx/compose/runtime/State;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 54
    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;->k()Lkt/i;

    move-result-object v5

    const v10, 0x6f1f3253

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    move-object/from16 v10, p0

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v12

    .line 55
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v13

    if-nez v12, :cond_3a

    .line 56
    sget-object v12, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v12}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v12

    if-ne v13, v12, :cond_3b

    .line 57
    :cond_3a
    new-instance v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$b;

    invoke-direct {v13, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$b;-><init>(Ljava/lang/Object;)V

    .line 58
    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 59
    :cond_3b
    move-object v12, v13

    check-cast v12, Lkotlin/reflect/KFunction;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const v13, 0x6f1f3828

    invoke-interface {v0, v13}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v13

    .line 60
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v14

    if-nez v13, :cond_3c

    .line 61
    sget-object v13, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v13}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v13

    if-ne v14, v13, :cond_3d

    .line 62
    :cond_3c
    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$c;

    invoke-direct {v14, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$c;-><init>(Ljava/lang/Object;)V

    .line 63
    invoke-interface {v0, v14}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 64
    :cond_3d
    move-object v13, v14

    check-cast v13, Lkotlin/reflect/KFunction;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 v14, 0x6

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 p1, p10

    move-object/from16 p2, v1

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v12

    move-object/from16 p6, v13

    move-object/from16 p7, v0

    move-object/from16 p8, v15

    .line 65
    invoke-interface/range {p1 .. p8}, Lat/r;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 67
    :goto_26
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 68
    sget-object v4, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 69
    invoke-virtual/range {p9 .. p9}, Landroidx/compose/ui/Alignment$Companion;->getBottomStart()Landroidx/compose/ui/Alignment;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/16 v5, 0xc

    int-to-float v5, v5

    .line 70
    invoke-static {v5}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v5

    .line 71
    invoke-static {v4, v5}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v4

    const/4 v5, 0x0

    const/16 v12, 0xe

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 p1, v4

    move-object/from16 p2, v13

    move-object/from16 p3, v14

    move-object/from16 p4, v15

    move-object/from16 p5, v0

    move/from16 p6, v5

    move/from16 p7, v12

    .line 72
    invoke-static/range {p1 .. p7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Lat/p;

    move-result-object v4

    const v5, -0x560d474c    # -1.0779E-13f

    invoke-interface {v0, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v0, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v5

    .line 73
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v12

    if-nez v5, :cond_3e

    .line 74
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v12, v5, :cond_3f

    .line 75
    :cond_3e
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$d;

    invoke-direct {v12, v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/n$d;-><init>(Ljava/lang/Object;)V

    .line 76
    invoke-interface {v0, v12}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 77
    :cond_3f
    move-object v5, v12

    check-cast v5, Lkotlin/reflect/KFunction;

    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    invoke-interface/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;->k()Lkt/i;

    move-result-object v12

    const/4 v13, 0x6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 p1, v4

    move-object/from16 p2, v1

    move-object/from16 p3, v5

    move-object/from16 p4, v12

    move-object/from16 p5, v0

    move-object/from16 p6, v13

    .line 78
    invoke-interface/range {p1 .. p6}, Lat/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 80
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 81
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 82
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 83
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 84
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_40
    move-object v5, v2

    move-object v13, v3

    move-object v12, v8

    move-object/from16 v2, v18

    move-wide/from16 v3, v35

    move-object/from16 v8, p10

    move-object/from16 v39, v11

    move-object v11, v7

    move-object v7, v9

    move-object/from16 v9, v39

    .line 85
    :goto_27
    invoke-interface {v0}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v15

    if-eqz v15, :cond_41

    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i0;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, p12

    move-object/from16 v37, v14

    move/from16 v14, p14

    move-object/from16 v38, v15

    move/from16 v15, p15

    move/from16 v16, p16

    invoke-direct/range {v0 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/i0;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroidx/compose/ui/Modifier;JLat/r;Lat/a;Lat/a;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/y;Lat/p;Lat/q;Lat/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;III)V

    move-object/from16 v1, v37

    move-object/from16 v0, v38

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_41
    return-void
.end method

.method public static final j(Landroidx/compose/runtime/State;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/runtime/State<",
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
