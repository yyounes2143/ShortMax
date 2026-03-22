.class public final Lcom/appsflyer/internal/AFi1vSDK;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final AFAdRevenueData:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final getCurrencyIso4217Code:Z

.field public final getMediationNetwork:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final getRevenue:Lcom/appsflyer/internal/AFh1dSDK;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_2

    .line 5
    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "ver"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    iput-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 19
    .line 20
    const-string v2, "test_mode"

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    iput-boolean v2, p0, Lcom/appsflyer/internal/AFi1vSDK;->getCurrencyIso4217Code:Z

    .line 27
    .line 28
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMediationNetwork:Ljava/lang/String;

    .line 29
    .line 30
    const-string p1, "default"

    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    sget-object p1, Lcom/appsflyer/internal/AFh1dSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFh1dSDK;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    sget-object p1, Lcom/appsflyer/internal/AFh1dSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFh1dSDK;

    .line 44
    .line 45
    :goto_0
    iput-object p1, p0, Lcom/appsflyer/internal/AFi1vSDK;->getRevenue:Lcom/appsflyer/internal/AFh1dSDK;

    .line 46
    .line 47
    const-string p1, "features"

    .line 48
    .line 49
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    new-instance v0, Lcom/appsflyer/internal/AFi1zSDK;

    .line 56
    .line 57
    invoke-direct {v0, p1}, Lcom/appsflyer/internal/AFi1zSDK;-><init>(Lorg/json/JSONObject;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    const/4 v0, 0x0

    .line 62
    :goto_1
    iput-object v0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .line 64
    return-void

    .line 65
    :goto_2
    const-string v0, "Error in RC config parsing"

    .line 66
    .line 67
    invoke-static {v0, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    new-instance p1, Lorg/json/JSONException;

    .line 71
    .line 72
    const-string v0, "Failed to parse remote configuration JSON"

    .line 73
    .line 74
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    .line 79
    .line 80
    const-string v0, "Failed to parse remote configuration JSON: originalJson is null"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-class v2, Lcom/appsflyer/internal/AFi1vSDK;

    .line 13
    .line 14
    if-eq v2, v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    check-cast p1, Lcom/appsflyer/internal/AFi1vSDK;

    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->getCurrencyIso4217Code:Z

    .line 20
    .line 21
    iget-boolean v2, p1, Lcom/appsflyer/internal/AFi1vSDK;->getCurrencyIso4217Code:Z

    .line 22
    .line 23
    if-eq v1, v2, :cond_2

    .line 24
    .line 25
    return v0

    .line 26
    :cond_2
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 27
    .line 28
    iget-object v2, p1, Lcom/appsflyer/internal/AFi1vSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    return v0

    .line 37
    :cond_3
    iget-object v0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMediationNetwork:Ljava/lang/String;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/appsflyer/internal/AFi1vSDK;->getMediationNetwork:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1

    .line 46
    :cond_4
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/appsflyer/internal/AFi1vSDK;->getCurrencyIso4217Code:Z

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMediationNetwork:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    iget-object v1, p0, Lcom/appsflyer/internal/AFi1vSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFi1zSDK;

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    add-int/2addr v0, v1

    .line 32
    :cond_0
    return v0
.end method
