.class public interface abstract Lcom/vungle/ads/internal/ui/view/WebViewAPI;
.super Ljava/lang/Object;
.source "WebViewAPI.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;,
        Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract notifyPropertiesChange(Z)V
.end method

.method public abstract setAdVisibility(Z)V
.end method

.method public abstract setConsentStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setErrorHandler(Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;)V
    .param p1    # Lcom/vungle/ads/internal/ui/view/WebViewAPI$WebClientErrorHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract setMraidDelegate(Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;)V
    .param p1    # Lcom/vungle/ads/internal/ui/view/WebViewAPI$MraidDelegate;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setWebViewObserver(Lcom/vungle/ads/internal/omsdk/WebViewObserver;)V
    .param p1    # Lcom/vungle/ads/internal/omsdk/WebViewObserver;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
