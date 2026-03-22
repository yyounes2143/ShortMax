.class public abstract Lio/bidmachine/BidMachineAd;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Lio/bidmachine/IAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidMachineAd$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Lio/bidmachine/IAd;",
        "AdRequestType:",
        "Lio/bidmachine/AdRequest<",
        "TAdRequestType;*TUnifiedAdRequestParamsType;>;AdObjectType::",
        "Llp/a<",
        "TAdObjectParamsType;TUnifiedAdRequestParamsType;*>;AdObjectParamsType:",
        "Llp/b;",
        "UnifiedAdRequestParamsType::",
        "Lxq/d;",
        "Ad",
        "ListenerType::Lio/bidmachine/AdListener<",
        "TSelfType;>;>",
        "Ljava/lang/Object;",
        "Lio/bidmachine/IAd<",
        "TSelfType;TAdRequestType;>;"
    }
.end annotation


# instance fields
.field final adProcessCallback:Lio/bidmachine/AdProcessCallback;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field adRequest:Lio/bidmachine/AdRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestType;"
        }
    .end annotation
.end field

.field private final adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TAdRequestType;>;"
        }
    .end annotation
.end field

.field private final adsType:Lio/bidmachine/AdsType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final contextProvider:Lio/bidmachine/ContextProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private currentState:Lio/bidmachine/BidMachineAd$State;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final internalAdRequestListener:Lio/bidmachine/AdRequest$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest$f<",
            "TAdRequestType;>;"
        }
    .end annotation
.end field

.field protected final isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private listener:Lio/bidmachine/AdListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAd",
            "ListenerType;"
        }
    .end annotation
.end field

.field protected rendererConfiguration:Lio/bidmachine/RendererConfiguration;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final tag:Lfr/j;

.field final trackingObject:Lio/bidmachine/BidMachineTrackingObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfr/j;

    .line 5
    .line 6
    const-string v1, "BidMachineAd"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->tag:Lfr/j;

    .line 12
    .line 13
    sget-object v0, Lio/bidmachine/BidMachineAd$State;->Idle:Lio/bidmachine/BidMachineAd$State;

    .line 14
    .line 15
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 16
    .line 17
    new-instance v0, Lio/bidmachine/BidMachineAd$b;

    .line 18
    .line 19
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$b;-><init>(Lio/bidmachine/BidMachineAd;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    .line 23
    .line 24
    new-instance v0, Lio/bidmachine/BidMachineAd$c;

    .line 25
    .line 26
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$c;-><init>(Lio/bidmachine/BidMachineAd;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$f;

    .line 30
    .line 31
    new-instance v0, Lio/bidmachine/BidMachineAd$d;

    .line 32
    .line 33
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$d;-><init>(Lio/bidmachine/BidMachineAd;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 37
    .line 38
    new-instance v0, Lio/bidmachine/SimpleContextProvider;

    .line 39
    .line 40
    invoke-direct {v0, p1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 44
    .line 45
    iput-object p2, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    .line 46
    .line 47
    new-instance p1, Lio/bidmachine/BidMachineAd$a;

    .line 48
    .line 49
    invoke-direct {p1, p0}, Lio/bidmachine/BidMachineAd$a;-><init>(Lio/bidmachine/BidMachineAd;)V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 53
    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    .line 64
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 65
    .line 66
    .line 67
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    return-void
.end method

.method static synthetic access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/BidMachineAd;->listener:Lio/bidmachine/AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/BidMachineAd;->destroyAdRequest()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private attachRequest(Lio/bidmachine/AdRequest;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$f;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->addInternalListener(Lio/bidmachine/AdRequest$f;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/BidMachineAd;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->lambda$log$0(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private destroyAdRequest()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->detachRequest(Lio/bidmachine/AdRequest;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->destroy()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private detachRequest(Lio/bidmachine/AdRequest;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequestListener:Lio/bidmachine/AdRequest$AdRequestListener;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->internalAdRequestListener:Lio/bidmachine/AdRequest$f;

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->removeInternalListener(Lio/bidmachine/AdRequest$f;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private isNetworkAvailableDuringShow()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/l2;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lio/bidmachine/core/g;->L(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method private synthetic lambda$log$0(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const-string v2, " ("

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-interface {v1}, Llp/c;->a()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ")"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_0
    const-string v1, "%s - %s"

    .line 36
    .line 37
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method private prepareShow(Z)Llp/a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TAdObjectType;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->processPrepareShow()V

    .line 3
    invoke-direct {p0}, Lio/bidmachine/BidMachineAd;->isNetworkAvailableDuringShow()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4
    sget-object p1, Lfr/a;->e:Lfr/a;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lfr/a;)V

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    sget-object p1, Lfr/a;->o:Lfr/a;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lfr/a;)V

    return-object v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    sget-object p1, Lfr/a;->n:Lfr/a;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lfr/a;)V

    return-object v1

    .line 9
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    const-string p1, "Ad not loaded"

    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lfr/a;)V

    return-object v1

    :cond_3
    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isCanShowAd()Z

    move-result p1

    if-nez p1, :cond_4

    .line 12
    sget-object p1, Lfr/a;->l:Lfr/a;

    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processShowFail(Lfr/a;)V

    return-object v1

    .line 13
    :cond_4
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    move-result-object p1

    return-object p1
.end method

.method private processRequest(Lio/bidmachine/AdRequest;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    const-string v0, "process request start"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestSuccess(Lio/bidmachine/AdRequest;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lio/bidmachine/BidMachineAd$State;->Requesting:Lio/bidmachine/BidMachineAd$State;

    .line 17
    .line 18
    iput-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 19
    .line 20
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lio/bidmachine/AdRequest;->request(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private trackEvent(Lio/bidmachine/TrackEventType;Lfr/a;)V
    .locals 3
    .param p1    # Lio/bidmachine/TrackEventType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdsType()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0, p1, v1, v2, p2}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isLoaded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isCanShowAd()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-direct {p0}, Lio/bidmachine/BidMachineAd;->isNetworkAvailableDuringShow()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method protected abstract createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Llp/a;
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "TAdRequestType;",
            "Lio/bidmachine/NetworkAdapter;",
            "Llp/b;",
            "Lio/bidmachine/AdProcessCallback;",
            ")TAdObjectType;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processDestroy()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwq/h;->clear()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected final getAdResponse()Lio/bidmachine/u;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdResponse()Lio/bidmachine/u;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method getAdsType()Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adsType:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAuctionResult()Llp/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAuctionResult()Llp/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/ContextProvider;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method getContextProvider()Lio/bidmachine/ContextProvider;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getLoadedAdObject()Llp/a;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lio/bidmachine/u;->A()Llp/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    return-object v1
.end method

.method isCanShowAd()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/bidmachine/u;->d0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isDestroyed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Destroyed:Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public abstract isDuplicateShowDisabled()Z
.end method

.method public isExpired()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Expired:Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public isLoaded()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 8
    .line 9
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Requesting:Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    if-eq v0, v1, :cond_1

    .line 6
    .line 7
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Loading:Lio/bidmachine/BidMachineAd$State;

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 15
    :goto_1
    return v0
.end method

.method public load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)TSelfType;"
        }
    .end annotation

    .line 1
    const-string v0, "load requested"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 7
    .line 8
    sget-object v1, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineTrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lio/bidmachine/j2;->A()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const-string p1, "BidMachine not initialized"

    .line 24
    .line 25
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lfr/a;)V

    .line 30
    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 34
    .line 35
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Idle:Lio/bidmachine/BidMachineAd$State;

    .line 36
    .line 37
    if-eq v0, v1, :cond_1

    .line 38
    .line 39
    const-string p1, "request process abort because it\'s already processing"

    .line 40
    .line 41
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object p0

    .line 45
    :cond_1
    if-nez p1, :cond_2

    .line 46
    .line 47
    const-string p1, "AdRequest"

    .line 48
    .line 49
    invoke-static {p1}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lfr/a;)V

    .line 54
    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 58
    .line 59
    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->detachRequest(Lio/bidmachine/AdRequest;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->adRequest:Lio/bidmachine/AdRequest;

    .line 63
    .line 64
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->attachRequest(Lio/bidmachine/AdRequest;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequest(Lio/bidmachine/AdRequest;)V

    .line 68
    .line 69
    .line 70
    return-object p0
.end method

.method protected final log(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->tag:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/q1;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/q1;-><init>(Lio/bidmachine/BidMachineAd;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected prepareShow()Llp/a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdObjectType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->isDuplicateShowDisabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lio/bidmachine/BidMachineAd;->prepareShow(Z)Llp/a;

    move-result-object v0

    return-object v0
.end method

.method processPrepareShow()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/TrackEventType;->ImpressionOpportunity:Lio/bidmachine/TrackEventType;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lfr/a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method processRequestFail(Lfr/a;)V
    .locals 2
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Loading:Lio/bidmachine/BidMachineAd$State;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-le v0, v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    sget-object v0, Lio/bidmachine/TrackEventType;->Load:Lio/bidmachine/TrackEventType;

    .line 17
    .line 18
    invoke-direct {p0, v0, p1}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lfr/a;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method processRequestSuccess(Lio/bidmachine/AdRequest;)V
    .locals 3
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestType;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Loading:Lio/bidmachine/BidMachineAd$State;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-le v0, v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iput-object v1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 17
    .line 18
    invoke-virtual {p1}, Lio/bidmachine/AdRequest;->getAdResponse()Lio/bidmachine/u;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string p1, "AdResponse is null"

    .line 25
    .line 26
    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lio/bidmachine/BidMachineAd;->processRequestFail(Lfr/a;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    const-string v1, "start loading"

    .line 35
    .line 36
    invoke-virtual {p0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->contextProvider:Lio/bidmachine/ContextProvider;

    .line 40
    .line 41
    iget-object v2, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1, p0, v2}, Lio/bidmachine/u;->T(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/BidMachineAd;Lio/bidmachine/AdProcessCallback;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method processShowFail(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/TrackEventType;->Show:Lio/bidmachine/TrackEventType;

    .line 2
    .line 3
    invoke-direct {p0, v0, p1}, Lio/bidmachine/BidMachineAd;->trackEvent(Lio/bidmachine/TrackEventType;Lfr/a;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/BidMachineAd;->adProcessCallback:Lio/bidmachine/AdProcessCallback;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processShowFail(Lfr/a;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;
    .locals 0
    .param p1    # Lio/bidmachine/AdListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAd",
            "ListenerType;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->listener:Lio/bidmachine/AdListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRendererConfiguration(Lio/bidmachine/RendererConfiguration;)Lio/bidmachine/IAd;
    .locals 0
    .param p1    # Lio/bidmachine/RendererConfiguration;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/RendererConfiguration;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->tag:Lfr/j;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, ", state - "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/BidMachineAd;->currentState:Lio/bidmachine/BidMachineAd$State;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", auctionResult - "

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getAuctionResult()Llp/c;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method
