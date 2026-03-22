.class public Lio/bidmachine/BidMachineFetcher;
.super Ljava/lang/Object;
.source "BidMachineFetcher.java"


# static fields
.field public static final AD_TYPE_DISPLAY:Ljava/lang/String; = "display"

.field public static final AD_TYPE_NATIVE:Ljava/lang/String; = "native"

.field public static final AD_TYPE_VIDEO:Ljava/lang/String; = "video"

.field public static final KEY_AD_TYPE:Ljava/lang/String; = "bm_ad_type"

.field public static final KEY_ID:Ljava/lang/String; = "bm_id"

.field public static final KEY_NETWORK_KEY:Ljava/lang/String; = "bm_network_key"

.field public static final KEY_PRICE:Ljava/lang/String; = "bm_pf"

.field private static final PRICE_ROUNDING:Ljava/math/BigDecimal;

.field private static final PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

.field private static final TAG:Ljava/lang/String; = "BidMachineFetcher"

.field static cachedRequests:Ljava/util/EnumMap;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/bidmachine/AdRequest;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    const-string v1, "0.01"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING:Ljava/math/BigDecimal;

    .line 9
    .line 10
    sget-object v0, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    .line 11
    .line 12
    sput-object v0, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 13
    .line 14
    new-instance v0, Ljava/util/EnumMap;

    .line 15
    .line 16
    const-class v1, Lio/bidmachine/AdsType;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->lambda$toMap$2(Lio/bidmachine/AdRequest;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->lambda$fetch$0(Lio/bidmachine/AdRequest;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->lambda$release$1(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static fetch(Lio/bidmachine/AdRequest;)Ljava/util/Map;
    .locals 6
    .param p0    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "BidMachineFetcher"

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/b2;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lio/bidmachine/b2;-><init>(Lio/bidmachine/AdRequest;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lio/bidmachine/BidMachineFetcher;->toMap(Lio/bidmachine/AdRequest;)Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "bm_id"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_0
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    new-instance v3, Lio/bidmachine/BidMachineFetcher$a;

    .line 36
    .line 37
    invoke-direct {v3}, Lio/bidmachine/BidMachineFetcher$a;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v3}, Lio/bidmachine/AdRequest;->addListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    .line 41
    .line 42
    .line 43
    const-class v3, Lio/bidmachine/BidMachineFetcher;

    .line 44
    .line 45
    monitor-enter v3

    .line 46
    :try_start_0
    sget-object v4, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Ljava/util/Map;

    .line 53
    .line 54
    if-nez v4, :cond_1

    .line 55
    .line 56
    new-instance v4, Ljava/util/HashMap;

    .line 57
    .line 58
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v5, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    .line 62
    .line 63
    invoke-virtual {v5, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    :goto_0
    invoke-interface {v4, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    monitor-exit v3

    .line 73
    return-object v0

    .line 74
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    throw p0
.end method

.method static identifyAdType(Lio/bidmachine/CreativeFormat;)Ljava/lang/String;
    .locals 2
    .param p0    # Lio/bidmachine/CreativeFormat;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lio/bidmachine/BidMachineFetcher$b;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    aget p0, v1, p0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq p0, v1, :cond_3

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq p0, v1, :cond_2

    .line 18
    .line 19
    const/4 v1, 0x3

    .line 20
    if-eq p0, v1, :cond_1

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_1
    const-string p0, "native"

    .line 24
    .line 25
    return-object p0

    .line 26
    :cond_2
    const-string p0, "video"

    .line 27
    .line 28
    return-object p0

    .line 29
    :cond_3
    const-string p0, "display"

    .line 30
    .line 31
    return-object p0
.end method

.method private static synthetic lambda$fetch$0(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "fetch - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$release$1(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "release - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static synthetic lambda$toMap$2(Lio/bidmachine/AdRequest;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "toMap - %s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static release(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequest;
    .locals 1
    .param p0    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(TT;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAuctionResult()Llp/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdsType()Lio/bidmachine/AdsType;

    move-result-object p0

    invoke-interface {v0}, Llp/c;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;
    .locals 3
    .param p0    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    const-string v0, "BidMachineFetcher"

    new-instance v2, Lio/bidmachine/c2;

    invoke-direct {v2, p1}, Lio/bidmachine/c2;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 7
    const-class v0, Lio/bidmachine/BidMachineFetcher;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v2, Lio/bidmachine/BidMachineFetcher;->cachedRequests:Ljava/util/EnumMap;

    invoke-virtual {v2, p0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    .line 9
    :try_start_1
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/bidmachine/AdRequest;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 10
    :catch_0
    monitor-exit v0

    return-object v1

    .line 11
    :cond_1
    monitor-exit v0

    return-object v1

    .line 12
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public static release(Lio/bidmachine/AdsType;Ljava/util/Map;)Lio/bidmachine/AdRequest;
    .locals 1
    .param p0    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lio/bidmachine/AdRequest;",
            ">(",
            "Lio/bidmachine/AdsType;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)TT;"
        }
    .end annotation

    .line 3
    const-string v0, "bm_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 4
    invoke-static {p0, p1}, Lio/bidmachine/BidMachineFetcher;->release(Lio/bidmachine/AdsType;Ljava/lang/String;)Lio/bidmachine/AdRequest;

    move-result-object p0

    return-object p0
.end method

.method private static roundPrice(D)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/math/BigDecimal;

    .line 2
    .line 3
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING:Ljava/math/BigDecimal;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    sget-object v1, Lio/bidmachine/BidMachineFetcher;->PRICE_ROUNDING_MODE:Ljava/math/RoundingMode;

    .line 21
    .line 22
    invoke-virtual {v0, p0, p1, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1, p0}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p0}, Ljava/math/BigDecimal;->scale()I

    .line 31
    .line 32
    .line 33
    move-result p0

    .line 34
    sget-object p1, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    .line 35
    .line 36
    invoke-virtual {v0, p0, p1}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static toMap(Lio/bidmachine/AdRequest;)Ljava/util/Map;
    .locals 3
    .param p0    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/d2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lio/bidmachine/d2;-><init>(Lio/bidmachine/AdRequest;)V

    .line 4
    .line 5
    .line 6
    const-string v1, "BidMachineFetcher"

    .line 7
    .line 8
    invoke-static {v1, v0}, Lio/bidmachine/core/a;->b(Ljava/lang/Object;Lhr/b;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAuctionResult()Llp/c;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    const-string v1, "bm_id"

    .line 24
    .line 25
    invoke-interface {p0}, Llp/c;->getId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    invoke-interface {p0}, Llp/c;->getPrice()D

    .line 33
    .line 34
    .line 35
    move-result-wide v1

    .line 36
    invoke-static {v1, v2}, Lio/bidmachine/BidMachineFetcher;->roundPrice(D)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const-string v2, "bm_pf"

    .line 41
    .line 42
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    const-string v1, "bm_network_key"

    .line 46
    .line 47
    invoke-interface {p0}, Llp/c;->a()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    invoke-interface {p0}, Llp/c;->c()Lio/bidmachine/CreativeFormat;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v1}, Lio/bidmachine/BidMachineFetcher;->identifyAdType(Lio/bidmachine/CreativeFormat;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    const-string v2, "bm_ad_type"

    .line 65
    .line 66
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_1
    invoke-interface {p0}, Llp/c;->getCustomParams()Ljava/util/Map;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method
