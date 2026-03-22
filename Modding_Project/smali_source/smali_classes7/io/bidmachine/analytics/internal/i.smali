.class public abstract Lio/bidmachine/analytics/internal/i;
.super Lio/bidmachine/analytics/internal/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/i$a;
    }
.end annotation


# instance fields
.field private final d:Lms/i;

.field private e:Lkotlinx/coroutines/r;

.field private f:Lio/bidmachine/analytics/internal/i$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/j;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/bidmachine/analytics/internal/i$d;->a:Lio/bidmachine/analytics/internal/i$d;

    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lio/bidmachine/analytics/internal/i;->d:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/i;Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/i;->b(Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final b(Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lio/bidmachine/analytics/internal/i$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lio/bidmachine/analytics/internal/i$c;

    iget v1, v0, Lio/bidmachine/analytics/internal/i$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lio/bidmachine/analytics/internal/i$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/i$c;

    invoke-direct {v0, p0, p2}, Lio/bidmachine/analytics/internal/i$c;-><init>(Lio/bidmachine/analytics/internal/i;Lrs/c;)V

    :goto_0
    iget-object p2, v0, Lio/bidmachine/analytics/internal/i$c;->c:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v1

    .line 3
    iget v2, v0, Lio/bidmachine/analytics/internal/i$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lio/bidmachine/analytics/internal/i$c;->b:Ljava/lang/Object;

    check-cast p1, Lio/bidmachine/analytics/ReaderConfig$Rule;

    iget-object v0, v0, Lio/bidmachine/analytics/internal/i$c;->a:Ljava/lang/Object;

    check-cast v0, Lio/bidmachine/analytics/internal/i;

    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    goto :goto_3

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    :try_start_1
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 4
    iput-object p0, v0, Lio/bidmachine/analytics/internal/i$c;->a:Ljava/lang/Object;

    iput-object p1, v0, Lio/bidmachine/analytics/internal/i$c;->b:Ljava/lang/Object;

    iput v3, v0, Lio/bidmachine/analytics/internal/i$c;->e:I

    invoke-virtual {p0, p1, v0}, Lio/bidmachine/analytics/internal/i;->a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    :try_start_2
    check-cast p2, Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    move-object v2, p1

    goto :goto_4

    :catchall_1
    move-exception p2

    move-object v0, p0

    :goto_3
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_2

    .line 6
    :goto_4
    invoke-static {p2}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_5

    :cond_4
    move-object p1, p2

    :goto_5
    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 7
    new-instance p1, Lio/bidmachine/analytics/internal/h$a;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/analytics/internal/h$a;-><init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/q0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_7

    .line 8
    :cond_5
    invoke-static {p2}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    .line 9
    instance-of p2, p1, Ljava/util/concurrent/CancellationException;

    if-nez p2, :cond_a

    .line 10
    instance-of p2, p1, Ljava/io/FileNotFoundException;

    if-eqz p2, :cond_6

    sget-object p2, Lio/bidmachine/analytics/internal/q0$a;->f:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_6

    .line 11
    :cond_6
    instance-of p2, p1, Ljava/lang/SecurityException;

    if-eqz p2, :cond_7

    sget-object p2, Lio/bidmachine/analytics/internal/q0$a;->h:Lio/bidmachine/analytics/internal/q0$a;

    goto :goto_6

    .line 12
    :cond_7
    sget-object p2, Lio/bidmachine/analytics/internal/q0$a;->e:Lio/bidmachine/analytics/internal/q0$a;

    :goto_6
    if-eqz p1, :cond_8

    .line 13
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_9

    :cond_8
    const-string p1, ""

    .line 14
    :cond_9
    new-instance v7, Lio/bidmachine/analytics/internal/h$a;

    new-instance v4, Lio/bidmachine/analytics/internal/q0;

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0, p2, p1}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lio/bidmachine/analytics/internal/h$a;-><init>(Lio/bidmachine/analytics/ReaderConfig$Rule;Ljava/lang/String;Lio/bidmachine/analytics/internal/q0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v7}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_7
    return-object p1

    .line 15
    :cond_a
    throw p1
.end method


# virtual methods
.method public abstract a(Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;
.end method

.method public a(Lio/bidmachine/analytics/internal/i$a;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i;->f:Lio/bidmachine/analytics/internal/i$a;

    return-void
.end method

.method public final b()Lgt/g0;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/i;->d:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgt/g0;

    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/i$a;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/i;->a(Lio/bidmachine/analytics/internal/i$a;)V

    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/i;->e:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v1, v0, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/i;->e:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-static {p1, v0, v1, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p1, p0, Lio/bidmachine/analytics/internal/i;->f:Lio/bidmachine/analytics/internal/i$a;

    .line 11
    .line 12
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Lio/bidmachine/analytics/internal/i;->b()Lgt/g0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lio/bidmachine/analytics/internal/i$b;

    .line 20
    .line 21
    invoke-direct {v4, p1, p0, v0}, Lio/bidmachine/analytics/internal/i$b;-><init>(Lio/bidmachine/analytics/internal/i$a;Lio/bidmachine/analytics/internal/i;Lrs/c;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i;->e:Lkotlinx/coroutines/r;

    .line 33
    .line 34
    return-void
.end method
