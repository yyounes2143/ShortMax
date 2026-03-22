.class public Lib/z;
.super Ljava/lang/Object;
.source "AccountAuthMemCache.java"


# static fields
.field private static final b:Lib/z;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lib/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lib/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lib/z;->b:Lib/z;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lib/z;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lib/z;
    .locals 1

    .line 1
    sget-object v0, Lib/z;->b:Lib/z;

    .line 2
    .line 3
    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "saveDefaultAccountSignInAccount start."

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "[AccountSDK]AccountAuthMemCache"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lib/z;->a:Ljava/util/Map;

    .line 10
    .line 11
    const-string v1, "AccountAuth"

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lib/z;->a:Ljava/util/Map;

    .line 17
    .line 18
    const-string v2, "AccountAuthParams"

    .line 19
    .line 20
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lib/z;->a:Ljava/util/Map;

    .line 26
    .line 27
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    :cond_0
    if-eqz p2, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lib/z;->a:Ljava/util/Map;

    .line 33
    .line 34
    invoke-interface {p1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_1
    return-void
.end method


# virtual methods
.method public b(Lcom/huawei/hms/support/account/result/AuthAccount;Lcom/huawei/hms/support/account/request/AccountAuthParams;)V
    .locals 3

    .line 1
    const-string v0, "[AccountSDK]AccountAuthMemCache"

    .line 2
    .line 3
    const-string v1, "saveDefaultAccountSignInAccount start."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->toJson()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    move-object p1, v1

    .line 20
    :goto_0
    if-eqz p2, :cond_1

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/huawei/hms/support/feature/request/AbstractAuthParams;->toJson()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :cond_1
    invoke-direct {p0, p1, v1}, Lib/z;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "store faild, exception:"

    .line 36
    .line 37
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-void
.end method

.method public final d()Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 6

    .line 1
    const-string v0, "[AccountSDK]AccountAuthMemCache"

    .line 2
    .line 3
    const-string v1, "getSignInAccount start."

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :try_start_0
    iget-object v3, p0, Lib/z;->a:Ljava/util/Map;

    .line 11
    .line 12
    const-string v4, "AccountAuth"

    .line 13
    .line 14
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Ljava/lang/String;

    .line 19
    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    invoke-static {v3}, Lcom/huawei/hms/support/account/result/AuthAccount;->fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 23
    .line 24
    .line 25
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception v3

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    const-string v5, "getSignInAccount faild, exception:"

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v0, v3, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-object v1
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Lib/z;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
