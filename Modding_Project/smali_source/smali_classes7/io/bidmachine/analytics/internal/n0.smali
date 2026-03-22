.class public final Lio/bidmachine/analytics/internal/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/n0$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/n0$a;

.field private final b:Lio/bidmachine/analytics/internal/l0;

.field private final c:Ljava/lang/String;

.field private final d:Lgt/g0;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/n0$a;Lio/bidmachine/analytics/internal/l0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/analytics/internal/n0;->a:Lio/bidmachine/analytics/internal/n0$a;

    .line 5
    .line 6
    iput-object p3, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    .line 7
    .line 8
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/n0$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p3

    .line 12
    invoke-virtual {p3}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    iput-object p3, p0, Lio/bidmachine/analytics/internal/n0;->c:Ljava/lang/String;

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
    invoke-virtual {p2}, Lio/bidmachine/analytics/internal/n0$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-virtual {p2}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

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
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n0;->d:Lgt/g0;

    .line 71
    .line 72
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/n0$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/n0;->a:Lio/bidmachine/analytics/internal/n0$a;

    return-object p0
.end method

.method private final a(Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;
    .locals 13

    .line 22
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 23
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0;->b()Lio/bidmachine/analytics/internal/q0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/l0;->b(Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_4

    .line 25
    :cond_0
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    .line 26
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0;->e()Lio/bidmachine/analytics/internal/h0$a;

    move-result-object v2

    .line 27
    invoke-interface {v0, v1, v2}, Lio/bidmachine/analytics/internal/l0;->a(Ljava/lang/String;Lio/bidmachine/analytics/internal/h0$a;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lio/bidmachine/analytics/internal/h0;

    if-nez v0, :cond_2

    .line 29
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/l0;->b(Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_3

    .line 30
    :cond_2
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0;->a:Lio/bidmachine/analytics/internal/n0$a;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n0$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/bidmachine/analytics/ReaderConfig;->getUniqueOnly()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/h0;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_0
    move v10, v1

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 31
    :goto_2
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/h0;->c()Ljava/lang/String;

    move-result-object v3

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, p1

    .line 32
    invoke-static/range {v2 .. v12}, Lio/bidmachine/analytics/internal/h0;->a(Lio/bidmachine/analytics/internal/h0;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lio/bidmachine/analytics/internal/h0$a;Lio/bidmachine/analytics/internal/q0;ZILjava/lang/Object;)Lio/bidmachine/analytics/internal/h0;

    move-result-object p1

    .line 33
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/l0;->a(Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    return-object p1

    .line 34
    :goto_4
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/n0;Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;
    .locals 0

    .line 5
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/n0;->a(Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/n0;Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/n0;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/n0;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/n0;->a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/n0;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/n0;->a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    .line 7
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 8
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 11
    check-cast v2, Lio/bidmachine/analytics/internal/h0;

    .line 12
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/h0;->e()Lio/bidmachine/analytics/internal/h0$a;

    move-result-object v2

    .line 13
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v0, p1, v1}, Lio/bidmachine/analytics/internal/l0;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method private final a(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4

    instance-of v0, p2, Lio/bidmachine/analytics/internal/n0$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/n0$b;

    iget v1, v0, Lio/bidmachine/analytics/internal/n0$b;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/n0$b;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/n0$b;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/n0$b;-><init>(Lio/bidmachine/analytics/internal/n0;Lrs/c;)V

    :goto_0
    iget-object p2, v0, Lio/bidmachine/analytics/internal/n0$b;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v1

    .line 16
    iget v2, v0, Lio/bidmachine/analytics/internal/n0$b;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/bidmachine/analytics/internal/n0$b;->a:Ljava/lang/Object;

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

    .line 17
    iget-object p2, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    invoke-interface {p2, p1}, Lio/bidmachine/analytics/internal/l0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Ljava/util/List;

    .line 18
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 19
    iput-object p1, v0, Lio/bidmachine/analytics/internal/n0$b;->a:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/n0$b;->d:I

    invoke-direct {p0, p2, v0}, Lio/bidmachine/analytics/internal/n0;->a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 20
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    .line 21
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

.method private final a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lio/bidmachine/analytics/internal/n0$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/n0$c;

    iget v1, v0, Lio/bidmachine/analytics/internal/n0$c;->d:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/n0$c;->d:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/n0$c;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/n0$c;-><init>(Lio/bidmachine/analytics/internal/n0;Lrs/c;)V

    :goto_0
    iget-object p2, v0, Lio/bidmachine/analytics/internal/n0$c;->b:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v1

    .line 35
    iget v2, v0, Lio/bidmachine/analytics/internal/n0$c;->d:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    iget-object p2, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    invoke-interface {p2, p1}, Lio/bidmachine/analytics/internal/l0;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p2

    check-cast v2, Lkotlin/Unit;

    .line 37
    iget-object v4, p0, Lio/bidmachine/analytics/internal/n0;->d:Lgt/g0;

    new-instance v7, Lio/bidmachine/analytics/internal/n0$d;

    const/4 v2, 0x0

    invoke-direct {v7, p0, p1, v2}, Lio/bidmachine/analytics/internal/n0$d;-><init>(Lio/bidmachine/analytics/internal/n0;Ljava/util/List;Lrs/c;)V

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v4 .. v9}, Lgt/e;->b(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lgt/k0;

    move-result-object p1

    .line 38
    iput-object p2, v0, Lio/bidmachine/analytics/internal/n0$c;->a:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/n0$c;->d:I

    invoke-interface {p1, v0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    .line 39
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public static final synthetic b(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/l0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/n0;->b:Lio/bidmachine/analytics/internal/l0;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0;->d:Lgt/g0;

    new-instance v3, Lio/bidmachine/analytics/internal/n0$e;

    const/4 v1, 0x0

    invoke-direct {v3, p0, p1, p2, v1}, Lio/bidmachine/analytics/internal/n0$e;-><init>(Lio/bidmachine/analytics/internal/n0;Ljava/lang/String;Ljava/util/List;Lrs/c;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v2, 0x0

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method
