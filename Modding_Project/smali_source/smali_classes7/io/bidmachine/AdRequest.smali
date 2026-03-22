.class public abstract Lio/bidmachine/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/AdRequest$AdRequestListener;,
        Lio/bidmachine/AdRequest$f;,
        Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/AdRequest;",
        "AdRequestParametersType:",
        "Lio/bidmachine/AdRequestParameters;",
        "UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field adRequestListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;>;"
        }
    .end annotation
.end field

.field private final adRequestParameters:Lio/bidmachine/AdRequestParameters;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TAdRequestParametersType;"
        }
    .end annotation
.end field

.field adResponse:Lio/bidmachine/u;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final adResponseLoader:Lio/bidmachine/s0;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final auctionUrlQueue:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field internalAdRequestListeners:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/AdRequest$f<",
            "TSelfType;>;>;"
        }
    .end annotation
.end field

.field private final isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final tag:Lfr/j;

.field private final timeOutRunnable:Ljava/lang/Runnable;

.field private final trackingObject:Lio/bidmachine/BidMachineTrackingObject;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private unifiedAdRequestParams:Lxq/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lio/bidmachine/AdRequestParameters;)V
    .locals 3
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lfr/j;

    .line 5
    .line 6
    const-string v1, "AdRequest"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lfr/j;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lfr/j;

    .line 12
    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lio/bidmachine/AdRequest;->id:Ljava/lang/String;

    .line 22
    .line 23
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 27
    .line 28
    .line 29
    iput-object v1, p0, Lio/bidmachine/AdRequest;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    .line 40
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 44
    .line 45
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    .line 47
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 48
    .line 49
    .line 50
    iput-object v1, p0, Lio/bidmachine/AdRequest;->isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 51
    .line 52
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 55
    .line 56
    .line 57
    iput-object v1, p0, Lio/bidmachine/AdRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 58
    .line 59
    new-instance v1, Lio/bidmachine/AdRequest$a;

    .line 60
    .line 61
    invoke-direct {v1, p0}, Lio/bidmachine/AdRequest$a;-><init>(Lio/bidmachine/AdRequest;)V

    .line 62
    .line 63
    .line 64
    iput-object v1, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    .line 65
    .line 66
    new-instance v1, Lio/bidmachine/AdRequest$b;

    .line 67
    .line 68
    invoke-direct {v1, p0, v0}, Lio/bidmachine/AdRequest$b;-><init>(Lio/bidmachine/AdRequest;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    iput-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 72
    .line 73
    iput-object p1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 74
    .line 75
    new-instance p1, Lio/bidmachine/s0;

    .line 76
    .line 77
    invoke-direct {p1, v0}, Lio/bidmachine/s0;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lio/bidmachine/AdRequest;->adResponseLoader:Lio/bidmachine/s0;

    .line 81
    .line 82
    new-instance p1, Ljava/util/LinkedList;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 85
    .line 86
    .line 87
    iput-object p1, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 88
    .line 89
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/AdRequest;->lambda$notifyMediationLoss$2(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$000(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequestParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->subscribeTimeOut()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lio/bidmachine/AdRequest;Lhr/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lio/bidmachine/AdRequest;)Lio/bidmachine/BidMachineTrackingObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$700(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->processRequestObject(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$800(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->processApiRequestCancel()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/AdRequest;->lambda$processRequestFail$6(Lfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/AdRequest;->lambda$processExpired$4()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private canProcessApiRequestResult()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCompleted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCanceled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_0

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

.method private canSendApiRequest()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method public static synthetic d(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/AdRequest;->lambda$collectNetworkConfig$0(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/AdRequest;->lambda$notifyMediationWin$1()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/AdRequest;->lambda$processApiRequestSuccess$5(Lio/bidmachine/u;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lio/bidmachine/AdRequest;Lhr/b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->lambda$logError$8(Lhr/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Lio/bidmachine/AdRequest;Lhr/b;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;->lambda$log$7(Lhr/b;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/AdRequest;->lambda$destroy$3()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic lambda$collectNetworkConfig$0(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/NetworkConfig;->getNetworkKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "%s was removed from AdRequest: %s"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method private static synthetic lambda$destroy$3()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "destroy"

    .line 2
    .line 3
    return-object v0
.end method

.method private synthetic lambda$log$7(Lhr/b;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Lhr/b;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "%s - %s"

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private synthetic lambda$logError$8(Lhr/b;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {p1}, Lhr/b;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "%s - %s"

    .line 16
    .line 17
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method private static synthetic lambda$notifyMediationLoss$2(Ljava/lang/String;Ljava/lang/Double;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "notifyMediationLoss (winnerNetworkName - %s, winnerNetworkPrice - %s)"

    .line 2
    .line 3
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$notifyMediationWin$1()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "notifyMediationWin"

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$processApiRequestSuccess$5(Lio/bidmachine/u;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Request success - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$processExpired$4()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Request expired"

    .line 2
    .line 3
    return-object v0
.end method

.method private static synthetic lambda$processRequestFail$6(Lfr/a;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Request fail - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private log(Lhr/b;)V
    .locals 2
    .param p1    # Lhr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhr/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/d;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/d;-><init>(Lio/bidmachine/AdRequest;Lhr/b;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private logError(Lhr/b;)V
    .locals 2
    .param p1    # Lhr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhr/b<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lfr/j;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/h;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/h;-><init>(Lio/bidmachine/AdRequest;Lhr/b;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->f(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/NetworkAdUnitManager;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/bidmachine/NetworkAdUnitManager;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    .line 13
    .line 14
    return-object v0
.end method

.method private processApiRequestCancel()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 22
    .line 23
    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestCancel:Lio/bidmachine/TrackEventType;

    .line 24
    .line 25
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v2, v3, v3}, Lwq/h;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 34
    .line 35
    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lwq/h;->clearEvent(Lio/bidmachine/TrackEventType;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private processRequestObject(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->prepareUrls()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->build(Landroid/content/Context;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/explorestack/protobuf/openrtb/Request;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 15
    .line 16
    .line 17
    check-cast p1, Lcom/explorestack/protobuf/openrtb/Request;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lio/bidmachine/ApiRequest$Builder;->setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lio/bidmachine/AdsType;->getBinder()Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->pollUrl()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    instance-of v0, p1, Lfr/a;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    check-cast p1, Lfr/a;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string p1, "Failed to create ad request"

    .line 51
    .line 52
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method private setLoading(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private subscribeTimeOut()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->obtainTimeOutMs()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-lez v0, :cond_0

    .line 6
    .line 7
    iget-object v1, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    .line 8
    .line 9
    int-to-long v2, v0

    .line 10
    invoke-static {v1, v2, v3}, Lio/bidmachine/core/g;->Y(Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method private unsubscribeTimeOut()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->timeOutRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/core/g;->g(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method addInternalListener(Lio/bidmachine/AdRequest$f;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$f<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method build(Landroid/content/Context;)Ljava/lang/Object;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lio/bidmachine/j2;->p()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v8

    .line 13
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    const-string v0, "SellerId"

    .line 20
    .line 21
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto/16 :goto_4

    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 30
    .line 31
    .line 32
    move-result-object v9

    .line 33
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 34
    .line 35
    .line 36
    move-result-object v10

    .line 37
    invoke-static/range {p1 .. p1}, Lio/bidmachine/AdvertisingDataManager;->d(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    iget-object v2, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 41
    .line 42
    invoke-virtual {v2}, Lio/bidmachine/AdRequestParameters;->getTargetingParams()Lio/bidmachine/TargetingParams;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v9}, Lio/bidmachine/j2;->s()Lio/bidmachine/TargetingParams;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-static {v2, v3}, Llp/g;->resolveParams(Llp/g;Llp/g;)Llp/g;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    move-object v5, v2

    .line 55
    check-cast v5, Lio/bidmachine/TargetingParams;

    .line 56
    .line 57
    invoke-virtual {v9}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object v2, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 62
    .line 63
    invoke-virtual {v2}, Lio/bidmachine/AdRequestParameters;->getPriceFloorParams()Lio/bidmachine/PriceFloorParams;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    if-eqz v2, :cond_1

    .line 68
    .line 69
    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object v3

    .line 73
    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v9}, Lio/bidmachine/j2;->m()Lio/bidmachine/PriceFloorParams;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lio/bidmachine/PriceFloorParams;->getPriceFloors()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    :goto_0
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    const-string v0, "PriceFloors"

    .line 99
    .line 100
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    return-object v0

    .line 105
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 106
    .line 107
    .line 108
    move-result-object v11

    .line 109
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v12, v3}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 122
    .line 123
    .line 124
    const/4 v13, 0x1

    .line 125
    invoke-virtual {v12, v13}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setQty(I)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 126
    .line 127
    .line 128
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    const-string v14, "USD"

    .line 141
    .line 142
    if-eqz v3, :cond_3

    .line 143
    .line 144
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/util/Map$Entry;

    .line 149
    .line 150
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal;->newBuilder()Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v7

    .line 158
    check-cast v7, Ljava/lang/String;

    .line 159
    .line 160
    invoke-virtual {v6, v7}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 161
    .line 162
    .line 163
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    check-cast v3, Ljava/lang/Double;

    .line 168
    .line 169
    move-object v15, v14

    .line 170
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    .line 171
    .line 172
    .line 173
    move-result-wide v13

    .line 174
    invoke-virtual {v6, v13, v14}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlr(D)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 175
    .line 176
    .line 177
    move-object v13, v15

    .line 178
    invoke-virtual {v6, v13}, Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;->setFlrcur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v12, v6}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->addDeal(Lcom/explorestack/protobuf/openrtb/Request$Item$Deal$Builder;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 182
    .line 183
    .line 184
    const/4 v13, 0x1

    .line 185
    goto :goto_1

    .line 186
    :cond_3
    move-object v13, v14

    .line 187
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 188
    .line 189
    .line 190
    move-result-object v7

    .line 191
    const/4 v6, 0x0

    .line 192
    move-object/from16 v2, p1

    .line 193
    .line 194
    move-object v3, v9

    .line 195
    invoke-static/range {v2 .. v7}, Lio/bidmachine/RequestDataRetriever;->collectContext(Landroid/content/Context;Lio/bidmachine/j2;Lio/bidmachine/v5;Lio/bidmachine/TargetingParams;Lcom/explorestack/protobuf/adcom/ConnectionType;Lio/bidmachine/AdsType;)Lcom/explorestack/protobuf/adcom/Context;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v2}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v11, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setContext(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v9}, Lio/bidmachine/j2;->C()Z

    .line 207
    .line 208
    .line 209
    move-result v2

    .line 210
    invoke-virtual {v11, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTest(Z)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {v11, v13}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addCur(Ljava/lang/String;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 214
    .line 215
    .line 216
    const/4 v2, 0x2

    .line 217
    invoke-virtual {v11, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setAt(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 218
    .line 219
    .line 220
    const/16 v2, 0x2710

    .line 221
    .line 222
    invoke-virtual {v11, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setTmax(I)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 223
    .line 224
    .line 225
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->newBuilder()Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    const/4 v3, 0x0

    .line 230
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSsai(I)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 231
    .line 232
    .line 233
    const-string v3, "BidMachine"

    .line 234
    .line 235
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSdk(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 236
    .line 237
    .line 238
    const-string v3, "3.4.0"

    .line 239
    .line 240
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSdkver(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 241
    .line 242
    .line 243
    invoke-static {}, Lio/bidmachine/core/g;->e()Z

    .line 244
    .line 245
    .line 246
    move-result v3

    .line 247
    const/4 v4, 0x1

    .line 248
    xor-int/2addr v3, v4

    .line 249
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setSecure(Z)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 250
    .line 251
    .line 252
    iget-object v3, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 253
    .line 254
    invoke-virtual {v3}, Lio/bidmachine/AdRequestParameters;->getAdPlacementConfig()Lio/bidmachine/AdPlacementConfig;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    const/4 v4, 0x0

    .line 259
    invoke-virtual {v1, v0, v4, v3}, Lio/bidmachine/AdRequest;->collectPlacementFormats(Landroid/content/Context;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;)Ljava/util/List;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 264
    .line 265
    .line 266
    move-result-object v3

    .line 267
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 268
    .line 269
    .line 270
    move-result v4

    .line 271
    if-eqz v4, :cond_6

    .line 272
    .line 273
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object v4

    .line 277
    check-cast v4, Lcom/explorestack/protobuf/Message$Builder;

    .line 278
    .line 279
    instance-of v5, v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 280
    .line 281
    if-eqz v5, :cond_4

    .line 282
    .line 283
    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;

    .line 284
    .line 285
    invoke-virtual {v1, v4}, Lio/bidmachine/AdRequest;->onBeforeSetDisplayPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setDisplay(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 289
    .line 290
    .line 291
    goto :goto_2

    .line 292
    :cond_4
    instance-of v5, v4, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 293
    .line 294
    if-eqz v5, :cond_5

    .line 295
    .line 296
    check-cast v4, Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;

    .line 297
    .line 298
    invoke-virtual {v1, v4}, Lio/bidmachine/AdRequest;->onBeforeSetVideoPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v4}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setVideo(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 302
    .line 303
    .line 304
    goto :goto_2

    .line 305
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 306
    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    .line 308
    .line 309
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .line 311
    .line 312
    const-string v3, "Unsupported display type: "

    .line 313
    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 318
    .line 319
    .line 320
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_6
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 329
    .line 330
    .line 331
    move-result-object v3

    .line 332
    invoke-static {v3}, Lym/a;->d(Lcom/explorestack/protobuf/Struct$Builder;)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    .line 336
    .line 337
    .line 338
    move-result-object v4

    .line 339
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    iget-object v6, v1, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 344
    .line 345
    invoke-virtual {v5, v6}, Lio/bidmachine/w0;->l(Lio/bidmachine/AdRequestParameters;)Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v6

    .line 357
    if-eqz v6, :cond_7

    .line 358
    .line 359
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    check-cast v6, Lio/bidmachine/u;

    .line 364
    .line 365
    invoke-virtual {v6}, Lio/bidmachine/u;->p()Lcom/explorestack/protobuf/Value;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-virtual {v4, v6}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 370
    .line 371
    .line 372
    goto :goto_3

    .line 373
    :cond_7
    invoke-virtual {v4}, Lcom/explorestack/protobuf/ListValue$Builder;->getValuesCount()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    if-lez v5, :cond_8

    .line 378
    .line 379
    const-string v5, "bid_cache"

    .line 380
    .line 381
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    invoke-virtual {v6, v4}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    .line 386
    .line 387
    .line 388
    move-result-object v4

    .line 389
    invoke-virtual {v4}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 390
    .line 391
    .line 392
    move-result-object v4

    .line 393
    invoke-virtual {v3, v5, v4}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 394
    .line 395
    .line 396
    :cond_8
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    .line 397
    .line 398
    .line 399
    move-result v4

    .line 400
    if-lez v4, :cond_9

    .line 401
    .line 402
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Placement$Builder;

    .line 403
    .line 404
    .line 405
    :cond_9
    invoke-virtual {v1, v2}, Lio/bidmachine/AdRequest;->onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v2}, Lcom/explorestack/protobuf/adcom/Placement$Builder;->build()Lcom/explorestack/protobuf/adcom/Placement;

    .line 409
    .line 410
    .line 411
    move-result-object v2

    .line 412
    invoke-static {v2}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    invoke-virtual {v12, v2}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->setSpec(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;

    .line 417
    .line 418
    .line 419
    invoke-virtual {v12}, Lcom/explorestack/protobuf/openrtb/Request$Item$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request$Item;

    .line 420
    .line 421
    .line 422
    move-result-object v2

    .line 423
    invoke-virtual {v11, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addItem(Lcom/explorestack/protobuf/openrtb/Request$Item;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 424
    .line 425
    .line 426
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-static {}, Lio/bidmachine/ExtraParamsManager;->get()Lio/bidmachine/ExtraParamsManager;

    .line 431
    .line 432
    .line 433
    move-result-object v3

    .line 434
    invoke-virtual {v3, v0}, Lio/bidmachine/ExtraParamsManager;->getPrivateStruct(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    .line 435
    .line 436
    .line 437
    move-result-object v3

    .line 438
    if-eqz v3, :cond_a

    .line 439
    .line 440
    invoke-virtual {v3}, Lcom/explorestack/protobuf/Struct;->getFieldsMap()Ljava/util/Map;

    .line 441
    .line 442
    .line 443
    move-result-object v3

    .line 444
    invoke-virtual {v2, v3}, Lcom/explorestack/protobuf/Struct$Builder;->putAllFields(Ljava/util/Map;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 445
    .line 446
    .line 447
    :cond_a
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct$Builder;->getFieldsCount()I

    .line 448
    .line 449
    .line 450
    move-result v3

    .line 451
    if-lez v3, :cond_b

    .line 452
    .line 453
    invoke-virtual {v2}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    .line 454
    .line 455
    .line 456
    move-result-object v2

    .line 457
    invoke-virtual {v11, v2}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 458
    .line 459
    .line 460
    :cond_b
    invoke-static {}, Lio/bidmachine/protobuf/RequestExtension;->newBuilder()Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 461
    .line 462
    .line 463
    move-result-object v2

    .line 464
    invoke-virtual {v2, v8}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 465
    .line 466
    .line 467
    invoke-virtual {v9}, Lio/bidmachine/j2;->j()Ljava/lang/String;

    .line 468
    .line 469
    .line 470
    move-result-object v3

    .line 471
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 472
    .line 473
    .line 474
    move-result v4

    .line 475
    if-nez v4, :cond_c

    .line 476
    .line 477
    invoke-virtual {v2, v3}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 478
    .line 479
    .line 480
    :cond_c
    invoke-virtual {v9, v0}, Lio/bidmachine/j2;->I(Landroid/content/Context;)Ljava/lang/String;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v10}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-virtual {v2, v0}, Lio/bidmachine/protobuf/RequestExtension$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/RequestExtension$Builder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v2}, Lio/bidmachine/protobuf/RequestExtension$Builder;->build()Lio/bidmachine/protobuf/RequestExtension;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    invoke-static {v0}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 499
    .line 500
    .line 501
    move-result-object v0

    .line 502
    invoke-virtual {v11, v0}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/openrtb/Request$Builder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v11}, Lcom/explorestack/protobuf/openrtb/Request$Builder;->build()Lcom/explorestack/protobuf/openrtb/Request;

    .line 506
    .line 507
    .line 508
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 509
    return-object v0

    .line 510
    :goto_4
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 511
    .line 512
    .line 513
    const-string v2, "Exception creating ad request"

    .line 514
    .line 515
    invoke-static {v2, v0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 516
    .line 517
    .line 518
    move-result-object v0

    .line 519
    return-object v0
.end method

.method cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponseLoader:Lio/bidmachine/s0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/s0;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method clearNetworkAdUnits()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method collectNetworkConfig(Landroid/content/Context;Lio/bidmachine/AdsType;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lio/bidmachine/NetworkConfig;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 7
    .line 8
    invoke-virtual {v1}, Lio/bidmachine/AdRequestParameters;->getNetworkConfigList()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    invoke-static {p2}, Lio/bidmachine/NetworkRegistry;->copyOrNullInitializedNetworkConfigs(Lio/bidmachine/AdsType;)Ljava/util/Map;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, p1}, Lio/bidmachine/core/g;->i0(Ljava/util/Map;Ljava/util/Map;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    invoke-static {}, Lio/bidmachine/NetworkRegistry;->createInitNetworkConfigMap()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 27
    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lio/bidmachine/NetworkConfig;

    .line 44
    .line 45
    invoke-static {p1, p2, v2, v0}, Lio/bidmachine/NetworkRegistry;->checkAndPutNetwork(Landroid/content/Context;Lio/bidmachine/AdsType;Lio/bidmachine/NetworkConfig;Ljava/util/Map;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    if-eqz v3, :cond_1

    .line 50
    .line 51
    new-instance v4, Lio/bidmachine/j;

    .line 52
    .line 53
    invoke-direct {v4, v2, v3}, Lio/bidmachine/j;-><init>(Lio/bidmachine/NetworkConfig;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-direct {p0, v4}, Lio/bidmachine/AdRequest;->logError(Lhr/b;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    check-cast v1, Ljava/util/Map$Entry;

    .line 81
    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    if-nez v1, :cond_3

    .line 93
    .line 94
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    .line 95
    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_4
    invoke-static {p2}, Lio/bidmachine/NetworkRegistry;->copyOrNullInitializedCoreNetworkConfigs(Lio/bidmachine/AdsType;)Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-static {v0, p1}, Lio/bidmachine/core/g;->i0(Ljava/util/Map;Ljava/util/Map;)V

    .line 103
    .line 104
    .line 105
    new-instance p1, Ljava/util/ArrayList;

    .line 106
    .line 107
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 112
    .line 113
    .line 114
    return-object p1
.end method

.method collectPlacementFormats(Landroid/content/Context;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;)Ljava/util/List;
    .locals 11
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdPlacementConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/bidmachine/AdPlacementConfig;",
            ")",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Message$Builder;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 1
    new-instance v9, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 7
    .line 8
    invoke-direct {v10}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lio/bidmachine/SimpleContextProvider;

    .line 16
    .line 17
    invoke-direct {v1, p1}, Lio/bidmachine/SimpleContextProvider;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->obtainUnifiedRequestParams()Lxq/d;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {p0, p1, v0, p2}, Lio/bidmachine/AdRequest;->collectNetworkConfig(Landroid/content/Context;Lio/bidmachine/AdsType;Ljava/util/List;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/j2;->l()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    move-object v2, p0

    .line 37
    move-object v5, v9

    .line 38
    move-object v6, v10

    .line 39
    move-object v7, p3

    .line 40
    invoke-virtual/range {v0 .. v8}, Lio/bidmachine/AdsType;->collectPlacements(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lxq/d;Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Lio/bidmachine/AdPlacementConfig;I)V

    .line 41
    .line 42
    .line 43
    new-instance p1, Lio/bidmachine/NetworkAdUnitManager;

    .line 44
    .line 45
    invoke-direct {p1, v10}, Lio/bidmachine/NetworkAdUnitManager;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lio/bidmachine/AdRequest;->networkAdUnitManager:Lio/bidmachine/NetworkAdUnitManager;

    .line 49
    .line 50
    return-object v9
.end method

.method protected abstract createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/d;
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdRequestParametersType;",
            "Lio/bidmachine/TargetingParams;",
            "Llp/d;",
            ")TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    new-instance v0, Lio/bidmachine/g;

    .line 13
    .line 14
    invoke-direct {v0}, Lio/bidmachine/g;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 21
    .line 22
    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestDestroy:Lio/bidmachine/TrackEventType;

    .line 23
    .line 24
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 41
    .line 42
    invoke-virtual {v0}, Lwq/h;->clear()V

    .line 43
    .line 44
    .line 45
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->notifyRequestDestroyed()V

    .line 49
    .line 50
    .line 51
    iput-object v4, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lxq/d;

    .line 52
    .line 53
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-virtual {v0, p0}, Lio/bidmachine/u;->r(Lio/bidmachine/AdRequest;)V

    .line 58
    .line 59
    .line 60
    iput-object v4, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 61
    .line 62
    :cond_1
    return-void
.end method

.method public getAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TAdRequestParametersType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method getAdResponse()Lio/bidmachine/u;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getAdsType()Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getAdsType()Lio/bidmachine/AdsType;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAuctionResult()Llp/c;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/u;->D()Llp/c;

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

.method isAdResponseExpired()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/u;->L()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method isBidPayloadValid(Lio/bidmachine/protobuf/ResponsePayload;)Z
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/ResponsePayload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getRequestItemSpec()Lcom/explorestack/protobuf/adcom/Placement;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Placement;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Placement;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eq p1, v1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 13
    .line 14
    invoke-virtual {v1, p1}, Lio/bidmachine/AdRequestParameters;->isPlacementObjectValid(Lcom/explorestack/protobuf/adcom/Placement;)Z

    .line 15
    .line 16
    .line 17
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 24
    :cond_1
    return v0

    .line 25
    :goto_1
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    return v0
.end method

.method isCanceled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method isCompleted()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isExpired()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isAdResponseExpired()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 19
    :goto_1
    return v0
.end method

.method isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isLoading:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method isPlacementBuilderMatch(Lom/n;)Z
    .locals 0
    .param p1    # Lom/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public notifyMediationLoss()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0}, Lio/bidmachine/AdRequest;->notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V

    return-void
.end method

.method public notifyMediationLoss(Ljava/lang/String;Ljava/lang/Double;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Double;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Lio/bidmachine/c;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/c;-><init>(Ljava/lang/String;Ljava/lang/Double;)V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lfr/a;->j:Lfr/a;

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    sget-object v0, Lfr/a;->i:Lfr/a;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 8
    :goto_0
    new-instance v1, Lwq/a;

    invoke-direct {v1}, Lwq/a;-><init>()V

    .line 9
    invoke-virtual {v1, p1}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lwq/a;->i(Ljava/lang/Double;)Lwq/a;

    move-result-object p1

    .line 11
    iget-object p2, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v1, Lio/bidmachine/TrackEventType;->MediationLoss:Lio/bidmachine/TrackEventType;

    .line 12
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v2

    .line 13
    invoke-virtual {p2, v1, v2, p1, v0}, Lwq/h;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    return-void
.end method

.method public notifyMediationWin()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isCompleted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lio/bidmachine/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lio/bidmachine/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lfr/a;->j:Lfr/a;

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isExpired()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    sget-object v0, Lfr/a;->i:Lfr/a;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    :goto_0
    iget-object v1, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 36
    .line 37
    sget-object v2, Lio/bidmachine/TrackEventType;->MediationWin:Lio/bidmachine/TrackEventType;

    .line 38
    .line 39
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget-object v4, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 44
    .line 45
    invoke-virtual {v1, v2, v3, v4, v0}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method notifyRequestDestroyed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lio/bidmachine/AdRequest$f;

    .line 20
    .line 21
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$f;->a(Lio/bidmachine/AdRequest;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    return-void
.end method

.method obtainTimeOutMs()I
    .locals 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->o()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-gtz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 12
    .line 13
    invoke-virtual {v1}, Lio/bidmachine/AdRequestParameters;->getTimeOutMs()Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-lez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    :cond_0
    return v0
.end method

.method final obtainUnifiedRequestParams()Lxq/d;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TUnifiedAdRequestParamsType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lxq/d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 10
    .line 11
    invoke-virtual {v1}, Lio/bidmachine/AdRequestParameters;->getTargetingParams()Lio/bidmachine/TargetingParams;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Lio/bidmachine/j2;->s()Lio/bidmachine/TargetingParams;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v1, v2}, Llp/g;->resolveParams(Llp/g;Llp/g;)Llp/g;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lio/bidmachine/TargetingParams;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 30
    .line 31
    invoke-virtual {p0, v2, v1, v0}, Lio/bidmachine/AdRequest;->createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/d;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lxq/d;

    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->unifiedAdRequestParams:Lxq/d;

    .line 38
    .line 39
    return-object v0
.end method

.method protected onBeforeSetDisplayPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;)V
    .locals 0
    .param p1    # Lcom/explorestack/protobuf/adcom/Placement$DisplayPlacement$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method protected onBeforeSetVideoPlacementBuilder(Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;)V
    .locals 0
    .param p1    # Lcom/explorestack/protobuf/adcom/Placement$VideoPlacement$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method protected onBuildPlacement(Lcom/explorestack/protobuf/adcom/Placement$Builder;)V
    .locals 0
    .param p1    # Lcom/explorestack/protobuf/adcom/Placement$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method pollUrl()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 10
    .line 11
    invoke-static {}, Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;

    .line 25
    .line 26
    return-object v0
.end method

.method prepareUrls()V
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-static {}, Lio/bidmachine/UrlProvider;->getAuctionUrlQueue()Ljava/util/Queue;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method processApiRequestFail(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lfr/a;Z)V

    return-void
.end method

.method processApiRequestFail(Lfr/a;Z)V
    .locals 2
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 4
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Lfr/a;->s:Lfr/a;

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;Z)V

    return-void
.end method

.method processApiRequestLoadedFail(Lio/bidmachine/ApiRequest$Builder;Lfr/a;)V
    .locals 1
    .param p1    # Lio/bidmachine/ApiRequest$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$Builder<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;",
            "Lfr/a;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    sget-object v0, Lfr/a;->s:Lfr/a;

    .line 9
    .line 10
    if-eq p2, v0, :cond_1

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0, p2}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lfr/a;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method processApiRequestSuccess(Lio/bidmachine/u;)V
    .locals 4
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canProcessApiRequestResult()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lio/bidmachine/u;->r(Lio/bidmachine/AdRequest;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isApiRequestCompleted:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    .line 22
    .line 23
    .line 24
    new-instance v0, Lio/bidmachine/i;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Lio/bidmachine/i;-><init>(Lio/bidmachine/u;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 33
    .line 34
    invoke-virtual {p1, p0}, Lio/bidmachine/u;->j(Lio/bidmachine/AdRequest;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 38
    .line 39
    if-eqz v0, :cond_1

    .line 40
    .line 41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 56
    .line 57
    invoke-virtual {p1}, Lio/bidmachine/u;->D()Llp/c;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-interface {v1, p0, v2}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestSuccess(Lio/bidmachine/AdRequest;Llp/c;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lio/bidmachine/j2;->f()Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 88
    .line 89
    invoke-virtual {p1}, Lio/bidmachine/u;->D()Llp/c;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-interface {v1, p0, v2}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestSuccess(Lio/bidmachine/AdRequest;Llp/c;)V

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 98
    .line 99
    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 100
    .line 101
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    const/4 v3, 0x0

    .line 106
    invoke-virtual {v0, v1, v2, p1, v3}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;)V

    .line 107
    .line 108
    .line 109
    return-void
.end method

.method protected processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
    .locals 3
    .param p1    # Lio/bidmachine/protobuf/ResponsePayload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/protobuf/ResponsePayload;->getDefaultInstance()Lio/bidmachine/protobuf/ResponsePayload;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    const-string p1, "BidPayload has invalid content"

    .line 8
    .line 9
    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->isBidPayloadValid(Lio/bidmachine/protobuf/ResponsePayload;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p1, "BidPayload does not match with AdRequest"

    .line 24
    .line 25
    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCache()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-static {}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getDefaultInstance()Lcom/explorestack/protobuf/openrtb/Openrtb;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    iget-object p1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 46
    .line 47
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0}, Lcom/explorestack/protobuf/openrtb/Openrtb;->getResponse()Lcom/explorestack/protobuf/openrtb/Response;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v2, Lio/bidmachine/AdRequest$d;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Lio/bidmachine/AdRequest$d;-><init>(Lio/bidmachine/AdRequest;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1, v1, v0, v2}, Lio/bidmachine/a5;->a(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lcom/explorestack/protobuf/openrtb/Response;Lio/bidmachine/a5$a;)V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/ResponsePayload;->getResponseCacheUrl()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-nez v0, :cond_3

    .line 73
    .line 74
    invoke-static {p1}, Lio/bidmachine/core/g;->K(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->retrieveBody(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_3
    const-string p1, "BidPayload does not contain Response or URL"

    .line 85
    .line 86
    invoke-static {p1}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method processExpired()V
    .locals 5

    .line 1
    new-instance v0, Lio/bidmachine/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/e;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/AdRequest;->isRequestExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 34
    .line 35
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestExpired(Lio/bidmachine/AdRequest;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lio/bidmachine/j2;->f()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 62
    .line 63
    invoke-interface {v1, p0}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestExpired(Lio/bidmachine/AdRequest;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    .line 68
    .line 69
    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequestExpired:Lio/bidmachine/TrackEventType;

    .line 70
    .line 71
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    iget-object v3, p0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 76
    .line 77
    const/4 v4, 0x0

    .line 78
    invoke-virtual {v0, v1, v2, v3, v4}, Lio/bidmachine/BidMachineTrackingObject;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lio/bidmachine/u;Lfr/a;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V
    .locals 4
    .param p1    # Lio/bidmachine/ApiRequest$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$Builder<",
            "Lcom/explorestack/protobuf/openrtb/Request;",
            "Lcom/explorestack/protobuf/openrtb/Response;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->canSendApiRequest()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1, p2}, Lio/bidmachine/ApiRequest$Builder;->url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adResponseLoader:Lio/bidmachine/s0;

    .line 12
    .line 13
    iget-object v1, p0, Lio/bidmachine/AdRequest;->adRequestParameters:Lio/bidmachine/AdRequestParameters;

    .line 14
    .line 15
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->obtainNetworkAdUnitManager()Lio/bidmachine/NetworkAdUnitManager;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Lio/bidmachine/AdRequest$e;

    .line 20
    .line 21
    invoke-direct {v3, p0, p2, p1}, Lio/bidmachine/AdRequest$e;-><init>(Lio/bidmachine/AdRequest;Ljava/lang/String;Lio/bidmachine/ApiRequest$Builder;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, p1, v3}, Lio/bidmachine/s0;->b(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/NetworkAdUnitManager;Lio/bidmachine/ApiRequest$Builder;Lio/bidmachine/s0$a;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method processRequestFail(Lfr/a;)V
    .locals 1
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;Z)V

    return-void
.end method

.method processRequestFail(Lfr/a;Z)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    new-instance v0, Lio/bidmachine/f;

    invoke-direct {v0, p1}, Lio/bidmachine/f;-><init>(Lfr/a;)V

    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->log(Lhr/b;)V

    .line 3
    invoke-direct {p0}, Lio/bidmachine/AdRequest;->unsubscribeTimeOut()V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->clearNetworkAdUnits()V

    .line 5
    :cond_0
    iget-object p2, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    if-eqz p2, :cond_1

    .line 6
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 7
    invoke-interface {v0, p0, p1}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestFailed(Lio/bidmachine/AdRequest;Lfr/a;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    move-result-object p2

    invoke-virtual {p2}, Lio/bidmachine/j2;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/AdRequest$AdRequestListener;

    .line 9
    invoke-interface {v0, p0, p1}, Lio/bidmachine/AdRequest$AdRequestListener;->onRequestFailed(Lio/bidmachine/AdRequest;Lfr/a;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p2, p0, Lio/bidmachine/AdRequest;->trackingObject:Lio/bidmachine/BidMachineTrackingObject;

    sget-object v0, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 11
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object v1

    const/4 v2, 0x0

    .line 12
    invoke-virtual {p2, v0, v1, v2, p1}, Lwq/h;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    return-void
.end method

.method removeInternalListener(Lio/bidmachine/AdRequest$f;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest$f;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$f<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->internalAdRequestListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public removeListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1
    .param p1    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest$AdRequestListener<",
            "TSelfType;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->adRequestListeners:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public request(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/j2;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "BidMachine not initialized"

    .line 12
    .line 13
    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isDestroyed()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object p1, Lfr/a;->j:Lfr/a;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->verifyRequest()Lfr/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->isLoading()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const/4 v0, 0x1

    .line 51
    invoke-direct {p0, v0}, Lio/bidmachine/AdRequest;->setLoading(Z)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {}, Lio/bidmachine/l;->a()Lio/bidmachine/l;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    new-instance v1, Lio/bidmachine/AdRequest$c;

    .line 63
    .line 64
    invoke-direct {v1, p0, p1}, Lio/bidmachine/AdRequest$c;-><init>(Lio/bidmachine/AdRequest;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method retrieveBody(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ApiRequest$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/ApiRequest$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lio/bidmachine/core/NetworkRequest$Method;->Get:Lio/bidmachine/core/NetworkRequest$Method;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;

    .line 13
    .line 14
    invoke-direct {v1}, Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lio/bidmachine/ApiRequest$Builder;->setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0, p1}, Lio/bidmachine/AdRequest;->processRequestBuilder(Lio/bidmachine/ApiRequest$Builder;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method setAuctionUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/AdRequest;->auctionUrlQueue:Ljava/util/Queue;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdRequest;->tag:Lfr/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfr/j;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected verifyRequest()Lfr/a;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method
