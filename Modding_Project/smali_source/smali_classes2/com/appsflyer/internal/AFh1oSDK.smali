.class public final Lcom/appsflyer/internal/AFh1oSDK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/internal/AFh1pSDK;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFh1oSDK$AFa1uSDK;
    }
.end annotation


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private component3:Z

.field private component4:Z

.field private getCurrencyIso4217Code:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final getMediationNetwork:Lcom/appsflyer/internal/AFj1sSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private getMonetizationNetwork:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private getRevenue:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFj1sSDK;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFc1oSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFj1sSDK;
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
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1oSDK;

    .line 13
    .line 14
    iput-object p2, p0, Lcom/appsflyer/internal/AFh1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    .line 15
    .line 16
    return-void
.end method

.method private final AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFh1mSDK;Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string p3, "branch"

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v0, "external"

    invoke-interface {p3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p2, p3}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData(Ljava/util/Map;)Lcom/appsflyer/internal/AFh1mSDK;

    .line 8
    iget-object p1, p2, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 9
    const-string p3, ""

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1pSDK;

    move-result-object p2

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/appsflyer/internal/AFh1oSDK;->getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/internal/AFe1pSDK;)V

    return-void
.end method

.method private final getMediationNetwork()Lorg/json/JSONObject;
    .locals 5

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    .line 7
    invoke-static {v2, v3}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->waitForAttributionData(J)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->getCurrencyIso4217Code:Ljava/lang/Long;

    :cond_0
    return-object v2
.end method

.method private final getMonetizationNetwork(Ljava/util/Map;Lcom/appsflyer/internal/AFe1pSDK;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/appsflyer/internal/AFe1pSDK;",
            ")V"
        }
    .end annotation

    .line 10
    sget-object v0, Lcom/appsflyer/internal/AFh1oSDK$AFa1uSDK;->AFAdRevenueData:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 11
    :cond_0
    iget-object p2, p0, Lcom/appsflyer/internal/AFh1oSDK;->getCurrencyIso4217Code:Ljava/lang/Long;

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p0, Lcom/appsflyer/internal/AFh1oSDK;->getRevenue:Ljava/lang/Long;

    :goto_0
    if-eqz p2, :cond_2

    .line 13
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 14
    invoke-static {p1}, Lcom/appsflyer/internal/AFa1ySDK;->getMediationNetwork(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 15
    const-string p2, ""

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "delay"

    invoke-static {v0, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 17
    invoke-static {p2}, Lkotlin/collections/p0;->f(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    const-string v0, "migration"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method


# virtual methods
.method public final AFAdRevenueData()V
    .locals 1

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->component4:Z

    .line 11
    invoke-static {}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->clear()V

    return-void
.end method

.method public final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
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
    invoke-static {}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->getAttributionData()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v1, "attr"

    .line 13
    .line 14
    invoke-direct {p0, v1, p1, v0}, Lcom/appsflyer/internal/AFh1oSDK;->AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFh1mSDK;Lorg/json/JSONObject;)V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFh1oSDK;->component3:Z

    .line 19
    .line 20
    :cond_0
    invoke-static {}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->clear()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 2
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->getMonetizationNetwork:Lorg/json/JSONObject;

    const-string v1, "attr"

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1, v0}, Lcom/appsflyer/internal/AFh1oSDK;->AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFh1mSDK;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1oSDK;->getMediationNetwork()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, v1, p1, v0}, Lcom/appsflyer/internal/AFh1oSDK;->AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFh1mSDK;Lorg/json/JSONObject;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->clear()V

    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFf1rSDK;Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .param p1    # Lcom/appsflyer/internal/AFf1rSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFf1rSDK;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFc1oSDK;

    .line 2
    iget-object v0, v0, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v1, "appsFlyerCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object p1, p1, Lcom/appsflyer/internal/AFe1mSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 4
    sget-object v0, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Lcom/appsflyer/internal/AFh1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFj1sSDK;

    invoke-virtual {p1}, Lcom/appsflyer/internal/AFj1sSDK;->getMediationNetwork()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1oSDK;->getRevenue()Z

    move-result p1

    if-nez p1, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1oSDK;->getMediationNetwork()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 8
    iput-object p1, p0, Lcom/appsflyer/internal/AFh1oSDK;->getMonetizationNetwork:Lorg/json/JSONObject;

    .line 9
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)V
    .locals 5
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xbb8

    .line 20
    invoke-static {v2, v3}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->waitForDeepLinkingData(J)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 22
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->getRevenue:Ljava/lang/Long;

    .line 23
    const-string v0, "dl"

    .line 24
    invoke-direct {p0, v0, p1, v2}, Lcom/appsflyer/internal/AFh1oSDK;->AFAdRevenueData(Ljava/lang/String;Lcom/appsflyer/internal/AFh1mSDK;Lorg/json/JSONObject;)V

    .line 25
    :cond_0
    invoke-static {}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->clear()V

    return-void
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->component4:Z

    return v0
.end method

.method public final getRevenue()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFh1oSDK;->component3:Z

    .line 2
    .line 3
    return v0
.end method

.method public final u_(Landroid/content/Intent;Lcom/appsflyer/internal/AFa1mSDK;)V
    .locals 12
    .param p1    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFa1mSDK;
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
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/appsflyer/migration/internal/MigrationDataProvider;->waitForDeepLinkingData(J)Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x1

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iput-boolean v3, p0, Lcom/appsflyer/internal/AFh1oSDK;->component4:Z

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    const/4 v2, 0x2

    .line 29
    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 30
    .line 31
    aput-object p2, v2, v3

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    aput-object p1, v2, p2

    .line 35
    .line 36
    sget-object p1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 37
    .line 38
    const v4, 0x3363362b

    .line 39
    .line 40
    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    if-eqz v5, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    invoke-static {p2}, Landroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    cmp-long v5, v5, v0

    .line 57
    .line 58
    invoke-static {v0, v1}, Landroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    const v7, 0xf261

    .line 63
    .line 64
    .line 65
    sub-int/2addr v7, v6

    .line 66
    int-to-char v6, v7

    .line 67
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 68
    .line 69
    .line 70
    move-result v7

    .line 71
    shr-int/lit8 v7, v7, 0x8

    .line 72
    .line 73
    rsub-int/lit8 v7, v7, 0x25

    .line 74
    .line 75
    invoke-static {v5, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v5

    .line 79
    check-cast v5, Ljava/lang/Class;

    .line 80
    .line 81
    const-class v6, Landroid/net/Uri;

    .line 82
    .line 83
    const-class v7, Lcom/appsflyer/internal/AFa1mSDK;

    .line 84
    .line 85
    filled-new-array {v6, v7}, [Ljava/lang/Class;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    :goto_0
    check-cast v5, Ljava/lang/reflect/Constructor;

    .line 101
    .line 102
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const v4, -0xac4110a

    .line 107
    .line 108
    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v5

    .line 113
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    const/4 v6, 0x0

    .line 118
    if-eqz v5, :cond_3

    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_3
    invoke-static {}, Landroid/view/KeyEvent;->getModifierMetaStateMask()I

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    int-to-byte v5, v5

    .line 126
    rsub-int/lit8 v5, v5, -0x1

    .line 127
    .line 128
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    .line 129
    .line 130
    .line 131
    move-result-wide v7

    .line 132
    cmp-long v7, v7, v0

    .line 133
    .line 134
    const v8, 0xf262

    .line 135
    .line 136
    .line 137
    sub-int/2addr v8, v7

    .line 138
    int-to-char v7, v8

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v8

    .line 143
    const-wide/16 v10, -0x1

    .line 144
    .line 145
    cmp-long v8, v8, v10

    .line 146
    .line 147
    add-int/lit8 v8, v8, 0x24

    .line 148
    .line 149
    invoke-static {v5, v7, v8}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v5

    .line 153
    check-cast v5, Ljava/lang/Class;

    .line 154
    .line 155
    const-string v7, "getMediationNetwork"

    .line 156
    .line 157
    invoke-virtual {v5, v7, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    invoke-interface {p1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :goto_1
    check-cast v5, Ljava/lang/reflect/Method;

    .line 169
    .line 170
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    const v4, 0x249bdb61

    .line 175
    .line 176
    .line 177
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v5

    .line 181
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    if-eqz v5, :cond_4

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_4
    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    .line 189
    .line 190
    .line 191
    move-result p2

    .line 192
    add-int/lit8 p2, p2, 0x25

    .line 193
    .line 194
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    .line 195
    .line 196
    .line 197
    move-result-wide v7

    .line 198
    cmp-long v5, v7, v0

    .line 199
    .line 200
    rsub-int/lit8 v5, v5, 0x1

    .line 201
    .line 202
    int-to-char v5, v5

    .line 203
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 204
    .line 205
    .line 206
    move-result-wide v7

    .line 207
    cmp-long v0, v7, v0

    .line 208
    .line 209
    rsub-int/lit8 v0, v0, 0x34

    .line 210
    .line 211
    invoke-static {p2, v5, v0}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    check-cast p2, Ljava/lang/Class;

    .line 216
    .line 217
    const-string v0, "AFAdRevenueData"

    .line 218
    .line 219
    invoke-virtual {p2, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    invoke-interface {p1, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    :goto_2
    check-cast v5, Ljava/lang/reflect/Method;

    .line 231
    .line 232
    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    check-cast p1, Ljava/lang/Boolean;

    .line 237
    .line 238
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 239
    .line 240
    .line 241
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    xor-int/2addr p1, v3

    .line 243
    iput-boolean p1, p0, Lcom/appsflyer/internal/AFh1oSDK;->component4:Z

    .line 244
    .line 245
    return-void

    .line 246
    :catchall_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 248
    .line 249
    .line 250
    move-result-object p2

    .line 251
    if-eqz p2, :cond_5

    .line 252
    .line 253
    throw p2

    .line 254
    :cond_5
    throw p1
.end method
