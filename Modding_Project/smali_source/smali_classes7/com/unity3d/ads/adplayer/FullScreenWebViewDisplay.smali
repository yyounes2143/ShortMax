.class public final Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;
.super Landroidx/activity/ComponentActivity;
.source "FullScreenWebViewDisplay.kt"

# interfaces
.implements Lcom/unity3d/services/core/di/IServiceComponent;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFullScreenWebViewDisplay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FullScreenWebViewDisplay.kt\ncom/unity3d/ads/adplayer/FullScreenWebViewDisplay\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 5 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 6 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 7 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,190:1\n29#2,5:191\n29#2,5:196\n1#3:201\n314#4,9:202\n323#4,2:216\n20#5:211\n22#5:215\n50#6:212\n55#6:214\n106#7:213\n*S KotlinDebug\n*F\n+ 1 FullScreenWebViewDisplay.kt\ncom/unity3d/ads/adplayer/FullScreenWebViewDisplay\n*L\n40#1:191,5\n47#1:196,5\n98#1:202,9\n98#1:216,2\n107#1:211\n107#1:215\n107#1:212\n107#1:214\n107#1:213\n*E\n"
    }
.end annotation


# instance fields
.field private final adObject$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dispatchers$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private opportunityId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent$delegate:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showOptions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->opportunityId:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 9
    .line 10
    new-instance v2, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$special$$inlined$inject$default$1;

    .line 11
    .line 12
    invoke-direct {v2, p0, v0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$special$$inlined$inject$default$1;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iput-object v2, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->sendDiagnosticEvent$delegate:Lms/i;

    .line 20
    .line 21
    new-instance v2, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$adObject$2;

    .line 22
    .line 23
    invoke-direct {v2, p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$adObject$2;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iput-object v2, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->adObject$delegate:Lms/i;

    .line 31
    .line 32
    new-instance v2, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$special$$inlined$inject$default$2;

    .line 33
    .line 34
    invoke-direct {v2, p0, v0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$special$$inlined$inject$default$2;-><init>(Lcom/unity3d/services/core/di/IServiceComponent;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->dispatchers$delegate:Lms/i;

    .line 42
    .line 43
    return-void
.end method

.method public static final synthetic access$getAdObject(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)Lcom/unity3d/ads/core/data/model/AdObject;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getDispatchers(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getOpportunityId$p(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->opportunityId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSendDiagnosticEvent(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getShowOptions$p(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->showOptions:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$listenToAdPlayerEvents(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->listenToAdPlayerEvents(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$loadWebView(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Landroid/webkit/WebView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->loadWebView(Landroid/webkit/WebView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->adObject$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/unity3d/ads/core/data/model/AdObject;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->dispatchers$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 8
    .line 9
    return-object v0
.end method

.method private final getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->sendDiagnosticEvent$delegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 8
    .line 9
    return-object v0
.end method

.method private final listenToAdPlayerEvents(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer;->Companion:Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/unity3d/ads/adplayer/AndroidFullscreenWebViewAdPlayer$Companion;->getDisplayMessages()Lkt/d;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-direct {v2, p0, v0, v3}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$listenToAdPlayerEvents$2$1;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lgt/i;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/c;->Q(Lkt/f;Lkotlin/jvm/functions/Function2;)Lkt/f;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    new-instance v2, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1;

    .line 31
    .line 32
    invoke-direct {v2, v1, p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$listenToAdPlayerEvents$lambda$5$$inlined$filter$1;-><init>(Lkt/b;Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;)V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3;

    .line 36
    .line 37
    invoke-direct {v1, p0, v3}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$listenToAdPlayerEvents$2$3;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    if-ne v0, v1, :cond_0

    .line 60
    .line 61
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 62
    .line 63
    .line 64
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-ne v0, p1, :cond_1

    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    return-object p1
.end method

.method private final loadWebView(Landroid/webkit/WebView;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getMain()Lgt/c0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v4, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$loadWebView$1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p1, p0, v0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$loadWebView$1;-><init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 24
    .line 25
    .line 26
    return-void
.end method


# virtual methods
.method public getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/unity3d/services/core/di/IServiceComponent$DefaultImpls;->getServiceProvider(Lcom/unity3d/services/core/di/IServiceComponent;)Lcom/unity3d/services/core/di/IServiceProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 20
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v2, "opportunityId"

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v2, "not_provided"

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move-object v0, v2

    .line 21
    :cond_0
    iput-object v0, v1, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->opportunityId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const-string v0, "intentOpportunityId"

    .line 28
    .line 29
    iget-object v4, v1, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->opportunityId:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v0, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    const/16 v10, 0x2a

    .line 44
    .line 45
    const/4 v11, 0x0

    .line 46
    const-string v4, "native_show_ad_viewer_fullscreen_intent_creation_starts"

    .line 47
    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v9, 0x0

    .line 51
    invoke-static/range {v3 .. v11}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, v1, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->opportunityId:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const-string v2, "reason_debug"

    .line 61
    .line 62
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x0

    .line 64
    if-eqz v0, :cond_1

    .line 65
    .line 66
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 67
    .line 68
    .line 69
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    new-instance v8, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onCreate$1;

    .line 82
    .line 83
    invoke-direct {v8, v1, v4}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onCreate$1;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 84
    .line 85
    .line 86
    const/4 v9, 0x3

    .line 87
    const/4 v10, 0x0

    .line 88
    const/4 v6, 0x0

    .line 89
    const/4 v7, 0x0

    .line 90
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 91
    .line 92
    .line 93
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    const-string v0, "no_opportunity_id"

    .line 98
    .line 99
    invoke-static {v2, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 104
    .line 105
    .line 106
    move-result-object v14

    .line 107
    const/16 v18, 0x3a

    .line 108
    .line 109
    const/16 v19, 0x0

    .line 110
    .line 111
    const-string v12, "native_show_ad_viewer_fullscreen_intent_creation_fails"

    .line 112
    .line 113
    const/4 v13, 0x0

    .line 114
    const/4 v15, 0x0

    .line 115
    const/16 v16, 0x0

    .line 116
    .line 117
    const/16 v17, 0x0

    .line 118
    .line 119
    invoke-static/range {v11 .. v19}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    if-eqz v0, :cond_2

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/unity3d/ads/core/data/model/AdObject;->getAdPlayer()Lcom/unity3d/ads/adplayer/AdPlayer;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    goto :goto_0

    .line 137
    :cond_2
    move-object v0, v4

    .line 138
    :goto_0
    if-eqz v0, :cond_7

    .line 139
    .line 140
    invoke-interface {v0}, Lcom/unity3d/ads/adplayer/AdPlayer;->getScope()Lgt/g0;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_7

    .line 145
    .line 146
    invoke-static {v0}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    const/4 v5, 0x1

    .line 151
    if-ne v0, v5, :cond_7

    .line 152
    .line 153
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v2, "orientation"

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    move-object v3, v4

    .line 171
    :goto_1
    if-eqz v3, :cond_4

    .line 172
    .line 173
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const/4 v3, -0x1

    .line 178
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 183
    .line 184
    .line 185
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v2, "showOptions"

    .line 190
    .line 191
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-eqz v0, :cond_6

    .line 196
    .line 197
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 198
    .line 199
    new-instance v2, Lorg/json/JSONObject;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v2}, Lcom/unity3d/ads/core/extensions/JSONObjectExtensionsKt;->toBuiltInMap(Lorg/json/JSONObject;)Ljava/util/Map;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    goto :goto_2

    .line 213
    :catchall_0
    move-exception v0

    .line 214
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 215
    .line 216
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v0

    .line 220
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_5

    .line 229
    .line 230
    move-object v0, v4

    .line 231
    :cond_5
    check-cast v0, Ljava/util/Map;

    .line 232
    .line 233
    goto :goto_3

    .line 234
    :cond_6
    move-object v0, v4

    .line 235
    :goto_3
    iput-object v0, v1, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->showOptions:Ljava/util/Map;

    .line 236
    .line 237
    invoke-static/range {p0 .. p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 238
    .line 239
    .line 240
    move-result-object v5

    .line 241
    new-instance v8, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onCreate$6;

    .line 242
    .line 243
    invoke-direct {v8, v1, v4}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onCreate$6;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 244
    .line 245
    .line 246
    const/4 v9, 0x3

    .line 247
    const/4 v10, 0x0

    .line 248
    const/4 v6, 0x0

    .line 249
    const/4 v7, 0x0

    .line 250
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 251
    .line 252
    .line 253
    return-void

    .line 254
    :cond_7
    invoke-virtual {v1, v3}, Landroid/app/Activity;->setResult(I)V

    .line 255
    .line 256
    .line 257
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 266
    .line 267
    .line 268
    move-result-object v5

    .line 269
    new-instance v8, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onCreate$2;

    .line 270
    .line 271
    invoke-direct {v8, v1, v4}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onCreate$2;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 272
    .line 273
    .line 274
    const/4 v9, 0x3

    .line 275
    const/4 v10, 0x0

    .line 276
    const/4 v6, 0x0

    .line 277
    const/4 v7, 0x0

    .line 278
    invoke-static/range {v5 .. v10}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 279
    .line 280
    .line 281
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 282
    .line 283
    .line 284
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 285
    .line 286
    .line 287
    move-result-object v11

    .line 288
    const-string v0, "ad_player_scope_not_active"

    .line 289
    .line 290
    invoke-static {v2, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    invoke-static {v0}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    .line 295
    .line 296
    .line 297
    move-result-object v14

    .line 298
    const/16 v18, 0x3a

    .line 299
    .line 300
    const/16 v19, 0x0

    .line 301
    .line 302
    const-string v12, "native_show_ad_viewer_fullscreen_intent_creation_fails"

    .line 303
    .line 304
    const/4 v13, 0x0

    .line 305
    const/4 v15, 0x0

    .line 306
    const/16 v16, 0x0

    .line 307
    .line 308
    const/16 v17, 0x0

    .line 309
    .line 310
    invoke-static/range {v11 .. v19}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    return-void
.end method

.method protected onDestroy()V
    .locals 17

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const/16 v7, 0x2e

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    const-string v1, "native_show_ad_viewer_fullscreen_intent_destroyed"

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    invoke-static/range {v0 .. v8}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    new-instance v4, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onDestroy$1;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    move-object/from16 v7, p0

    .line 43
    .line 44
    invoke-direct {v4, v7, v0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onDestroy$1;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v5, 0x3

    .line 48
    const/4 v6, 0x0

    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x0

    .line 51
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 55
    .line 56
    .line 57
    move-result-object v8

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    const/16 v15, 0x2e

    .line 63
    .line 64
    const/16 v16, 0x0

    .line 65
    .line 66
    const-string v9, "native_show_ad_viewer_fullscreen_intent_finishing_on_destroy"

    .line 67
    .line 68
    const/4 v10, 0x0

    .line 69
    const/4 v11, 0x0

    .line 70
    const/4 v12, 0x0

    .line 71
    const/4 v14, 0x0

    .line 72
    invoke-static/range {v8 .. v16}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    move-object/from16 v7, p0

    .line 77
    .line 78
    :goto_0
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onDestroy()V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 p2, 0x4

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    :goto_0
    return p1
.end method

.method protected onPause()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p0}, Landroid/app/Activity;->onPause()V

    .line 4
    .line 5
    .line 6
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    new-instance v5, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onPause$1;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-direct {v5, v0, v1}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onPause$1;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x3

    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    const/4 v4, 0x0

    .line 28
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->isFinishing()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-static {v2}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-instance v6, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onPause$2;

    .line 50
    .line 51
    invoke-direct {v6, v0, v1}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onPause$2;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 52
    .line 53
    .line 54
    const/4 v7, 0x3

    .line 55
    const/4 v8, 0x0

    .line 56
    const/4 v4, 0x0

    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 59
    .line 60
    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getSendDiagnosticEvent()Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-direct/range {p0 .. p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getAdObject()Lcom/unity3d/ads/core/data/model/AdObject;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    const/16 v16, 0x2e

    .line 70
    .line 71
    const/16 v17, 0x0

    .line 72
    .line 73
    const-string v10, "native_show_ad_viewer_fullscreen_intent_finishing_on_pause"

    .line 74
    .line 75
    const/4 v11, 0x0

    .line 76
    const/4 v12, 0x0

    .line 77
    const/4 v13, 0x0

    .line 78
    const/4 v15, 0x0

    .line 79
    invoke-static/range {v9 .. v17}, Lcom/unity3d/ads/core/domain/SendDiagnosticEvent$DefaultImpls;->invoke$default(Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Ljava/util/Map;Lcom/unity3d/ads/core/data/model/AdObject;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onResume$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p0, v0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onResume$1;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;->getDispatchers()Lcom/unity3d/services/core/domain/ISDKDispatchers;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-interface {v0}, Lcom/unity3d/services/core/domain/ISDKDispatchers;->getDefault()Lgt/c0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v4, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onWindowFocusChanged$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p0, p1, v0}, Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay$onWindowFocusChanged$1;-><init>(Lcom/unity3d/ads/adplayer/FullScreenWebViewDisplay;ZLrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x3

    .line 23
    const/4 v6, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    return-void
.end method
