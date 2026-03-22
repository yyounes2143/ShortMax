.class public final Lcom/appsflyer/internal/AFg1zSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final AFAdRevenueData:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getMediationNetwork:Landroid/content/pm/PackageManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1hSDK;Lcom/appsflyer/internal/AFc1oSDK;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFc1hSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFc1oSDK;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p1, 0x0

    .line 29
    :goto_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1zSDK;->getMediationNetwork:Landroid/content/pm/PackageManager;

    .line 30
    .line 31
    iget-object p1, p2, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iput-object p1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 43
    .line 44
    return-void
.end method

.method private final getRevenue()Ljava/util/Map;
    .locals 12
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/appsflyer/internal/AFg1zSDK;->getMediationNetwork:Landroid/content/pm/PackageManager;

    .line 9
    .line 10
    if-eqz v2, :cond_3

    .line 11
    .line 12
    invoke-static {v2, v1}, Lcom/adjust/sdk/k1;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v3, "initiating_package"

    .line 29
    .line 30
    invoke-static {v1}, Lcom/adjust/sdk/n1;->a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    .line 36
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception v1

    .line 41
    move-object v5, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    const-string v3, "installing_package"

    .line 44
    .line 45
    invoke-static {v1}, Lcom/adjust/sdk/m1;->a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    if-eqz v4, :cond_1

    .line 50
    .line 51
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    :cond_1
    const-string v3, "originating_package"

    .line 55
    .line 56
    invoke-static {v1}, Lcom/adjust/sdk/l1;->a(Landroid/content/pm/InstallSourceInfo;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .line 64
    .line 65
    :cond_2
    move-object v0, v2

    .line 66
    goto :goto_2

    .line 67
    :goto_1
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 68
    .line 69
    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->w:Lcom/appsflyer/internal/AFg1cSDK;

    .line 70
    .line 71
    const/16 v10, 0x10

    .line 72
    .line 73
    const/4 v11, 0x0

    .line 74
    const-string v4, "Failed to get the app install source info"

    .line 75
    .line 76
    const/4 v6, 0x1

    .line 77
    const/4 v7, 0x0

    .line 78
    const/4 v8, 0x1

    .line 79
    const/4 v9, 0x1

    .line 80
    invoke-static/range {v2 .. v11}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final AFAdRevenueData()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->getMediationNetwork:Landroid/content/pm/PackageManager;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1zSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 22
    .line 23
    const-string v2, "installer_package"

    .line 24
    .line 25
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    const-string v1, "Exception while getting the app\'s installer package. "

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 36
    .line 37
    const/16 v1, 0x1e

    .line 38
    .line 39
    if-lt v0, v1, :cond_1

    .line 40
    .line 41
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 42
    .line 43
    const-string v1, "install_source_info"

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1zSDK;->getRevenue()Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1zSDK;->getCurrencyIso4217Code:Ljava/util/Map;

    .line 53
    .line 54
    return-object v0
.end method
