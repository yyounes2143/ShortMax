.class public final Lcom/inmobi/media/t4;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/r4;

.field public final b:Lcom/inmobi/media/va;

.field public final c:Lcom/inmobi/media/Db;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/LinkedList;

.field public h:Ljava/util/concurrent/ScheduledExecutorService;

.field public i:Lcom/inmobi/media/q4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/r4;Lcom/inmobi/media/va;Lcom/inmobi/media/q4;Lcom/inmobi/media/Db;)V
    .locals 1

    .line 1
    const-string v0, "mEventDao"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mPayloadProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "eventConfig"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/inmobi/media/t4;->b:Lcom/inmobi/media/va;

    .line 22
    .line 23
    iput-object p4, p0, Lcom/inmobi/media/t4;->c:Lcom/inmobi/media/Db;

    .line 24
    .line 25
    const-class p1, Lcom/inmobi/media/t4;

    .line 26
    .line 27
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/inmobi/media/t4;->d:Ljava/lang/String;

    .line 32
    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    .line 35
    const/4 p2, 0x0

    .line 36
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/inmobi/media/t4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    new-instance p1, Ljava/util/LinkedList;

    .line 49
    .line 50
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/inmobi/media/t4;->g:Ljava/util/LinkedList;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 56
    .line 57
    return-void
.end method

.method public static final a(Lcom/inmobi/media/t4;Lcom/inmobi/media/ue;Z)V
    .locals 17

    move-object/from16 v7, p0

    const-string v0, "this$0"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, v7, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 22
    iget-object v1, v7, Lcom/inmobi/media/t4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v7, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 23
    :cond_0
    iget-object v1, v7, Lcom/inmobi/media/t4;->d:Ljava/lang/String;

    const-string v2, "TAG"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v1, v7, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    .line 25
    iget-wide v3, v0, Lcom/inmobi/media/q4;->b:J

    .line 26
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v8, 0x3e8

    int-to-long v8, v8

    mul-long/2addr v3, v8

    sub-long/2addr v5, v3

    .line 28
    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    .line 29
    const-string v4, "ts<?"

    invoke-virtual {v1, v4, v3}, Lcom/inmobi/media/T1;->a(Ljava/lang/String;[Ljava/lang/String;)I

    .line 30
    const-string v1, "r4"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v3, v7, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0x3f

    const/4 v5, 0x0

    .line 32
    invoke-static {v3, v5, v5, v4}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v3

    .line 33
    sget-object v4, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v4}, Lcom/inmobi/media/L3;->p()I

    move-result v4

    .line 34
    iget-object v5, v7, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    const/4 v6, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_1

    move v9, v6

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    .line 35
    iget v9, v5, Lcom/inmobi/media/q4;->g:I

    goto :goto_0

    .line 36
    :cond_2
    iget v9, v5, Lcom/inmobi/media/q4;->e:I

    goto :goto_0

    .line 37
    :cond_3
    iget v9, v5, Lcom/inmobi/media/q4;->g:I

    :goto_0
    if-nez v5, :cond_4

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_6

    if-eq v4, v8, :cond_5

    .line 38
    iget-wide v4, v5, Lcom/inmobi/media/q4;->j:J

    goto :goto_1

    .line 39
    :cond_5
    iget-wide v4, v5, Lcom/inmobi/media/q4;->i:J

    goto :goto_1

    .line 40
    :cond_6
    iget-wide v4, v5, Lcom/inmobi/media/q4;->j:J

    .line 41
    :goto_1
    iget-object v10, v7, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    .line 42
    iget-wide v11, v0, Lcom/inmobi/media/q4;->d:J

    .line 43
    invoke-virtual {v10, v8}, Lcom/inmobi/media/r4;->b(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 44
    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_7

    .line 45
    sget-object v13, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v10, Lcom/inmobi/media/U1;

    move/from16 v16, v9

    .line 47
    iget-wide v8, v10, Lcom/inmobi/media/U1;->b:J

    sub-long/2addr v14, v8

    .line 48
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v8

    cmp-long v8, v8, v11

    if-lez v8, :cond_8

    const/4 v8, 0x1

    goto :goto_2

    :cond_7
    move/from16 v16, v9

    :cond_8
    move v8, v6

    .line 49
    :goto_2
    iget-object v9, v7, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    .line 50
    iget-wide v10, v0, Lcom/inmobi/media/q4;->c:J

    .line 51
    iget-wide v12, v0, Lcom/inmobi/media/q4;->d:J

    .line 52
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v1, v14, v15}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v14

    add-long/2addr v14, v10

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v9, v2}, Lcom/inmobi/media/r4;->b(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 56
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 57
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Lcom/inmobi/media/U1;

    .line 58
    iget-wide v9, v2, Lcom/inmobi/media/U1;->b:J

    .line 59
    invoke-virtual {v1, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    sub-long/2addr v14, v1

    cmp-long v1, v14, v12

    if-ltz v1, :cond_9

    move/from16 v9, v16

    const/4 v6, 0x1

    goto :goto_3

    :cond_9
    move/from16 v9, v16

    :goto_3
    if-le v9, v3, :cond_a

    if-nez v8, :cond_a

    if-eqz v6, :cond_b

    .line 60
    :cond_a
    iget-object v1, v7, Lcom/inmobi/media/t4;->b:Lcom/inmobi/media/va;

    invoke-interface {v1}, Lcom/inmobi/media/va;->a()Lcom/inmobi/media/s4;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 61
    iget-object v2, v7, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    sget-object v2, Lcom/inmobi/media/v4;->a:Lms/i;

    .line 63
    iget-object v2, v0, Lcom/inmobi/media/q4;->k:Ljava/lang/String;

    .line 64
    iget v0, v0, Lcom/inmobi/media/q4;->a:I

    add-int/2addr v3, v0

    .line 65
    const-string v0, "payload"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v1

    move-object v1, v2

    move v2, v3

    move-object/from16 v6, p1

    move-object/from16 v7, p0

    move/from16 v8, p2

    .line 66
    invoke-static/range {v0 .. v8}, Lcom/inmobi/media/v4;->a(Lcom/inmobi/media/s4;Ljava/lang/String;IIJLcom/inmobi/media/ue;Lcom/inmobi/media/t4;Z)V

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public final a(JZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t4;->g:Ljava/util/LinkedList;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/t4;->g:Ljava/util/LinkedList;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    const-string v1, "TAG"

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/inmobi/media/K5;

    iget-object v2, p0, Lcom/inmobi/media/t4;->d:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/inmobi/media/K5;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/t4;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/t4;->h:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_4

    new-instance v3, Lub/q6;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0, p3}, Lub/q6;-><init>(Lcom/inmobi/media/t4;Lcom/inmobi/media/ue;Z)V

    .line 7
    iget-object p3, p0, Lcom/inmobi/media/t4;->i:Lcom/inmobi/media/q4;

    .line 8
    iget-object v0, p0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v4, -0x1

    if-nez v1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    sget-object v6, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "batch_processing_info"

    invoke-static {v1, v6}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v1

    .line 11
    iget-object v0, v0, Lcom/inmobi/media/T1;->a:Ljava/lang/String;

    .line 12
    const-string v6, "_last_batch_process"

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    const-string v6, "key"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v1, v1, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    :goto_0
    long-to-int v0, v4

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 15
    iget-object v0, p0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/inmobi/media/r4;->a(J)V

    .line 16
    :cond_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    if-eqz p3, :cond_3

    .line 17
    iget-wide v8, p3, Lcom/inmobi/media/q4;->c:J

    goto :goto_1

    :cond_3
    move-wide v8, v6

    :goto_1
    add-long/2addr v4, v8

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    sub-long/2addr v4, v0

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 19
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, p1

    .line 20
    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    return-void
.end method

.method public final a(Lcom/inmobi/media/s4;Z)V
    .locals 2

    const-string p2, "eventPayload"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    iget-object p2, p0, Lcom/inmobi/media/t4;->d:Ljava/lang/String;

    const-string v0, "TAG"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    iget-object p2, p0, Lcom/inmobi/media/t4;->a:Lcom/inmobi/media/r4;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/media/r4;->a(J)V

    .line 70
    iget-object p2, p0, Lcom/inmobi/media/t4;->c:Lcom/inmobi/media/Db;

    if-eqz p2, :cond_0

    .line 71
    iget-object p1, p1, Lcom/inmobi/media/s4;->a:Ljava/util/ArrayList;

    .line 72
    const-string p2, "eventIds"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    sget-object p2, Lcom/inmobi/media/Ud;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 76
    sput-object p1, Lcom/inmobi/media/Ud;->c:Ljava/lang/Integer;

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/t4;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
