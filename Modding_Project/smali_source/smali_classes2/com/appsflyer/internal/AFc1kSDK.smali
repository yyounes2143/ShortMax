.class public final Lcom/appsflyer/internal/AFc1kSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final getMediationNetwork:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK$5;->getMediationNetwork:Lcom/appsflyer/internal/AFc1kSDK$5;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/appsflyer/internal/AFc1kSDK;->getMediationNetwork:Lms/i;

    .line 8
    .line 9
    return-void
.end method

.method public static final getCurrencyIso4217Code()Ljava/util/concurrent/ExecutorService;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v10, Lcom/appsflyer/internal/AFc1jSDK;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v8, 0x20

    .line 11
    .line 12
    const/4 v9, 0x0

    .line 13
    const/4 v1, 0x1

    .line 14
    const/4 v2, 0x4

    .line 15
    const-wide/16 v3, 0x1e

    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    move-object v0, v10

    .line 19
    invoke-direct/range {v0 .. v9}, Lcom/appsflyer/internal/AFc1jSDK;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/Queue;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {v10, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 24
    .line 25
    .line 26
    return-object v10
.end method

.method public static final getMediationNetwork()Ljava/util/concurrent/ExecutorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFc1kSDK;->getMediationNetwork:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, ""

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 13
    .line 14
    return-object v0
.end method

.method public static final getMonetizationNetwork()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-string v1, ""

    .line 7
    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final getRevenue()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method
