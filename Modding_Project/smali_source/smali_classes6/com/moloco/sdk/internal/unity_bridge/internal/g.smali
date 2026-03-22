.class public final Lcom/moloco/sdk/internal/unity_bridge/internal/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Las/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Las/a<",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/InterstitialAd;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Las/a;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v0, v3, v1, v2}, Las/a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->a:Las/a;

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/unity_bridge/internal/g;)Las/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->a:Las/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final c(Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/internal/g;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Lcom/moloco/sdk/publisher/InterstitialAd;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;
    .locals 6

    .line 1
    if-eqz p6, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/moloco/sdk/internal/unity_bridge/internal/c;

    .line 4
    .line 5
    invoke-direct {p1, p4, p2, p6}, Lcom/moloco/sdk/internal/unity_bridge/internal/c;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    return-object p0

    .line 14
    :cond_0
    const-string p6, "null cannot be cast to non-null type com.moloco.sdk.publisher.InterstitialAd"

    .line 15
    .line 16
    invoke-static {p5, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    move-object v0, p1

    .line 20
    move-object v1, p5

    .line 21
    move-object v2, p2

    .line 22
    move-object v3, p3

    .line 23
    move-object v4, p0

    .line 24
    move-object v5, p4

    .line 25
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->g(Lcom/moloco/sdk/publisher/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method public static final d(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;->onAdLoadSuccess(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final e(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    invoke-interface {p0, p1, p2}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;->onAdLoadFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static final f(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Ad cannot be shown as it was not loaded"

    .line 2
    .line 3
    invoke-interface {p0, p1, v0}, Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;->onAdShowFailed(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Landroid/os/Handler;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 10
    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Can\'t create handler inside thread "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, " that has not called Looper.prepare()"

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public final g(Lcom/moloco/sdk/publisher/InterstitialAd;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->a:Las/a;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Las/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/moloco/sdk/publisher/AdLoad;->isLoaded()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    new-instance p1, Lcom/moloco/sdk/internal/unity_bridge/internal/d;

    .line 18
    .line 19
    invoke-direct {p1, p5, p2}, Lcom/moloco/sdk/internal/unity_bridge/internal/d;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-interface {v0}, Lcom/moloco/sdk/publisher/Destroyable;->destroy()V

    .line 27
    .line 28
    .line 29
    :cond_1
    new-instance v6, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;

    .line 30
    .line 31
    move-object v0, v6

    .line 32
    move-object v1, p0

    .line 33
    move-object v2, p2

    .line 34
    move-object v3, p1

    .line 35
    move-object v4, p4

    .line 36
    move-object v5, p5

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/unity_bridge/internal/g$a;-><init>(Lcom/moloco/sdk/internal/unity_bridge/internal/g;Ljava/lang/String;Lcom/moloco/sdk/publisher/InterstitialAd;Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V

    .line 38
    .line 39
    .line 40
    invoke-interface {p1, p3, v6}, Lcom/moloco/sdk/publisher/AdLoad;->load(Ljava/lang/String;Lcom/moloco/sdk/publisher/AdLoad$Listener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final h(Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adUnitId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "callback"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->a()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->a:Las/a;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Las/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/moloco/sdk/publisher/InterstitialAd;

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/moloco/sdk/publisher/AdLoad;->isLoaded()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p1, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;

    .line 33
    .line 34
    invoke-direct {p1, v0, p2}, Lcom/moloco/sdk/internal/unity_bridge/internal/g$b;-><init>(Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1, p1}, Lcom/moloco/sdk/publisher/FullscreenAd;->show(Lcom/moloco/sdk/publisher/AdShowListener;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-interface {v1}, Lcom/moloco/sdk/publisher/Destroyable;->destroy()V

    .line 44
    .line 45
    .line 46
    :cond_2
    new-instance v1, Lcom/moloco/sdk/internal/unity_bridge/internal/b;

    .line 47
    .line 48
    invoke-direct {v1, p2, p1}, Lcom/moloco/sdk/internal/unity_bridge/internal/b;-><init>(Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityShowCallback;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mediation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adUnitId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "bidResponse"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v0, "unityLoadCallback"

    .line 17
    .line 18
    .line 19
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/unity_bridge/internal/g;->a()Landroid/os/Handler;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    new-instance v0, Lcom/moloco/sdk/publisher/MediationInfo;

    .line 27
    .line 28
    invoke-direct {v0, p1}, Lcom/moloco/sdk/publisher/MediationInfo;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance p1, Lcom/moloco/sdk/internal/unity_bridge/internal/a;

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    move-object v3, p0

    .line 35
    move-object v4, p2

    .line 36
    move-object v5, p3

    .line 37
    move-object v6, p4

    .line 38
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/internal/unity_bridge/internal/a;-><init>(Landroid/os/Handler;Lcom/moloco/sdk/internal/unity_bridge/internal/g;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/unity_bridge/MolocoUnityLoadCallback;)V

    .line 39
    .line 40
    .line 41
    const/4 v7, 0x4

    .line 42
    const/4 v8, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v3, v0

    .line 45
    move-object v6, p1

    .line 46
    invoke-static/range {v3 .. v8}, Lcom/moloco/sdk/publisher/Moloco;->createInterstitial$default(Lcom/moloco/sdk/publisher/MediationInfo;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
