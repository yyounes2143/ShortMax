.class public final Lio/bidmachine/analytics/internal/X;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/X$b;,
        Lio/bidmachine/analytics/internal/X$a;
    }
.end annotation


# static fields
.field public static final g:Lio/bidmachine/analytics/internal/X$a;


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/X$b;

.field private final b:Lio/bidmachine/analytics/internal/V;

.field private final c:Ljava/lang/String;

.field private final d:Lgt/g0;

.field private e:Lkotlinx/coroutines/r;

.field private final f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/X$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/X$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/X;->g:Lio/bidmachine/analytics/internal/X$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/X$b;Lio/bidmachine/analytics/internal/V;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    .line 5
    .line 6
    iput-object p3, p0, Lio/bidmachine/analytics/internal/X;->b:Lio/bidmachine/analytics/internal/V;

    .line 7
    .line 8
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p3}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p0, Lio/bidmachine/analytics/internal/X;->c:Ljava/lang/String;

    .line 17
    .line 18
    new-instance p3, Lgt/f0;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "AnalyticsMonitor: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-direct {p3, p2}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const/4 p2, 0x0

    .line 49
    const/4 v0, 0x1

    .line 50
    invoke-static {p2, v0, p2}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p3, p2}, Lkotlin/coroutines/a;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/p0;->c()Lgt/c0;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p2, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-static {p1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    iput-object p1, p0, Lio/bidmachine/analytics/internal/X;->d:Lgt/g0;

    .line 71
    .line 72
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 76
    .line 77
    .line 78
    iput-object p1, p0, Lio/bidmachine/analytics/internal/X;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 79
    .line 80
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/X$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    return-object p0
.end method

.method private final a(ILrs/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lio/bidmachine/analytics/internal/X$g;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/X$g;

    iget v1, v0, Lio/bidmachine/analytics/internal/X$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/X$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/X$g;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/X$g;-><init>(Lio/bidmachine/analytics/internal/X;Lrs/c;)V

    :goto_0
    iget-object p2, v0, Lio/bidmachine/analytics/internal/X$g;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v1

    .line 14
    iget v2, v0, Lio/bidmachine/analytics/internal/X$g;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v5, :cond_1

    iget-object p1, v0, Lio/bidmachine/analytics/internal/X$g;->b:Ljava/lang/Object;

    iget-object v0, v0, Lio/bidmachine/analytics/internal/X$g;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/analytics/internal/X;

    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    iget-object p2, p0, Lio/bidmachine/analytics/internal/X;->b:Lio/bidmachine/analytics/internal/V;

    .line 16
    iget-object v2, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v2

    .line 17
    iget-object v6, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/X$b;->c()Ljava/lang/String;

    move-result-object v6

    .line 18
    iget-object v7, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    invoke-virtual {v7}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v7

    invoke-virtual {v7}, Lio/bidmachine/analytics/MonitorConfig;->getBatchSize()I

    move-result v7

    .line 19
    invoke-interface {p2, v2, v6, v7}, Lio/bidmachine/analytics/internal/V;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object p2

    .line 20
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, p2

    check-cast v2, Ljava/util/List;

    .line 21
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    if-lt v6, p1, :cond_3

    .line 22
    iput-object p0, v0, Lio/bidmachine/analytics/internal/X$g;->a:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/analytics/internal/X$g;->b:Ljava/lang/Object;

    iput v5, v0, Lio/bidmachine/analytics/internal/X$g;->e:I

    invoke-direct {p0, v2, v0}, Lio/bidmachine/analytics/internal/X;->a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    .line 23
    :cond_3
    invoke-static {p0, v4, v5, v3}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;ZILjava/lang/Object;)V

    :cond_4
    move-object v0, p0

    move-object p1, p2

    .line 24
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 25
    invoke-static {v0, v4, v5, v3}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/X;ZILjava/lang/Object;)V

    .line 26
    :cond_5
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_3
    return-object p1
.end method

.method private final a(Lio/bidmachine/analytics/internal/Q;)Ljava/lang/Object;
    .locals 1

    .line 12
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 13
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X;->b:Lio/bidmachine/analytics/internal/V;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/V;->a(Lio/bidmachine/analytics/internal/Q;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/X;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/X;->a(ILrs/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/X;Lio/bidmachine/analytics/internal/Q;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/X;->a(Lio/bidmachine/analytics/internal/Q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/X;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/X;->a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lio/bidmachine/analytics/internal/X$e;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/X$e;

    iget v1, v0, Lio/bidmachine/analytics/internal/X$e;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/X$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/X$e;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/X$e;-><init>(Lio/bidmachine/analytics/internal/X;Lrs/c;)V

    :goto_0
    iget-object p2, v0, Lio/bidmachine/analytics/internal/X$e;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v1

    .line 28
    iget v2, v0, Lio/bidmachine/analytics/internal/X$e;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/bidmachine/analytics/internal/X$e;->b:Ljava/lang/Object;

    iget-object v0, v0, Lio/bidmachine/analytics/internal/X$e;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/analytics/internal/X;

    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    iget-object p2, p0, Lio/bidmachine/analytics/internal/X;->b:Lio/bidmachine/analytics/internal/V;

    invoke-interface {p2, p1}, Lio/bidmachine/analytics/internal/V;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, p2

    check-cast v2, Lkotlin/Unit;

    .line 30
    iget-object v2, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v2

    invoke-virtual {v2}, Lio/bidmachine/analytics/MonitorConfig;->getBatchSize()I

    move-result v2

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->f0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 31
    new-instance v2, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {p1, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 33
    check-cast v4, Ljava/util/List;

    .line 34
    iget-object v5, p0, Lio/bidmachine/analytics/internal/X;->d:Lgt/g0;

    new-instance v8, Lio/bidmachine/analytics/internal/X$f;

    const/4 v6, 0x0

    invoke-direct {v8, p0, v4, v6}, Lio/bidmachine/analytics/internal/X$f;-><init>(Lio/bidmachine/analytics/internal/X;Ljava/util/List;Lrs/c;)V

    const/4 v9, 0x3

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    move-result-object v4

    .line 35
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_3
    iput-object p0, v0, Lio/bidmachine/analytics/internal/X$e;->a:Ljava/lang/Object;

    iput-object p2, v0, Lio/bidmachine/analytics/internal/X$e;->b:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/X$e;->e:I

    invoke-static {v2, v0}, Lkotlinx/coroutines/AwaitKt;->a(Ljava/util/Collection;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    move-object p1, p2

    .line 37
    :goto_2
    invoke-direct {v0, v3}, Lio/bidmachine/analytics/internal/X;->a(Z)V

    move-object p2, p1

    goto :goto_3

    :cond_5
    move-object v0, p0

    .line 38
    :goto_3
    invoke-static {p2}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 39
    invoke-direct {v0, v3}, Lio/bidmachine/analytics/internal/X;->a(Z)V

    .line 40
    :cond_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method static synthetic a(Lio/bidmachine/analytics/internal/X;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 41
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/X;->a(Z)V

    return-void
.end method

.method private final a(Z)V
    .locals 8

    .line 42
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 43
    iget-object p1, p0, Lio/bidmachine/analytics/internal/X;->e:Lkotlinx/coroutines/r;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lkotlinx/coroutines/r;->isActive()Z

    move-result p1

    if-ne p1, v0, :cond_1

    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/X;->e:Lkotlinx/coroutines/r;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 45
    :cond_2
    iget-object v2, p0, Lio/bidmachine/analytics/internal/X;->d:Lgt/g0;

    new-instance v5, Lio/bidmachine/analytics/internal/X$d;

    invoke-direct {v5, p0, v1}, Lio/bidmachine/analytics/internal/X$d;-><init>(Lio/bidmachine/analytics/internal/X;Lrs/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/analytics/internal/X;->e:Lkotlinx/coroutines/r;

    return-void
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/X;)Lio/bidmachine/analytics/internal/V;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/X;->b:Lio/bidmachine/analytics/internal/V;

    return-object p0
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 5
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X;->b:Lio/bidmachine/analytics/internal/V;

    .line 7
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/X$b;->b()Lio/bidmachine/analytics/MonitorConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lio/bidmachine/analytics/internal/X;->a:Lio/bidmachine/analytics/internal/X$b;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/X$b;->c()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-interface {v0, v1, v2}, Lio/bidmachine/analytics/internal/V;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast v0, Ljava/util/List;

    .line 11
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X;->d:Lgt/g0;

    new-instance v4, Lio/bidmachine/analytics/internal/X$c;

    const/4 v2, 0x0

    invoke-direct {v4, p0, v0, v2}, Lio/bidmachine/analytics/internal/X$c;-><init>(Lio/bidmachine/analytics/internal/X;Ljava/util/List;Lrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    :cond_1
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Lio/bidmachine/analytics/internal/Q;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/X;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v1, p0, Lio/bidmachine/analytics/internal/X;->d:Lgt/g0;

    new-instance v4, Lio/bidmachine/analytics/internal/X$h;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lio/bidmachine/analytics/internal/X$h;-><init>(Lio/bidmachine/analytics/internal/X;Lio/bidmachine/analytics/internal/Q;Lrs/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method
