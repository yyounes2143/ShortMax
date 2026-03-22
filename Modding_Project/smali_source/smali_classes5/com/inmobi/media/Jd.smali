.class public final Lcom/inmobi/media/Jd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/concurrent/ConcurrentHashMap;

.field public static b:Lcom/inmobi/media/Id;

.field public static c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
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

.method public static a()V
    .locals 2

    .line 1
    const-string v0, "Jd"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    .line 3
    const-string v0, "android.intent.action.REBOOT"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-static {v1}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    .line 6
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {v1}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "SYSTEM_CONNECTIVITY_CHANGE"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    .line 10
    :goto_0
    sget-object v0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 21
    const-string v0, "Jd"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_3

    .line 23
    :cond_0
    :try_start_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 24
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_5

    .line 25
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/net/ConnectivityManager;

    if-eqz p1, :cond_1

    move-object v6, p0

    check-cast v6, Landroid/net/ConnectivityManager;

    :cond_1
    if-eqz v6, :cond_e

    .line 26
    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p1

    sget-boolean v2, Lcom/inmobi/media/Jd;->c:Z

    if-ne p1, v2, :cond_2

    goto/16 :goto_3

    :cond_2
    if-eqz p0, :cond_3

    .line 28
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-ne p0, v5, :cond_3

    move v3, v5

    :cond_3
    sput-boolean v3, Lcom/inmobi/media/Jd;->c:Z

    .line 29
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p0

    .line 31
    new-instance p1, Lcom/inmobi/media/d2;

    .line 32
    sget-boolean v0, Lcom/inmobi/media/Jd;->c:Z

    if-eqz v0, :cond_4

    const-string v0, "available"

    goto :goto_0

    :cond_4
    const-string v0, "lost"

    :goto_0
    const/16 v1, 0xa

    .line 33
    invoke-direct {p1, v1, v4, v0}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    .line 35
    :cond_5
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 36
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 37
    invoke-static {v2, v7, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 38
    const-string p1, "power"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Landroid/os/PowerManager;

    if-eqz p1, :cond_6

    move-object v6, p0

    check-cast v6, Landroid/os/PowerManager;

    :cond_6
    if-eqz v6, :cond_7

    .line 39
    sget-object p0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {p0}, Lcom/inmobi/media/L3;->H()Z

    move-result p0

    if-eqz p0, :cond_7

    .line 40
    invoke-virtual {v6}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    .line 41
    :cond_7
    sget-boolean p0, Lcom/inmobi/media/Jd;->c:Z

    if-eq v3, p0, :cond_e

    sget-object p0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {p0}, Lcom/inmobi/media/L3;->H()Z

    move-result p0

    if-eqz p0, :cond_e

    .line 42
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p0

    .line 44
    new-instance p1, Lcom/inmobi/media/d2;

    .line 45
    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    .line 46
    invoke-direct {p1, v1, v4, v0}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    .line 47
    invoke-virtual {p0, p1}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    .line 48
    :cond_8
    const-string p0, "android.intent.action.USER_PRESENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v2, 0x6

    if-eqz p0, :cond_9

    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p0

    new-instance p1, Lcom/inmobi/media/d2;

    const/16 v0, 0x64

    invoke-direct {p1, v0, v2, v6}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    goto/16 :goto_3

    .line 51
    :cond_9
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 52
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p0

    new-instance p1, Lcom/inmobi/media/d2;

    invoke-direct {p1, v5, v2, v6}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    .line 54
    sget-object p0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    goto :goto_1

    .line 57
    :cond_a
    sget-object p0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 58
    sput-object v6, Lcom/inmobi/media/Jd;->b:Lcom/inmobi/media/Id;

    goto :goto_3

    .line 59
    :cond_b
    const-string p0, "android.intent.action.REBOOT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 60
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p0

    new-instance p1, Lcom/inmobi/media/d2;

    const/4 v0, 0x2

    invoke-direct {p1, v0, v2, v6}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V

    .line 62
    sget-object p0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 64
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/inmobi/media/Jd;->b(Ljava/lang/String;)V

    goto :goto_2

    .line 65
    :cond_c
    sget-object p0, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 66
    sput-object v6, Lcom/inmobi/media/Jd;->b:Lcom/inmobi/media/Id;

    goto :goto_3

    .line 67
    :cond_d
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object p0

    .line 69
    new-instance v0, Lcom/inmobi/media/d2;

    .line 70
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x63

    .line 71
    invoke-direct {v0, v1, v4, p1}, Lcom/inmobi/media/d2;-><init>(IILjava/lang/String;)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/inmobi/media/H7;->b(Lcom/inmobi/media/d2;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_e
    :goto_3
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 3

    .line 11
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 12
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v1}, Lcom/inmobi/media/L3;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SYSTEM_CONNECTIVITY_CHANGE"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    const-string p0, "connectivity"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_2

    .line 14
    new-instance v0, Lcom/inmobi/media/Id;

    invoke-direct {v0}, Lcom/inmobi/media/Id;-><init>()V

    .line 15
    sput-object v0, Lcom/inmobi/media/Jd;->b:Lcom/inmobi/media/Id;

    .line 16
    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_1

    .line 17
    :cond_1
    sget-object v1, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 18
    new-instance v2, Lcom/inmobi/media/Hd;

    invoke-direct {v2}, Lcom/inmobi/media/Hd;-><init>()V

    .line 19
    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v2, v1}, Lcom/inmobi/media/B2;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    :goto_1
    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    const-string v0, "Jd"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->a(Ljava/lang/String;)V

    .line 3
    const-string v0, "android.intent.action.REBOOT"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->a(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v0}, Lcom/inmobi/media/L3;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-static {v1}, Lcom/inmobi/media/Jd;->a(Ljava/lang/String;)V

    .line 6
    :cond_0
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-static {v1}, Lcom/inmobi/media/Jd;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/inmobi/media/L3;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    const-string v0, "SYSTEM_CONNECTIVITY_CHANGE"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0}, Lcom/inmobi/media/Jd;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 3

    .line 10
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    sget-object v1, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v1}, Lcom/inmobi/media/L3;->x()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SYSTEM_CONNECTIVITY_CHANGE"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/inmobi/media/Jd;->b:Lcom/inmobi/media/Id;

    if-eqz v1, :cond_1

    .line 12
    const-string p0, "connectivity"

    invoke-virtual {v0, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

    .line 13
    sget-object v0, Lcom/inmobi/media/Jd;->b:Lcom/inmobi/media/Id;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 14
    sput-object v1, Lcom/inmobi/media/Jd;->b:Lcom/inmobi/media/Id;

    goto :goto_1

    .line 15
    :cond_1
    sget-object v1, Lcom/inmobi/media/Jd;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    return-void
.end method
