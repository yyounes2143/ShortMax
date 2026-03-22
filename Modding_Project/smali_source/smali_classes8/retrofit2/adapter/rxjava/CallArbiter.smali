.class final Lretrofit2/adapter/rxjava/CallArbiter;
.super Ljava/util/concurrent/atomic/AtomicInteger;
.source "CallArbiter.java"

# interfaces
.implements Lku/j;
.implements Lku/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "Lku/j;",
        "Lku/e;"
    }
.end annotation


# instance fields
.field private final a:Lfu/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/d<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lku/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lku/i<",
            "-",
            "Lfu/c0<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private volatile c:Z

.field private volatile d:Lfu/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/c0<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfu/d;Lku/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TT;>;",
            "Lku/i<",
            "-",
            "Lfu/c0<",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->a:Lfu/d;

    .line 6
    .line 7
    iput-object p2, p0, Lretrofit2/adapter/rxjava/CallArbiter;->b:Lku/i;

    .line 8
    .line 9
    return-void
.end method

.method private b(Lfu/c0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/c0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->b:Lku/i;

    .line 8
    .line 9
    invoke-interface {v0, p1}, Lku/d;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_4

    .line 15
    :catch_0
    move-exception p1

    .line 16
    goto/16 :goto_8

    .line 17
    .line 18
    :catch_1
    move-exception p1

    .line 19
    goto/16 :goto_8

    .line 20
    .line 21
    :catch_2
    move-exception p1

    .line 22
    goto/16 :goto_8

    .line 23
    .line 24
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->d()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->b:Lku/i;

    .line 31
    .line 32
    invoke-interface {p1}, Lku/d;->a()V
    :try_end_1
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    .line 34
    .line 35
    goto :goto_3

    .line 36
    :catchall_1
    move-exception p1

    .line 37
    goto :goto_1

    .line 38
    :catch_3
    move-exception p1

    .line 39
    goto :goto_2

    .line 40
    :catch_4
    move-exception p1

    .line 41
    goto :goto_2

    .line 42
    :catch_5
    move-exception p1

    .line 43
    goto :goto_2

    .line 44
    :goto_1
    invoke-static {p1}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_3

    .line 59
    :goto_2
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    :goto_3
    return-void

    .line 71
    :goto_4
    invoke-static {p1}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :try_start_2
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->b:Lku/i;

    .line 75
    .line 76
    invoke-interface {v0, p1}, Lku/d;->onError(Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 77
    .line 78
    .line 79
    goto :goto_7

    .line 80
    :catchall_2
    move-exception v0

    .line 81
    goto :goto_5

    .line 82
    :catch_6
    move-exception p1

    .line 83
    goto :goto_6

    .line 84
    :catch_7
    move-exception p1

    .line 85
    goto :goto_6

    .line 86
    :catch_8
    move-exception p1

    .line 87
    goto :goto_6

    .line 88
    :goto_5
    invoke-static {v0}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 89
    .line 90
    .line 91
    new-instance v1, Lrx/exceptions/CompositeException;

    .line 92
    .line 93
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-direct {v1, p1}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 98
    .line 99
    .line 100
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-virtual {p1}, Lqu/f;->b()Lqu/b;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1, v1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 109
    .line 110
    .line 111
    goto :goto_7

    .line 112
    :goto_6
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 121
    .line 122
    .line 123
    :goto_7
    return-void

    .line 124
    :goto_8
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public e()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->a:Lfu/d;

    .line 5
    .line 6
    invoke-interface {v0}, Lfu/d;->cancel()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method f(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Lretrofit2/adapter/rxjava/CallArbiter;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    iget-object v0, p0, Lretrofit2/adapter/rxjava/CallArbiter;->b:Lku/i;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Lku/d;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lrx/exceptions/OnCompletedFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lrx/exceptions/OnErrorFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lrx/exceptions/OnErrorNotImplementedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :catch_1
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :catch_2
    move-exception p1

    .line 24
    goto :goto_1

    .line 25
    :goto_0
    invoke-static {v0}, Llu/a;->d(Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lrx/exceptions/CompositeException;

    .line 29
    .line 30
    filled-new-array {p1, v0}, [Ljava/lang/Throwable;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {v1, p1}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lqu/f;->b()Lqu/b;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1, v1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lqu/f;->b()Lqu/b;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lqu/b;->a(Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    :goto_2
    return-void
.end method

.method g(Lfu/c0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/c0<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    const/4 v2, 0x3

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eq v0, v3, :cond_2

    .line 11
    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    if-eq v0, v2, :cond_1

    .line 15
    .line 16
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v2, "Unknown state: "

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    .line 40
    .line 41
    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_2
    invoke-virtual {p0, v3, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;->b(Lfu/c0;)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    iput-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->d:Lfu/c0;

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    return-void
.end method

.method public request(J)V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long p1, p1, v0

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const/4 p2, 0x1

    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    if-eq p1, p2, :cond_3

    .line 16
    .line 17
    const/4 p2, 0x3

    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_2

    .line 20
    .line 21
    if-ne p1, p2, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "Unknown state: "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw p2

    .line 47
    :cond_2
    invoke-virtual {p0, v0, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_0

    .line 52
    .line 53
    iget-object p1, p0, Lretrofit2/adapter/rxjava/CallArbiter;->d:Lfu/c0;

    .line 54
    .line 55
    invoke-direct {p0, p1}, Lretrofit2/adapter/rxjava/CallArbiter;->b(Lfu/c0;)V

    .line 56
    .line 57
    .line 58
    :cond_3
    :goto_0
    return-void

    .line 59
    :cond_4
    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_0

    .line 65
    .line 66
    return-void
.end method
