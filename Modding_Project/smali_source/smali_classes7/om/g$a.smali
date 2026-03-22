.class final Lom/g$a;
.super Ljava/lang/Object;
.source "HeaderBiddingPlacementBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lio/bidmachine/HeaderBiddingAdRequestParams;
.implements Lio/bidmachine/HeaderBiddingCollectParamsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lom/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UnifiedAdRequestParamsType::",
        "Lxq/d;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Lio/bidmachine/HeaderBiddingAdRequestParams;",
        "Lio/bidmachine/HeaderBiddingCollectParamsCallback;"
    }
.end annotation


# static fields
.field private static final k:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Lio/bidmachine/ContextProvider;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/HeaderBiddingAdapter;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/AdsType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lio/bidmachine/AdContentType;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lxq/d;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TUnifiedAdRequestParamsType;"
        }
    .end annotation
.end field

.field private final f:Lio/bidmachine/NetworkAdUnit;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Lwq/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:Ljava/util/concurrent/CountDownLatch;

.field private i:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    mul-int/lit8 v0, v0, 0x2

    .line 10
    .line 11
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lom/g$a;->k:Ljava/util/concurrent/Executor;

    .line 16
    .line 17
    return-void
.end method

.method constructor <init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/HeaderBiddingAdapter;Lio/bidmachine/AdsType;Lio/bidmachine/AdContentType;Lxq/d;Lio/bidmachine/NetworkAdUnit;)V
    .locals 1
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/HeaderBiddingAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lio/bidmachine/HeaderBiddingAdapter;",
            "Lio/bidmachine/AdsType;",
            "Lio/bidmachine/AdContentType;",
            "TUnifiedAdRequestParamsType;",
            "Lio/bidmachine/NetworkAdUnit;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lom/g$a;->j:Z

    .line 6
    .line 7
    iput-object p1, p0, Lom/g$a;->a:Lio/bidmachine/ContextProvider;

    .line 8
    .line 9
    iput-object p2, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 10
    .line 11
    iput-object p3, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 12
    .line 13
    iput-object p4, p0, Lom/g$a;->d:Lio/bidmachine/AdContentType;

    .line 14
    .line 15
    iput-object p5, p0, Lom/g$a;->e:Lxq/d;

    .line 16
    .line 17
    iput-object p6, p0, Lom/g$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 18
    .line 19
    new-instance p1, Lio/bidmachine/BidMachineTrackingObject;

    .line 20
    .line 21
    invoke-direct {p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lom/g$a;->g:Lwq/k;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic a(Lom/g$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lom/g$a;->j()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lom/g$a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lom/g$a;->l()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Lom/g$a;Lfr/a;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lom/g$a;->k(Lfr/a;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private g()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lom/g$a;->j:Z

    .line 3
    .line 4
    iget-object v0, p0, Lom/g$a;->h:Ljava/util/concurrent/CountDownLatch;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private synthetic j()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    iget-object v1, p0, Lom/g$a;->d:Lio/bidmachine/AdContentType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "%s (%s) - Header bidding collect fail: timeout"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method private synthetic k(Lfr/a;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    iget-object v1, p0, Lom/g$a;->d:Lio/bidmachine/AdContentType;

    .line 4
    .line 5
    filled-new-array {v0, v1, p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "%s (%s) - Header bidding collect fail - %s"

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method private synthetic l()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    iget-object v1, p0, Lom/g$a;->d:Lio/bidmachine/AdContentType;

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "%s (%s) - Header bidding collect finished"

    .line 10
    .line 11
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method


# virtual methods
.method e()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lom/g$a;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lom/d;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lom/d;-><init>(Lom/g$a;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lom/g$a;->g()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method f(Ljava/util/concurrent/CountDownLatch;)V
    .locals 5
    .param p1    # Ljava/util/concurrent/CountDownLatch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lom/g$a;->g:Lwq/k;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    new-instance v2, Lwq/j;

    .line 6
    .line 7
    invoke-direct {v2}, Lwq/j;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v3, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 11
    .line 12
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "HB_NETWORK"

    .line 17
    .line 18
    invoke-virtual {v2, v4, v3}, Lwq/j;->e(Ljava/lang/String;Ljava/lang/Object;)Lwq/j;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    iget-object v3, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 23
    .line 24
    invoke-virtual {v3}, Lio/bidmachine/AdsType;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-string v4, "BM_AD_TYPE"

    .line 29
    .line 30
    invoke-virtual {v2, v4, v3}, Lwq/j;->e(Ljava/lang/String;Ljava/lang/Object;)Lwq/j;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v0, v1, v2}, Lwq/k;->eventStart(Lio/bidmachine/TrackEventType;Lwq/j;)V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lom/g$a;->h:Ljava/util/concurrent/CountDownLatch;

    .line 38
    .line 39
    sget-object p1, Lom/g$a;->k:Ljava/util/concurrent/Executor;

    .line 40
    .line 41
    invoke-interface {p1, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public getAdContentType()Lio/bidmachine/AdContentType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lom/g$a;->d:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getAdsType()Lio/bidmachine/AdsType;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    return-object v0
.end method

.method h()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;
    .locals 1

    .line 1
    iget-object v0, p0, Lom/g$a;->i:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    .line 2
    .line 3
    return-object v0
.end method

.method i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lom/g$a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCollectFail(Lfr/a;)V
    .locals 5
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lom/g$a;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lom/f;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lom/f;-><init>(Lom/g$a;Lfr/a;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {p0}, Lom/g$a;->g()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lom/g$a;->g:Lwq/k;

    .line 24
    .line 25
    sget-object v1, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    .line 26
    .line 27
    iget-object v2, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 28
    .line 29
    new-instance v3, Lwq/a;

    .line 30
    .line 31
    invoke-direct {v3}, Lwq/a;-><init>()V

    .line 32
    .line 33
    .line 34
    iget-object v4, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 35
    .line 36
    invoke-virtual {v4}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v3, v4}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-interface {v0, v1, v2, v3, p1}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method public onCollectFinished(Ljava/util/Map;)V
    .locals 4
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lom/g$a;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;->newBuilder()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 11
    .line 12
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->setBidder(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 21
    .line 22
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdapter;->obtainNetworkSdkVersion()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->setBidderSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v1, p0, Lom/g$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 31
    .line 32
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "bm_ad_unit_id"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putClientParams(Ljava/lang/String;Ljava/lang/String;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lom/g$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 43
    .line 44
    invoke-virtual {v1}, Lio/bidmachine/NetworkAdUnit;->getMediationConfig()Ljava/util/Map;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0, p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->putAllClientParams(Ljava/util/Map;)Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit$Builder;->build()Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lom/g$a;->i:Lio/bidmachine/protobuf/headerbidding/HeaderBiddingPlacement$AdUnit;

    .line 61
    .line 62
    iget-object p1, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 63
    .line 64
    invoke-virtual {p1}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Lom/e;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lom/e;-><init>(Lom/g$a;)V

    .line 71
    .line 72
    .line 73
    invoke-static {p1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lom/g$a;->g()V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lom/g$a;->g:Lwq/k;

    .line 80
    .line 81
    sget-object v0, Lio/bidmachine/TrackEventType;->HeaderBiddingNetworkPrepare:Lio/bidmachine/TrackEventType;

    .line 82
    .line 83
    iget-object v1, p0, Lom/g$a;->c:Lio/bidmachine/AdsType;

    .line 84
    .line 85
    new-instance v2, Lwq/a;

    .line 86
    .line 87
    invoke-direct {v2}, Lwq/a;-><init>()V

    .line 88
    .line 89
    .line 90
    iget-object v3, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 91
    .line 92
    invoke-virtual {v3}, Lio/bidmachine/NetworkAdapter;->getKey()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Lwq/a;->h(Ljava/lang/String;)Lwq/a;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-interface {p1, v0, v1, v2, v3}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lom/g$a;->b:Lio/bidmachine/HeaderBiddingAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lom/g$a;->a:Lio/bidmachine/ContextProvider;

    .line 4
    .line 5
    iget-object v2, p0, Lom/g$a;->e:Lxq/d;

    .line 6
    .line 7
    iget-object v3, p0, Lom/g$a;->f:Lio/bidmachine/NetworkAdUnit;

    .line 8
    .line 9
    move-object v4, p0

    .line 10
    move-object v5, p0

    .line 11
    invoke-virtual/range {v0 .. v5}, Lio/bidmachine/HeaderBiddingAdapter;->collectHeaderBiddingParams(Lio/bidmachine/ContextProvider;Lxq/d;Lio/bidmachine/NetworkAdUnit;Lio/bidmachine/HeaderBiddingAdRequestParams;Lio/bidmachine/HeaderBiddingCollectParamsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v0

    .line 16
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    const-string v1, "Exception collecting header bidding parameters"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lom/g$a;->onCollectFail(Lfr/a;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method
