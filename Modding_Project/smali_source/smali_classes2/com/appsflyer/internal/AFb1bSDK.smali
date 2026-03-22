.class public final Lcom/appsflyer/internal/AFb1bSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFb1aSDK;


# instance fields
.field private final AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFa1mSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getRevenue:Lcom/appsflyer/internal/AFi1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1mSDK;Lcom/appsflyer/internal/AFi1oSDK;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFa1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFi1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1bSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFa1mSDK;

    .line 18
    .line 19
    iput-object p3, p0, Lcom/appsflyer/internal/AFb1bSDK;->getRevenue:Lcom/appsflyer/internal/AFi1oSDK;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Landroid/content/Context;Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v1, Landroid/app/Application;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 32
    .line 33
    new-instance v0, Lcom/appsflyer/internal/AFb1iSDK;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/appsflyer/internal/AFb1bSDK;->AFAdRevenueData:Ljava/util/concurrent/ScheduledExecutorService;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1bSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFa1mSDK;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1bSDK;->getRevenue:Lcom/appsflyer/internal/AFi1oSDK;

    .line 40
    .line 41
    invoke-direct {v0, v1, v2, v3, p2}, Lcom/appsflyer/internal/AFb1iSDK;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Lcom/appsflyer/internal/AFa1mSDK;Lcom/appsflyer/internal/AFi1oSDK;Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 45
    .line 46
    instance-of p2, p1, Landroid/app/Activity;

    .line 47
    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    move-object p2, p1

    .line 51
    check-cast p2, Landroid/app/Activity;

    .line 52
    .line 53
    invoke-virtual {v0, p2}, Lcom/appsflyer/internal/AFb1iSDK;->onActivityResumed(Landroid/app/Activity;)V

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-static {p1}, Lcom/appsflyer/internal/AFj1kSDK;->O_(Landroid/content/Context;)Landroid/app/Application;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    iget-object p2, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 63
    .line 64
    invoke-virtual {p1, p2}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    return-void
.end method

.method public final getMediationNetwork()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final getMonetizationNetwork()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1bSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFb1iSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/appsflyer/internal/AFb1iSDK;->getRevenue:Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/appsflyer/internal/AFb1aSDK$AFa1tSDK;->getMediationNetwork()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
