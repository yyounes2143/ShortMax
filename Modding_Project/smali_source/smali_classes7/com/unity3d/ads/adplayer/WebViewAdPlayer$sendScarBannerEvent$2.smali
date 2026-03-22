.class final Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendScarBannerEvent$2;
.super Lkotlin/jvm/internal/Lambda;
.source "WebViewAdPlayer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/adplayer/WebViewAdPlayer;->sendScarBannerEvent(Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/unity3d/ads/adplayer/model/WebViewEvent;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $event:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;


# direct methods
.method constructor <init>(Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendScarBannerEvent$2;->$event:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/unity3d/ads/adplayer/model/WebViewEvent;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    new-instance v0, Lcom/unity3d/ads/adplayer/model/OnScarBannerEvent;

    iget-object v1, p0, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendScarBannerEvent$2;->$event:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    invoke-direct {v0, v1}, Lcom/unity3d/ads/adplayer/model/OnScarBannerEvent;-><init>(Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/ads/adplayer/WebViewAdPlayer$sendScarBannerEvent$2;->invoke()Lcom/unity3d/ads/adplayer/model/WebViewEvent;

    move-result-object v0

    return-object v0
.end method
