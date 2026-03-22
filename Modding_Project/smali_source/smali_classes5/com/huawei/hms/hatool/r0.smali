.class public Lcom/huawei/hms/hatool/r0;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const/4 v0, 0x7

    .line 2
    const/16 v1, 0x9

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x6

    .line 6
    filled-new-array {v2, v3, v0, v1}, [I

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/huawei/hms/hatool/r0;->a:[I

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    const/4 v1, 0x5

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x2

    .line 16
    const/4 v4, 0x3

    .line 17
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sput-object v0, Lcom/huawei/hms/hatool/r0;->b:[I

    .line 22
    .line 23
    new-instance v0, Lcom/huawei/hms/hatool/r0$a;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/huawei/hms/hatool/r0$a;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v0, Lcom/huawei/hms/hatool/r0;->c:Ljava/util/Map;

    .line 29
    .line 30
    return-void
.end method

.method private static a(Landroid/content/Context;)Landroid/net/NetworkInfo;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "connectivity"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroid/net/ConnectivityManager;

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    .line 12
    .line 13
    .line 14
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    return-object p0

    .line 16
    :catchall_0
    move-exception p0

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "cannot get network state, ensure permission android.permission.ACCESS_NETWORK_STATE in the manifest: "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v0, "hmsSdk"

    .line 39
    .line 40
    invoke-static {v0, p0}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    const/4 p0, 0x0

    .line 44
    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/huawei/hms/hatool/r0;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const-string v2, "unknown"

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-object v0, v2

    .line 27
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_3

    .line 32
    .line 33
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v3, 0x19

    .line 36
    .line 37
    if-lt v1, v3, :cond_3

    .line 38
    .line 39
    const/16 v0, 0x10

    .line 40
    .line 41
    if-eq p0, v0, :cond_2

    .line 42
    .line 43
    const/16 v0, 0x11

    .line 44
    .line 45
    if-eq p0, v0, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    const-string v2, "3G"

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    const-string v2, "2G"

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    move-object v2, v0

    .line 55
    :goto_1
    return-object v2
.end method

.method private static c(Landroid/net/NetworkInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/huawei/hms/hatool/r0;->b:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_1
    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "unknown"

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->a(Landroid/content/Context;)Landroid/net/NetworkInfo;

    .line 7
    .line 8
    .line 9
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->e(Landroid/net/NetworkInfo;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    const-string p0, "none"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_1
    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->f(Landroid/net/NetworkInfo;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    const-string p0, "WIFI"

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_2
    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->c(Landroid/net/NetworkInfo;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    invoke-static {p0}, Lcom/huawei/hms/hatool/r0;->b(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    return-object p0

    .line 43
    :catchall_0
    :cond_3
    return-object v0
.end method

.method private static e(Landroid/net/NetworkInfo;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method private static f(Landroid/net/NetworkInfo;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/huawei/hms/hatool/r0;->a:[I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    invoke-static {v1, p0}, Ljava/util/Arrays;->binarySearch([II)I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    const/4 v1, -0x1

    .line 16
    if-eq p0, v1, :cond_1

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    :cond_1
    return v0
.end method
