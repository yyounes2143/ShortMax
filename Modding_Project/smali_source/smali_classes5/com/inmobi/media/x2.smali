.class public final Lcom/inmobi/media/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/N2;


# static fields
.field public static final a:Lcom/inmobi/media/x2;

.field public static b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static c:Lcom/inmobi/media/p2;

.field public static d:Landroid/os/HandlerThread;

.field public static e:Ljava/util/List;

.field public static final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

.field public static final h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/util/LinkedHashMap;

.field public static final k:Lcom/inmobi/media/u2;

.field public static final l:Lms/i;

.field public static final m:Lcom/inmobi/media/w2;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/x2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/x2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 7
    .line 8
    const-class v0, Lcom/inmobi/media/x2;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/inmobi/media/x2;->e:Ljava/util/List;

    .line 20
    .line 21
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 25
    .line 26
    .line 27
    sput-object v1, Lcom/inmobi/media/x2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/inmobi/media/x2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/Object;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 40
    .line 41
    .line 42
    sput-object v1, Lcom/inmobi/media/x2;->i:Ljava/lang/Object;

    .line 43
    .line 44
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 45
    .line 46
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 47
    .line 48
    .line 49
    sput-object v1, Lcom/inmobi/media/x2;->j:Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    sget-object v1, Lcom/inmobi/media/u2;->a:Lcom/inmobi/media/u2;

    .line 52
    .line 53
    sput-object v1, Lcom/inmobi/media/x2;->k:Lcom/inmobi/media/u2;

    .line 54
    .line 55
    sget-object v1, Lcom/inmobi/media/v2;->a:Lcom/inmobi/media/v2;

    .line 56
    .line 57
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Lcom/inmobi/media/x2;->l:Lms/i;

    .line 62
    .line 63
    const-string v1, "TAG"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lub/i8;

    .line 69
    .line 70
    invoke-direct {v0}, Lub/i8;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lcom/inmobi/media/Uc;->a(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/inmobi/media/w2;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/inmobi/media/w2;-><init>()V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/inmobi/media/x2;->m:Lcom/inmobi/media/w2;

    .line 82
    .line 83
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

.method public static final a(Lcom/inmobi/media/x2;Lcom/inmobi/media/l2;)Ljava/util/HashMap;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 3
    :try_start_0
    sget-object v0, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget p1, p1, Lcom/inmobi/media/l2;->f:I

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    if-lez v0, :cond_1

    .line 5
    const-string p1, "X-im-retry-count"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    const-string p1, "x2"

    const-string v0, "TAG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object p0
.end method

.method public static final a()V
    .locals 13

    .line 9
    const-string v0, "pingHandlerThread"

    const-string v1, "TAG"

    const-string v2, "x2"

    sget-object v3, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    .line 10
    :try_start_0
    new-instance v12, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 11
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v10}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v11, Lcom/inmobi/media/K5;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v11, v2}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x5

    const/4 v6, 0x5

    const-wide/16 v7, 0x5

    move-object v4, v12

    .line 12
    invoke-direct/range {v4 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 v4, 0x1

    .line 13
    invoke-virtual {v12, v4}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 14
    sput-object v12, Lcom/inmobi/media/x2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 15
    new-instance v5, Landroid/os/HandlerThread;

    invoke-direct {v5, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v5, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    .line 16
    invoke-static {v5, v0}, Lcom/inmobi/media/D4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/inmobi/media/p2;

    sget-object v5, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    const-string v6, "getLooper(...)"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v5}, Lcom/inmobi/media/p2;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/media/x2;->c:Lcom/inmobi/media/p2;

    .line 18
    sget-object v0, Lcom/inmobi/media/O2;->a:Ljava/util/LinkedHashMap;

    .line 19
    const-string v0, "ads"

    .line 20
    invoke-static {}, Lcom/inmobi/media/Uc;->b()Ljava/lang/String;

    move-result-object v5

    .line 21
    invoke-static {v0, v5, v3}, Lcom/inmobi/media/M2;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/N2;)Lcom/inmobi/commons/core/configs/Config;

    move-result-object v0

    const-string v3, "null cannot be cast to non-null type com.inmobi.commons.core.configs.AdConfig"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/commons/core/configs/AdConfig;

    .line 22
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig;->getImaiConfig()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    move-result-object v0

    sput-object v0, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    .line 23
    invoke-static {}, Lcom/inmobi/media/Uc;->f()Lcom/inmobi/media/H7;

    move-result-object v0

    const/16 v3, 0xa

    const/16 v5, 0xb

    const/4 v6, 0x2

    .line 24
    filled-new-array {v3, v5, v6, v4}, [I

    move-result-object v3

    .line 25
    sget-object v4, Lcom/inmobi/media/x2;->k:Lcom/inmobi/media/u2;

    .line 26
    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/H7;->a([ILkotlin/jvm/functions/Function1;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    :catch_0
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static a(Lcom/inmobi/media/l2;Lcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    .locals 4

    .line 55
    sget-object v0, Lcom/inmobi/media/x2;->c:Lcom/inmobi/media/p2;

    if-nez v0, :cond_0

    goto :goto_0

    .line 56
    :cond_0
    iput-object p2, v0, Lcom/inmobi/media/p2;->a:Lcom/inmobi/media/z5;

    :goto_0
    if-eqz p2, :cond_1

    .line 57
    const-string v0, "x2"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p2

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "x2"

    const-string v2, "record Click"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_1
    sget-object v0, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v0, :cond_3

    .line 59
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    move-result-object v1

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxDbEvents()I

    move-result v0

    monitor-enter v1

    .line 60
    :try_start_0
    const-string v2, "click"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x3f

    const/4 v3, 0x0

    .line 61
    invoke-static {v1, v3, v3, v2}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v2

    if-lt v2, v0, :cond_2

    .line 62
    const-string v0, "m2"

    const-string v2, "TAG"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    const-string v0, "ts= (SELECT MIN(ts) FROM click LIMIT 1)"

    .line 64
    invoke-virtual {v1, v0, v3}, Lcom/inmobi/media/T1;->b(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    check-cast v0, Lcom/inmobi/media/l2;

    if-eqz v0, :cond_2

    .line 66
    const-string v2, "m2"

    const-string v3, "TAG"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v2, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    const-string v3, "DB_OVERLOAD"

    invoke-virtual {v2, p0, v3}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/l2;Ljava/lang/String;)V

    .line 68
    const-string v2, "click"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    iget v0, v0, Lcom/inmobi/media/l2;->a:I

    .line 70
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 71
    const-string v2, "id = ?"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 72
    :cond_2
    :goto_1
    invoke-virtual {v1, p0}, Lcom/inmobi/media/T1;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    if-eqz p1, :cond_3

    .line 73
    sget-object v0, Lcom/inmobi/media/x2;->j:Ljava/util/LinkedHashMap;

    .line 74
    iget v1, p0, Lcom/inmobi/media/l2;->a:I

    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 76
    :goto_2
    monitor-exit v1

    throw p0

    :cond_3
    :goto_3
    const/4 p1, 0x0

    .line 77
    invoke-static {p1}, Lcom/inmobi/media/T9;->a(Z)Lcom/inmobi/media/o4;

    move-result-object v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    .line 78
    const-string p0, "x2"

    const-string v0, "TAG"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/inmobi/media/A5;

    const-string p0, "x2"

    const-string v0, "No network available. Saving click for later processing ..."

    invoke-virtual {p2, p0, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_4
    sget-object p0, Lcom/inmobi/media/x2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    invoke-static {}, Lcom/inmobi/media/x2;->i()V

    goto :goto_4

    :cond_5
    if-eqz p2, :cond_6

    .line 81
    const-string p1, "x2"

    .line 82
    const-string v0, "TAG"

    const-string v1, "submit click - "

    invoke-static {p1, v0, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 83
    iget v1, p0, Lcom/inmobi/media/l2;->a:I

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, p1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_6
    sget-object p1, Lcom/inmobi/media/x2;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz p1, :cond_7

    new-instance v0, Lub/k8;

    invoke-direct {v0, p0, p2}, Lub/k8;-><init>(Lcom/inmobi/media/l2;Lcom/inmobi/media/z5;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_7
    :goto_4
    return-void
.end method

.method public static final a(Lcom/inmobi/media/l2;Lcom/inmobi/media/z5;)V
    .locals 3

    const-string v0, "$click"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 87
    iget-boolean v0, p0, Lcom/inmobi/media/l2;->e:Z

    const-string v1, "TAG"

    const-string v2, "x2"

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 88
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "ping in web view"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :cond_0
    new-instance v0, Lcom/inmobi/media/r2;

    sget-object v1, Lcom/inmobi/media/x2;->m:Lcom/inmobi/media/w2;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/media/r2;-><init>(Lcom/inmobi/media/t2;Lcom/inmobi/media/z5;)V

    invoke-virtual {v0, p0}, Lcom/inmobi/media/r2;->a(Lcom/inmobi/media/l2;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 90
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "ping in http executor"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_2
    new-instance v0, Lcom/inmobi/media/s2;

    sget-object v1, Lcom/inmobi/media/x2;->m:Lcom/inmobi/media/w2;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/media/s2;-><init>(Lcom/inmobi/media/t2;Lcom/inmobi/media/z5;)V

    invoke-virtual {v0, p0}, Lcom/inmobi/media/s2;->a(Lcom/inmobi/media/l2;)V

    :goto_0
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/x2;)V
    .locals 0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/inmobi/media/x2;->i()V

    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/x2;Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/Ta;Lcom/inmobi/media/z5;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p7, 0x8

    if-eqz p7, :cond_0

    const/4 p4, 0x0

    :cond_0
    move-object v4, p4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    .line 42
    invoke-virtual/range {v0 .. v6}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/Ta;Lcom/inmobi/media/z5;)V

    return-void
.end method

.method public static synthetic a(Lcom/inmobi/media/x2;Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 30
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V
    .locals 13

    move-object v0, p0

    move-object/from16 v8, p3

    const-string v9, "TAG"

    const-string v10, "x2"

    const-string v11, "Received click ("

    const-string v1, "$url"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    :try_start_0
    sget-object v1, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    invoke-virtual {v1}, Lcom/inmobi/media/x2;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 45
    sget-object v1, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    new-instance v12, Lcom/inmobi/media/l2;

    add-int/lit8 v6, v1, 0x1

    const/4 v5, 0x0

    const/16 v7, 0xc1

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/media/l2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz v8, :cond_1

    .line 47
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") for pinging over HTTP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v8

    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, v10, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object/from16 v0, p4

    .line 48
    invoke-static {v12, v0, v8}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/l2;Lcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    if-eqz v8, :cond_2

    .line 49
    const-string v1, "SDK encountered unexpected error in pinging click; "

    invoke-static {v10, v9, v1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    .line 51
    move-object v2, v8

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v10, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 53
    const-string v1, "event"

    invoke-static {v0, v1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object v0

    .line 54
    sget-object v1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v1, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final a(Ljava/lang/String;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "x2"

    const-string v2, "Received click ("

    const-string v3, "$url"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    :try_start_0
    sget-object v3, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    invoke-virtual {v3}, Lcom/inmobi/media/x2;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 35
    sget-object v3, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 36
    :goto_0
    new-instance v11, Lcom/inmobi/media/l2;

    add-int/lit8 v9, v3, 0x1

    const/4 v8, 0x0

    const/16 v10, 0xc5

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/l2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz p2, :cond_1

    .line 37
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for pinging over HTTP"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_1
    invoke-static {v11, p3, p2}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/l2;Lcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    if-eqz p2, :cond_2

    .line 39
    const-string p1, "SDK encountered unexpected error in pinging click; "

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 41
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v1, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static final synthetic a(Ljava/util/List;)V
    .locals 0

    .line 7
    sput-object p0, Lcom/inmobi/media/x2;->e:Ljava/util/List;

    return-void
.end method

.method public static final synthetic b()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/x2;->e:Ljava/util/List;

    return-object v0
.end method

.method public static final b(Lcom/inmobi/media/x2;Lcom/inmobi/media/l2;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    sget-object p0, Lcom/inmobi/media/x2;->j:Ljava/util/LinkedHashMap;

    .line 4
    iget v0, p1, Lcom/inmobi/media/l2;->a:I

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/Z1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Z1;->a(Lcom/inmobi/media/l2;)V

    .line 6
    :cond_0
    iget p1, p1, Lcom/inmobi/media/l2;->a:I

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic b(Lcom/inmobi/media/x2;Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/inmobi/media/x2;->b(Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V

    return-void
.end method

.method public static final b(Ljava/lang/String;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "x2"

    const-string v2, "Received click ("

    const-string v3, "$url"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    sget-object v3, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    invoke-virtual {v3}, Lcom/inmobi/media/x2;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    new-instance v11, Lcom/inmobi/media/l2;

    add-int/lit8 v9, v3, 0x1

    const/4 v8, 0x0

    const/16 v10, 0xc5

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/l2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz p2, :cond_1

    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for pinging over HTTP"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    :cond_1
    invoke-static {v11, p3, p2}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/l2;Lcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    if-eqz p2, :cond_2

    .line 17
    const-string p1, "SDK encountered unexpected error in pinging click; "

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 18
    invoke-static {p0, p1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 19
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v1, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static final synthetic c()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    return-object v0
.end method

.method public static final c(Lcom/inmobi/media/x2;Lcom/inmobi/media/l2;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    iget p0, p1, Lcom/inmobi/media/l2;->f:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    .line 4
    iput p0, p1, Lcom/inmobi/media/l2;->f:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 6
    iput-wide v0, p1, Lcom/inmobi/media/l2;->g:J

    .line 7
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget v0, p1, Lcom/inmobi/media/l2;->a:I

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 11
    const-string v1, "id = ?"

    invoke-virtual {p0, p1, v1, v0}, Lcom/inmobi/media/T1;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final c(Ljava/lang/String;ZLcom/inmobi/media/z5;)V
    .locals 12

    const-string v0, "TAG"

    const-string v1, "x2"

    const-string v2, "Received click ("

    const-string v3, "$url"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    sget-object v3, Lcom/inmobi/media/x2;->a:Lcom/inmobi/media/x2;

    invoke-virtual {v3}, Lcom/inmobi/media/x2;->g()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    sget-object v3, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;->getMaxRetries()I

    move-result v3

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 14
    :goto_0
    new-instance v11, Lcom/inmobi/media/l2;

    add-int/lit8 v9, v3, 0x1

    const/4 v8, 0x1

    const/16 v10, 0xc5

    const/4 v6, 0x0

    move-object v4, v11

    move-object v5, p0

    move v7, p1

    invoke-direct/range {v4 .. v10}, Lcom/inmobi/media/l2;-><init>(Ljava/lang/String;Ljava/util/Map;ZZII)V

    if-eqz p2, :cond_1

    .line 15
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") for pinging in WebView"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 16
    move-object p1, p2

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, p0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    .line 17
    invoke-static {v11, p0, p2}, Lcom/inmobi/media/x2;->a(Lcom/inmobi/media/l2;Lcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    if-eqz p2, :cond_2

    .line 18
    const-string p1, "SDK encountered unexpected error in pinging click over WebView; "

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 19
    invoke-static {p0, p1}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p0

    .line 20
    check-cast p2, Lcom/inmobi/media/A5;

    invoke-virtual {p2, v1, p0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public static final synthetic d()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/x2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/x2;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "x2"

    .line 2
    .line 3
    return-object v0
.end method

.method public static i()V
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lcom/inmobi/media/x2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/x2;->i:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 34
    sput-object v0, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    .line 35
    .line 36
    sput-object v0, Lcom/inmobi/media/x2;->c:Lcom/inmobi/media/p2;

    .line 37
    .line 38
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 39
    .line 40
    :try_start_2
    monitor-exit v1

    .line 41
    goto :goto_2

    .line 42
    :goto_1
    monitor-exit v1

    .line 43
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 44
    :catch_0
    const-string v0, "x2"

    .line 45
    .line 46
    const-string v1, "TAG"

    .line 47
    .line 48
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_2
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/Config;)V
    .locals 2
    .param p1    # Lcom/inmobi/commons/core/configs/Config;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    instance-of v0, p1, Lcom/inmobi/commons/core/configs/AdConfig;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/inmobi/commons/core/configs/AdConfig;

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/AdConfig;->getImaiConfig()Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    move-result-object v1

    :cond_1
    sput-object v1, Lcom/inmobi/media/x2;->g:Lcom/inmobi/commons/core/configs/AdConfig$ImaiConfig;

    return-void
.end method

.method public final a(Lcom/inmobi/media/l2;Ljava/lang/String;)V
    .locals 2
    .param p1    # Lcom/inmobi/media/l2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "error"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/inmobi/media/x2;->j:Ljava/util/LinkedHashMap;

    .line 93
    iget v1, p1, Lcom/inmobi/media/l2;->a:I

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/Z1;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/media/Z1;->a(Lcom/inmobi/media/l2;Ljava/lang/String;)V

    .line 95
    :cond_0
    iget p1, p1, Lcom/inmobi/media/l2;->a:I

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/Ta;Lcom/inmobi/media/z5;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/media/Z1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/inmobi/media/Ta;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z",
            "Lcom/inmobi/media/Z1;",
            "Lcom/inmobi/media/Ta;",
            "Lcom/inmobi/media/z5;",
            ")V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "priority"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/inmobi/media/y2;->a:Lcom/inmobi/media/Ua;

    new-instance v0, Lub/g8;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p6

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lub/g8;-><init>(Ljava/lang/String;Ljava/util/Map;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V

    invoke-static {v0, p5}, Lcom/inmobi/media/y2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/Ta;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/Z1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lcom/inmobi/media/y2;->a:Lcom/inmobi/media/Ua;

    new-instance v0, Lub/f8;

    invoke-direct {v0, p1, p2, p4, p3}, Lub/f8;-><init>(Ljava/lang/String;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V

    .line 32
    sget-object p1, Lcom/inmobi/media/Ta;->c:Lcom/inmobi/media/Ta;

    .line 33
    invoke-static {v0, p1}, Lcom/inmobi/media/y2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/Ta;)V

    return-void
.end method

.method public final a(Ljava/lang/String;ZLcom/inmobi/media/z5;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 29
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/inmobi/media/x2;->a(Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V

    return-void
.end method

.method public final b(Ljava/lang/String;ZLcom/inmobi/media/Z1;Lcom/inmobi/media/z5;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/Z1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    sget-object v0, Lcom/inmobi/media/y2;->a:Lcom/inmobi/media/Ua;

    new-instance v0, Lub/h8;

    invoke-direct {v0, p1, p2, p4, p3}, Lub/h8;-><init>(Ljava/lang/String;ZLcom/inmobi/media/z5;Lcom/inmobi/media/Z1;)V

    .line 10
    sget-object p1, Lcom/inmobi/media/Ta;->b:Lcom/inmobi/media/Ta;

    .line 11
    invoke-static {v0, p1}, Lcom/inmobi/media/y2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/Ta;)V

    return-void
.end method

.method public final b(Ljava/lang/String;ZLcom/inmobi/media/z5;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/z5;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/inmobi/media/y2;->a:Lcom/inmobi/media/Ua;

    new-instance v0, Lub/j8;

    invoke-direct {v0, p1, p2, p3}, Lub/j8;-><init>(Ljava/lang/String;ZLcom/inmobi/media/z5;)V

    .line 21
    sget-object p1, Lcom/inmobi/media/Ta;->c:Lcom/inmobi/media/Ta;

    .line 22
    invoke-static {v0, p1}, Lcom/inmobi/media/y2;->a(Ljava/lang/Runnable;Lcom/inmobi/media/Ta;)V

    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/x2;->l:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final h()V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {v0}, Lcom/inmobi/media/T9;->a(Z)Lcom/inmobi/media/o4;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget-object v1, Lcom/inmobi/media/x2;->i:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    :try_start_1
    sget-object v2, Lcom/inmobi/media/x2;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v2, v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 16
    .line 17
    .line 18
    move-result v4

    .line 19
    if-eqz v4, :cond_5

    .line 20
    .line 21
    const-string v4, "x2"

    .line 22
    .line 23
    const-string v5, "TAG"

    .line 24
    .line 25
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v4, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    .line 29
    .line 30
    if-nez v4, :cond_1

    .line 31
    .line 32
    new-instance v4, Landroid/os/HandlerThread;

    .line 33
    .line 34
    const-string v5, "pingHandlerThread"

    .line 35
    .line 36
    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v4, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    .line 40
    .line 41
    const-string v5, "pingHandlerThread"

    .line 42
    .line 43
    invoke-static {v4, v5}, Lcom/inmobi/media/D4;->a(Ljava/lang/Thread;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    goto :goto_3

    .line 49
    :cond_1
    :goto_0
    sget-object v4, Lcom/inmobi/media/x2;->c:Lcom/inmobi/media/p2;

    .line 50
    .line 51
    if-nez v4, :cond_2

    .line 52
    .line 53
    sget-object v4, Lcom/inmobi/media/x2;->d:Landroid/os/HandlerThread;

    .line 54
    .line 55
    if-eqz v4, :cond_2

    .line 56
    .line 57
    new-instance v5, Lcom/inmobi/media/p2;

    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    const-string v6, "getLooper(...)"

    .line 64
    .line 65
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {v5, v4}, Lcom/inmobi/media/p2;-><init>(Landroid/os/Looper;)V

    .line 69
    .line 70
    .line 71
    sput-object v5, Lcom/inmobi/media/x2;->c:Lcom/inmobi/media/p2;

    .line 72
    .line 73
    :cond_2
    invoke-static {}, Lcom/inmobi/media/Nc;->b()Lcom/inmobi/media/m2;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    if-eqz v4, :cond_4

    .line 78
    .line 79
    const/16 v5, 0x3f

    .line 80
    .line 81
    const/4 v6, 0x0

    .line 82
    invoke-static {v4, v6, v6, v5}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput v3, v0, Landroid/os/Message;->what:I

    .line 94
    .line 95
    sget-object v2, Lcom/inmobi/media/x2;->c:Lcom/inmobi/media/p2;

    .line 96
    .line 97
    if-eqz v2, :cond_5

    .line 98
    .line 99
    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_4
    :goto_1
    const-string v3, "x2"

    .line 104
    .line 105
    const-string v4, "TAG"

    .line 106
    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/inmobi/media/x2;->i()V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    .line 118
    :try_start_2
    monitor-exit v1

    .line 119
    goto :goto_4

    .line 120
    :goto_3
    monitor-exit v1

    .line 121
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 122
    :catch_0
    const-string v0, "x2"

    .line 123
    .line 124
    const-string v1, "TAG"

    .line 125
    .line 126
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_4
    return-void
.end method
