.class public final Lio/bidmachine/analytics/internal/G;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/G$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/J;

.field private final b:Lio/bidmachine/analytics/internal/K;

.field private final c:Lgt/g0;

.field private d:Lkotlinx/coroutines/r;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/K;Lgt/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/G;->a:Lio/bidmachine/analytics/internal/J;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/analytics/internal/G;->b:Lio/bidmachine/analytics/internal/K;

    .line 7
    .line 8
    iput-object p3, p0, Lio/bidmachine/analytics/internal/G;->c:Lgt/g0;

    .line 9
    .line 10
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/G;)Lio/bidmachine/analytics/internal/K;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/G;->b:Lio/bidmachine/analytics/internal/K;

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/G;Ljava/lang/String;Lkotlin/sequences/Sequence;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/G;->a(Ljava/lang/String;Lkotlin/sequences/Sequence;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Lkotlin/sequences/Sequence;)V
    .locals 2

    .line 5
    invoke-interface {p2}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 6
    :goto_0
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/G;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G;->a:Lio/bidmachine/analytics/internal/J;

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lio/bidmachine/analytics/internal/J;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final b()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G;->d:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    :goto_0
    return v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 8
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G;->d:Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 9
    :cond_0
    iput-object v1, p0, Lio/bidmachine/analytics/internal/G;->d:Lkotlinx/coroutines/r;

    .line 10
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G;->b:Lio/bidmachine/analytics/internal/K;

    .line 11
    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 13
    iget-object v1, p0, Lio/bidmachine/analytics/internal/G;->b:Lio/bidmachine/analytics/internal/K;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/K;->a()V

    .line 14
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 16
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 9

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/G;->d:Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v3, p0, Lio/bidmachine/analytics/internal/G;->c:Lgt/g0;

    new-instance v6, Lio/bidmachine/analytics/internal/G$b;

    invoke-direct {v6, p0, p1, v1}, Lio/bidmachine/analytics/internal/G$b;-><init>(Lio/bidmachine/analytics/internal/G;Ljava/lang/String;Lrs/c;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/G;->d:Lkotlinx/coroutines/r;

    return-void
.end method
