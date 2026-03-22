.class public final Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1;
.super Lkotlin/coroutines/a;
.source "CoroutineExceptionHandler.kt"

# interfaces
.implements Lgt/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer;-><init>(Lcom/unity3d/ads/adplayer/WebViewBridge;Lcom/unity3d/ads/core/data/repository/DeviceInfoRepository;Lcom/unity3d/ads/core/data/repository/SessionRepository;Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;Lcom/unity3d/ads/adplayer/WebViewContainer;Lgt/g0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n+ 2 WebViewAdPlayer.kt\ncom/unity3d/ads/adplayer/WebViewAdPlayer\n*L\n1#1,110:1\n76#2,2:111\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;


# direct methods
.method public constructor <init>(Lgt/d0$b;Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/coroutines/a;-><init>(Lkotlin/coroutines/CoroutineContext$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleException(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Lkotlin/coroutines/CoroutineContext;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    sget-object p1, Lcom/unity3d/services/core/device/Storage;->Companion:Lcom/unity3d/services/core/device/Storage$Companion;

    .line 2
    .line 3
    iget-object p2, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$special$$inlined$CoroutineExceptionHandler$1;->this$0:Lcom/unity3d/ads/adplayer/WebViewAdPlayer;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->access$getStorageEventCallback$p(Lcom/unity3d/ads/adplayer/WebViewAdPlayer;)Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1, p2}, Lcom/unity3d/services/core/device/Storage$Companion;->removeStorageEventCallback(Lkotlin/jvm/functions/Function1;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
