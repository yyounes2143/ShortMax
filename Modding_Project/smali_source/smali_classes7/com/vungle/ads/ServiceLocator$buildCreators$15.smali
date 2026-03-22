.class public final Lcom/vungle/ads/ServiceLocator$buildCreators$15;
.super Lcom/vungle/ads/ServiceLocator$Creator;
.source "ServiceLocator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/ads/ServiceLocator;->buildCreators()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/ads/ServiceLocator$Creator<",
        "Lcom/vungle/ads/internal/network/TpatSender;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vungle/ads/ServiceLocator;


# direct methods
.method constructor <init>(Lcom/vungle/ads/ServiceLocator;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->this$0:Lcom/vungle/ads/ServiceLocator;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/vungle/ads/ServiceLocator$Creator;-><init>(Lcom/vungle/ads/ServiceLocator;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public create()Lcom/vungle/ads/internal/network/TpatSender;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v6, Lcom/vungle/ads/internal/network/TpatSender;

    .line 3
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->this$0:Lcom/vungle/ads/ServiceLocator;

    const-class v1, Lcom/vungle/ads/internal/network/VungleApiClient;

    invoke-static {v0, v1}, Lcom/vungle/ads/ServiceLocator;->access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/vungle/ads/internal/network/VungleApiClient;

    .line 4
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->this$0:Lcom/vungle/ads/ServiceLocator;

    const-class v2, Lcom/vungle/ads/internal/executor/Executors;

    invoke-static {v0, v2}, Lcom/vungle/ads/ServiceLocator;->access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/Executors;

    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/Executors;->getIoExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v3

    .line 5
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->this$0:Lcom/vungle/ads/ServiceLocator;

    invoke-static {v0, v2}, Lcom/vungle/ads/ServiceLocator;->access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/ads/internal/executor/Executors;

    invoke-interface {v0}, Lcom/vungle/ads/internal/executor/Executors;->getJobExecutor()Lcom/vungle/ads/internal/executor/VungleThreadPoolExecutor;

    move-result-object v4

    .line 6
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->this$0:Lcom/vungle/ads/ServiceLocator;

    const-class v2, Lcom/vungle/ads/internal/util/PathProvider;

    invoke-static {v0, v2}, Lcom/vungle/ads/ServiceLocator;->access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/vungle/ads/internal/util/PathProvider;

    .line 7
    iget-object v0, p0, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->this$0:Lcom/vungle/ads/ServiceLocator;

    const-class v2, Lcom/vungle/ads/internal/signals/SignalManager;

    invoke-static {v0, v2}, Lcom/vungle/ads/ServiceLocator;->access$getOrBuild(Lcom/vungle/ads/ServiceLocator;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/vungle/ads/internal/signals/SignalManager;

    move-object v0, v6

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/vungle/ads/internal/network/TpatSender;-><init>(Lcom/vungle/ads/internal/network/VungleApiClient;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/vungle/ads/internal/util/PathProvider;Lcom/vungle/ads/internal/signals/SignalManager;)V

    return-object v6
.end method

.method public bridge synthetic create()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/vungle/ads/ServiceLocator$buildCreators$15;->create()Lcom/vungle/ads/internal/network/TpatSender;

    move-result-object v0

    return-object v0
.end method
