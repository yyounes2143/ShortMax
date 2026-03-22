.class public final Lcom/unity3d/services/store/StoreWebViewEventSender;
.super Ljava/lang/Object;
.source "StoreWebViewEventSender.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/services/core/webview/bridge/IEventSender;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/webview/bridge/IEventSender;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventSender"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/services/store/StoreWebViewEventSender;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final varargs send(Lcom/unity3d/services/store/StoreEvent;[Ljava/lang/Object;)V
    .locals 3
    .param p1    # Lcom/unity3d/services/store/StoreEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "params"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/unity3d/services/store/StoreWebViewEventSender;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 12
    .line 13
    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->STORE:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    .line 14
    .line 15
    array-length v2, p2

    .line 16
    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-interface {v0, v1, p1, p2}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method
