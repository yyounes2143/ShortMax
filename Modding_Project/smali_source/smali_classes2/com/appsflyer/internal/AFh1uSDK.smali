.class public final Lcom/appsflyer/internal/AFh1uSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFg1bSDK;


# instance fields
.field private AFAdRevenueData:Lcom/appsflyer/internal/AFh1wSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1zSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private getMonetizationNetwork:Lcom/appsflyer/internal/AFg1hSDK;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFd1zSDK;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1zSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 6
    .line 7
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFg1cSDK;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v3, "Releasing Exception Manager Client"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Lcom/appsflyer/internal/AFh1ySDK;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    invoke-virtual {v7, v1}, Lcom/appsflyer/AFLogger;->unregisterClient([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1zSDK;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final areAllFieldsValid()V
    .locals 4

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1hSDK;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/appsflyer/internal/AFg1hSDK;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/appsflyer/internal/AFg1hSDK;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1hSDK;

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1hSDK;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x1

    .line 20
    new-array v2, v2, [Lcom/appsflyer/internal/AFh1ySDK;

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object v1, v2, v3

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/appsflyer/AFLogger;->registerClient([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final getCurrencyIso4217Code()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1wSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 6
    .line 7
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->registerClient:Lcom/appsflyer/internal/AFg1cSDK;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v3, "Releasing Proxy Manager Client"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Lcom/appsflyer/internal/AFh1ySDK;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    invoke-virtual {v7, v1}, Lcom/appsflyer/AFLogger;->unregisterClient([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1wSDK;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final getMediationNetwork()V
    .locals 4

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1zSDK;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/appsflyer/internal/AFh1zSDK;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFh1zSDK;-><init>(Lcom/appsflyer/internal/AFd1zSDK;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1zSDK;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1zSDK;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Lcom/appsflyer/internal/AFh1ySDK;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/appsflyer/AFLogger;->registerClient([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final getMonetizationNetwork()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1hSDK;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v7, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 6
    .line 7
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->registerClient:Lcom/appsflyer/internal/AFg1cSDK;

    .line 8
    .line 9
    const/4 v5, 0x4

    .line 10
    const/4 v6, 0x0

    .line 11
    const-string v3, "Releasing Proxy Manager Client"

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    move-object v1, v7

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->v$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    new-array v1, v1, [Lcom/appsflyer/internal/AFh1ySDK;

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    aput-object v0, v1, v2

    .line 23
    .line 24
    invoke-virtual {v7, v1}, Lcom/appsflyer/AFLogger;->unregisterClient([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1hSDK;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public final getRevenue()V
    .locals 4

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1wSDK;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/appsflyer/internal/AFh1wSDK;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1uSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFd1zSDK;

    .line 10
    .line 11
    invoke-direct {v1, v2}, Lcom/appsflyer/internal/AFh1wSDK;-><init>(Lcom/appsflyer/internal/AFd1zSDK;)V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1wSDK;

    .line 15
    .line 16
    :cond_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1wSDK;

    .line 17
    .line 18
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    new-array v2, v2, [Lcom/appsflyer/internal/AFh1ySDK;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    aput-object v1, v2, v3

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/appsflyer/AFLogger;->registerClient([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
