.class public Lw/e;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw/e$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final i:Ljava/util/concurrent/ExecutorService;

.field private static final j:Ljava/util/concurrent/Executor;

.field public static final k:Ljava/util/concurrent/Executor;

.field private static l:Lw/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/e<",
            "*>;"
        }
    .end annotation
.end field

.field private static m:Lw/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static n:Lw/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static o:Lw/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw/e<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTResult;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/Exception;

.field private f:Z

.field private g:Lw/g;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lw/d<",
            "TTResult;",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lw/b;->a()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lw/e;->i:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    invoke-static {}, Lw/b;->b()Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lw/e;->j:Ljava/util/concurrent/Executor;

    .line 12
    .line 13
    invoke-static {}, Lw/a;->c()Ljava/util/concurrent/Executor;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lw/e;->k:Ljava/util/concurrent/Executor;

    .line 18
    .line 19
    new-instance v0, Lw/e;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-direct {v0, v1}, Lw/e;-><init>(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lw/e;->l:Lw/e;

    .line 26
    .line 27
    new-instance v0, Lw/e;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 30
    .line 31
    invoke-direct {v0, v1}, Lw/e;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lw/e;->m:Lw/e;

    .line 35
    .line 36
    new-instance v0, Lw/e;

    .line 37
    .line 38
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-direct {v0, v1}, Lw/e;-><init>(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sput-object v0, Lw/e;->n:Lw/e;

    .line 44
    .line 45
    new-instance v0, Lw/e;

    .line 46
    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-direct {v0, v1}, Lw/e;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    sput-object v0, Lw/e;->o:Lw/e;

    .line 52
    .line 53
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/e;->h:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/e;->h:Ljava/util/List;

    .line 7
    invoke-virtual {p0, p1}, Lw/e;->r(Ljava/lang/Object;)Z

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lw/e;->h:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lw/e;->p()Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 12
    invoke-virtual {p0, p1}, Lw/e;->r(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method static synthetic a(Lw/f;Lw/d;Lw/e;Ljava/util/concurrent/Executor;Lw/c;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lw/e;->d(Lw/f;Lw/d;Lw/e;Ljava/util/concurrent/Executor;Lw/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lw/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lw/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lw/e;->c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lw/c;)Lw/e;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    return-object p0
.end method

.method public static c(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lw/c;)Lw/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lw/c;",
            ")",
            "Lw/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lw/f;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lw/e$c;

    .line 7
    .line 8
    invoke-direct {v1, p2, v0, p0}, Lw/e$c;-><init>(Lw/c;Lw/f;Ljava/util/concurrent/Callable;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p0

    .line 16
    new-instance p1, Lbolts/ExecutorException;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lw/f;->c(Ljava/lang/Exception;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    invoke-virtual {v0}, Lw/f;->a()Lw/e;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method

.method private static d(Lw/f;Lw/d;Lw/e;Ljava/util/concurrent/Executor;Lw/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            "TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lw/f<",
            "TTContinuationResult;>;",
            "Lw/d<",
            "TTResult;TTContinuationResult;>;",
            "Lw/e<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lw/c;",
            ")V"
        }
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lw/e$b;

    .line 2
    .line 3
    invoke-direct {v0, p4, p0, p1, p2}, Lw/e$b;-><init>(Lw/c;Lw/f;Lw/d;Lw/e;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p3, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception p1

    .line 11
    new-instance p2, Lbolts/ExecutorException;

    .line 12
    .line 13
    invoke-direct {p2, p1}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p2}, Lw/f;->c(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public static g(Ljava/lang/Exception;)Lw/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lw/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lw/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lw/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0}, Lw/f;->c(Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lw/f;->a()Lw/e;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    return-object p0
.end method

.method public static h(Ljava/lang/Object;)Lw/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lw/e<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    sget-object p0, Lw/e;->l:Lw/e;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-eqz p0, :cond_1

    .line 17
    .line 18
    sget-object p0, Lw/e;->m:Lw/e;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    sget-object p0, Lw/e;->n:Lw/e;

    .line 22
    .line 23
    :goto_0
    return-object p0

    .line 24
    :cond_2
    new-instance v0, Lw/f;

    .line 25
    .line 26
    invoke-direct {v0}, Lw/f;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p0}, Lw/f;->d(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lw/f;->a()Lw/e;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    return-object p0
.end method

.method public static k()Lw/e$d;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method private o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw/e;->h:Ljava/util/List;

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
    check-cast v2, Lw/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    :try_start_1
    invoke-interface {v2, p0}, Lw/d;->a(Lw/e;)Ljava/lang/Object;
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
    iput-object v1, p0, Lw/e;->h:Ljava/util/List;

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
.method public e(Lw/d;)Lw/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lw/d<",
            "TTResult;TTContinuationResult;>;)",
            "Lw/e<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lw/e;->j:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p0, p1, v0, v1}, Lw/e;->f(Lw/d;Ljava/util/concurrent/Executor;Lw/c;)Lw/e;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public f(Lw/d;Ljava/util/concurrent/Executor;Lw/c;)Lw/e;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lw/d<",
            "TTResult;TTContinuationResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lw/c;",
            ")",
            "Lw/e<",
            "TTContinuationResult;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lw/f;

    .line 2
    .line 3
    invoke-direct {v6}, Lw/f;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v7, p0, Lw/e;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v7

    .line 9
    :try_start_0
    invoke-virtual {p0}, Lw/e;->m()Z

    .line 10
    .line 11
    .line 12
    move-result v8

    .line 13
    if-nez v8, :cond_0

    .line 14
    .line 15
    iget-object v9, p0, Lw/e;->h:Ljava/util/List;

    .line 16
    .line 17
    new-instance v10, Lw/e$a;

    .line 18
    .line 19
    move-object v0, v10

    .line 20
    move-object v1, p0

    .line 21
    move-object v2, v6

    .line 22
    move-object v3, p1

    .line 23
    move-object v4, p2

    .line 24
    move-object v5, p3

    .line 25
    invoke-direct/range {v0 .. v5}, Lw/e$a;-><init>(Lw/e;Lw/f;Lw/d;Ljava/util/concurrent/Executor;Lw/c;)V

    .line 26
    .line 27
    .line 28
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    if-eqz v8, :cond_1

    .line 36
    .line 37
    invoke-static {v6, p1, p0, p2, p3}, Lw/e;->d(Lw/f;Lw/d;Lw/e;Ljava/util/concurrent/Executor;Lw/c;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    invoke-virtual {v6}, Lw/f;->a()Lw/e;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :goto_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw p1
.end method

.method public i()Ljava/lang/Exception;
    .locals 2

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw/e;->e:Ljava/lang/Exception;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, p0, Lw/e;->f:Z

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    iget-object v1, p0, Lw/e;->e:Ljava/lang/Exception;

    .line 15
    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v1
.end method

.method public j()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lw/e;->d:Ljava/lang/Object;

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

.method public l()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw/e;->c:Z

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

.method public m()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw/e;->b:Z

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

.method public n()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lw/e;->i()Ljava/lang/Exception;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    monitor-exit v0

    .line 14
    return v1

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    throw v1
.end method

.method p()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw/e;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 v0, 0x0

    .line 10
    return v0

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lw/e;->b:Z

    .line 15
    .line 16
    iput-boolean v1, p0, Lw/e;->c:Z

    .line 17
    .line 18
    iget-object v2, p0, Lw/e;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lw/e;->o()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method

.method q(Ljava/lang/Exception;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw/e;->b:Z

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return v2

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lw/e;->b:Z

    .line 15
    .line 16
    iput-object p1, p0, Lw/e;->e:Ljava/lang/Exception;

    .line 17
    .line 18
    iput-boolean v2, p0, Lw/e;->f:Z

    .line 19
    .line 20
    iget-object p1, p0, Lw/e;->a:Ljava/lang/Object;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lw/e;->o()V

    .line 26
    .line 27
    .line 28
    iget-boolean p1, p0, Lw/e;->f:Z

    .line 29
    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    invoke-static {}, Lw/e;->k()Lw/e$d;

    .line 33
    .line 34
    .line 35
    :cond_1
    monitor-exit v0

    .line 36
    return v1

    .line 37
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p1
.end method

.method r(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lw/e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lw/e;->b:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, p0, Lw/e;->b:Z

    .line 15
    .line 16
    iput-object p1, p0, Lw/e;->d:Ljava/lang/Object;

    .line 17
    .line 18
    iget-object p1, p0, Lw/e;->a:Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p0}, Lw/e;->o()V

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return v1

    .line 28
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p1
.end method
