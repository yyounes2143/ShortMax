.class public final Lcom/inmobi/media/Ab;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:J

.field public final c:I

.field public d:Z

.field public final e:Lcom/inmobi/media/c7;

.field public final f:Lcom/inmobi/media/Pc;

.field public final g:Ljava/util/List;

.field public final h:Ljava/util/concurrent/ConcurrentHashMap;

.field public final i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public j:Ljava/lang/String;

.field public final k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Landroid/content/Context;DLcom/inmobi/media/a7;JIZ)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "logLevel"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/Ab;->a:Landroid/content/Context;

    .line 15
    .line 16
    iput-wide p5, p0, Lcom/inmobi/media/Ab;->b:J

    .line 17
    .line 18
    iput p7, p0, Lcom/inmobi/media/Ab;->c:I

    .line 19
    .line 20
    iput-boolean p8, p0, Lcom/inmobi/media/Ab;->d:Z

    .line 21
    .line 22
    new-instance p1, Lcom/inmobi/media/c7;

    .line 23
    .line 24
    invoke-direct {p1, p4}, Lcom/inmobi/media/c7;-><init>(Lcom/inmobi/media/a7;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/inmobi/media/Ab;->e:Lcom/inmobi/media/c7;

    .line 28
    .line 29
    new-instance p1, Lcom/inmobi/media/Pc;

    .line 30
    .line 31
    invoke-direct {p1, p2, p3}, Lcom/inmobi/media/Pc;-><init>(D)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/inmobi/media/Ab;->f:Lcom/inmobi/media/Pc;

    .line 35
    .line 36
    new-instance p1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    iput-object p1, p0, Lcom/inmobi/media/Ab;->g:Ljava/util/List;

    .line 46
    .line 47
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lcom/inmobi/media/Ab;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    .line 54
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    .line 56
    const/4 p2, 0x0

    .line 57
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 58
    .line 59
    .line 60
    iput-object p1, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    const-string p1, ""

    .line 63
    .line 64
    iput-object p1, p0, Lcom/inmobi/media/Ab;->j:Ljava/lang/String;

    .line 65
    .line 66
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Lcom/inmobi/media/Ab;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 72
    .line 73
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ab;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/inmobi/media/Ab;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 31
    iget-object v0, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    sget-object v0, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/inmobi/media/zb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/inmobi/media/zb;-><init>(Lcom/inmobi/media/Ab;Z)V

    invoke-static {v0}, Lcom/inmobi/media/k7;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    .line 33
    invoke-static {p0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 34
    :try_start_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/Ab;Lcom/inmobi/media/a7;Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/media/Ab;->e:Lcom/inmobi/media/c7;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const-string v1, "eventLogLevel"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, v0, Lcom/inmobi/media/c7;->a:Lcom/inmobi/media/a7;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 15
    sget-object v0, Lcom/inmobi/media/a7;->d:Lcom/inmobi/media/a7;

    if-ne p1, v0, :cond_4

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 16
    :cond_1
    sget-object v0, Lcom/inmobi/media/a7;->c:Lcom/inmobi/media/a7;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/inmobi/media/a7;->d:Lcom/inmobi/media/a7;

    if-ne p1, v0, :cond_4

    goto :goto_0

    .line 17
    :cond_2
    sget-object v0, Lcom/inmobi/media/a7;->b:Lcom/inmobi/media/a7;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/inmobi/media/a7;->c:Lcom/inmobi/media/a7;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/inmobi/media/a7;->d:Lcom/inmobi/media/a7;

    if-ne p1, v0, :cond_4

    .line 18
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/Ab;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 19
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    sget-object p0, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 21
    const-string p0, "event"

    invoke-static {p1, p0}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 22
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public static final b(Lcom/inmobi/media/Ab;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    sget-object v0, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/inmobi/media/zb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/media/zb;-><init>(Lcom/inmobi/media/Ab;Z)V

    invoke-static {v0}, Lcom/inmobi/media/k7;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 12
    :try_start_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    iget-boolean v0, p0, Lcom/inmobi/media/Ab;->d:Z

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/inmobi/media/Ab;->f:Lcom/inmobi/media/Pc;

    invoke-virtual {v0}, Lcom/inmobi/media/Pc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 27
    sget-object v0, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lub/g;

    invoke-direct {v0, p0}, Lub/g;-><init>(Lcom/inmobi/media/Ab;)V

    const-string v1, "runnable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    sget-object v1, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 29
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/a7;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "logLevel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "tag"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "message"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v3, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v3, Lcom/inmobi/media/d7;->a:Ljava/text/SimpleDateFormat;

    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "scope"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 6
    sget-object v2, Lcom/inmobi/media/d7;->a:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 7
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string p2, "data"

    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    sget-object p2, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lub/h;

    invoke-direct {p2, p0, p1, v0}, Lub/h;-><init>(Lcom/inmobi/media/Ab;Lcom/inmobi/media/a7;Lorg/json/JSONObject;)V

    const-string p1, "runnable"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object p1, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 11
    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    iget-boolean v0, p0, Lcom/inmobi/media/Ab;->d:Z

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/Ab;->f:Lcom/inmobi/media/Pc;

    invoke-virtual {v0}, Lcom/inmobi/media/Pc;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Ab;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    sget-object v0, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lub/i;

    invoke-direct {v0, p0}, Lub/i;-><init>(Lcom/inmobi/media/Ab;)V

    const-string v1, "runnable"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v1, Lcom/inmobi/media/l7;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 7
    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_1
    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "vitals"

    .line 7
    .line 8
    new-instance v2, Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v3, p0, Lcom/inmobi/media/Ab;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 14
    .line 15
    monitor-enter v3

    .line 16
    :try_start_0
    iget-object v4, p0, Lcom/inmobi/media/Ab;->h:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    if-eqz v5, :cond_0

    .line 31
    .line 32
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    check-cast v5, Ljava/util/Map$Entry;

    .line 37
    .line 38
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    check-cast v6, Ljava/lang/String;

    .line 43
    .line 44
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v0

    .line 53
    goto :goto_1

    .line 54
    :cond_0
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    monitor-exit v3

    .line 57
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/inmobi/media/Ab;->d()Lorg/json/JSONArray;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const-string v2, "log"

    .line 65
    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "toString(...)"

    .line 74
    .line 75
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-object v0

    .line 79
    :goto_1
    monitor-exit v3

    .line 80
    throw v0
.end method

.method public final d()Lorg/json/JSONArray;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONArray;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/inmobi/media/Ab;->g:Ljava/util/List;

    .line 7
    .line 8
    const-string v2, "logData"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/media/Ab;->g:Ljava/util/List;

    .line 15
    .line 16
    const-string v3, "logData"

    .line 17
    .line 18
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    .line 45
    monitor-exit v1

    .line 46
    return-object v0

    .line 47
    :goto_1
    monitor-exit v1

    .line 48
    throw v0
.end method
