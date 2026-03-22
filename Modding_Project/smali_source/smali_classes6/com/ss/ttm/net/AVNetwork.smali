.class public final Lcom/ss/ttm/net/AVNetwork;
.super Ljava/lang/Object;
.source "AVNetwork.java"


# annotations
.annotation build Lcom/ss/ttm/player/Keep;
.end annotation


# static fields
.field public static final IS_MOBILE_NETWORK:I = 0x2

.field public static final IS_UNKOWN_NETWORK:I = 0x0

.field public static final IS_WIFF_NETWORK:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getNetworkType(Landroid/content/Context;)I
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "connectivity"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 9
    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    const-class v1, Lcom/ss/ttm/net/AVNetwork;

    .line 19
    .line 20
    if-nez p0, :cond_1

    .line 21
    .line 22
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v1, "NetworkInfo is null"

    .line 27
    .line 28
    invoke-static {p0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v0

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    const/4 v2, 0x1

    .line 37
    if-ne p0, v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    const-string v1, "NetworkInfo is wifi"

    .line 44
    .line 45
    invoke-static {p0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v2

    .line 49
    :cond_2
    if-nez p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    const-string v1, "NetworkInfo is mobile"

    .line 56
    .line 57
    invoke-static {p0, v1}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    .line 59
    .line 60
    const/4 p0, 0x2

    .line 61
    return p0

    .line 62
    :catchall_0
    :cond_3
    return v0
.end method
