.class final Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WebViewAdPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer;-><init>(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/adplayer/WebViewContainer;Lgt/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/unity3d/services/core/device/StorageEventInfo;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/unity3d/services/core/device/StorageEventInfo;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;->invoke(Lcom/unity3d/services/core/device/StorageEventInfo;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/unity3d/services/core/device/StorageEventInfo;)V
    .locals 7
    .param p1    # Lcom/unity3d/services/core/device/StorageEventInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    invoke-virtual {v0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->getScope()Lgt/g0;

    move-result-object v1

    new-instance v4, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;

    iget-object v0, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    const/4 v2, 0x0

    invoke-direct {v4, v0, p1, v2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$storageEventCallback$1$1;-><init>(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;Lcom/unity3d/services/core/device/StorageEventInfo;Lrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method
