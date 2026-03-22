.class public final Lcom/appsflyer/internal/AFj1mSDK;
.super Lcom/appsflyer/internal/AFi1eSDK;
.source ""


# instance fields
.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1zSDK;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 2

    .line 1
    const-string v0, "store"

    .line 2
    .line 3
    const-string v1, "samsung"

    .line 4
    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/appsflyer/internal/AFi1eSDK;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iput-object p2, p0, Lcom/appsflyer/internal/AFj1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1zSDK;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getMonetizationNetwork(Landroid/content/Context;)V
    .locals 7

    .line 1
    new-instance v6, Lcom/appsflyer/internal/AFj1mSDK$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFj1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1zSDK;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/appsflyer/internal/AFd1zSDK;->getMonetizationNetwork()Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    .line 8
    move-result-object v3

    .line 9
    const-string v0, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    .line 10
    .line 11
    filled-new-array {v0}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    const-string v4, "com.sec.android.app.samsungapps.referrer"

    .line 16
    .line 17
    move-object v0, v6

    .line 18
    move-object v1, p0

    .line 19
    move-object v2, p1

    .line 20
    invoke-direct/range {v0 .. v5}, Lcom/appsflyer/internal/AFj1mSDK$1;-><init>(Lcom/appsflyer/internal/AFj1mSDK;Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/lang/String;[Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/appsflyer/internal/AFj1mSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFd1zSDK;

    .line 24
    .line 25
    invoke-interface {p1}, Lcom/appsflyer/internal/AFd1zSDK;->component4()Lcom/appsflyer/internal/AFc1qSDK;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/appsflyer/internal/AFa1ySDK;->getRevenue()Lcom/appsflyer/internal/AFa1ySDK;

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-static {p1, v0}, Lcom/appsflyer/internal/AFa1ySDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;Z)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-gtz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {v6}, Lcom/appsflyer/internal/AFb1uSDK;->getCurrencyIso4217Code()Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, v6, Lcom/appsflyer/internal/AFb1uSDK;->AFAdRevenueData:Ljava/util/concurrent/Executor;

    .line 47
    .line 48
    iget-object v0, v6, Lcom/appsflyer/internal/AFb1uSDK;->getRevenue:Ljava/util/concurrent/FutureTask;

    .line 49
    .line 50
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v0

    .line 57
    iput-wide v0, p0, Lcom/appsflyer/internal/AFj1tSDK;->component1:J

    .line 58
    .line 59
    sget-object p1, Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;->getRevenue:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 60
    .line 61
    iput-object p1, p0, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 62
    .line 63
    new-instance p1, Lcom/appsflyer/internal/AFj1tSDK$1;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/appsflyer/internal/AFj1tSDK$1;-><init>(Lcom/appsflyer/internal/AFj1tSDK;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 69
    .line 70
    .line 71
    :cond_1
    :goto_0
    return-void
.end method
