.class public final Lcom/inmobi/media/r3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# static fields
.field public static a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

.field public static volatile b:Landroid/net/Network;

.field public static volatile c:Z

.field public static d:J

.field public static e:J

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/r3;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/r3;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "ads"

    .line 13
    .line 14
    invoke-static {v2, v1, v0}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getCustomNwValidation()Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    .line 30
    .line 31
    const/4 v0, 0x1

    .line 32
    sput-boolean v0, Lcom/inmobi/media/r3;->c:Z

    .line 33
    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 38
    .line 39
    .line 40
    sput-object v0, Lcom/inmobi/media/r3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
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

.method public static a(Landroid/net/Network;)V
    .locals 4

    .line 1
    sget-wide v0, Lcom/inmobi/media/r3;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 3
    sget-object v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getRefreshDebounceTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3e8

    :goto_0
    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/inmobi/media/r3;->e:J

    .line 5
    sget-object v0, Lcom/inmobi/media/r3;->b:Landroid/net/Network;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 6
    sget-wide v0, Lcom/inmobi/media/r3;->d:J

    sget-object v2, Lcom/inmobi/media/Ie;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 8
    sget-boolean v0, Lcom/inmobi/media/r3;->c:Z

    if-eqz v0, :cond_3

    .line 9
    sget-object v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getValidatedExpiry()J

    move-result-wide v0

    goto :goto_1

    :cond_2
    const-wide/32 v0, 0x1d4c0

    goto :goto_1

    .line 10
    :cond_3
    sget-object v0, Lcom/inmobi/media/r3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getNonValidatedExpiry()J

    move-result-wide v0

    goto :goto_1

    :cond_4
    const-wide/16 v0, 0x7530

    :goto_1
    cmp-long v0, v2, v0

    if-lez v0, :cond_6

    .line 11
    :cond_5
    sget-object v0, Lcom/inmobi/media/r3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 12
    sget-object v0, Lcom/inmobi/media/z4;->c:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 13
    new-instance v1, Lub/f6;

    invoke-direct {v1, p0}, Lub/f6;-><init>(Landroid/net/Network;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static final b(Landroid/net/Network;)V
    .locals 3

    .line 1
    const-string v0, "$network"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    sget-object v1, Lcom/inmobi/media/r3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->getUrlDomain()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    xor-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_2

    .line 36
    :catch_0
    :cond_0
    move v1, v0

    .line 37
    :goto_0
    :try_start_1
    sput-boolean v1, Lcom/inmobi/media/r3;->c:Z

    .line 38
    .line 39
    sput-object p0, Lcom/inmobi/media/r3;->b:Landroid/net/Network;

    .line 40
    .line 41
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    .line 43
    .line 44
    move-result-wide v1

    .line 45
    sput-wide v1, Lcom/inmobi/media/r3;->d:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_1
    move-exception p0

    .line 49
    :try_start_2
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 50
    .line 51
    new-instance v1, Lcom/inmobi/media/f2;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 54
    .line 55
    .line 56
    const-string p0, "event"

    .line 57
    .line 58
    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 62
    .line 63
    invoke-virtual {p0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    :goto_1
    sget-object p0, Lcom/inmobi/media/r3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :goto_2
    sget-object v1, Lcom/inmobi/media/r3;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    .line 76
    .line 77
    throw p0
.end method


# virtual methods
.method public final a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 1

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    if-eqz v0, :cond_0

    .line 15
    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getCustomNwValidation()Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    move-result-object p1

    sput-object p1, Lcom/inmobi/media/r3;->a:Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;

    :cond_0
    return-void
.end method
