.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAdWebViewRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt\n+ 2 Box.kt\nandroidx/compose/foundation/layout/BoxKt\n+ 3 Layout.kt\nandroidx/compose/ui/layout/LayoutKt\n+ 4 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n+ 5 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 6 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 7 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n+ 8 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,306:1\n67#2,6:307\n73#2:339\n77#2:356\n67#2,6:357\n73#2:389\n77#2:406\n67#2,6:407\n73#2:439\n77#2:462\n75#3:313\n76#3,11:315\n89#3:355\n75#3:363\n76#3,11:365\n89#3:405\n75#3:413\n76#3,11:415\n89#3:461\n76#4:314\n76#4:364\n76#4:414\n460#5,13:326\n473#5,3:352\n460#5,13:376\n473#5,3:402\n460#5,13:426\n473#5,3:458\n1057#6,6:340\n1057#6,6:346\n1057#6,6:390\n1057#6,6:396\n1057#6,6:440\n1057#6,6:446\n1057#6,6:452\n76#7:463\n155#8:464\n*S KotlinDebug\n*F\n+ 1 AdWebViewRenderer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/AdWebViewRendererKt\n*L\n76#1:307,6\n76#1:339\n76#1:356\n202#1:357,6\n202#1:389\n202#1:406\n272#1:407,6\n272#1:439\n272#1:462\n76#1:313\n76#1:315,11\n76#1:355\n202#1:363\n202#1:365,11\n202#1:405\n272#1:413\n272#1:415,11\n272#1:461\n76#1:314\n202#1:364\n272#1:414\n76#1:326,13\n76#1:352,3\n202#1:376,13\n202#1:402,3\n272#1:426,13\n272#1:458,3\n84#1:340,6\n93#1:346,6\n208#1:390,6\n258#1:396,6\n278#1:440,6\n287#1:446,6\n302#1:452,6\n216#1:463\n47#1:464\n*E\n"
    }
.end annotation


# static fields
.field public static final a:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->a:F

    .line 9
    .line 10
    return-void
.end method

.method public static final a()F
    .locals 1

    .line 1
    sget v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->a:F

    .line 2
    .line 3
    return v0
.end method

.method public static final b(Lat/t;Landroid/webkit/WebView;ILkt/e;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;Landroid/content/Context;)Landroid/view/View;
    .locals 11

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    move-object/from16 v2, p7

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/i;

    .line 13
    .line 14
    move-object v0, p3

    .line 15
    move-object/from16 v1, p6

    .line 16
    .line 17
    invoke-direct {v7, p3, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/i;-><init>(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->a:F

    .line 21
    .line 22
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->box-impl(F)Landroidx/compose/ui/unit/Dp;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    sget-object v10, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 27
    .line 28
    move-object v1, p0

    .line 29
    move-object v3, p1

    .line 30
    move-object v5, p3

    .line 31
    move-object v6, p4

    .line 32
    move-object/from16 v8, p5

    .line 33
    .line 34
    invoke-interface/range {v1 .. v10}, Lat/t;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/view/View;

    .line 39
    .line 40
    return-object v0
.end method

.method public static final c(JLkotlin/jvm/functions/Function2;Landroid/content/Context;Landroid/webkit/WebView;ILkt/e;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/ui/unit/Dp;Z)Landroidx/compose/ui/platform/ComposeView;
    .locals 14

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    move-object/from16 v2, p3

    .line 4
    .line 5
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "webView"

    .line 9
    .line 10
    .line 11
    move-object/from16 v7, p4

    .line 12
    .line 13
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "canClose"

    .line 17
    .line 18
    move-object/from16 v8, p6

    .line 19
    .line 20
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "onButtonRendered"

    .line 24
    .line 25
    move-object/from16 v9, p7

    .line 26
    .line 27
    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, "onClose"

    .line 31
    .line 32
    move-object/from16 v10, p8

    .line 33
    .line 34
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Landroidx/compose/ui/platform/ComposeView;

    .line 38
    .line 39
    const/4 v5, 0x6

    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/platform/ComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 45
    .line 46
    .line 47
    sget v1, Lcom/moloco/sdk/p;->a:I

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 50
    .line 51
    .line 52
    new-instance v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b$c;

    .line 53
    .line 54
    move-object v1, v13

    .line 55
    move-object/from16 v2, p6

    .line 56
    .line 57
    move-object/from16 v3, p4

    .line 58
    .line 59
    move/from16 v4, p5

    .line 60
    .line 61
    move-object/from16 v5, p7

    .line 62
    .line 63
    move-object/from16 v6, p8

    .line 64
    .line 65
    move-wide v7, p0

    .line 66
    move-object/from16 v9, p2

    .line 67
    .line 68
    move-object/from16 v10, p9

    .line 69
    .line 70
    move-object/from16 v11, p10

    .line 71
    .line 72
    move/from16 v12, p11

    .line 73
    .line 74
    invoke-direct/range {v1 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b$c;-><init>(Lkt/e;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;JLkotlin/jvm/functions/Function2;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/ui/unit/Dp;Z)V

    .line 75
    .line 76
    .line 77
    const v1, -0x7332528d

    .line 78
    .line 79
    .line 80
    const/4 v2, 0x1

    .line 81
    invoke-static {v1, v2, v13}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1}, Landroidx/compose/ui/platform/ComposeView;->setContent(Lkotlin/jvm/functions/Function2;)V

    .line 86
    .line 87
    .line 88
    return-object v0
.end method

.method public static final d(JLkotlin/jvm/functions/Function2;)Lat/t;
    .locals 1
    .param p2    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable:[androidx.compose.ui.UiComposable]]]"
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
            ">;>;)",
            "Lat/t<",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Ljava/lang/Integer;",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Landroidx/compose/ui/unit/Dp;",
            "Ljava/lang/Boolean;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adCloseCountdownButton"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;

    .line 7
    .line 8
    invoke-direct {v0, p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/l;-><init>(JLkotlin/jvm/functions/Function2;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static synthetic e(JLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lat/t;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    sget-object p0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 8
    .line 9
    .line 10
    move-result-wide p0

    .line 11
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 12
    .line 13
    if-eqz p3, :cond_1

    .line 14
    .line 15
    sget-object p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b$b;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b$b;

    .line 16
    .line 17
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->d(JLkotlin/jvm/functions/Function2;)Lat/t;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public static final f(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;
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

.method public static final g(Landroid/app/Activity;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 9

    .line 1
    or-int/lit8 v8, p7, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p8

    .line 11
    .line 12
    invoke-static/range {v0 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->k(Landroid/app/Activity;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object v0
.end method

.method public static final h(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lat/a;Lat/a;ILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 12

    .line 1
    or-int/lit8 v11, p10, 0x1

    .line 2
    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move v3, p3

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
    move-object/from16 v10, p11

    .line 20
    .line 21
    invoke-static/range {v0 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->l(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lat/a;Lat/a;Landroidx/compose/runtime/Composer;I)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 25
    .line 26
    return-object v0
.end method

.method public static final i(Landroid/webkit/WebView;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLat/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;FZIIILandroidx/compose/runtime/Composer;I)Lkotlin/Unit;
    .locals 16

    .line 1
    or-int/lit8 v13, p12, 0x1

    .line 2
    .line 3
    move-object/from16 v0, p0

    .line 4
    .line 5
    move/from16 v1, p1

    .line 6
    .line 7
    move-object/from16 v2, p2

    .line 8
    .line 9
    move-object/from16 v3, p3

    .line 10
    .line 11
    move-object/from16 v4, p4

    .line 12
    .line 13
    move-object/from16 v5, p5

    .line 14
    .line 15
    move-wide/from16 v6, p6

    .line 16
    .line 17
    move-object/from16 v8, p8

    .line 18
    .line 19
    move-object/from16 v9, p9

    .line 20
    .line 21
    move/from16 v10, p10

    .line 22
    .line 23
    move/from16 v11, p11

    .line 24
    .line 25
    move-object/from16 v12, p15

    .line 26
    .line 27
    move/from16 v14, p13

    .line 28
    .line 29
    move/from16 v15, p14

    .line 30
    .line 31
    invoke-static/range {v0 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->m(Landroid/webkit/WebView;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLat/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;FZLandroidx/compose/runtime/Composer;III)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object v0
.end method

.method public static final j(Landroidx/compose/runtime/MutableState;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-interface {p0, v0}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method public static final k(Landroid/app/Activity;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lat/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Landroidx/compose/runtime/Composer;
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
            "(",
            "Landroid/app/Activity;",
            "Landroid/webkit/WebView;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lat/t<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/webkit/WebView;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "-",
            "Landroidx/compose/ui/unit/Dp;",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p2

    .line 6
    .line 7
    move-object/from16 v12, p3

    .line 8
    .line 9
    move-object/from16 v13, p4

    .line 10
    .line 11
    move-object/from16 v14, p5

    .line 12
    .line 13
    move-object/from16 v15, p6

    .line 14
    .line 15
    move/from16 v0, p8

    .line 16
    .line 17
    const-string v2, "<this>"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo v2, "webView"

    .line 23
    .line 24
    .line 25
    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v2, "onButtonRendered"

    .line 29
    .line 30
    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "onClose"

    .line 34
    .line 35
    invoke-static {v13, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "adWebViewRenderer"

    .line 39
    .line 40
    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const v2, -0x4fa69b7e

    .line 44
    .line 45
    .line 46
    move-object/from16 v3, p7

    .line 47
    .line 48
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 49
    .line 50
    .line 51
    move-result-object v9

    .line 52
    and-int/lit8 v3, v0, 0x6

    .line 53
    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    invoke-interface {v9, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    const/4 v3, 0x4

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    const/4 v3, 0x2

    .line 65
    :goto_0
    or-int/2addr v3, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v3, v0

    .line 68
    :goto_1
    and-int/lit8 v4, v0, 0x30

    .line 69
    .line 70
    if-nez v4, :cond_3

    .line 71
    .line 72
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    if-eqz v4, :cond_2

    .line 77
    .line 78
    const/16 v4, 0x20

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_2
    const/16 v4, 0x10

    .line 82
    .line 83
    :goto_2
    or-int/2addr v3, v4

    .line 84
    :cond_3
    and-int/lit16 v4, v0, 0x180

    .line 85
    .line 86
    if-nez v4, :cond_5

    .line 87
    .line 88
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    const/16 v4, 0x100

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_4
    const/16 v4, 0x80

    .line 98
    .line 99
    :goto_3
    or-int/2addr v3, v4

    .line 100
    :cond_5
    and-int/lit16 v4, v0, 0xc00

    .line 101
    .line 102
    if-nez v4, :cond_7

    .line 103
    .line 104
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_6

    .line 109
    .line 110
    const/16 v4, 0x800

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_6
    const/16 v4, 0x400

    .line 114
    .line 115
    :goto_4
    or-int/2addr v3, v4

    .line 116
    :cond_7
    and-int/lit16 v4, v0, 0x6000

    .line 117
    .line 118
    if-nez v4, :cond_9

    .line 119
    .line 120
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    if-eqz v4, :cond_8

    .line 125
    .line 126
    const/16 v4, 0x4000

    .line 127
    .line 128
    goto :goto_5

    .line 129
    :cond_8
    const/16 v4, 0x2000

    .line 130
    .line 131
    :goto_5
    or-int/2addr v3, v4

    .line 132
    :cond_9
    const/high16 v4, 0x30000

    .line 133
    .line 134
    and-int/2addr v4, v0

    .line 135
    if-nez v4, :cond_b

    .line 136
    .line 137
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v4

    .line 141
    if-eqz v4, :cond_a

    .line 142
    .line 143
    const/high16 v4, 0x20000

    .line 144
    .line 145
    goto :goto_6

    .line 146
    :cond_a
    const/high16 v4, 0x10000

    .line 147
    .line 148
    :goto_6
    or-int/2addr v3, v4

    .line 149
    :cond_b
    const/high16 v4, 0x180000

    .line 150
    .line 151
    and-int/2addr v4, v0

    .line 152
    if-nez v4, :cond_d

    .line 153
    .line 154
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    if-eqz v4, :cond_c

    .line 159
    .line 160
    const/high16 v4, 0x100000

    .line 161
    .line 162
    goto :goto_7

    .line 163
    :cond_c
    const/high16 v4, 0x80000

    .line 164
    .line 165
    :goto_7
    or-int/2addr v3, v4

    .line 166
    :cond_d
    move v8, v3

    .line 167
    const v3, 0x92493

    .line 168
    .line 169
    .line 170
    and-int/2addr v3, v8

    .line 171
    const v4, 0x92492

    .line 172
    .line 173
    .line 174
    if-ne v3, v4, :cond_f

    .line 175
    .line 176
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    if-nez v3, :cond_e

    .line 181
    .line 182
    goto :goto_8

    .line 183
    :cond_e
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 184
    .line 185
    .line 186
    move-object v11, v9

    .line 187
    goto/16 :goto_d

    .line 188
    .line 189
    :cond_f
    :goto_8
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 190
    .line 191
    .line 192
    move-result v3

    .line 193
    if-eqz v3, :cond_10

    .line 194
    .line 195
    const/4 v3, -0x1

    .line 196
    const-string v4, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.StaticAdWebViewScreen (AdWebViewRenderer.kt:270)"

    .line 197
    .line 198
    invoke-static {v2, v8, v3, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 199
    .line 200
    .line 201
    :cond_10
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 202
    .line 203
    const/4 v3, 0x0

    .line 204
    const/4 v4, 0x0

    .line 205
    const/4 v7, 0x1

    .line 206
    invoke-static {v2, v3, v7, v4}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 207
    .line 208
    .line 209
    move-result-object v16

    .line 210
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 211
    .line 212
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 213
    .line 214
    .line 215
    move-result-wide v17

    .line 216
    const/16 v20, 0x2

    .line 217
    .line 218
    const/16 v21, 0x0

    .line 219
    .line 220
    const/16 v19, 0x0

    .line 221
    .line 222
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    const v3, 0x2bb5b5d7

    .line 227
    .line 228
    .line 229
    invoke-interface {v9, v3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 230
    .line 231
    .line 232
    sget-object v3, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 233
    .line 234
    invoke-virtual {v3}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    const/4 v6, 0x0

    .line 239
    invoke-static {v3, v6, v9, v6}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    const v4, -0x4ee9b9da

    .line 244
    .line 245
    .line 246
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 247
    .line 248
    .line 249
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-interface {v9, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v4

    .line 257
    check-cast v4, Landroidx/compose/ui/unit/Density;

    .line 258
    .line 259
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    invoke-interface {v9, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v5

    .line 267
    check-cast v5, Landroidx/compose/ui/unit/LayoutDirection;

    .line 268
    .line 269
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-interface {v9, v7}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v7

    .line 277
    check-cast v7, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 278
    .line 279
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 280
    .line 281
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 290
    .line 291
    .line 292
    move-result-object v18

    .line 293
    if-nez v18, :cond_11

    .line 294
    .line 295
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 296
    .line 297
    .line 298
    :cond_11
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 299
    .line 300
    .line 301
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 302
    .line 303
    .line 304
    move-result v18

    .line 305
    if-eqz v18, :cond_12

    .line 306
    .line 307
    invoke-interface {v9, v6}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 308
    .line 309
    .line 310
    goto :goto_9

    .line 311
    :cond_12
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 312
    .line 313
    .line 314
    :goto_9
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 315
    .line 316
    .line 317
    invoke-static {v9}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    invoke-static {v6, v3, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 326
    .line 327
    .line 328
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-static {v6, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 333
    .line 334
    .line 335
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    invoke-static {v6, v5, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 340
    .line 341
    .line 342
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v6, v7, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 347
    .line 348
    .line 349
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 350
    .line 351
    .line 352
    invoke-static {v9}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    const/4 v6, 0x0

    .line 361
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 362
    .line 363
    .line 364
    move-result-object v3

    .line 365
    invoke-interface {v2, v0, v9, v3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    .line 367
    .line 368
    const v0, 0x7ab4aae9

    .line 369
    .line 370
    .line 371
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 372
    .line 373
    .line 374
    const v0, -0x7f65a980

    .line 375
    .line 376
    .line 377
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 378
    .line 379
    .line 380
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 381
    .line 382
    const v0, 0x5ff503a3

    .line 383
    .line 384
    .line 385
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 386
    .line 387
    .line 388
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 389
    .line 390
    .line 391
    move-result v0

    .line 392
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 393
    .line 394
    .line 395
    move-result-object v2

    .line 396
    if-nez v0, :cond_13

    .line 397
    .line 398
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 399
    .line 400
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 401
    .line 402
    .line 403
    move-result-object v0

    .line 404
    if-ne v2, v0, :cond_15

    .line 405
    .line 406
    :cond_13
    if-nez v11, :cond_14

    .line 407
    .line 408
    const/4 v0, 0x1

    .line 409
    goto :goto_a

    .line 410
    :cond_14
    move v0, v6

    .line 411
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 416
    .line 417
    .line 418
    move-result-object v2

    .line 419
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    :cond_15
    move-object v0, v2

    .line 423
    check-cast v0, Lkt/e;

    .line 424
    .line 425
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 426
    .line 427
    .line 428
    const v2, 0x5ff5211a

    .line 429
    .line 430
    .line 431
    invoke-interface {v9, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 432
    .line 433
    .line 434
    invoke-interface {v9, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 435
    .line 436
    .line 437
    move-result v2

    .line 438
    invoke-interface {v9, v10}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 439
    .line 440
    .line 441
    move-result v3

    .line 442
    or-int/2addr v2, v3

    .line 443
    invoke-interface {v9, v11}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 444
    .line 445
    .line 446
    move-result v3

    .line 447
    or-int/2addr v2, v3

    .line 448
    invoke-interface {v9, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    or-int/2addr v2, v3

    .line 453
    invoke-interface {v9, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 454
    .line 455
    .line 456
    move-result v3

    .line 457
    or-int/2addr v2, v3

    .line 458
    invoke-interface {v9, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 459
    .line 460
    .line 461
    move-result v3

    .line 462
    or-int/2addr v2, v3

    .line 463
    invoke-interface {v9, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result v3

    .line 467
    or-int/2addr v2, v3

    .line 468
    invoke-interface {v9}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 469
    .line 470
    .line 471
    move-result-object v3

    .line 472
    if-nez v2, :cond_17

    .line 473
    .line 474
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 475
    .line 476
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    if-ne v3, v2, :cond_16

    .line 481
    .line 482
    goto :goto_b

    .line 483
    :cond_16
    move/from16 v16, v8

    .line 484
    .line 485
    move-object v11, v9

    .line 486
    goto :goto_c

    .line 487
    :cond_17
    :goto_b
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/f;

    .line 488
    .line 489
    move-object v2, v7

    .line 490
    move-object/from16 v3, p5

    .line 491
    .line 492
    move-object/from16 v4, p1

    .line 493
    .line 494
    move/from16 v5, p2

    .line 495
    .line 496
    move v10, v6

    .line 497
    move-object v6, v0

    .line 498
    move-object v10, v7

    .line 499
    const/4 v11, 0x1

    .line 500
    move-object/from16 v7, p3

    .line 501
    .line 502
    move/from16 v16, v8

    .line 503
    .line 504
    move-object/from16 v8, p6

    .line 505
    .line 506
    move-object v11, v9

    .line 507
    move-object/from16 v9, p4

    .line 508
    .line 509
    invoke-direct/range {v2 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/f;-><init>(Lat/t;Landroid/webkit/WebView;ILkt/e;Lkotlin/jvm/functions/Function1;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkotlin/jvm/functions/Function0;)V

    .line 510
    .line 511
    .line 512
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 513
    .line 514
    .line 515
    move-object v3, v10

    .line 516
    :goto_c
    check-cast v3, Lkotlin/jvm/functions/Function1;

    .line 517
    .line 518
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 519
    .line 520
    .line 521
    const/4 v7, 0x0

    .line 522
    const/4 v8, 0x6

    .line 523
    const/4 v4, 0x0

    .line 524
    const/4 v5, 0x0

    .line 525
    move-object v6, v11

    .line 526
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->AndroidView(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    .line 527
    .line 528
    .line 529
    const v2, 0x5ff55218

    .line 530
    .line 531
    .line 532
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 533
    .line 534
    .line 535
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 536
    .line 537
    .line 538
    move-result v2

    .line 539
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 540
    .line 541
    .line 542
    move-result v3

    .line 543
    or-int/2addr v2, v3

    .line 544
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 545
    .line 546
    .line 547
    move-result-object v3

    .line 548
    if-nez v2, :cond_18

    .line 549
    .line 550
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 551
    .line 552
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    if-ne v3, v2, :cond_19

    .line 557
    .line 558
    :cond_18
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/g;

    .line 559
    .line 560
    invoke-direct {v3, v0, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/g;-><init>(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 561
    .line 562
    .line 563
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 564
    .line 565
    .line 566
    :cond_19
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 567
    .line 568
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 569
    .line 570
    .line 571
    const/4 v0, 0x1

    .line 572
    const/4 v2, 0x0

    .line 573
    invoke-static {v2, v3, v11, v2, v0}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 574
    .line 575
    .line 576
    and-int/lit8 v0, v16, 0xe

    .line 577
    .line 578
    invoke-static {v1, v11, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/s;->b(Landroid/app/Activity;Landroidx/compose/runtime/Composer;I)V

    .line 579
    .line 580
    .line 581
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 582
    .line 583
    .line 584
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 585
    .line 586
    .line 587
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 588
    .line 589
    .line 590
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 591
    .line 592
    .line 593
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 594
    .line 595
    .line 596
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 597
    .line 598
    .line 599
    move-result v0

    .line 600
    if-eqz v0, :cond_1a

    .line 601
    .line 602
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 603
    .line 604
    .line 605
    :cond_1a
    :goto_d
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 606
    .line 607
    .line 608
    move-result-object v9

    .line 609
    if-eqz v9, :cond_1b

    .line 610
    .line 611
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;

    .line 612
    .line 613
    move-object v0, v10

    .line 614
    move-object/from16 v1, p0

    .line 615
    .line 616
    move-object/from16 v2, p1

    .line 617
    .line 618
    move/from16 v3, p2

    .line 619
    .line 620
    move-object/from16 v4, p3

    .line 621
    .line 622
    move-object/from16 v5, p4

    .line 623
    .line 624
    move-object/from16 v6, p5

    .line 625
    .line 626
    move-object/from16 v7, p6

    .line 627
    .line 628
    move/from16 v8, p8

    .line 629
    .line 630
    invoke-direct/range {v0 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/h;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;I)V

    .line 631
    .line 632
    .line 633
    invoke-interface {v9, v10}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 634
    .line 635
    .line 636
    :cond_1b
    return-void
.end method

.method public static final l(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lat/a;Lat/a;Landroidx/compose/runtime/Composer;I)V
    .locals 22
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lat/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lat/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[_][_]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;",
            "Landroid/webkit/WebView;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lat/t<",
            "-",
            "Landroid/content/Context;",
            "-",
            "Landroid/webkit/WebView;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;-",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "-",
            "Landroidx/compose/ui/unit/Dp;",
            "-",
            "Ljava/lang/Boolean;",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
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
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v9, p1

    .line 4
    .line 5
    move-object/from16 v0, p2

    .line 6
    .line 7
    move/from16 v8, p3

    .line 8
    .line 9
    move-object/from16 v7, p4

    .line 10
    .line 11
    move-object/from16 v6, p5

    .line 12
    .line 13
    move-object/from16 v5, p6

    .line 14
    .line 15
    move/from16 v4, p11

    .line 16
    .line 17
    const-string v2, "<this>"

    .line 18
    .line 19
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "adViewModel"

    .line 23
    .line 24
    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo v2, "webView"

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string v2, "onButtonRendered"

    .line 34
    .line 35
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-string v2, "onClose"

    .line 39
    .line 40
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v2, "adWebViewRenderer"

    .line 44
    .line 45
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const v2, -0x1c607922

    .line 49
    .line 50
    .line 51
    move-object/from16 v3, p10

    .line 52
    .line 53
    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    and-int/lit8 v10, v4, 0x6

    .line 58
    .line 59
    if-nez v10, :cond_1

    .line 60
    .line 61
    invoke-interface {v3, v1}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v10

    .line 65
    if-eqz v10, :cond_0

    .line 66
    .line 67
    const/4 v10, 0x4

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    const/4 v10, 0x2

    .line 70
    :goto_0
    or-int/2addr v10, v4

    .line 71
    goto :goto_1

    .line 72
    :cond_1
    move v10, v4

    .line 73
    :goto_1
    and-int/lit8 v11, v4, 0x30

    .line 74
    .line 75
    if-nez v11, :cond_3

    .line 76
    .line 77
    invoke-interface {v3, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v11

    .line 81
    if-eqz v11, :cond_2

    .line 82
    .line 83
    const/16 v11, 0x20

    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_2
    const/16 v11, 0x10

    .line 87
    .line 88
    :goto_2
    or-int/2addr v10, v11

    .line 89
    :cond_3
    and-int/lit16 v11, v4, 0x180

    .line 90
    .line 91
    if-nez v11, :cond_5

    .line 92
    .line 93
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v11

    .line 97
    if-eqz v11, :cond_4

    .line 98
    .line 99
    const/16 v11, 0x100

    .line 100
    .line 101
    goto :goto_3

    .line 102
    :cond_4
    const/16 v11, 0x80

    .line 103
    .line 104
    :goto_3
    or-int/2addr v10, v11

    .line 105
    :cond_5
    and-int/lit16 v11, v4, 0xc00

    .line 106
    .line 107
    if-nez v11, :cond_7

    .line 108
    .line 109
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    if-eqz v11, :cond_6

    .line 114
    .line 115
    const/16 v11, 0x800

    .line 116
    .line 117
    goto :goto_4

    .line 118
    :cond_6
    const/16 v11, 0x400

    .line 119
    .line 120
    :goto_4
    or-int/2addr v10, v11

    .line 121
    :cond_7
    and-int/lit16 v11, v4, 0x6000

    .line 122
    .line 123
    if-nez v11, :cond_9

    .line 124
    .line 125
    invoke-interface {v3, v7}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-eqz v11, :cond_8

    .line 130
    .line 131
    const/16 v11, 0x4000

    .line 132
    .line 133
    goto :goto_5

    .line 134
    :cond_8
    const/16 v11, 0x2000

    .line 135
    .line 136
    :goto_5
    or-int/2addr v10, v11

    .line 137
    :cond_9
    const/high16 v11, 0x30000

    .line 138
    .line 139
    and-int/2addr v11, v4

    .line 140
    if-nez v11, :cond_b

    .line 141
    .line 142
    invoke-interface {v3, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    move-result v11

    .line 146
    if-eqz v11, :cond_a

    .line 147
    .line 148
    const/high16 v11, 0x20000

    .line 149
    .line 150
    goto :goto_6

    .line 151
    :cond_a
    const/high16 v11, 0x10000

    .line 152
    .line 153
    :goto_6
    or-int/2addr v10, v11

    .line 154
    :cond_b
    const/high16 v11, 0x180000

    .line 155
    .line 156
    and-int/2addr v11, v4

    .line 157
    if-nez v11, :cond_d

    .line 158
    .line 159
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v11

    .line 163
    if-eqz v11, :cond_c

    .line 164
    .line 165
    const/high16 v11, 0x100000

    .line 166
    .line 167
    goto :goto_7

    .line 168
    :cond_c
    const/high16 v11, 0x80000

    .line 169
    .line 170
    :goto_7
    or-int/2addr v10, v11

    .line 171
    :cond_d
    const/high16 v11, 0xc00000

    .line 172
    .line 173
    and-int/2addr v11, v4

    .line 174
    move-object/from16 v15, p7

    .line 175
    .line 176
    if-nez v11, :cond_f

    .line 177
    .line 178
    invoke-interface {v3, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v11

    .line 182
    if-eqz v11, :cond_e

    .line 183
    .line 184
    const/high16 v11, 0x800000

    .line 185
    .line 186
    goto :goto_8

    .line 187
    :cond_e
    const/high16 v11, 0x400000

    .line 188
    .line 189
    :goto_8
    or-int/2addr v10, v11

    .line 190
    :cond_f
    const/high16 v11, 0x6000000

    .line 191
    .line 192
    and-int/2addr v11, v4

    .line 193
    move-object/from16 v14, p8

    .line 194
    .line 195
    if-nez v11, :cond_11

    .line 196
    .line 197
    invoke-interface {v3, v14}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v11

    .line 201
    if-eqz v11, :cond_10

    .line 202
    .line 203
    const/high16 v11, 0x4000000

    .line 204
    .line 205
    goto :goto_9

    .line 206
    :cond_10
    const/high16 v11, 0x2000000

    .line 207
    .line 208
    :goto_9
    or-int/2addr v10, v11

    .line 209
    :cond_11
    const/high16 v11, 0x30000000

    .line 210
    .line 211
    and-int/2addr v11, v4

    .line 212
    move-object/from16 v13, p9

    .line 213
    .line 214
    if-nez v11, :cond_13

    .line 215
    .line 216
    invoke-interface {v3, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 217
    .line 218
    .line 219
    move-result v11

    .line 220
    if-eqz v11, :cond_12

    .line 221
    .line 222
    const/high16 v11, 0x20000000

    .line 223
    .line 224
    goto :goto_a

    .line 225
    :cond_12
    const/high16 v11, 0x10000000

    .line 226
    .line 227
    :goto_a
    or-int/2addr v10, v11

    .line 228
    :cond_13
    move v12, v10

    .line 229
    const v10, 0x12492493

    .line 230
    .line 231
    .line 232
    and-int/2addr v10, v12

    .line 233
    const v11, 0x12492492

    .line 234
    .line 235
    .line 236
    if-ne v10, v11, :cond_15

    .line 237
    .line 238
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    .line 239
    .line 240
    .line 241
    move-result v10

    .line 242
    if-nez v10, :cond_14

    .line 243
    .line 244
    goto :goto_b

    .line 245
    :cond_14
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    .line 246
    .line 247
    .line 248
    move-object v11, v3

    .line 249
    move-object v13, v6

    .line 250
    goto/16 :goto_e

    .line 251
    .line 252
    :cond_15
    :goto_b
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 253
    .line 254
    .line 255
    move-result v10

    .line 256
    if-eqz v10, :cond_16

    .line 257
    .line 258
    const/4 v10, -0x1

    .line 259
    const-string v11, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.MraidAdContainerScreen (AdWebViewRenderer.kt:200)"

    .line 260
    .line 261
    invoke-static {v2, v12, v10, v11}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 262
    .line 263
    .line 264
    :cond_16
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 265
    .line 266
    const/4 v10, 0x0

    .line 267
    const/4 v11, 0x1

    .line 268
    const/4 v0, 0x0

    .line 269
    invoke-static {v2, v10, v11, v0}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 270
    .line 271
    .line 272
    move-result-object v16

    .line 273
    sget-object v2, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 274
    .line 275
    invoke-virtual {v2}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    .line 276
    .line 277
    .line 278
    move-result-wide v17

    .line 279
    const/16 v20, 0x2

    .line 280
    .line 281
    const/16 v21, 0x0

    .line 282
    .line 283
    const/16 v19, 0x0

    .line 284
    .line 285
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 286
    .line 287
    .line 288
    move-result-object v2

    .line 289
    const-string v10, "MraidAdContainerScreen"

    .line 290
    .line 291
    invoke-static {v2, v10}, Landroidx/compose/ui/platform/TestTagKt;->testTag(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    const v10, 0x2bb5b5d7

    .line 296
    .line 297
    .line 298
    invoke-interface {v3, v10}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 299
    .line 300
    .line 301
    sget-object v10, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 302
    .line 303
    invoke-virtual {v10}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    .line 304
    .line 305
    .line 306
    move-result-object v10

    .line 307
    const/4 v0, 0x0

    .line 308
    invoke-static {v10, v0, v3, v0}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    .line 309
    .line 310
    .line 311
    move-result-object v10

    .line 312
    const v11, -0x4ee9b9da

    .line 313
    .line 314
    .line 315
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 316
    .line 317
    .line 318
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 319
    .line 320
    .line 321
    move-result-object v11

    .line 322
    invoke-interface {v3, v11}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    check-cast v11, Landroidx/compose/ui/unit/Density;

    .line 327
    .line 328
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 329
    .line 330
    .line 331
    move-result-object v0

    .line 332
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    move-result-object v0

    .line 336
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 337
    .line 338
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 339
    .line 340
    .line 341
    move-result-object v4

    .line 342
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    check-cast v4, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 347
    .line 348
    sget-object v17, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    .line 349
    .line 350
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    invoke-static {v2}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    .line 359
    .line 360
    .line 361
    move-result-object v19

    .line 362
    if-nez v19, :cond_17

    .line 363
    .line 364
    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 365
    .line 366
    .line 367
    :cond_17
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 368
    .line 369
    .line 370
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->getInserting()Z

    .line 371
    .line 372
    .line 373
    move-result v19

    .line 374
    if-eqz v19, :cond_18

    .line 375
    .line 376
    invoke-interface {v3, v5}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    .line 377
    .line 378
    .line 379
    goto :goto_c

    .line 380
    :cond_18
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 381
    .line 382
    .line 383
    :goto_c
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 384
    .line 385
    .line 386
    invoke-static {v3}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    .line 391
    .line 392
    .line 393
    move-result-object v6

    .line 394
    invoke-static {v5, v10, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    .line 398
    .line 399
    .line 400
    move-result-object v6

    .line 401
    invoke-static {v5, v11, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 402
    .line 403
    .line 404
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    .line 405
    .line 406
    .line 407
    move-result-object v6

    .line 408
    invoke-static {v5, v0, v6}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual/range {v17 .. v17}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    invoke-static {v5, v4, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 416
    .line 417
    .line 418
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 419
    .line 420
    .line 421
    invoke-static {v3}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    .line 422
    .line 423
    .line 424
    move-result-object v0

    .line 425
    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    const/4 v4, 0x0

    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 431
    .line 432
    .line 433
    move-result-object v5

    .line 434
    invoke-interface {v2, v0, v3, v5}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    const v0, 0x7ab4aae9

    .line 438
    .line 439
    .line 440
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 441
    .line 442
    .line 443
    const v0, -0x7f65a980

    .line 444
    .line 445
    .line 446
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 447
    .line 448
    .line 449
    sget-object v2, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 450
    .line 451
    const v0, 0x47cbc4da

    .line 452
    .line 453
    .line 454
    invoke-interface {v3, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 455
    .line 456
    .line 457
    invoke-interface {v3, v8}, Landroidx/compose/runtime/Composer;->changed(I)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    move-result-object v4

    .line 465
    if-nez v0, :cond_19

    .line 466
    .line 467
    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 468
    .line 469
    invoke-virtual {v0}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v0

    .line 473
    if-ne v4, v0, :cond_1b

    .line 474
    .line 475
    :cond_19
    if-nez v8, :cond_1a

    .line 476
    .line 477
    const/4 v0, 0x1

    .line 478
    goto :goto_d

    .line 479
    :cond_1a
    const/4 v0, 0x0

    .line 480
    :goto_d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 485
    .line 486
    .line 487
    move-result-object v4

    .line 488
    invoke-interface {v3, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 489
    .line 490
    .line 491
    :cond_1b
    move-object v0, v4

    .line 492
    check-cast v0, Lkt/e;

    .line 493
    .line 494
    invoke-interface {v3}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 495
    .line 496
    .line 497
    invoke-interface/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;->k()Lkt/i;

    .line 498
    .line 499
    .line 500
    move-result-object v4

    .line 501
    const/4 v5, 0x1

    .line 502
    const/4 v6, 0x0

    .line 503
    const/4 v10, 0x0

    .line 504
    invoke-static {v4, v6, v3, v10, v5}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 505
    .line 506
    .line 507
    move-result-object v4

    .line 508
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->f(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 509
    .line 510
    .line 511
    move-result-object v6

    .line 512
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b$a;

    .line 513
    .line 514
    move-object v10, v11

    .line 515
    move-object v7, v11

    .line 516
    move-object/from16 v11, p6

    .line 517
    .line 518
    move/from16 v19, v12

    .line 519
    .line 520
    move-object/from16 v12, p2

    .line 521
    .line 522
    move/from16 v13, p3

    .line 523
    .line 524
    move-object v14, v0

    .line 525
    move-object/from16 v15, p4

    .line 526
    .line 527
    move-object/from16 v16, p5

    .line 528
    .line 529
    move-object/from16 v17, p7

    .line 530
    .line 531
    invoke-direct/range {v10 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b$a;-><init>(Lat/t;Landroid/webkit/WebView;ILkt/e;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)V

    .line 532
    .line 533
    .line 534
    const v10, 0x646ba1d4

    .line 535
    .line 536
    .line 537
    invoke-static {v3, v10, v5, v7}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 538
    .line 539
    .line 540
    move-result-object v13

    .line 541
    const/16 v15, 0xc00

    .line 542
    .line 543
    const/16 v16, 0x6

    .line 544
    .line 545
    const/4 v11, 0x0

    .line 546
    const/4 v12, 0x0

    .line 547
    move-object v10, v6

    .line 548
    move-object v14, v3

    .line 549
    invoke-static/range {v10 .. v16}, Landroidx/compose/animation/CrossfadeKt;->Crossfade(Ljava/lang/Object;Landroidx/compose/ui/Modifier;Landroidx/compose/animation/core/FiniteAnimationSpec;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 550
    .line 551
    .line 552
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->f(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 553
    .line 554
    .line 555
    move-result-object v4

    .line 556
    and-int/lit8 v6, v19, 0x70

    .line 557
    .line 558
    or-int/lit8 v6, v6, 0x6

    .line 559
    .line 560
    shr-int/lit8 v7, v19, 0x12

    .line 561
    .line 562
    and-int/lit16 v7, v7, 0x1c00

    .line 563
    .line 564
    or-int/2addr v6, v7

    .line 565
    shr-int/lit8 v7, v19, 0xc

    .line 566
    .line 567
    const v10, 0xe000

    .line 568
    .line 569
    .line 570
    and-int/2addr v7, v10

    .line 571
    or-int v10, v6, v7

    .line 572
    .line 573
    move-object v11, v3

    .line 574
    move-object/from16 v3, p1

    .line 575
    .line 576
    move v12, v5

    .line 577
    move-object/from16 v5, p9

    .line 578
    .line 579
    move-object/from16 v13, p5

    .line 580
    .line 581
    move-object/from16 v6, p8

    .line 582
    .line 583
    move-object v7, v11

    .line 584
    move v8, v10

    .line 585
    invoke-static/range {v2 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/e;->e(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;Lat/a;Lat/a;Landroidx/compose/runtime/Composer;I)V

    .line 586
    .line 587
    .line 588
    const v2, 0x47cc9f6f

    .line 589
    .line 590
    .line 591
    invoke-interface {v11, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 592
    .line 593
    .line 594
    invoke-interface {v11, v0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v2

    .line 598
    invoke-interface {v11, v13}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    .line 599
    .line 600
    .line 601
    move-result v3

    .line 602
    or-int/2addr v2, v3

    .line 603
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    if-nez v2, :cond_1c

    .line 608
    .line 609
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    .line 610
    .line 611
    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    .line 612
    .line 613
    .line 614
    move-result-object v2

    .line 615
    if-ne v3, v2, :cond_1d

    .line 616
    .line 617
    :cond_1c
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/j;

    .line 618
    .line 619
    invoke-direct {v3, v0, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/j;-><init>(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 620
    .line 621
    .line 622
    invoke-interface {v11, v3}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    :cond_1d
    check-cast v3, Lkotlin/jvm/functions/Function0;

    .line 626
    .line 627
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 628
    .line 629
    .line 630
    const/4 v0, 0x0

    .line 631
    invoke-static {v0, v3, v11, v0, v12}, Landroidx/activity/compose/BackHandlerKt;->BackHandler(ZLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    .line 632
    .line 633
    .line 634
    and-int/lit8 v0, v19, 0xe

    .line 635
    .line 636
    invoke-static {v1, v11, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/s;->b(Landroid/app/Activity;Landroidx/compose/runtime/Composer;I)V

    .line 637
    .line 638
    .line 639
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 640
    .line 641
    .line 642
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 643
    .line 644
    .line 645
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 646
    .line 647
    .line 648
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 649
    .line 650
    .line 651
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 652
    .line 653
    .line 654
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 655
    .line 656
    .line 657
    move-result v0

    .line 658
    if-eqz v0, :cond_1e

    .line 659
    .line 660
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 661
    .line 662
    .line 663
    :cond_1e
    :goto_e
    invoke-interface {v11}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    .line 664
    .line 665
    .line 666
    move-result-object v12

    .line 667
    if-eqz v12, :cond_1f

    .line 668
    .line 669
    new-instance v14, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/k;

    .line 670
    .line 671
    move-object v0, v14

    .line 672
    move-object/from16 v1, p0

    .line 673
    .line 674
    move-object/from16 v2, p1

    .line 675
    .line 676
    move-object/from16 v3, p2

    .line 677
    .line 678
    move/from16 v4, p3

    .line 679
    .line 680
    move-object/from16 v5, p4

    .line 681
    .line 682
    move-object/from16 v6, p5

    .line 683
    .line 684
    move-object/from16 v7, p6

    .line 685
    .line 686
    move-object/from16 v8, p7

    .line 687
    .line 688
    move-object/from16 v9, p8

    .line 689
    .line 690
    move-object/from16 v10, p9

    .line 691
    .line 692
    move/from16 v11, p11

    .line 693
    .line 694
    invoke-direct/range {v0 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/k;-><init>(Landroid/app/Activity;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i;Landroid/webkit/WebView;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lat/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lat/a;Lat/a;I)V

    .line 695
    .line 696
    .line 697
    invoke-interface {v12, v14}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    .line 698
    .line 699
    .line 700
    :cond_1f
    return-void
.end method

.method public static final m(Landroid/webkit/WebView;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLat/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;FZLandroidx/compose/runtime/Composer;III)V
    .locals 34
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableInferredTarget;
        scheme = "[androidx.compose.ui.UiComposable[androidx.compose.ui.UiComposable]]"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "I",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "J",
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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "FZ",
            "Landroidx/compose/runtime/Composer;",
            "III)V"
        }
    .end annotation

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v15, p3

    move/from16 v1, p10

    move/from16 v0, p13

    move/from16 v14, p15

    const/16 v7, 0x10

    const/16 v8, 0x20

    const/16 v9, 0x80

    const v10, -0x5eef58b4

    move-object/from16 v11, p12

    .line 1
    invoke-interface {v11, v10}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v13

    const/4 v11, 0x1

    and-int/lit8 v12, v14, 0x1

    const/16 v16, 0x4

    const/4 v4, 0x2

    if-eqz v12, :cond_0

    or-int/lit8 v12, v0, 0x6

    move/from16 v17, v12

    move-object/from16 v12, p0

    goto :goto_1

    :cond_0
    and-int/lit8 v12, v0, 0x6

    if-nez v12, :cond_2

    move-object/from16 v12, p0

    invoke-interface {v13, v12}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    move/from16 v17, v16

    goto :goto_0

    :cond_1
    move/from16 v17, v4

    :goto_0
    or-int v17, v0, v17

    goto :goto_1

    :cond_2
    move-object/from16 v12, p0

    move/from16 v17, v0

    :goto_1
    and-int/lit8 v18, v14, 0x2

    if-eqz v18, :cond_4

    or-int/lit8 v17, v17, 0x30

    :cond_3
    :goto_2
    move/from16 v10, v17

    goto :goto_4

    :cond_4
    and-int/lit8 v18, v0, 0x30

    if-nez v18, :cond_3

    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v18

    if-eqz v18, :cond_5

    move/from16 v18, v8

    goto :goto_3

    :cond_5
    move/from16 v18, v7

    :goto_3
    or-int v17, v17, v18

    goto :goto_2

    :goto_4
    and-int/lit8 v17, v14, 0x4

    if-eqz v17, :cond_6

    or-int/lit16 v10, v10, 0x180

    goto :goto_6

    :cond_6
    and-int/lit16 v11, v0, 0x180

    if-nez v11, :cond_8

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    const/16 v11, 0x100

    goto :goto_5

    :cond_7
    move v11, v9

    :goto_5
    or-int/2addr v10, v11

    :cond_8
    :goto_6
    and-int/lit8 v11, v14, 0x8

    if-eqz v11, :cond_9

    or-int/lit16 v10, v10, 0xc00

    goto :goto_8

    :cond_9
    and-int/lit16 v11, v0, 0xc00

    if-nez v11, :cond_b

    invoke-interface {v13, v15}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const/16 v11, 0x800

    goto :goto_7

    :cond_a
    const/16 v11, 0x400

    :goto_7
    or-int/2addr v10, v11

    :cond_b
    :goto_8
    and-int/2addr v7, v14

    if-eqz v7, :cond_c

    or-int/lit16 v10, v10, 0x6000

    move-object/from16 v11, p4

    goto :goto_a

    :cond_c
    and-int/lit16 v7, v0, 0x6000

    move-object/from16 v11, p4

    if-nez v7, :cond_e

    invoke-interface {v13, v11}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    const/16 v7, 0x4000

    goto :goto_9

    :cond_d
    const/16 v7, 0x2000

    :goto_9
    or-int/2addr v10, v7

    :cond_e
    :goto_a
    and-int/lit8 v7, v14, 0x20

    const/high16 v8, 0x30000

    if-eqz v7, :cond_10

    or-int/2addr v10, v8

    :cond_f
    move-object/from16 v8, p5

    goto :goto_c

    :cond_10
    and-int/2addr v8, v0

    if-nez v8, :cond_f

    move-object/from16 v8, p5

    invoke-interface {v13, v8}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    const/high16 v17, 0x20000

    goto :goto_b

    :cond_11
    const/high16 v17, 0x10000

    :goto_b
    or-int v10, v10, v17

    :goto_c
    and-int/lit8 v17, v14, 0x40

    const/high16 v18, 0x180000

    if-eqz v17, :cond_12

    or-int v10, v10, v18

    move-wide/from16 v4, p6

    goto :goto_e

    :cond_12
    and-int v18, v0, v18

    move-wide/from16 v4, p6

    if-nez v18, :cond_14

    invoke-interface {v13, v4, v5}, Landroidx/compose/runtime/Composer;->changed(J)Z

    move-result v20

    if-eqz v20, :cond_13

    const/high16 v20, 0x100000

    goto :goto_d

    :cond_13
    const/high16 v20, 0x80000

    :goto_d
    or-int v10, v10, v20

    :cond_14
    :goto_e
    const/high16 v20, 0xc00000

    and-int v20, v0, v20

    if-nez v20, :cond_17

    and-int/lit16 v6, v14, 0x80

    if-nez v6, :cond_15

    move-object/from16 v6, p8

    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_16

    const/high16 v21, 0x800000

    goto :goto_f

    :cond_15
    move-object/from16 v6, p8

    :cond_16
    const/high16 v21, 0x400000

    :goto_f
    or-int v10, v10, v21

    :goto_10
    const/16 v9, 0x100

    goto :goto_11

    :cond_17
    move-object/from16 v6, p8

    goto :goto_10

    :goto_11
    and-int/2addr v9, v14

    const/high16 v21, 0x6000000

    if-eqz v9, :cond_19

    or-int v10, v10, v21

    :cond_18
    move-object/from16 v9, p9

    goto :goto_13

    :cond_19
    and-int v9, v0, v21

    if-nez v9, :cond_18

    move-object/from16 v9, p9

    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_1a

    const/high16 v21, 0x4000000

    goto :goto_12

    :cond_1a
    const/high16 v21, 0x2000000

    :goto_12
    or-int v10, v10, v21

    :goto_13
    and-int/lit16 v4, v14, 0x200

    const/high16 v5, 0x30000000

    if-eqz v4, :cond_1c

    or-int/2addr v10, v5

    :cond_1b
    :goto_14
    const/16 v4, 0x400

    goto :goto_16

    :cond_1c
    and-int v4, v0, v5

    if-nez v4, :cond_1b

    invoke-interface {v13, v1}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v4

    if-eqz v4, :cond_1d

    const/high16 v4, 0x20000000

    goto :goto_15

    :cond_1d
    const/high16 v4, 0x10000000

    :goto_15
    or-int/2addr v10, v4

    goto :goto_14

    :goto_16
    and-int/2addr v4, v14

    if-eqz v4, :cond_1e

    or-int/lit8 v4, p14, 0x6

    move/from16 v5, p11

    goto :goto_18

    :cond_1e
    and-int/lit8 v4, p14, 0x6

    move/from16 v5, p11

    if-nez v4, :cond_20

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->changed(Z)Z

    move-result v4

    if-eqz v4, :cond_1f

    goto :goto_17

    :cond_1f
    const/16 v16, 0x2

    :goto_17
    or-int v4, p14, v16

    goto :goto_18

    :cond_20
    move/from16 v4, p14

    :goto_18
    const v16, 0x12492493

    and-int v5, v10, v16

    const v6, 0x12492492

    if-ne v5, v6, :cond_22

    and-int/lit8 v5, v4, 0x3

    const/4 v6, 0x2

    if-ne v5, v6, :cond_22

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v5

    if-nez v5, :cond_21

    goto :goto_19

    .line 2
    :cond_21
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    move-wide/from16 v23, p6

    move-object/from16 v9, p8

    move-object v6, v13

    goto/16 :goto_22

    .line 3
    :cond_22
    :goto_19
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startDefaults()V

    const/4 v5, 0x1

    and-int/lit8 v6, v0, 0x1

    const v5, -0x1c00001

    if-eqz v6, :cond_25

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getDefaultsInvalid()Z

    move-result v6

    if-eqz v6, :cond_23

    goto :goto_1a

    .line 4
    :cond_23
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    const/16 v6, 0x80

    and-int/2addr v6, v14

    if-eqz v6, :cond_24

    and-int/2addr v10, v5

    :cond_24
    move-wide/from16 v23, p6

    move-object/from16 v25, p8

    move/from16 v33, v10

    move-object v10, v8

    move/from16 v8, v33

    goto :goto_1f

    :cond_25
    :goto_1a
    if-eqz v7, :cond_26

    .line 5
    sget-object v6, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    goto :goto_1b

    :cond_26
    move-object v6, v8

    :goto_1b
    if-eqz v17, :cond_27

    .line 6
    sget-object v7, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v7}, Landroidx/compose/ui/graphics/Color$Companion;->getBlack-0d7_KjU()J

    move-result-wide v7

    :goto_1c
    const/16 v5, 0x80

    goto :goto_1d

    :cond_27
    move-wide/from16 v7, p6

    goto :goto_1c

    :goto_1d
    and-int/2addr v5, v14

    if-eqz v5, :cond_28

    const/16 v28, 0x0

    const/16 v29, 0xff

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v27, v13

    .line 7
    invoke-static/range {v16 .. v29}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/c0;->a(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;JJJLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/z;Lkotlin/jvm/functions/Function0;Lcom/moloco/sdk/internal/ortb/model/i;Landroidx/compose/runtime/Composer;II)Lat/a;

    move-result-object v5

    const v16, -0x1c00001

    and-int v10, v10, v16

    move-object/from16 v25, v5

    :goto_1e
    move-wide/from16 v23, v7

    move v8, v10

    move-object v10, v6

    goto :goto_1f

    :cond_28
    move-object/from16 v25, p8

    goto :goto_1e

    .line 8
    :goto_1f
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endDefaults()V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 9
    const-string v5, "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.webview.AdWebViewRenderDisplay (AdWebViewRenderer.kt:74)"

    const v6, -0x5eef58b4

    invoke-static {v6, v8, v4, v5}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_29
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 10
    invoke-static {v10, v5, v6, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v20, 0x2

    const/16 v21, 0x0

    const/16 v19, 0x0

    move-wide/from16 v17, v23

    .line 11
    invoke-static/range {v16 .. v21}, Landroidx/compose/foundation/BackgroundKt;->background-bw27NRU$default(Landroidx/compose/ui/Modifier;JLandroidx/compose/ui/graphics/Shape;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v6

    const v7, 0x2bb5b5d7

    .line 12
    invoke-interface {v13, v7}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 13
    sget-object v22, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Alignment$Companion;->getTopStart()Landroidx/compose/ui/Alignment;

    move-result-object v7

    const/4 v5, 0x0

    .line 14
    invoke-static {v7, v5, v13, v5}, Landroidx/compose/foundation/layout/BoxKt;->rememberBoxMeasurePolicy(Landroidx/compose/ui/Alignment;ZLandroidx/compose/runtime/Composer;I)Landroidx/compose/ui/layout/MeasurePolicy;

    move-result-object v7

    const v5, -0x4ee9b9da

    .line 15
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 16
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalDensity()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v5

    .line 17
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v5

    .line 18
    check-cast v5, Landroidx/compose/ui/unit/Density;

    .line 19
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalLayoutDirection()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v0

    .line 20
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v0

    .line 21
    check-cast v0, Landroidx/compose/ui/unit/LayoutDirection;

    .line 22
    invoke-static {}, Landroidx/compose/ui/platform/CompositionLocalsKt;->getLocalViewConfiguration()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object v9

    .line 23
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v9

    .line 24
    check-cast v9, Landroidx/compose/ui/platform/ViewConfiguration;

    .line 25
    sget-object v16, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    move-object/from16 v26, v10

    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getConstructor()Lkotlin/jvm/functions/Function0;

    move-result-object v10

    .line 26
    invoke-static {v6}, Landroidx/compose/ui/layout/LayoutKt;->materializerOf(Landroidx/compose/ui/Modifier;)Lat/n;

    move-result-object v6

    .line 27
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getApplier()Landroidx/compose/runtime/Applier;

    move-result-object v17

    if-nez v17, :cond_2a

    invoke-static {}, Landroidx/compose/runtime/ComposablesKt;->invalidApplier()V

    .line 28
    :cond_2a
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->startReusableNode()V

    .line 29
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->getInserting()Z

    move-result v17

    if-eqz v17, :cond_2b

    .line 30
    invoke-interface {v13, v10}, Landroidx/compose/runtime/Composer;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_20

    .line 31
    :cond_2b
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->useNode()V

    .line 32
    :goto_20
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->disableReusing()V

    .line 33
    invoke-static {v13}, Landroidx/compose/runtime/Updater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v10

    .line 34
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetMeasurePolicy()Lkotlin/jvm/functions/Function2;

    move-result-object v11

    invoke-static {v10, v7, v11}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 35
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetDensity()Lkotlin/jvm/functions/Function2;

    move-result-object v7

    invoke-static {v10, v5, v7}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 36
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetLayoutDirection()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    invoke-static {v10, v0, v5}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 37
    invoke-virtual/range {v16 .. v16}, Landroidx/compose/ui/node/ComposeUiNode$Companion;->getSetViewConfiguration()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-static {v10, v9, v0}, Landroidx/compose/runtime/Updater;->set-impl(Landroidx/compose/runtime/Composer;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    .line 38
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->enableReusing()V

    .line 39
    invoke-static {v13}, Landroidx/compose/runtime/SkippableUpdater;->constructor-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/Composer;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/SkippableUpdater;->box-impl(Landroidx/compose/runtime/Composer;)Landroidx/compose/runtime/SkippableUpdater;

    move-result-object v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v0, v13, v7}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7ab4aae9

    .line 40
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    const v0, -0x7f65a980

    .line 41
    invoke-interface {v13, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 42
    sget-object v0, Landroidx/compose/foundation/layout/BoxScopeInstance;->INSTANCE:Landroidx/compose/foundation/layout/BoxScopeInstance;

    .line 43
    sget-object v11, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v11, v6, v5, v7}, Landroidx/compose/foundation/layout/SizeKt;->fillMaxSize$default(Landroidx/compose/ui/Modifier;FILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object v17

    and-int/lit8 v5, v8, 0xe

    or-int/lit8 v5, v5, 0x30

    shr-int/lit8 v6, v8, 0x12

    and-int/lit16 v6, v6, 0x380

    or-int v20, v5, v6

    const/16 v21, 0x0

    move-object/from16 v16, p0

    move-object/from16 v18, p9

    move-object/from16 v19, v13

    invoke-static/range {v16 .. v21}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/a;->d(Landroid/webkit/WebView;Landroidx/compose/ui/Modifier;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Landroidx/compose/runtime/Composer;II)V

    const v5, -0x54d07b63

    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    if-nez v25, :cond_2c

    move/from16 v27, v8

    move-object/from16 v30, v11

    move-object/from16 p5, v13

    goto/16 :goto_21

    :cond_2c
    const v5, 0x588ca075

    .line 44
    invoke-interface {v13, v5}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 45
    invoke-interface {v13, v2}, Landroidx/compose/runtime/Composer;->changed(I)Z

    move-result v5

    .line 46
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v6

    if-nez v5, :cond_2d

    .line 47
    sget-object v5, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v5}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v6, v5, :cond_2e

    .line 48
    :cond_2d
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lkotlin/ranges/e;->e(II)I

    move-result v5

    invoke-static {v5}, Lms/n;->b(I)I

    move-result v5

    invoke-static {v5}, Lms/n;->a(I)Lms/n;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;-><init>(Ljava/lang/Object;)V

    .line 49
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 50
    :cond_2e
    move-object v5, v6

    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 51
    invoke-interface/range {p2 .. p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    const v6, 0x588cd239

    .line 52
    invoke-interface {v13, v6}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-interface {v13, v3}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v6

    .line 53
    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v9

    if-nez v6, :cond_2f

    .line 54
    sget-object v6, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v6}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v6

    if-ne v9, v6, :cond_30

    .line 55
    :cond_2f
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/m;

    invoke-direct {v9, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/m;-><init>(Landroidx/compose/runtime/MutableState;)V

    .line 56
    invoke-interface {v13, v9}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 57
    :cond_30
    check-cast v9, Lkotlin/jvm/functions/Function0;

    invoke-interface {v13}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    shl-int/lit8 v6, v8, 0x3

    const/high16 v10, 0x70000

    and-int/2addr v6, v10

    or-int/lit16 v6, v6, 0x186

    shl-int/lit8 v10, v8, 0x9

    const/high16 v16, 0x380000

    and-int v10, v10, v16

    or-int/2addr v6, v10

    shl-int/lit8 v4, v4, 0x18

    const/high16 v10, 0xe000000

    and-int/2addr v4, v10

    or-int v16, v6, v4

    const/4 v6, 0x1

    move-object v4, v0

    move/from16 v27, v8

    move-object v8, v9

    move-object/from16 v9, p4

    move-object/from16 v10, p3

    move-object/from16 v30, v11

    move-object/from16 v11, v25

    move/from16 v12, p11

    move-object/from16 p5, v13

    move/from16 v14, v16

    .line 58
    invoke-static/range {v4 .. v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/t;->c(Landroidx/compose/foundation/layout/BoxScope;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/p;ZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lat/a;ZLandroidx/compose/runtime/Composer;I)V

    .line 59
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    :goto_21
    invoke-interface/range {p5 .. p5}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 61
    invoke-virtual/range {v22 .. v22}, Landroidx/compose/ui/Alignment$Companion;->getBottomStart()Landroidx/compose/ui/Alignment;

    move-result-object v4

    move-object/from16 v5, v30

    invoke-interface {v0, v5, v4}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    move-result-object v4

    .line 62
    invoke-static {v4, v1}, Landroidx/compose/foundation/layout/PaddingKt;->padding-3ABfNKs(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;

    move-result-object v16

    const/16 v21, 0x0

    const/16 v22, 0xe

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v20, p5

    .line 63
    invoke-static/range {v16 .. v22}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/h;->g(Landroidx/compose/ui/Modifier;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)Lat/o;

    move-result-object v4

    shr-int/lit8 v5, v27, 0x6

    and-int/lit8 v5, v5, 0x70

    or-int/lit8 v5, v5, 0x6

    .line 64
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v6, p5

    .line 65
    invoke-interface {v4, v0, v15, v6, v5}, Lat/o;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 67
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 68
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endNode()V

    .line 69
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 70
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 71
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_31
    move-object/from16 v9, v25

    move-object/from16 v8, v26

    .line 72
    :goto_22
    invoke-interface {v6}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v14

    if-eqz v14, :cond_32

    new-instance v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/n;

    move-object v0, v13

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object v6, v8

    move-wide/from16 v7, v23

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-object v15, v13

    move/from16 v13, p13

    move-object/from16 v31, v14

    move/from16 v14, p14

    move-object/from16 v32, v15

    move/from16 v15, p15

    invoke-direct/range {v0 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/n;-><init>(Landroid/webkit/WebView;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLat/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;FZIII)V

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :cond_32
    return-void
.end method

.method public static final n(Lkt/e;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkt/e;->getValue()Ljava/lang/Object;

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
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static final o(Lkt/e;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->n(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic p(Landroid/webkit/WebView;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLat/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;FZLandroidx/compose/runtime/Composer;III)V
    .locals 0

    .line 1
    invoke-static/range {p0 .. p15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->m(Landroid/webkit/WebView;ILandroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;JLat/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;FZLandroidx/compose/runtime/Composer;III)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final q(Lkt/e;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lkt/e;->getValue()Ljava/lang/Object;

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
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static final r(Lkt/e;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->q(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final s(Lkt/e;Lkotlin/jvm/functions/Function0;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->q(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method public static final synthetic t(Lkt/e;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/b;->n(Lkt/e;Lkotlin/jvm/functions/Function0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
