.class public final Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1rSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1ySDK"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;-><init>()V

    return-void
.end method

.method public static getMediationNetwork(Lcom/appsflyer/internal/AFh1mSDK;)Lcom/appsflyer/internal/AFe1rSDK;
    .locals 5
    .param p0    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1pSDK;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->getRevenue:Lcom/appsflyer/internal/AFe1pSDK;

    .line 11
    .line 12
    if-ne v1, v2, :cond_0

    .line 13
    .line 14
    sget-object p0, Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;->INSTANCE:Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFe1pSDK;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->equals:Lcom/appsflyer/internal/AFe1pSDK;

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    invoke-static {}, Lcom/appsflyer/internal/AFe1rSDK;->getCurrencyIso4217Code()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1mSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    iget-object v1, p0, Lcom/appsflyer/internal/AFh1mSDK;->getRevenue:Ljava/util/Map;

    .line 39
    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    const-string v2, "af_revenue"

    .line 43
    .line 44
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    invoke-static {v1}, Lkotlin/text/StringsKt;->s(Ljava/lang/String;)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    move-object v1, v3

    .line 62
    :goto_0
    iget-object v2, p0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 63
    .line 64
    const-string v4, "iaecounter"

    .line 65
    .line 66
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    if-eqz v2, :cond_2

    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_2

    .line 77
    .line 78
    invoke-static {v2}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :cond_2
    new-instance v2, Lcom/appsflyer/internal/AFe1rSDK$AFa1zSDK;

    .line 83
    .line 84
    iget-object p0, p0, Lcom/appsflyer/internal/AFh1mSDK;->areAllFieldsValid:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v2, p0, v1, v3}, Lcom/appsflyer/internal/AFe1rSDK$AFa1zSDK;-><init>(Ljava/lang/String;Ljava/lang/Float;Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    return-object v2

    .line 93
    :cond_3
    return-object v3
.end method
