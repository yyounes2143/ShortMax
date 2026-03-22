.class public final Lcom/unity3d/services/ads/measurements/MeasurementsStatusReceiver;
.super Ljava/lang/Object;
.source "MeasurementsStatusReceiver.kt"

# interfaces
.implements Landroid/os/OutcomeReceiver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "MissingPermission"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/OutcomeReceiver;"
    }
.end annotation

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
    iput-object p1, p0, Lcom/unity3d/services/ads/measurements/MeasurementsStatusReceiver;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/ads/measurements/MeasurementsStatusReceiver;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->MEASUREMENTS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/ads/measurements/MeasurementsEvents;->NOT_AVAILABLE:Lcom/unity3d/services/ads/measurements/MeasurementsEvents;

    sget-object v3, Lcom/unity3d/services/ads/measurements/MeasurementsErrors;->ERROR_EXCEPTION:Lcom/unity3d/services/ads/measurements/MeasurementsErrors;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/measurements/MeasurementsStatusReceiver;->onError(Ljava/lang/Exception;)V

    return-void
.end method

.method public onResult(I)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/ads/measurements/MeasurementsStatusReceiver;->eventSender:Lcom/unity3d/services/core/webview/bridge/IEventSender;

    sget-object v1, Lcom/unity3d/services/core/webview/WebViewEventCategory;->MEASUREMENTS:Lcom/unity3d/services/core/webview/WebViewEventCategory;

    sget-object v2, Lcom/unity3d/services/ads/measurements/MeasurementsEvents;->AVAILABLE:Lcom/unity3d/services/ads/measurements/MeasurementsEvents;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/unity3d/services/core/webview/bridge/IEventSender;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/unity3d/services/ads/measurements/MeasurementsStatusReceiver;->onResult(I)V

    return-void
.end method
