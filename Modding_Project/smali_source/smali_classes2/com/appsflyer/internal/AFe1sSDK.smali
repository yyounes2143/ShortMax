.class public final Lcom/appsflyer/internal/AFe1sSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component3:Lcom/appsflyer/internal/AFe1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component4:Lcom/appsflyer/internal/AFf1eSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFg1nSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final getMonetizationNetwork:Lcom/appsflyer/internal/AFc1qSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRevenue:Ljava/util/concurrent/ExecutorService;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1qSDK;Lcom/appsflyer/internal/AFc1hSDK;Lcom/appsflyer/internal/AFc1oSDK;Ljava/util/concurrent/ExecutorService;Lcom/appsflyer/internal/AFg1nSDK;Lcom/appsflyer/internal/AFf1eSDK;Lcom/appsflyer/internal/AFe1oSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFc1qSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1hSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/appsflyer/internal/AFc1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/appsflyer/internal/AFg1nSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/appsflyer/internal/AFf1eSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/appsflyer/internal/AFe1oSDK;
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
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1sSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/appsflyer/internal/AFe1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 30
    .line 31
    iput-object p3, p0, Lcom/appsflyer/internal/AFe1sSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    .line 32
    .line 33
    iput-object p4, p0, Lcom/appsflyer/internal/AFe1sSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    .line 34
    .line 35
    iput-object p5, p0, Lcom/appsflyer/internal/AFe1sSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1nSDK;

    .line 36
    .line 37
    iput-object p6, p0, Lcom/appsflyer/internal/AFe1sSDK;->component4:Lcom/appsflyer/internal/AFf1eSDK;

    .line 38
    .line 39
    iput-object p7, p0, Lcom/appsflyer/internal/AFe1sSDK;->component3:Lcom/appsflyer/internal/AFe1oSDK;

    .line 40
    .line 41
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData(Lcom/appsflyer/internal/AFe1rSDK;Lkotlin/jvm/functions/Function1;)V
    .locals 9
    .param p1    # Lcom/appsflyer/internal/AFe1rSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFe1rSDK;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/appsflyer/internal/AFe1uSDK;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

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
    new-instance v0, Lcom/appsflyer/internal/AFf1wSDK;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1sSDK;->getRevenue:Ljava/util/concurrent/ExecutorService;

    .line 12
    .line 13
    iget-object v4, p0, Lcom/appsflyer/internal/AFe1sSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1oSDK;

    .line 14
    .line 15
    iget-object v5, p0, Lcom/appsflyer/internal/AFe1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 16
    .line 17
    iget-object v6, p0, Lcom/appsflyer/internal/AFe1sSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1nSDK;

    .line 18
    .line 19
    iget-object v7, p0, Lcom/appsflyer/internal/AFe1sSDK;->component4:Lcom/appsflyer/internal/AFf1eSDK;

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    move-object v2, p1

    .line 23
    move-object v8, p2

    .line 24
    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/internal/AFf1wSDK;-><init>(Lcom/appsflyer/internal/AFe1rSDK;Ljava/util/concurrent/Executor;Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFc1hSDK;Lcom/appsflyer/internal/AFg1nSDK;Lcom/appsflyer/internal/AFf1eSDK;Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1sSDK;->component3:Lcom/appsflyer/internal/AFe1oSDK;

    .line 28
    .line 29
    iget-object p2, p1, Lcom/appsflyer/internal/AFe1oSDK;->getCurrencyIso4217Code:Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    new-instance v1, Lcom/appsflyer/internal/AFe1oSDK$1;

    .line 32
    .line 33
    invoke-direct {v1, p1, v0}, Lcom/appsflyer/internal/AFe1oSDK$1;-><init>(Lcom/appsflyer/internal/AFe1oSDK;Lcom/appsflyer/internal/AFe1mSDK;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final getMediationNetwork()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1sSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    .line 2
    .line 3
    const-string v1, "didSendRevenueTriggerOnLastBackground"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getMediationNetwork(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1hSDK;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/appsflyer/internal/AFj1kSDK;->getRevenue(Landroid/content/Context;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;->INSTANCE:Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;

    .line 23
    .line 24
    new-instance v1, Lcom/appsflyer/internal/AFe1sSDK$1;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/appsflyer/internal/AFe1sSDK$1;-><init>(Lcom/appsflyer/internal/AFe1sSDK;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/appsflyer/internal/AFe1sSDK;->AFAdRevenueData(Lcom/appsflyer/internal/AFe1rSDK;Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
