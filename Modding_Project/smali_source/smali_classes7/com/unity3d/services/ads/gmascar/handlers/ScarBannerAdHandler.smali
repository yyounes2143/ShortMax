.class public Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;
.super Ljava/lang/Object;
.source "ScarBannerAdHandler.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/f;


# instance fields
.field private final _eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

.field private final _operationId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/webview/bridge/IEventSender;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 4
    .line 5
    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->SCAR_BANNER_CLICKED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdClosed()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 4
    .line 5
    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->SCAR_BANNER_CLOSED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdFailedToLoad(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 4
    .line 5
    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->SCAR_BANNER_LOAD_FAILED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    filled-new-array {v3, p1, p2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, v2, p1}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onAdImpression()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 4
    .line 5
    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->SCAR_BANNER_IMPRESSION:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/unity3d/services/banners/BannerViewCache;->getInstance()Lcom/unity3d/services/banners/BannerViewCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/unity3d/services/banners/BannerViewCache;->addScarContainer(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 11
    .line 12
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 13
    .line 14
    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->SCAR_BANNER_LOADED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 15
    .line 16
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 17
    .line 18
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onAdOpened()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->BANNER:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 4
    .line 5
    sget-object v2, Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;->SCAR_BANNER_OPENED:Lcom/unity3d/services/banners/bridge/BannerBridge$BannerEvent;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarBannerAdHandler;->_operationId:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v0, v1, v2, v3}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
