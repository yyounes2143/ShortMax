.class public Lcom/unity3d/services/ads/gmascar/handlers/SignalsHandler;
.super Ljava/lang/Object;
.source "SignalsHandler.java"

# interfaces
.implements Lol/b;


# instance fields
.field private _gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;


# direct methods
.method public constructor <init>(Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/handlers/SignalsHandler;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onSignalsCollected(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/SignalsHandler;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->SIGNALS:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onSignalsCollectionFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/SignalsHandler;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->SIGNALS_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
