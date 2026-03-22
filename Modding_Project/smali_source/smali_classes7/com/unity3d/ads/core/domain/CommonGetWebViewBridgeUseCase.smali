.class public final Lcom/unity3d/ads/core/domain/CommonGetWebViewBridgeUseCase;
.super Ljava/lang/Object;
.source "CommonGetWebViewBridgeUseCase.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/GetWebViewBridgeUseCase;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final dispatcher:Lgt/c0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V
    .locals 1
    .param p1    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "dispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sendDiagnosticEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonGetWebViewBridgeUseCase;->dispatcher:Lgt/c0;

    .line 3
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonGetWebViewBridgeUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    return-void
.end method

.method public synthetic constructor <init>(Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 4
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    move-result-object p1

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/unity3d/ads/core/domain/CommonGetWebViewBridgeUseCase;-><init>(Lgt/c0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    return-void
.end method


# virtual methods
.method public invoke(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lgt/g0;)Lcom/unity3d/ads/adplayer/WebViewBridge;
    .locals 3
    .param p1    # Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "webViewContainer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adPlayerScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonGetWebViewBridgeUseCase;->dispatcher:Lgt/c0;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/unity3d/ads/core/domain/CommonGetWebViewBridgeUseCase;->sendDiagnosticEvent:Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;

    .line 14
    .line 15
    new-instance v2, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;

    .line 16
    .line 17
    invoke-direct {v2, v0, p1, p2, v1}, Lcom/unity3d/ads/adplayer/CommonWebViewBridge;-><init>(Lgt/c0;Lcom/unity3d/ads/adplayer/WebViewContainer;Lgt/g0;Lcom/unity3d/ads/core/domain/SendDiagnosticEvent;)V

    .line 18
    .line 19
    .line 20
    return-object v2
.end method
