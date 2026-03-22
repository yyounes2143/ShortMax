.class public abstract Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;
.super Ljava/lang/Object;
.source "ScarAdHandlerBase.java"

# interfaces
.implements Lcom/unity3d/scar/adapter/common/d;


# instance fields
.field protected final _eventSubject:Lcom/unity3d/services/core/misc/EventSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/unity3d/services/core/misc/EventSubject<",
            "Lcom/unity3d/scar/adapter/common/GMAEvent;",
            ">;"
        }
    .end annotation
.end field

.field protected final _gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

.field protected final _scarAdMetadata:Lnl/c;


# direct methods
.method public constructor <init>(Lnl/c;Lcom/unity3d/services/core/misc/EventSubject;Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnl/c;",
            "Lcom/unity3d/services/core/misc/EventSubject<",
            "Lcom/unity3d/scar/adapter/common/GMAEvent;",
            ">;",
            "Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_scarAdMetadata:Lnl/c;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_eventSubject:Lcom/unity3d/services/core/misc/EventSubject;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLICKED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onAdClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLOSED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_eventSubject:Lcom/unity3d/services/core/misc/EventSubject;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/unity3d/services/core/misc/EventSubject;->unsubscribe()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onAdFailedToLoad(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->LOAD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_scarAdMetadata:Lnl/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lnl/c;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_scarAdMetadata:Lnl/c;

    .line 12
    .line 13
    invoke-virtual {v3}, Lnl/c;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    filled-new-array {v2, v3, p2, p1}, [Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v0, v1, p1}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public onAdLoaded()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_LOADED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_scarAdMetadata:Lnl/c;

    .line 6
    .line 7
    invoke-virtual {v2}, Lnl/c;->c()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-object v3, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_scarAdMetadata:Lnl/c;

    .line 12
    .line 13
    invoke-virtual {v3}, Lnl/c;->d()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onAdOpened()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_gmaEventSender:Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;

    .line 2
    .line 3
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_STARTED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/unity3d/services/ads/gmascar/utils/GMAEventSender;->send(Lcom/unity3d/scar/adapter/common/GMAEvent;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;->_eventSubject:Lcom/unity3d/services/core/misc/EventSubject;

    .line 12
    .line 13
    new-instance v1, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase$1;-><init>(Lcom/unity3d/services/ads/gmascar/handlers/ScarAdHandlerBase;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/unity3d/services/core/misc/EventSubject;->subscribe(Lcom/unity3d/services/core/misc/IEventListener;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
