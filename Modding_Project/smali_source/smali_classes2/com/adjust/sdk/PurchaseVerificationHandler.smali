.class public Lcom/adjust/sdk/PurchaseVerificationHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adjust/sdk/IPurchaseVerificationHandler;


# static fields
.field private static final MILLISECONDS_TO_SECONDS_DIVISOR:D = 1000.0

.field private static final SCHEDULED_EXECUTOR_SOURCE:Ljava/lang/String; = "PurchaseVerificationHandler"


# instance fields
.field private activityHandlerWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/adjust/sdk/IActivityHandler;",
            ">;"
        }
    .end annotation
.end field

.field private activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

.field private isSendingPurchaseVerificationPackage:Z

.field private lastPackageRetryInMilli:J

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/adjust/sdk/ActivityPackage;",
            ">;"
        }
    .end annotation
.end field

.field private paused:Z

.field private scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 7
    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lcom/adjust/sdk/PurchaseVerificationHandler;->init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 16
    .line 17
    new-instance p1, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;

    .line 18
    .line 19
    const-string p2, "PurchaseVerificationHandler"

    .line 20
    .line 21
    invoke-direct {p1, p2}, Lcom/adjust/sdk/scheduler/SingleThreadCachedScheduler;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic access$000(Lcom/adjust/sdk/PurchaseVerificationHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendPurchaseVerificationPackageI(Lcom/adjust/sdk/ActivityPackage;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$100(Lcom/adjust/sdk/PurchaseVerificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackageI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic access$202(Lcom/adjust/sdk/PurchaseVerificationHandler;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 2
    .line 3
    return-wide p1
.end method

.method public static synthetic access$300(Lcom/adjust/sdk/PurchaseVerificationHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private sendNextPurchaseVerificationPackage()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 2
    .line 3
    new-instance v1, Lcom/adjust/sdk/PurchaseVerificationHandler$b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/adjust/sdk/PurchaseVerificationHandler$b;-><init>(Lcom/adjust/sdk/PurchaseVerificationHandler;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private sendNextPurchaseVerificationPackageI()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->getActivityState()Lcom/adjust/sdk/ActivityState;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-boolean v0, v0, Lcom/adjust/sdk/ActivityState;->isGdprForgotten:Z

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 35
    .line 36
    new-array v1, v1, [Ljava/lang/Object;

    .line 37
    .line 38
    const-string v2, "purchase_verification request won\'t be sent for GDPR forgotten user"

    .line 39
    .line 40
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    iget-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 49
    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    const-string v2, "PurchaseVerificationHandler is paused"

    .line 53
    .line 54
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 59
    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 63
    .line 64
    new-array v1, v1, [Ljava/lang/Object;

    .line 65
    .line 66
    const-string v2, "PurchaseVerificationHandler is is already sending a package"

    .line 67
    .line 68
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_4
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->waitTime()J

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    const-wide/16 v4, 0x0

    .line 77
    .line 78
    cmp-long v0, v2, v4

    .line 79
    .line 80
    if-lez v0, :cond_5

    .line 81
    .line 82
    new-instance v0, Lcom/adjust/sdk/PurchaseVerificationHandler$c;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/adjust/sdk/PurchaseVerificationHandler$c;-><init>(Lcom/adjust/sdk/PurchaseVerificationHandler;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 88
    .line 89
    invoke-interface {v1, v0, v2, v3}, Lcom/adjust/sdk/scheduler/ThreadScheduler;->schedule(Ljava/lang/Runnable;J)V

    .line 90
    .line 91
    .line 92
    return-void

    .line 93
    :cond_5
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 94
    .line 95
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/adjust/sdk/ActivityPackage;

    .line 100
    .line 101
    const/4 v1, 0x1

    .line 102
    iput-boolean v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 103
    .line 104
    invoke-direct {p0, v0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendPurchaseVerificationPackageSync(Lcom/adjust/sdk/ActivityPackage;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method private sendPurchaseVerificationPackageI(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 7
    .line 8
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Added purchase_verification %d"

    .line 23
    .line 24
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v1, "%s"

    .line 38
    .line 39
    invoke-interface {v0, v1, p1}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private sendPurchaseVerificationPackageSync(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/adjust/sdk/IActivityHandler;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-interface {v1, p1, v2}, Lcom/adjust/sdk/network/IActivityPackageSender;->sendActivityPackageSync(Lcom/adjust/sdk/ActivityPackage;Ljava/util/Map;)Lcom/adjust/sdk/ResponseData;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    instance-of v1, p1, Lcom/adjust/sdk/PurchaseVerificationResponseData;

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 23
    .line 24
    move-object v2, p1

    .line 25
    check-cast v2, Lcom/adjust/sdk/PurchaseVerificationResponseData;

    .line 26
    .line 27
    iget-object v3, v2, Lcom/adjust/sdk/ResponseData;->jsonResponse:Lorg/json/JSONObject;

    .line 28
    .line 29
    if-nez v3, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 32
    .line 33
    iget-object v3, v2, Lcom/adjust/sdk/ResponseData;->message:Ljava/lang/String;

    .line 34
    .line 35
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const-string v4, "Could not get purchase_verification JSON response with message: %s"

    .line 40
    .line 41
    invoke-interface {p1, v4, v3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    if-nez v0, :cond_2

    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :cond_2
    iget-object v3, v2, Lcom/adjust/sdk/ResponseData;->trackingState:Lcom/adjust/sdk/TrackingState;

    .line 49
    .line 50
    sget-object v4, Lcom/adjust/sdk/TrackingState;->OPTED_OUT:Lcom/adjust/sdk/TrackingState;

    .line 51
    .line 52
    if-ne v3, v4, :cond_3

    .line 53
    .line 54
    invoke-interface {v0}, Lcom/adjust/sdk/IActivityHandler;->gotOptOutResponse()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    iget-boolean v3, v2, Lcom/adjust/sdk/ResponseData;->willRetry:Z

    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    if-eqz v3, :cond_5

    .line 63
    .line 64
    iget-object v0, p1, Lcom/adjust/sdk/ResponseData;->retryIn:Ljava/lang/Long;

    .line 65
    .line 66
    if-eqz v0, :cond_4

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    cmp-long v0, v0, v4

    .line 73
    .line 74
    if-lez v0, :cond_4

    .line 75
    .line 76
    iget-object p1, p1, Lcom/adjust/sdk/ResponseData;->retryIn:Ljava/lang/Long;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 79
    .line 80
    .line 81
    move-result-wide v0

    .line 82
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 83
    .line 84
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 85
    .line 86
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    const-string v1, "Retrying purchase_verification package with retry in %d ms"

    .line 91
    .line 92
    invoke-interface {v0, v1, p1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    :cond_4
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_5
    iput-wide v4, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 100
    .line 101
    :goto_1
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 102
    .line 103
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_6

    .line 108
    .line 109
    iget-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 110
    .line 111
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    :cond_6
    invoke-interface {v0, v2}, Lcom/adjust/sdk/IActivityHandler;->finishedTrackingActivity(Lcom/adjust/sdk/ResponseData;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method private waitTime()J
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    iget-object v2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 10
    .line 11
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "Waiting for %d ms before retrying purchase_verification with retry_in"

    .line 20
    .line 21
    invoke-interface {v2, v1, v0}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 25
    .line 26
    return-wide v0

    .line 27
    :cond_0
    return-wide v2
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IActivityHandler;ZLcom/adjust/sdk/network/IActivityPackageSender;)V
    .locals 0

    .line 1
    xor-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    .line 4
    .line 5
    new-instance p2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 11
    .line 12
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 13
    .line 14
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iput-object p2, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityPackageSender:Lcom/adjust/sdk/network/IActivityPackageSender;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 23
    .line 24
    const-wide/16 p1, 0x0

    .line 25
    .line 26
    iput-wide p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 27
    .line 28
    return-void
.end method

.method public pauseSending()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 10
    .line 11
    return-void
.end method

.method public resumeSending()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->paused:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackage()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public sendPurchaseVerificationPackage(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 2
    .line 3
    new-instance v1, Lcom/adjust/sdk/PurchaseVerificationHandler$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/PurchaseVerificationHandler$a;-><init>(Lcom/adjust/sdk/PurchaseVerificationHandler;Lcom/adjust/sdk/ActivityPackage;)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->submit(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public teardown()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "PurchaseVerificationHandler teardown"

    .line 7
    .line 8
    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/adjust/sdk/scheduler/ThreadExecutor;->teardown()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->activityHandlerWeakRef:Ljava/lang/ref/WeakReference;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 30
    .line 31
    .line 32
    :cond_2
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->packageQueue:Ljava/util/List;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->scheduler:Lcom/adjust/sdk/scheduler/ThreadScheduler;

    .line 38
    .line 39
    iput-boolean v1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->isSendingPurchaseVerificationPackage:Z

    .line 40
    .line 41
    const-wide/16 v0, 0x0

    .line 42
    .line 43
    iput-wide v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler;->lastPackageRetryInMilli:J

    .line 44
    .line 45
    return-void
.end method
