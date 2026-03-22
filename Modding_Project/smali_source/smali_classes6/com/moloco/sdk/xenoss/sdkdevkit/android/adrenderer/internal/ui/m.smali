.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;I)Lat/a;
    .locals 15
    .param p0    # Landroidx/compose/ui/Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/foundation/layout/PaddingValues;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/moloco/sdk/internal/ortb/model/i;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Landroidx/compose/runtime/Composer;
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
            "JJJ",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/internal/ortb/model/i;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lat/a<",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lms/n;",
            "Lms/n;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p12

    .line 2
    .line 3
    const-string v1, "alignment"

    .line 4
    .line 5
    move-object v3, p0

    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "padding"

    .line 10
    .line 11
    move-object/from16 v4, p1

    .line 12
    .line 13
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "afterCountdownButtonPart"

    .line 17
    .line 18
    move-object/from16 v6, p8

    .line 19
    .line 20
    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "buttonType"

    .line 24
    .line 25
    move-object/from16 v5, p9

    .line 26
    .line 27
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const v1, 0x187b1495

    .line 31
    .line 32
    .line 33
    invoke-interface {v0, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 34
    .line 35
    .line 36
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    const/4 v2, -0x1

    .line 43
    const-string v7, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.ui.adCountdownButton (AdCountdownButton.kt:53)"

    .line 44
    .line 45
    move/from16 v8, p13

    .line 46
    .line 47
    invoke-static {v1, v8, v2, v7}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/m$a;

    .line 51
    .line 52
    move-object v2, v1

    .line 53
    move-object v3, p0

    .line 54
    move-object/from16 v4, p1

    .line 55
    .line 56
    move-object/from16 v5, p9

    .line 57
    .line 58
    move-object/from16 v6, p8

    .line 59
    .line 60
    move-object/from16 v7, p10

    .line 61
    .line 62
    move-wide/from16 v8, p2

    .line 63
    .line 64
    move-wide/from16 v10, p4

    .line 65
    .line 66
    move-wide/from16 v12, p6

    .line 67
    .line 68
    move-object/from16 v14, p11

    .line 69
    .line 70
    invoke-direct/range {v2 .. v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/m$a;-><init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;JJJLcom/moloco/sdk/internal/ortb/model/i;)V

    .line 71
    .line 72
    .line 73
    const v2, -0x219821f4

    .line 74
    .line 75
    .line 76
    const/4 v3, 0x1

    .line 77
    invoke-static {v0, v2, v3, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_1

    .line 86
    .line 87
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 88
    .line 89
    .line 90
    :cond_1
    invoke-interface/range {p12 .. p12}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method
