.class public final Lcn/q;
.super Ljava/lang/Object;
.source "ListenerSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/q$b;,
        Lcn/q$c;,
        Lcn/q$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcn/h;

.field private final b:Lcn/n;

.field private final c:Lcn/q$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/q$b<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcn/q$c<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/lang/Object;

.field private h:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releasedLock"
    .end annotation
.end field

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcn/h;Lcn/q$b;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcn/h;",
            "Lcn/q$b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcn/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcn/h;Lcn/q$b;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcn/h;Lcn/q$b;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcn/q$c<",
            "TT;>;>;",
            "Landroid/os/Looper;",
            "Lcn/h;",
            "Lcn/q$b<",
            "TT;>;Z)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcn/q;->a:Lcn/h;

    .line 4
    iput-object p1, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    iput-object p4, p0, Lcn/q;->c:Lcn/q$b;

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/q;->g:Ljava/lang/Object;

    .line 7
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcn/q;->e:Ljava/util/ArrayDeque;

    .line 8
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcn/q;->f:Ljava/util/ArrayDeque;

    .line 9
    new-instance p1, Lcn/o;

    invoke-direct {p1, p0}, Lcn/o;-><init>(Lcn/q;)V

    invoke-interface {p3, p2, p1}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lcn/q;->b:Lcn/n;

    .line 11
    iput-boolean p5, p0, Lcn/q;->i:Z

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/CopyOnWriteArraySet;ILcn/q$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcn/q;->h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcn/q$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcn/q;Landroid/os/Message;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/q;->g(Landroid/os/Message;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private g(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcn/q$c;

    .line 19
    .line 20
    iget-object v2, p0, Lcn/q;->c:Lcn/q$b;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Lcn/q$c;->b(Lcn/q$b;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcn/q;->b:Lcn/n;

    .line 26
    .line 27
    invoke-interface {v0, v1}, Lcn/n;->a(I)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    :cond_1
    return v1
.end method

.method private static synthetic h(Ljava/util/concurrent/CopyOnWriteArraySet;ILcn/q$a;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcn/q$c;

    .line 16
    .line 17
    invoke-virtual {v0, p1, p2}, Lcn/q$c;->a(ILcn/q$a;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/q;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcn/q;->b:Lcn/n;

    .line 11
    .line 12
    invoke-interface {v1}, Lcn/n;->getLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn/q;->g:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iget-boolean v1, p0, Lcn/q;->h:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 16
    .line 17
    new-instance v2, Lcn/q$c;

    .line 18
    .line 19
    invoke-direct {v2, p1}, Lcn/q$c;-><init>(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

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

.method public d(Landroid/os/Looper;Lcn/h;Lcn/q$b;)Lcn/q;
    .locals 7
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcn/h;",
            "Lcn/q$b<",
            "TT;>;)",
            "Lcn/q<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v6, Lcn/q;

    .line 2
    .line 3
    iget-object v1, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    .line 5
    iget-boolean v5, p0, Lcn/q;->i:Z

    .line 6
    .line 7
    move-object v0, v6

    .line 8
    move-object v2, p1

    .line 9
    move-object v3, p2

    .line 10
    move-object v4, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcn/q;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;Landroid/os/Looper;Lcn/h;Lcn/q$b;Z)V

    .line 12
    .line 13
    .line 14
    return-object v6
.end method

.method public e(Landroid/os/Looper;Lcn/q$b;)Lcn/q;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Looper;",
            "Lcn/q$b<",
            "TT;>;)",
            "Lcn/q<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/q;->a:Lcn/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, v0, p2}, Lcn/q;->d(Landroid/os/Looper;Lcn/h;Lcn/q$b;)Lcn/q;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/q;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn/q;->f:Ljava/util/ArrayDeque;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcn/q;->b:Lcn/n;

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    invoke-interface {v0, v1}, Lcn/n;->a(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcn/q;->b:Lcn/n;

    .line 23
    .line 24
    invoke-interface {v0, v1}, Lcn/n;->obtainMessage(I)Lcn/n$a;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-interface {v0, v1}, Lcn/n;->b(Lcn/n$a;)Z

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-object v0, p0, Lcn/q;->e:Ljava/util/ArrayDeque;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcn/q;->e:Ljava/util/ArrayDeque;

    .line 38
    .line 39
    iget-object v2, p0, Lcn/q;->f:Ljava/util/ArrayDeque;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcn/q;->f:Ljava/util/ArrayDeque;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 47
    .line 48
    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/q;->e:Ljava/util/ArrayDeque;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Lcn/q;->e:Ljava/util/ArrayDeque;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Runnable;

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcn/q;->e:Ljava/util/ArrayDeque;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void
.end method

.method public i(ILcn/q$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/q$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/q;->m()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    iget-object v1, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcn/q;->f:Ljava/util/ArrayDeque;

    .line 12
    .line 13
    new-instance v2, Lcn/p;

    .line 14
    .line 15
    invoke-direct {v2, v0, p1, p2}, Lcn/p;-><init>(Ljava/util/concurrent/CopyOnWriteArraySet;ILcn/q$a;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public j()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/q;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn/q;->g:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    iput-boolean v1, p0, Lcn/q;->h:Z

    .line 9
    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcn/q$c;

    .line 28
    .line 29
    iget-object v2, p0, Lcn/q;->c:Lcn/q$b;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcn/q$c;->c(Lcn/q$b;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception v1

    .line 42
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw v1
.end method

.method public k(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/q;->m()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lcn/q$c;

    .line 21
    .line 22
    iget-object v2, v1, Lcn/q$c;->a:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-eqz v2, :cond_0

    .line 29
    .line 30
    iget-object v2, p0, Lcn/q;->c:Lcn/q$b;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcn/q$c;->c(Lcn/q$b;)V

    .line 33
    .line 34
    .line 35
    iget-object v2, p0, Lcn/q;->d:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 36
    .line 37
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    return-void
.end method

.method public l(ILcn/q$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcn/q$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/q;->i(ILcn/q$a;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcn/q;->f()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
