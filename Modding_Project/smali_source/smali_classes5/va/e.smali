.class public final Lva/e;
.super Lua/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lua/f<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private volatile c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lua/b<",
            "TTResult;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lua/f;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lva/e;->f:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method private h(Lua/b;)Lua/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/b<",
            "TTResult;>;)",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lva/e;->o()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v2, p0, Lva/e;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {p1, p0}, Lua/b;->onComplete(Lua/f;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-object p0

    .line 25
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method private n()V
    .locals 3

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lva/e;->f:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Lua/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :try_start_1
    invoke-interface {v2, p0}, Lua/b;->onComplete(Lua/f;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v1

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception v1

    .line 29
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 30
    .line 31
    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    .line 33
    .line 34
    throw v2

    .line 35
    :catch_1
    move-exception v1

    .line 36
    throw v1

    .line 37
    :cond_0
    const/4 v1, 0x0

    .line 38
    iput-object v1, p0, Lva/e;->f:Ljava/util/List;

    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    throw v1
.end method


# virtual methods
.method public final a(Lua/c;)Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/c<",
            "TTResult;>;)",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lua/h;->a()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lva/e;->k(Ljava/util/concurrent/Executor;Lua/c;)Lua/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final b(Lua/d;)Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/d;",
            ")",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lua/h;->a()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lva/e;->l(Ljava/util/concurrent/Executor;Lua/d;)Lua/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final c(Lua/e;)Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/e<",
            "TTResult;>;)",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lua/h;->a()Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, v0, p1}, Lva/e;->m(Ljava/util/concurrent/Executor;Lua/e;)Lua/f;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final d()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lva/e;->e:Ljava/lang/Exception;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public final e()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lva/e;->e:Ljava/lang/Exception;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lva/e;->d:Ljava/lang/Object;

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    .line 15
    .line 16
    iget-object v2, p0, Lva/e;->e:Ljava/lang/Exception;

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    throw v1

    .line 22
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lva/e;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lva/e;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lva/e;->f()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lva/e;->e:Ljava/lang/Exception;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    const/4 v1, 0x0

    .line 23
    :goto_0
    monitor-exit v0

    .line 24
    return v1

    .line 25
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    throw v1
.end method

.method public final i(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lva/e;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lva/e;->b:Z

    .line 14
    .line 15
    iput-object p1, p0, Lva/e;->e:Ljava/lang/Exception;

    .line 16
    .line 17
    iget-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lva/e;->n()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public final j(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lva/e;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x1

    .line 13
    iput-boolean v1, p0, Lva/e;->b:Z

    .line 14
    .line 15
    iput-object p1, p0, Lva/e;->d:Ljava/lang/Object;

    .line 16
    .line 17
    iget-object p1, p0, Lva/e;->a:Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lva/e;->n()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p1
.end method

.method public final k(Ljava/util/concurrent/Executor;Lua/c;)Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lua/c<",
            "TTResult;>;)",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lva/b;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lva/b;-><init>(Ljava/util/concurrent/Executor;Lua/c;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lva/e;->h(Lua/b;)Lua/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final l(Ljava/util/concurrent/Executor;Lua/d;)Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lua/d;",
            ")",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lva/c;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lva/c;-><init>(Ljava/util/concurrent/Executor;Lua/d;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lva/e;->h(Lua/b;)Lua/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final m(Ljava/util/concurrent/Executor;Lua/e;)Lua/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lua/e<",
            "TTResult;>;)",
            "Lua/f<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lva/d;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lva/d;-><init>(Ljava/util/concurrent/Executor;Lua/e;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lva/e;->h(Lua/b;)Lua/f;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lva/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lva/e;->b:Z

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method
