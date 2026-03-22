.class public final Lcom/facebook/appevents/iap/h$a;
.super Ljava/lang/Object;
.source "InAppPurchaseSkuDetailsWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/iap/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/facebook/appevents/iap/h$a;-><init>()V

    return-void
.end method

.method private final a()Lcom/facebook/appevents/iap/h;
    .locals 9

    .line 1
    const-string v0, "com.android.billingclient.api.SkuDetailsParams"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v0, "com.android.billingclient.api.SkuDetailsParams$Builder"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->a(Ljava/lang/String;)Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const/4 v0, 0x0

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "newBuilder"

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    new-array v5, v4, [Ljava/lang/Class;

    .line 23
    .line 24
    invoke-static {v2, v1, v5}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    const-class v1, Ljava/lang/String;

    .line 29
    .line 30
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v6, "setType"

    .line 35
    .line 36
    invoke-static {v3, v6, v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    const-class v1, Ljava/util/List;

    .line 41
    .line 42
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v7, "setSkusList"

    .line 47
    .line 48
    invoke-static {v3, v7, v1}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    const-string v1, "build"

    .line 53
    .line 54
    new-array v4, v4, [Ljava/lang/Class;

    .line 55
    .line 56
    invoke-static {v3, v1, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->d(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    if-eqz v5, :cond_2

    .line 61
    .line 62
    if-eqz v6, :cond_2

    .line 63
    .line 64
    if-eqz v7, :cond_2

    .line 65
    .line 66
    if-nez v8, :cond_1

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Lcom/facebook/appevents/iap/h;

    .line 70
    .line 71
    move-object v1, v0

    .line 72
    move-object v4, v5

    .line 73
    move-object v5, v6

    .line 74
    move-object v6, v7

    .line 75
    move-object v7, v8

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/facebook/appevents/iap/h;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    .line 77
    .line 78
    .line 79
    invoke-static {v0}, Lcom/facebook/appevents/iap/h;->b(Lcom/facebook/appevents/iap/h;)V

    .line 80
    .line 81
    .line 82
    invoke-static {}, Lcom/facebook/appevents/iap/h;->a()Lcom/facebook/appevents/iap/h;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    :cond_2
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()Lcom/facebook/appevents/iap/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/facebook/appevents/iap/h;->a()Lcom/facebook/appevents/iap/h;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/facebook/appevents/iap/h$a;->a()Lcom/facebook/appevents/iap/h;

    .line 9
    .line 10
    .line 11
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    monitor-exit p0

    .line 16
    return-object v0

    .line 17
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    throw v0
.end method
