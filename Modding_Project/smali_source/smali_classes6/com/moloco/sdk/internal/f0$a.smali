.class public final Lcom/moloco/sdk/internal/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lat/r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/f0;->b(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;JJLjava/lang/String;Landroidx/compose/runtime/Composer;II)Lat/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
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
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/jvm/functions/Function0<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMolocoVastCTA.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MolocoVastCTA.kt\ncom/moloco/sdk/internal/MolocoVastCTAKt$molocoCTAButton$1\n+ 2 SnapshotState.kt\nandroidx/compose/runtime/SnapshotStateKt__SnapshotStateKt\n*L\n1#1,154:1\n76#2:155\n*S KotlinDebug\n*F\n+ 1 MolocoVastCTA.kt\ncom/moloco/sdk/internal/MolocoVastCTAKt$molocoCTAButton$1\n*L\n49#1:155\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroidx/compose/ui/Alignment;

.field public final synthetic b:Landroidx/compose/foundation/layout/PaddingValues;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:J

.field public final synthetic f:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Alignment;Landroidx/compose/foundation/layout/PaddingValues;Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/f0$a;->a:Landroidx/compose/ui/Alignment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/f0$a;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/f0$a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/f0$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-wide p5, p0, Lcom/moloco/sdk/internal/f0$a;->e:J

    .line 10
    .line 11
    iput-wide p7, p0, Lcom/moloco/sdk/internal/f0$a;->f:J

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static final synthetic a(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/internal/f0$a;->c(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final c(Landroidx/compose/runtime/State;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/i$a;
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


# virtual methods
.method public final b(Landroidx/compose/foundation/layout/BoxScope;ZLkt/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V
    .locals 18
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .annotation build Landroidx/compose/runtime/ComposableTarget;
        applier = "androidx.compose.ui.UiComposable"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/foundation/layout/BoxScope;",
            "Z",
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
            "I)V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    move-object/from16 v7, p6

    .line 8
    .line 9
    move/from16 v3, p7

    .line 10
    .line 11
    const-string v4, "<this>"

    .line 12
    .line 13
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v4, "currentAdPartFlow"

    .line 17
    .line 18
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "onButtonRendered"

    .line 22
    .line 23
    move-object/from16 v5, p4

    .line 24
    .line 25
    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v4, "onCTA"

    .line 29
    .line 30
    move-object/from16 v6, p5

    .line 31
    .line 32
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_0

    .line 40
    .line 41
    const/4 v4, -0x1

    .line 42
    const-string v8, "com.moloco.sdk.internal.molocoCTAButton.<anonymous> (MolocoVastCTA.kt:48)"

    .line 43
    .line 44
    const v9, -0x3742f8fd

    .line 45
    .line 46
    .line 47
    invoke-static {v9, v3, v4, v8}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    shr-int/lit8 v4, v3, 0x6

    .line 51
    .line 52
    and-int/lit8 v4, v4, 0xe

    .line 53
    .line 54
    const/4 v8, 0x0

    .line 55
    const/4 v15, 0x1

    .line 56
    invoke-static {v2, v8, v7, v4, v15}, Landroidx/compose/runtime/SnapshotStateKt;->collectAsState(Lkt/i;Lkotlin/coroutines/CoroutineContext;Landroidx/compose/runtime/Composer;II)Landroidx/compose/runtime/State;

    .line 57
    .line 58
    .line 59
    move-result-object v10

    .line 60
    sget-object v2, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 61
    .line 62
    iget-object v4, v0, Lcom/moloco/sdk/internal/f0$a;->a:Landroidx/compose/ui/Alignment;

    .line 63
    .line 64
    invoke-interface {v1, v2, v4}, Landroidx/compose/foundation/layout/BoxScope;->align(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/Alignment;)Landroidx/compose/ui/Modifier;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v1}, Landroidx/compose/foundation/layout/WindowInsetsPadding_androidKt;->displayCutoutPadding(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget-object v2, v0, Lcom/moloco/sdk/internal/f0$a;->b:Landroidx/compose/foundation/layout/PaddingValues;

    .line 73
    .line 74
    invoke-static {v1, v2}, Landroidx/compose/foundation/layout/PaddingKt;->padding(Landroidx/compose/ui/Modifier;Landroidx/compose/foundation/layout/PaddingValues;)Landroidx/compose/ui/Modifier;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-instance v1, Lcom/moloco/sdk/internal/f0$a$a;

    .line 79
    .line 80
    iget-object v11, v0, Lcom/moloco/sdk/internal/f0$a;->c:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v12, v0, Lcom/moloco/sdk/internal/f0$a;->d:Ljava/lang/String;

    .line 83
    .line 84
    iget-wide v13, v0, Lcom/moloco/sdk/internal/f0$a;->e:J

    .line 85
    .line 86
    iget-wide v8, v0, Lcom/moloco/sdk/internal/f0$a;->f:J

    .line 87
    .line 88
    move-wide/from16 v16, v8

    .line 89
    .line 90
    move-object v8, v1

    .line 91
    move-object/from16 v9, p4

    .line 92
    .line 93
    move v4, v15

    .line 94
    move-wide/from16 v15, v16

    .line 95
    .line 96
    move-object/from16 v17, p5

    .line 97
    .line 98
    invoke-direct/range {v8 .. v17}, Lcom/moloco/sdk/internal/f0$a$a;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/State;Ljava/lang/String;Ljava/lang/String;JJLkotlin/jvm/functions/Function0;)V

    .line 99
    .line 100
    .line 101
    const v5, -0x2735ee25

    .line 102
    .line 103
    .line 104
    invoke-static {v7, v5, v4, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    .line 105
    .line 106
    .line 107
    move-result-object v6

    .line 108
    shr-int/lit8 v1, v3, 0x3

    .line 109
    .line 110
    and-int/lit8 v1, v1, 0xe

    .line 111
    .line 112
    const/high16 v3, 0x30000

    .line 113
    .line 114
    or-int v8, v1, v3

    .line 115
    .line 116
    const/4 v5, 0x0

    .line 117
    const/16 v9, 0x1c

    .line 118
    .line 119
    const/4 v3, 0x0

    .line 120
    const/4 v4, 0x0

    .line 121
    move/from16 v1, p2

    .line 122
    .line 123
    move-object/from16 v7, p6

    .line 124
    .line 125
    invoke-static/range {v1 .. v9}, Landroidx/compose/animation/AnimatedVisibilityKt;->AnimatedVisibility(ZLandroidx/compose/ui/Modifier;Landroidx/compose/animation/EnterTransition;Landroidx/compose/animation/ExitTransition;Ljava/lang/String;Lat/n;Landroidx/compose/runtime/Composer;II)V

    .line 126
    .line 127
    .line 128
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    if-eqz v1, :cond_1

    .line 133
    .line 134
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 135
    .line 136
    .line 137
    :cond_1
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    move-object v1, p1

    .line 2
    check-cast v1, Landroidx/compose/foundation/layout/BoxScope;

    .line 3
    .line 4
    check-cast p2, Ljava/lang/Boolean;

    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 7
    .line 8
    .line 9
    move-result v2

    .line 10
    move-object v3, p3

    .line 11
    check-cast v3, Lkt/i;

    .line 12
    .line 13
    move-object v4, p4

    .line 14
    check-cast v4, Lkotlin/jvm/functions/Function1;

    .line 15
    .line 16
    move-object v5, p5

    .line 17
    check-cast v5, Lkotlin/jvm/functions/Function0;

    .line 18
    .line 19
    move-object v6, p6

    .line 20
    check-cast v6, Landroidx/compose/runtime/Composer;

    .line 21
    .line 22
    check-cast p7, Ljava/lang/Number;

    .line 23
    .line 24
    invoke-virtual {p7}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    move-object v0, p0

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/moloco/sdk/internal/f0$a;->b(Landroidx/compose/foundation/layout/BoxScope;ZLkt/i;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 33
    .line 34
    return-object p1
.end method
